Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44975F450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LY8QUYIOGrJXYAMpHpZsr+66xJJ8Hv83OlrP0XFY1uY=; b=rTpq7aNrhfkjY5
	LG2Fn70Y9G4zSjgf+BtB0ZE5PjfShF43d1T2ufgCnVT6MG5o/SlOjgNVJEV/25cs5Dgrsgvi9D6Hg
	VH79hN8Cby30tmGOVtO0iVmeKeUi+fs+MQo2xyHpwXvPqmrX3mAHjOLczbwMhXktrx+06htfzOODq
	a+Tu9NTR/utywiKfmBogSM1bax/fz9zIFMFtpAOumX6BIKsJpof4p8MHlzGYLW7eNfP7ylQ3ver0b
	o6wJTpmM9AXDdeuyWLZ3SzOAkX/AeK4huD7i6QHonOuUSEnE3RpPdYSTPVfpDoIdLXXewvG957e+5
	oEM/xXJ00ft1zPk+CQ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQ8Q-0001qb-Pu; Tue, 30 Apr 2019 10:37:14 +0000
Received: from alexa-out-blr-02.qualcomm.com ([103.229.18.198]
 helo=alexa-out-blr.qualcomm.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQ8J-0001pk-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:37:08 +0000
Received: from ironmsg01-blr.qualcomm.com ([10.86.208.130])
 by alexa-out-blr.qualcomm.com with ESMTP/TLS/AES256-SHA;
 30 Apr 2019 16:05:44 +0530
X-IronPort-AV: E=McAfee;i="5900,7806,9242"; a="9070500"
Received: from blr-ubuntu-104.ap.qualcomm.com (HELO
 blr-ubuntu-104.qualcomm.com) ([10.79.40.64])
 by ironmsg01-blr.qualcomm.com with ESMTP; 30 Apr 2019 16:05:44 +0530
Received: by blr-ubuntu-104.qualcomm.com (Postfix, from userid 346745)
 id 992793DF6; Tue, 30 Apr 2019 16:05:42 +0530 (IST)
From: Arun KS <arunks@codeaurora.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Steve Capper <steve.capper@arm.com>, Arun KS <arunks@codeaurora.org>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: arm64: Fix size of __early_cpu_boot_status
Date: Tue, 30 Apr 2019 16:05:04 +0530
Message-Id: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_033707_564564_AB629520 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__early_cpu_boot_status is of type long. Use quad
assembler directive to allocate proper size.

Signed-off-by: Arun KS <arunks@codeaurora.org>
---
 arch/arm64/kernel/head.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index eecf792..115f332 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -684,7 +684,7 @@ ENTRY(__boot_cpu_mode)
  * with MMU turned off.
  */
 ENTRY(__early_cpu_boot_status)
-	.long 	0
+	.quad 	0
 
 	.popsection
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
