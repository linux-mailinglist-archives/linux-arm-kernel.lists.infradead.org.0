Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0FCF079F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=InbUycTlfPhzjXAWiEKqccgbmqWpAFPRqKn0K18ugMA=; b=WWzpvlT07MnQl/QQblHEtyNvFj
	cqjVczmAvkqmcCh7hNGZKXKUjVqpn9RwjcCT8tYdH3YYvqtRZ1p3mRdRs/PTpYfphznivWFP+Bhh6
	aNB0xo/lSxB5cdHwi6lHZS3NDEAtdGQEHTphIZtJjd2bAppXiQbkZLMTObmcANqNCg6ULG6tdte5Y
	EhMgRPiPT4TD1a8RmTM8mP5BLUVPFh5i9sA+yoRsNLi3XZQYVkMxsL2FyUX1h/kikpvdyQQvK+eLQ
	XjCd2evtd1VFbfKvYntNKKSjnuYwPPy1kJM8dE+uNjCAeMk6OFZVAKZEcmAY3ZHTKkaOKGj7rxaFt
	Yqii6wRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5zq-0002k0-JG; Tue, 05 Nov 2019 21:04:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5va-00060X-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:52 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8CCE222C2;
 Tue,  5 Nov 2019 20:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987590;
 bh=XjkIwnDa8TafV3I6zPSoJavOMGwchE30d7asWSL2lnQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qO4FrhF6vg3k0mmrM549Ql9x0VZD5+kYPmu6FkMiGGGapboGC/S6nJFUyxqLiRcqM
 4OIbPVxmi5PAywXMOE7kGydckbO03HzhdfYWvW5L4oXuJDfw61r0jmihS1QR8Y3B/e
 egJroO05DXRSz+uohulzuRMeIWjEcVNZ8VRZV7po=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 18/53] arm/arm64: smccc-1.1: Make return
 values unsigned long
Date: Tue,  5 Nov 2019 21:58:11 +0100
Message-Id: <20191105205846.1394-19-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125950_938122_353753E6 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sasha Levin <alexander.levin@microsoft.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

[ Upstream commit 1d8f574708a3fb6f18c85486d0c5217df893c0cf ]

An unfortunate consequence of having a strong typing for the input
values to the SMC call is that it also affects the type of the
return values, limiting r0 to 32 bits and r{1,2,3} to whatever
was passed as an input.

Let's turn everything into "unsigned long", which satisfies the
requirements of both architectures, and allows for the full
range of return values.

Reported-by: Julien Grall <julien.grall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <alexander.levin@microsoft.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/arm-smccc.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index c89da86de99f..642a764bcf50 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -194,31 +194,31 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 
 #define __declare_arg_0(a0, res)					\
 	struct arm_smccc_res   *___res = res;				\
-	register u32           r0 asm("r0") = a0;			\
+	register unsigned long r0 asm("r0") = (u32)a0;			\
 	register unsigned long r1 asm("r1");				\
 	register unsigned long r2 asm("r2");				\
 	register unsigned long r3 asm("r3")
 
 #define __declare_arg_1(a0, a1, res)					\
 	struct arm_smccc_res   *___res = res;				\
-	register u32           r0 asm("r0") = a0;			\
-	register typeof(a1)    r1 asm("r1") = a1;			\
+	register unsigned long r0 asm("r0") = (u32)a0;			\
+	register unsigned long r1 asm("r1") = a1;			\
 	register unsigned long r2 asm("r2");				\
 	register unsigned long r3 asm("r3")
 
 #define __declare_arg_2(a0, a1, a2, res)				\
 	struct arm_smccc_res   *___res = res;				\
-	register u32           r0 asm("r0") = a0;			\
-	register typeof(a1)    r1 asm("r1") = a1;			\
-	register typeof(a2)    r2 asm("r2") = a2;			\
+	register unsigned long r0 asm("r0") = (u32)a0;			\
+	register unsigned long r1 asm("r1") = a1;			\
+	register unsigned long r2 asm("r2") = a2;			\
 	register unsigned long r3 asm("r3")
 
 #define __declare_arg_3(a0, a1, a2, a3, res)				\
 	struct arm_smccc_res   *___res = res;				\
-	register u32           r0 asm("r0") = a0;			\
-	register typeof(a1)    r1 asm("r1") = a1;			\
-	register typeof(a2)    r2 asm("r2") = a2;			\
-	register typeof(a3)    r3 asm("r3") = a3
+	register unsigned long r0 asm("r0") = (u32)a0;			\
+	register unsigned long r1 asm("r1") = a1;			\
+	register unsigned long r2 asm("r2") = a2;			\
+	register unsigned long r3 asm("r3") = a3
 
 #define __declare_arg_4(a0, a1, a2, a3, a4, res)			\
 	__declare_arg_3(a0, a1, a2, a3, res);				\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
