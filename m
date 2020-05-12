Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B111CFB15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=91cuUI9bPidSPvVcaDTi2wpEz12UlTMisjRDCeYso74=; b=ZcY4E0MXHmyoe+7G9YWoC/nZTH
	zoh99vH/9LqaaMSAqycN5sHNc9EOoKxEJOluNRE1j+6FiPGuZuq3JlOSL3Mq/VrCATSlgqbDFlvoP
	xO1vY5ToRQw6+GaDd8xKzTPlxZZIgTfbzPuGTHA5fwwvgTrenq6WuxaXA+0mK81mqmrQ79jgfYY71
	/hblqbwU8bdwBkGXXD4+Z6dx+9HUvK5QbixFX8Oj5v3BmI5Nf7jDWqF7bMegGHS7VwzKXDJVfvM1F
	TnPz0hLhL42HJSI3pEgwAubtusTb78Biwl4+5U2D11Y675zXPUEmmf5QL/WYnAl8sl8ayoCzIOG6l
	2Z91ToKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXyE-0004eM-6M; Tue, 12 May 2020 16:41:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXun-0007si-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26EE011B3;
 Tue, 12 May 2020 09:37:57 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6EDD23F305;
 Tue, 12 May 2020 09:37:56 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 12/14] prctl.2: Clarify the unsupported hardware case of EINVAL
Date: Tue, 12 May 2020 17:36:57 +0100
Message-Id: <1589301419-24459-13-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093757_542189_45BB05E2 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

prctls that are architecture-specific won't work on other
architectures, and arch-specific prctls that manipulate optional
hardware features likewise won't work if that hardware feature is
not present.

The established pattern seems to be to treat such prctls as if they
are unimplemented, when attempted on the wrong hardware.

Cover these cases with some generic weasel words in the closet
existing EINVAL clause.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/prctl.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 2361b44..7f511d2 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -1616,7 +1616,8 @@ is an invalid address.
 .B EINVAL
 The value of
 .I option
-is not recognized.
+is not recognized,
+or not supported on this system.
 .TP
 .B EINVAL
 .I option
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
