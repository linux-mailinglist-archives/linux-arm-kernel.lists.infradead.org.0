Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A2C1F62A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGyIPLvPf9ojaf7stMBG2AkcZcRgFt3OTNmdWbi3GKM=; b=QKQfcRfkeZ28tZ
	41/YYdAuxU+o6Fx+qJLN4lfB5mQoo093RjYCyexWFO7KLfsitQlPm0eEeU+eKIyCLfdtM4/hyYoye
	P3bIZDCjtWu7ycNrHztVO70I9HhmlGptS3AQYoycCRoklAmAiJJHCyQcmHdxs5Uug3Qt9SoW8fzDj
	nRbiJsDymmQuETdzqkIFLso4ZTkdAnqzvL0cc25R+v0Kj5y15JpsK1ZrQVP6H05oUDa1PmZig3LTo
	QT6hRxDs5Q5WTrbbwHFOA3vLivEZN3HwW0S0cSQNwzXANsddLhmIAlWqWpzH4bqzJ91fXvs/Q2Ddm
	rvG3PrpFkQ1AcpWpHNDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHlP-0006tk-Aw; Thu, 11 Jun 2020 07:36:39 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhW-0001Vy-3a; Thu, 11 Jun 2020 07:32:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0C9D15800D3;
 Thu, 11 Jun 2020 03:32:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=n0QSF+s7WNrvA
 CQUMag7Hrl5LkSGFMi3zaAhmTrJUaw=; b=nUFoXCqqR1D6lTHhAjTSN+tV0z+o0
 TpFsQ3bTKQbI1hcxSCFW52AISuTQMLk9X1er8DiK3V6jxF5GANA+2KhxjatsrQMn
 dzrUuUvnRRnvbQF8utpo/RYR4tnv/0EQNt/TbIguwShF9jR1eMpU9uJMivsYw4Kr
 e8ndDN8PmC6I5rb22MvWGlZh0Vm1F4JpA4eW6sp0FruQ+tNoO2TxsD/5zq5jt1YS
 nLGM7y2C1tG3DAv87T8xby9remxlqRPjJsv2cqdQDmH1Ne96PZ5Beg+rallN/BWX
 HHzJao4e5WyMsDMgPGoSgEYm3EbgeWG/d2sLNENaB5GumGOeXfdXUktnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=n0QSF+s7WNrvACQUMag7Hrl5LkSGFMi3zaAhmTrJUaw=; b=W5dccl1G
 e2xxNKAcFMQPHlthSWc0nx7a3+MsqVeiR1EDXbxOG1ABvzdOBR+TVmvaSuwW+/yj
 0lVgGyQY4SdOtai5iQZJoV8v8Y5wdIjrR9C2vwuZy+qRPIbvVKZ13uXm/EJySa2h
 UIMvMe0nGSUr8Ra9edqw0F8dm0Ex9PCaKHjwkGmEVlPPceC9AkTlkqIG8joBm0g+
 ZdXdhZHy67lw+MsCaCnwh2EvNm3F//oqItjWz6am9gE6nhJmIRkrWIa0KOo1kZZo
 JLlJQmb/Leu1Ts/FiHgbwaKtsYgUrO2MVM8XBKyaW9/RhGlGhdH5eEBTapNdcEvj
 kPs7svunQl3J8w==
X-ME-Sender: <xms:FN7hXpSJ7enCUXb73YMN9X7Cgo49piUs3Ds_C2qm8BAbBMAf0QaH3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:FN7hXiyoJHj8pAr_xFq5_EIc-fM8gFRPDWftU-TyxJQUle_tNqsPcw>
 <xmx:FN7hXu16oz4QpvwIW5dc0Icb9dNizhCPpciYmb9fKWcpbtv4eaFoyQ>
 <xmx:FN7hXhCxa6lcNq6NNL-P0-w1uK7jnBrUpR172WWdLNNtucD3zBhaaA>
 <xmx:Fd7hXrX4ivkbo0pgAt5JTQAN-rhr8ER-51dzn3U52rpEjszufM66FQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 992FB3280059;
 Thu, 11 Jun 2020 03:32:36 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 10/27] clk: bcm: rpi: Switch to clk_hw_register_clkdev
Date: Thu, 11 Jun 2020 09:31:59 +0200
Message-Id: <d575374b56fb53c70bc9dbacb290d44a716f7474.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003238_291820_1F626E4B 
X-CRM114-Status: GOOD (  11.00  )
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

Since we don't care about retrieving the clk_lookup structure pointer
returned by clkdev_hw_create, we can just use the clk_hw_register_clkdev
function.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 5a06c4991c7f..23f06618a356 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -237,7 +237,6 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
-	struct clk_lookup *pllb_arm_lookup;
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
@@ -246,11 +245,11 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
-					   NULL, "cpu0");
-	if (!pllb_arm_lookup) {
-		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		return -ENOMEM;
+	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
+				     NULL, "cpu0");
+	if (ret) {
+		dev_err(rpi->dev, "Failed to initialize clkdev\n");
+		return ret;
 	}
 
 	return 0;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
