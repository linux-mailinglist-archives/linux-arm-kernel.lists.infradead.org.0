Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069551F629C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6R36EDvNfrEWYSmq8qHZNNDkuOOsl6JXmuA9bwwEqA=; b=Zwt4VeOS9M6PJL
	IkjJfV84UFRWIXdxA5gPRkgTa+JIYDWuifiPCFrVHyCvpOpqeIum46eMmDGylPMzBuUh3P70K95Hv
	+5pG0yk9LA5RImhrRo2vJMrrYNY9WmRiijSdnZjEVDwDwQR6aPHB092Omc0n6ZoIhUIluVH62RJtl
	TKSpDFYfGtIVLKgCCpXKJd8SFIA7i9cV+p3JdkEIZ1U5ynkxiW4zmQzvOPL+hXY4nN8DRd8Ls4ojW
	vDDT3XyG+Q7MsOlK4yshCh7EKpWV51pYSUplzoqo8Zcf6XiT2PdCyzMVbTjg9G230unV7QoHVuPkr
	YQkD5oRBIc3L1VcQX7Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHkW-0006AB-1U; Thu, 11 Jun 2020 07:35:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhS-0001SD-Hu; Thu, 11 Jun 2020 07:32:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D165B5800D1;
 Thu, 11 Jun 2020 03:32:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=bKIFK4HlCTngX
 qlGFWYw+rUQ2qZUCm/IgUu0AKgZk3I=; b=m1hKMTdwfktf4ru6P8BfAqeeruQA1
 PXuW2I44hMYYoPJPWeT2GpbjFgJ9VjWsGjVwWFNn7TFoQY83bFoM4xriChh6gnbX
 6uHy5hvlgLR6/hnDNRkpqmfEVn05xqTRn87ZkD0ilGP0GdDztrOEGeErApj9nKVZ
 xILj08Durgh5TBLuVww84Y6V5MchLy1i6Ery2Wp2kRGdfsUUHdWTPePsdMJYCIN8
 3jgiIlOoryfxtwP4tOoLK9rThwVs1ftSIFGh8pFHuzlEROrRjMbm4jP3FP/pckk5
 SYJL1ukuvchx4kdkWZhFHk0DP+RP5Xxnr7QvLO4OI6qAdk7Gsgc50cKUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=bKIFK4HlCTngXqlGFWYw+rUQ2qZUCm/IgUu0AKgZk3I=; b=uhjWVm9Q
 nG6vTr4I8kWxdE13/h6yn6aDirgVb/1fWhMEpFCxTxYrcMv3+a67hrUAkZYPwQft
 IuGsJHgdwXZcjU0uhlQlpCDstzzLWd/7m3YUH5QlN6PmTAJs4xIUK030TUteOq+z
 cm8T4tYxs/JnkFvTqoeC6uDKuNFBZdVUCgxjmvo+ErrXk7W8cZu4FzAPzDS2XLfg
 mLag6izt0eJ+3Pe0nGYRn2/A72suk8TI0HW0MhqnWPE7fdBQfTyWqa/P3rW3ahHE
 icECnuI1cnENjr87wKp2o7oYpsG44q2hDtJMwSAoHzFtlDM51VAiLDSQG8WprZ2q
 W0VucG3e63+uhw==
X-ME-Sender: <xms:Ed7hXlCaWSAtYFK8hoN8TFjvxcO3_GdVGiFJL_EfmSKfrbQ3CE3glw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Ed7hXjiwgDCWgt18McVeSz31w7X3tjUR2Ms5kCGkAB3XpDJyRTlzhg>
 <xmx:Ed7hXgmwHUAsuKZgj6vmhH249O37riqGdc1cNXXKZ6y_ww8FR9O_fg>
 <xmx:Ed7hXvx1-1M0cQD4nMIfQBuWRdjUIyh8Nniumc-V9O6ljYKciCQyUA>
 <xmx:Ed7hXtGsrN5DxKONOByoRVo9PXttphdvyS5jUB0AA_Z54EBZsjYpyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6F5D83280069;
 Thu, 11 Jun 2020 03:32:33 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 08/27] clk: bcm: rpi: Make sure pllb_arm is removed
Date: Thu, 11 Jun 2020 09:31:57 +0200
Message-Id: <e74b057ee84894710a13439246e4a99151b64725.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003234_742751_0933AFA2 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pllb_arm clock was created at probe time, but was never removed if
something went wrong later in probe, or if the driver was ever removed from
the system.

Now that we are using clk_hw_register(), we can just use its managed variant
to take care of that for us.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index b21dd6ddc4fe..d62605861028 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -240,7 +240,7 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
 	int ret;
 
-	ret = clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
+	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
 		return ret;
@@ -250,7 +250,6 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 						NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		clk_hw_unregister_fixed_factor(&raspberrypi_clk_pllb_arm.hw);
 		return -ENOMEM;
 	}
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
