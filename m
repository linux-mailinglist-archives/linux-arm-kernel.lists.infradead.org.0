Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2261F62BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrondoVrYmYnwPaRj8h/ndGziTuEx+QoLby1WIUnXvg=; b=pxDdoT9baIMjrV
	KBu4ckiZqnrzktNHpw8sichoiRTIczaMj0huD3EdCcpkT146saDxFI2YsAFqKqd7rSbol5188qL01
	YGvDTNbIyaOQIRfIi11H95Z5oV7gPl8IYdD3hyVsPDWL3m3LtG/KScvnyXz+8tRwzlj8NebevIj1p
	1xpGMzs/yhEKOdLfPhrLhwSYThM4w/sRIZtv88KD+NQoFeQyvd/fiy2+Z5bcReEnTqxsWzop4Efby
	LX7nuIxskKfQCovGU5DhKJicaiwrLvCvUp8fwY8bsiR+D6YBqzFFkTCk0fuaG5pkfUATaovYSs7E0
	KfqheCqx/V0eN8Xbd9jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHmr-0008Cz-4X; Thu, 11 Jun 2020 07:38:09 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhd-0001bU-Vm; Thu, 11 Jun 2020 07:32:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 560C55800D2;
 Thu, 11 Jun 2020 03:32:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ioUni5+xf+ohB
 ENTsnzRg/nT2V64ToN0UrnOmP6/qK8=; b=glUzwtsq1FbJWHLRpLdGt3c5HC01x
 ATEWoaLLhpng1u1WZaKZjasyNsjC8DThLuuxeO1qBZPueqD0ge+XwqaGx/smdEvh
 sldFx+E3Vxi4cJkv5W4KYaAVA0sSqwkfiP9ESZpYiHYaRlET6S2n8StdX3O7AnaW
 xQfiGMOk6FRzT3iI0g88IpAXf1YY/63NAs1VbE/ucHJiYD5pHHBC+kBQtJqHe4K7
 NLf8FBcMgN9jrenVvUYPXW992xNTO/+OxtRkQvvpnzZ9pfvVjHzqYkZfcbGUCBC7
 ofIlPyLSVO2PY0hBTh4oMxucJy+HQzXX9NJi77bQuAyqZ/0rSIwzG8k3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=ioUni5+xf+ohBENTsnzRg/nT2V64ToN0UrnOmP6/qK8=; b=sMOaQkUS
 ZLeQmErvPmETPTVJZvnJsXhV4zcDmTE7B/4GnlZiI4ur4QgrI7HiJUqiNwehKRV1
 udc6oJFO1ZOYkcgoXdIY/C+yzDn9KpDSYv6O+436Wf+VDETx9tYcslP8CpF/rzCk
 abVaM6PZi4VCUOPWz7RSk0eGniT2AoMzowotrLVA+57C/FfVvfPcUnSOPW0qEFtr
 Ms0eqre0i4p70kUSI6FO5ACZ/sHBnOZWduUZyH4sTy8T+RjnuRWbL840+EDEgJjH
 JHizgkk3cey3ypTmRhxyKdSz6b7yEn2EdX8xhFlmvRdbjQahCGpSXiHAh0yVXgRx
 Q4jr2b4T7ZakjQ==
X-ME-Sender: <xms:G97hXueTKmRRpzgR_V6luPI04rZlQrT0QzlRXHjQs7uxyiVdjIlhDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduvd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:G97hXoOf7NkwBZAeeuzSSzV3bJMg16J-g11eu6p2KevpIdJExL6aJw>
 <xmx:G97hXvj0M_9B1oqo1FzYhr2PRDxnJqTdxdB4JxolpDn4Jy33GalJwg>
 <xmx:G97hXr-JuYBwP9q_GilcaKivM2RR1onTp0waeWhzw-gqPBnDzoBrfA>
 <xmx:G97hXoALKmzZWMkJs7lcogV2DRRnzRKeT5UODtr0ycP8y6_G35wA6A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E5EEB3280066;
 Thu, 11 Jun 2020 03:32:42 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 14/27] clk: bcm: rpi: Add clock id to data
Date: Thu, 11 Jun 2020 09:32:03 +0200
Message-Id: <8aef7c6e7a945ceb401b0327ada0813f97bb8432.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003246_583234_AAA2E86F 
X-CRM114-Status: UNSURE (   9.41  )
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

The driver has really only supported one clock so far and has hardcoded the
ID used in communications with the firmware in all the functions
implementing the clock framework hooks. Let's store that in the clock data
structure so that we can support more clocks later on.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 00735704eabc..97ac04604b0a 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -39,6 +39,9 @@ struct raspberrypi_clk {
 
 struct raspberrypi_clk_data {
 	struct clk_hw hw;
+
+	unsigned int id;
+
 	struct raspberrypi_clk *rpi;
 };
 
@@ -91,7 +94,7 @@ static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
 
 	ret = raspberrypi_clock_property(rpi->firmware,
 					 RPI_FIRMWARE_GET_CLOCK_STATE,
-					 RPI_FIRMWARE_ARM_CLK_ID, &val);
+					 data->id, &val);
 	if (ret)
 		return 0;
 
@@ -110,8 +113,7 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 
 	ret = raspberrypi_clock_property(rpi->firmware,
 					 RPI_FIRMWARE_GET_CLOCK_RATE,
-					 RPI_FIRMWARE_ARM_CLK_ID,
-					 &val);
+					 data->id, &val);
 	if (ret)
 		return ret;
 
@@ -129,8 +131,7 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	ret = raspberrypi_clock_property(rpi->firmware,
 					 RPI_FIRMWARE_SET_CLOCK_RATE,
-					 RPI_FIRMWARE_ARM_CLK_ID,
-					 &new_rate);
+					 data->id, &new_rate);
 	if (ret)
 		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency: %d",
 				    clk_hw_get_name(hw), ret);
@@ -183,6 +184,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	if (!data)
 		return -ENOMEM;
 	data->rpi = rpi;
+	data->id = RPI_FIRMWARE_ARM_CLK_ID;
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
@@ -194,8 +196,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	/* Get min & max rates set by the firmware */
 	ret = raspberrypi_clock_property(rpi->firmware,
 					 RPI_FIRMWARE_GET_MIN_CLOCK_RATE,
-					 RPI_FIRMWARE_ARM_CLK_ID,
-					 &min_rate);
+					 data->id, &min_rate);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s min freq: %d\n",
 			init.name, ret);
@@ -204,8 +205,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 
 	ret = raspberrypi_clock_property(rpi->firmware,
 					 RPI_FIRMWARE_GET_MAX_CLOCK_RATE,
-					 RPI_FIRMWARE_ARM_CLK_ID,
-					 &max_rate);
+					 data->id, &max_rate);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s max freq: %d\n",
 			init.name, ret);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
