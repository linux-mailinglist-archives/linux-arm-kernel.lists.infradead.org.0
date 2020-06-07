Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E71F0B95
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 15:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCfnlhbpjOJoFK6Wr9Bdy5gWq2E3pVb58SNuj6Lls4k=; b=QxdBHKM5N2tlnm
	+UGTeCcvZu7SXuZEZj/RU8oegbfagh83tFV6H/7Z9Q9rXcfVqZESOt68jbWRL37KX8Cge7DF/bIi0
	dkJqPsPdO4/JMTH8yEzosBxd4s6k7q0Lw5ehJBjW3rkcKFTnxggLH6UlHLavE6pdf5T57kjO6J2Z6
	uQgpdvIf48cFfpun2KmQmO00Q3fnzzI7dH1lU1GFOVT2FrqOrpHOzRca7hlPwtPjC9ll95gaoAp2z
	giiZHcQ7VlpiPjK7parmy8Uwu9sIyS4Yg9gR/7WjUUXTSA4/F1AMRja6a8fmwISUDE2BF8fzTZ3jM
	4LWiSTpzKuRCkvoe5sAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhvpQ-0007y1-C2; Sun, 07 Jun 2020 13:59:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhvp5-0007rq-1v
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 13:58:53 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58CDB2075A;
 Sun,  7 Jun 2020 13:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591538329;
 bh=+I7+Y9xcYGUsBj8ke7ISq801A0SS4udp6aU7ow79qpc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RPI2nsZzJJxKsmNOdP8YnABoKLer0jT2K5waAsthEvMijyLXPBZ8FYHxwwqeleZ3Q
 uGqfqOA6217NcQnbpHJZobhqqC/LHfoMIyvvUlG1ZCotap4hOwm7i7e9LUtxgb1GTG
 sEOXeTDkYZjtNSegUIJsL1SRpCexyks2wuAFhoIY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH v2 2/2] efi/arm: libstub: print boot mode and MMU state at boot
Date: Sun,  7 Jun 2020 15:58:34 +0200
Message-Id: <20200607135834.898294-3-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200607135834.898294-1-ardb@kernel.org>
References: <20200607135834.898294-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_065851_121135_E3015357 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ardb@kernel.org>, maz@kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, xypron.glpk@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 32-bit ARM, we may boot at HYP mode, or with the MMU and caches off
(or both), even though the EFI spec actually does not support this.
Take note of this in the EFI stub diagnostic output so that we can
easily see whether this is the case or not.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm32-stub.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/firmware/efi/libstub/arm32-stub.c b/drivers/firmware/efi/libstub/arm32-stub.c
index 40243f524556..659aaa5003a2 100644
--- a/drivers/firmware/efi/libstub/arm32-stub.c
+++ b/drivers/firmware/efi/libstub/arm32-stub.c
@@ -9,8 +9,19 @@
 
 efi_status_t check_platform_features(void)
 {
+	u32 cpsr, sctlr;
 	int block;
 
+	asm("mrs %0, cpsr" : "=r"(cpsr));
+	if ((cpsr & MODE_MASK) == HYP_MODE)
+		asm("mrc p15, 4, %0, c1, c0, 0" : "=r"(sctlr));
+	else
+		asm("mrc p15, 0, %0, c1, c0, 0" : "=r"(sctlr));
+
+	efi_info("Running in %s mode with MMU %sabled\n",
+		 ((cpsr & MODE_MASK) == HYP_MODE) ? "HYP" : "SVC",
+		 (sctlr & 1) ? "en" : "dis");
+
 	/* non-LPAE kernels can run anywhere */
 	if (!IS_ENABLED(CONFIG_ARM_LPAE))
 		return EFI_SUCCESS;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
