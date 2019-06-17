Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02CE48289
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9T/1IrKiw8vNyds9vRHACBzzfPl6WUpDZIrFZ9/UmYg=; b=fcCz1G+YQ4TcTU
	EkdIutJzzzE4BRF8o4omOScGFInm0/OpAY5MYQnH19ZT/bqV6D2pYlEQkj6foYOY6ZiA0nDd86VCK
	dMdTwB+TVrLQo6l+rqOuCQL9m2qlFMurkUBUyd2ztVW6Ph2sxs9rVIjLOQNwykASv8OTJcqrnuqQJ
	a4ZSHua5iMJAZaMOZRK9rUHCmUeSEY4qqNAzB6XVyKgxuPEv0rh1d/nugb8rZLTtsIFAQTMeUCif0
	rcoqYJy9EkU1GE3xYNmQdsUTRg6Fdv01qjk1Uvekcib1yPEJ+V4U4Gom9XKbIDtAZwVfZTZV9diwq
	Lugdnzf7rEKIOhpcVXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqpv-0004E6-0H; Mon, 17 Jun 2019 12:34:11 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqpk-0004DS-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:34:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MMoXC-1htQJR3L4G-00Ihzj; Mon, 17 Jun 2019 14:33:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Thierry Reding <treding@nvidia.com>,
	arm@kernel.org
Subject: [PATCH] firmware: trusted_foundations: add ARMv7 dependency
Date: Mon, 17 Jun 2019 14:33:23 +0200
Message-Id: <20190617123352.742876-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:lG3EMn7eymquB1lgFAhu0K13XWBEH1PPENGNounZ6Xnzg65KD9H
 K7KGoA6BDfG56L7Ecrfg52/nh0Wkl9GI4JMqNZ522rVXqelHcL5sgosETiLuFSnJaybdatK
 tbzVbKcMFSV5HB4ECOima/g+smwK/Y4eXOe3AZLVnAwxeeNFCzZgJMp+Mrq2TcTDhEVbThS
 MvyiJ2EXg1PGpN8yIODHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cTIULY2r9us=:hIiDtNFP+qCUQBEtaqIitG
 Us5dRrmiNDw0C8YsTQngg1k9y3yPLuoap1c4pB1wKOYDlGH/Z2b16Bk9xZrFp/FQj1Hiu/wD3
 M//QdUVAb2bgRCGUtVDdGnG1sa92uumtSpwYWWKhQgN2YefSeDikjXsdBi+R4xq9j2vQCbqU2
 48xPo/MG1dT0JIlexAXxXnlvnco/uhOGGwkX8zHvQQN1uiNmlKAKRmnt16kzpsoQ9r0nycTSb
 C4una3bkX0IpfkSC/TPpiabqZjrr95g6ITZNtT3vTZTpkldeKlbbxA2JjoLLv+o0hYfhAOlZc
 chciSIdFB3VxMD85YlssJOZ8oWiomVtJA5b2yvI6VkycfpMCZpTaymq9+kUKT8SD4+SF6Oxpd
 pcpExgIinHqr6rvf1yeYL2+e2TNiwdSYd+x5UEcHbQzGSg9eebgF+8O2o9oda5wFQtL00m5o/
 sCf3EGTnr8n3tZoLP9c/cY9FT0abxqDdAUADI5pH+kuAmwD/nMSTPVTZkpeTVpcaetJGs05X5
 k3c2/p7dneTigsuXTqH2zZ6FPxBsaFj3UFzUtrLXsBsPgzCJEBpPMNqWgpJLecJ7+hfmXGN6f
 wYVUJf4iBTxyZ8qxUiIgBOpyr2ZltJ9RPgysB2b+R6xkawQx0dZ19TGLoyhl0yYx1OhlwuJRS
 HTZ4GvuOP6kN27rNAr3OccFx6vWj3oQRgPIiVZVLqwx7fPuRlUCc2Wwed25LofcnhyAvURSwK
 LX6RFXSSMmLOq5noEXwNhKFZiyqJUQXTB03q6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_053400_763435_9A4E1D3B 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "+sec" extension is invalid for older ARM architectures, but
the code can now be built on any ARM configuration:

/tmp/trusted_foundations-2d0882.s: Assembler messages:
/tmp/trusted_foundations-2d0882.s:194: Error: architectural extension `sec' is not allowed for the current base architecture
/tmp/trusted_foundations-2d0882.s:201: Error: selected processor does not support `smc #0' in ARM mode
/tmp/trusted_foundations-2d0882.s:213: Error: architectural extension `sec' is not allowed for the current base architecture
/tmp/trusted_foundations-2d0882.s:220: Error: selected processor does not support `smc #0' in ARM mode

Add a dependency on ARMv7 for the build.

Fixes: 4cb5d9eca143 ("firmware: Move Trusted Foundations support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/firmware/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 35078c6f334a..53446e39a32c 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -256,7 +256,7 @@ config TI_SCI_PROTOCOL
 
 config TRUSTED_FOUNDATIONS
 	bool "Trusted Foundations secure monitor support"
-	depends on ARM
+	depends on ARM && CPU_V7
 	help
 	  Some devices (including most early Tegra-based consumer devices on
 	  the market) are booted with the Trusted Foundations secure monitor
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
