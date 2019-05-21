Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA1824F73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xPUGNAmvn8SqG6ynMmijj8j5hclnaKZE+zUMmWNcTuo=; b=YSQ
	RqkeNJ5BCchL2TbrSxqfZKGFl2hD+GKjIhDqEgrQRXmIPA8TGFzIBpLhJoHUb2t4P8wImFLuf4zb2
	TryiU5St4YyWQvIwnhTkpeJOI+ZVqZ0NGMor3UUXVhjaLwm8TPayy7z8x/f58566M5X/nStvIj1du
	8q4MjwtugMv+Hn74q1MUjrBQTVTnjwRiXmduwUxNogHr7JsmAbZdj6HQUkIIa6jVsmdK19qcqnFbV
	rAXOG3lhIhSJIKP8aqnFJCVSopWNfXm1hgCOcxJK9sgpDc4qUi/ZUqMRlsnpExexgW7iREHmqc1rG
	/sDAKhRtnQTV+n4DNBiXd5QfYoqCsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Kz-0002W4-Us; Tue, 21 May 2019 12:57:49 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Ku-0002VI-5g
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:57:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D563E80D;
 Tue, 21 May 2019 05:57:41 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (e121047.arm.com [10.1.32.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F00393F5AF;
 Tue, 21 May 2019 05:57:39 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/module: deal with ambiguity in PRELxx relocation ranges
Date: Tue, 21 May 2019 13:57:07 +0100
Message-Id: <20190521125707.6115-1-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_055744_221048_0B66C52B 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, guillaume.gardet@arm.com, marc.zyngier@arm.com,
 will.deacon@arm.com, james.morse@arm.com,
 Ard Biesheuvel <ard.biesheuvel@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The R_AARCH64_PREL16 and R_AARCH64_PREL32 relocations are
documented as permitting a range of [-2^15 .. 2^16), resp.
[-2^31 .. 2^32). It is also documented that this means we
cannot detect overflow in some cases, which is bad.

Since we always interpret the targets of these relocations as
signed quantities (e.g., in the ksymtab handling code), let's
tighten the overflow checks so that targets that are out of
range for our signed interpretation of the relocated quantity
get flagged.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---
 arch/arm64/kernel/module.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index f713e2fc4d75..2e4e3915b4d0 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -99,12 +99,12 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
 	switch (len) {
 	case 16:
 		*(s16 *)place = sval;
-		if (sval < S16_MIN || sval > U16_MAX)
+		if (sval < S16_MIN || sval > S16_MAX)
 			return -ERANGE;
 		break;
 	case 32:
 		*(s32 *)place = sval;
-		if (sval < S32_MIN || sval > U32_MAX)
+		if (sval < S32_MIN || sval > S32_MAX)
 			return -ERANGE;
 		break;
 	case 64:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
