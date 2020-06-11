Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5B11F62BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9IOxOddHOZOd1UBmVWohvUayPWitw/DnHVsWKYcFSo=; b=vCjJPvUSoLbj+f
	Vfp2LuY23ZjIkm42qqU/u81aIa2ez1V9bWhp9kwbVRePaDLbTBGDomBuAogpM4E5F35aJQKju5tjs
	yam3pIFxaTPQKgNlWatHt+cr68Y/IAISxyEb6uQqhZRN3TqBAUg8nF7eUZ533uZSneR5UDqe7hhIe
	Q7DtT+KU2RnMweLtuS5rtoXHFnv8yPYhm6jgG1BnIE2sgPqVmP654E0wNYF0VHURU65MRweDLeQ/7
	cbzrnI54Ee0th/3uqfekkvsmQI3nAarbEkxWRw41XLkv/ET+vd2CDHDC0WlJwf41KvfiK7V7DSKAb
	DIh54ix7XiydNj8mJnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHn7-00006I-7n; Thu, 11 Jun 2020 07:38:25 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhh-0001f9-CL; Thu, 11 Jun 2020 07:32:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 113C15800D5;
 Thu, 11 Jun 2020 03:32:48 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=J1lvVl0ko0SYJ
 ZDwkDxj+ytT5YUsDIPc+jV8ttXsMuo=; b=GFrz3VxX657Gee92PK2qFN1ISkNuS
 5mAPsZo/6tWCqTzVbDz1Yc1V/sDMQSY+gVxp73PBfEIPwv80xRZAka6A68btj6Wn
 bgtp2JeRO3eti3d3bfFqqugWnXqeqoZOaTzp3nYEPXzLF/rJejH+tS9u/y9a/u8A
 E551X/yjm+dO2PoYSD0J3wslXqXSJJGkyHUKRA0V+rlywhJf3a7bMDHMW60Y9WUS
 fiOdgCeGSCccTMRz1odBFegRgJy5bIaYA62FpZX1/jkCWYEwg96Uez49/rFLhSGg
 4IjI+EHqibdYqEi5+pyjhL0MmehyUbw6SS1WAHYCH/av007JRHMKjVPgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=J1lvVl0ko0SYJZDwkDxj+ytT5YUsDIPc+jV8ttXsMuo=; b=mCQWV5Af
 XwDXFWPEQlsy00F3pAKBwTsBDPxXJgus50WVHl6oeri/W9bEC7yEF1OkSfcnoih1
 GaIO25SmWhfYfqWHxRVUjr7XjiCxpAWrTtSsUwj9nuKUr2ipL+AN+gD0PFCpexB5
 bN6KnqrG1CPw4iwsLGolzAfukxdeDg0d9wX+ZjUoAWacTLpEOwOGoQHcweYleN4q
 +If7FqejaQIV4IoS+frhVIUB4QsQLf5/1CzdxFktL1zPznKpfnLKpb9BWsABDulq
 LYQz+bAoOAtnUwXNTQqDfy61e0oUDSqxkC0Zm6ZMuYwEtf+2dV8/dPEnfGCjm/t4
 3vmspUyTVQHW+g==
X-ME-Sender: <xms:H97hXky5DEmgUq-dy4A6hqJTOwmow7sGtJpDz83H00mscfRBpQ7rZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduvd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:H97hXoRJ64rFaja1y0hXg3ZE4VAIWw45RIT6d_T69vO-iPo-MsL76w>
 <xmx:H97hXmU9S7-J1ACG9h3koHrXS_bI4HIB4LgWr6IxwK5JLNf8SoTw_Q>
 <xmx:H97hXihOMYC3TzYH99XOu1XHsTavUjTQPWY1T-5LKMp_Pdj8If2RRw>
 <xmx:IN7hXi1JCBKSgr4SLZibLfngJSHO2YTw0kWfwemmXD_6KKJdzFWDyw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A612C30618B7;
 Thu, 11 Jun 2020 03:32:47 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 17/27] clk: bcm: rpi: Split pllb clock hooks
Date: Thu, 11 Jun 2020 09:32:06 +0200
Message-Id: <38aad3dae9d28bbf5fb7facf05fb818c9150ad1d.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003249_587290_1F4370CB 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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

The driver only supports the pllb for now and all the clock framework hooks
are a mix of the generic firmware interface and the specifics of the pllb.
Since we will support more clocks in the future let's split the generic and
specific hooks

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 58ac1b104429..19571602ba64 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -102,8 +102,8 @@ static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 }
 
 
-static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
-						 unsigned long parent_rate)
+static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -116,21 +116,27 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 	if (ret)
 		return ret;
 
-	return val * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	return val;
 }
 
-static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long parent_rate)
+static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	return raspberrypi_fw_get_rate(hw, parent_rate) *
+		RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+}
+
+static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
 	struct raspberrypi_clk *rpi = data->rpi;
-	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	u32 _rate = rate;
 	int ret;
 
 	ret = raspberrypi_clock_property(rpi->firmware, data,
-					 RPI_FIRMWARE_SET_CLOCK_RATE,
-					 &new_rate);
+					 RPI_FIRMWARE_SET_CLOCK_RATE, &_rate);
 	if (ret)
 		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency: %d",
 				    clk_hw_get_name(hw), ret);
@@ -138,6 +144,14 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
+static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+
+	return raspberrypi_fw_set_rate(hw, new_rate, parent_rate);
+}
+
 /*
  * Sadly there is no firmware rate rounding interface. We borrowed it from
  * clk-bcm2835.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
