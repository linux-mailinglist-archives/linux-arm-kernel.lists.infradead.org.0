Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9781B79CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=du3U6bnoEP8S8iF/TxXVpP4po5aMfvPK5FUd8BPxnxg=; b=l2XlW3pnM/PIVl
	u/wRAPEe2VemvKvlNLWTTbtlRPobSPx9eYcZQ5nyWJcbGRznDwAcNbKI72aGwdWPionJJs3RTVJ3l
	rVNL6odpwLR4asJoGV02IpqOESLsI2M9ow02mwW0wEFCFpEORgqQWP5xwK8sLcmMN6QBAmD1oQTG1
	9wMvlh9r6t/i68AQA+xwd+D7b7bjLqroM4dqmVPFiG6fRjSkTCcJ1kBAqgtN7f4AQAOBt5WBz6Vbk
	vu6YUjIHzfDGkFK2l1yLsj6YBOSD1Av0s6ni+Wl+TpStJHENCik/z6smvYMAgJhbg7NN1twj2UkFF
	9Ly1s0RJDB5mkpgf3uDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0TE-0006eX-Vp; Fri, 24 Apr 2020 15:42:29 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mj-0007b4-H9; Fri, 24 Apr 2020 15:35:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1C92E13FB;
 Fri, 24 Apr 2020 11:35:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ctXBvT/DjYZNa
 97RbhmVi1iu6+1OMaB43UOHworXfZE=; b=CvQJ3kHhejPP/9gBHXOFYf8s1zCoO
 8n0YgJoqefpg5oUiIhprnnGBa+VTWW5k8Pi/U66MobiZ93Hry+tnOM0PCDmTlxat
 LFVr0+W/BJIqM/QefWKswChc1V3ivhmpywvfCvjJrDO75gy47Ukw+1EaGBW801FP
 tNC0edVBoSZNvENtsVv2IahX3cZyRL4B9yE4uRZYZqhEnnahgXUu8DR9zPhQnyXH
 n7evFEmBYWJbyLOM2o+StepOWZXbey2HryJRWTtZDzlfgQvcmaLiT2ibAolD6EyI
 AMEe1q/7e9nq7EZOelqP+w2ftSHz34PDAmBejWeBpECMhU/uCmzHN+RBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ctXBvT/DjYZNa97RbhmVi1iu6+1OMaB43UOHworXfZE=; b=QIF0e6Ce
 uobmTecirmqbhEW7kwIIyFt5L6MLN57uyMIllUarxxBy9FQMptwg9+10N1qyyM2T
 zrL3YdIe251zicZbL/G/FZ+B5JFC644UmQzvbYka0snJjRfgAdaQd14/dQKUJKBH
 91yRKAzF9SEcHgfVETrIzr8Ih9o+Bd/zd/53gxXqcnDTc/YwuL72qtrTWmxelJCJ
 ak/CpINNFdrz7+znm3l+vjBx8wFQNVDfI+ccEgHAhcLFFVv7o20A80kObx4/ZXt4
 NbBjwiRdtFDah/D54mKd9OMMiz/G0VKPgEcMSmCIbwm/GDboMIyVvK8ckf0kfUeS
 nvyixTBUggrOvA==
X-ME-Sender: <xms:TwejXuV0oyWlePGmZHGGTeyZWtqPjceCjSVfigQx_xk4u7Gs5vLnQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TwejXv2Wl_Hxzslsu5VL-BvMoLXinnEuaSLlhfmOBn5Sb0S9nOf_3Q>
 <xmx:TwejXlDnuspksjIsgvicRuZoZUGwhKBzkuOtYeKOGEWIPXoVwdeiVw>
 <xmx:TwejXlB57ZxTmCgYzYgriL4StbyQPd58nmNrA9mijTdisbVgu4YuvA>
 <xmx:TwejXk0velAR7_S9gcUY-L5P_CeFfuLI9LKRI5kz4mUwNtaEGeUCD_mAWuA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5BEE53065DA6;
 Fri, 24 Apr 2020 11:35:43 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 15/91] clk: bcm: rpi: Pass the clocks data to the firmware
 function
Date: Fri, 24 Apr 2020 17:33:56 +0200
Message-Id: <db082ca433f69533e4cdf41c80a0699a61aa285e.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083545_689092_6D90D7CB 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberry_clock_property only takes the clock ID as an argument, but
now that we have a clock data structure it makes more sense to just pass
that structure instead.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 6aee81f494bb..6e8977b70e38 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -67,11 +67,12 @@ struct raspberrypi_firmware_prop {
 	__le32 disable_turbo;
 } __packed;
 
-static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
-				      u32 clk, u32 *val)
+static int raspberrypi_clock_property(struct rpi_firmware *firmware,
+				      const struct raspberrypi_clk_data *data,
+				      u32 tag, u32 *val)
 {
 	struct raspberrypi_firmware_prop msg = {
-		.id = cpu_to_le32(clk),
+		.id = cpu_to_le32(data->id),
 		.val = cpu_to_le32(*val),
 		.disable_turbo = cpu_to_le32(1),
 	};
@@ -94,9 +95,8 @@ static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
 	u32 val = 0;
 	int ret;
 
-	ret = raspberrypi_clock_property(rpi->firmware,
-					 RPI_FIRMWARE_GET_CLOCK_STATE,
-					 data->id, &val);
+	ret = raspberrypi_clock_property(rpi->firmware, data,
+					 RPI_FIRMWARE_GET_CLOCK_STATE, &val);
 	if (ret)
 		return 0;
 
@@ -113,9 +113,8 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 	u32 val = 0;
 	int ret;
 
-	ret = raspberrypi_clock_property(rpi->firmware,
-					 RPI_FIRMWARE_GET_CLOCK_RATE,
-					 data->id, &val);
+	ret = raspberrypi_clock_property(rpi->firmware, data,
+					 RPI_FIRMWARE_GET_CLOCK_RATE, &val);
 	if (ret)
 		return ret;
 
@@ -131,9 +130,9 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
 	int ret;
 
-	ret = raspberrypi_clock_property(rpi->firmware,
+	ret = raspberrypi_clock_property(rpi->firmware, data,
 					 RPI_FIRMWARE_SET_CLOCK_RATE,
-					 data->id, &new_rate);
+					 &new_rate);
 	if (ret)
 		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency: %d",
 				    clk_hw_get_name(hw), ret);
@@ -198,18 +197,18 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	init.flags = CLK_GET_RATE_NOCACHE | CLK_IGNORE_UNUSED;
 
 	/* Get min & max rates set by the firmware */
-	ret = raspberrypi_clock_property(rpi->firmware,
+	ret = raspberrypi_clock_property(rpi->firmware, data,
 					 RPI_FIRMWARE_GET_MIN_CLOCK_RATE,
-					 data->id, &min_rate);
+					 &min_rate);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s min freq: %d\n",
 			init.name, ret);
 		return ret;
 	}
 
-	ret = raspberrypi_clock_property(rpi->firmware,
+	ret = raspberrypi_clock_property(rpi->firmware, data,
 					 RPI_FIRMWARE_GET_MAX_CLOCK_RATE,
-					 data->id, &max_rate);
+					 &max_rate);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s max freq: %d\n",
 			init.name, ret);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
