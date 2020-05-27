Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D241E4873
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrondoVrYmYnwPaRj8h/ndGziTuEx+QoLby1WIUnXvg=; b=s0mHurO4pQXEIA
	FJ3DALZ9xowrNd4FoEHueWkz6I2+tjJZ42HaKGRJWUJl8DQmlPM7gp4El7+SsIyP1PZv3uRF0E2ET
	Vb2GfxFpAwipT7CiDhOuthiDmopwwVATS8J1y8BJ7WQQXCEk1ro56ieD9HlKniZAxRhKnHpnukRbq
	Tx/UZwUgOPH+L9byH598bWEiA3vlHiBRRe1NUuuT00E8859qViX7z/EWv5WBww22Kfmq3qgT8CBgh
	KBPIbIyqB6yNc25hbunBsQlKb+89UpUkGnKScuio4xYaN9/CVcqtVsLP+ZU0gbYcQeiWcm+TcBKCl
	Q0W1X8twYhtAjeEcjdhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyLt-0001yg-0H; Wed, 27 May 2020 15:52:21 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFZ-0003JN-MU; Wed, 27 May 2020 15:45:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id CACF8581DE2;
 Wed, 27 May 2020 11:45:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ioUni5+xf+ohB
 ENTsnzRg/nT2V64ToN0UrnOmP6/qK8=; b=T1FGAppRdF4v2zDNqQ61BSo7SIKdK
 69FBjjTxshtIGFnooYuHRnvVYxLLK1iP2YU4YFN3kc2FY4NGhMVfrVHbl7nT3j7u
 yVNaS9KUaQm9OwoJyjtIn2q42vMp26s8d/yeK3Nq6FlFoXTfbMl1EP0J7adH/5ml
 rkRFnOakAZ361fVPSy3SraFb6lGriWE5if8q+zQFPGnWc/qKE8MhI7lvl4SV8NKv
 RNVHM6LEvB0kthbnEXhqqJI6hLTathXK3dNB7qdT5cZ/xFwY0m7FAsOxCFD1Uuts
 5tT7+bdWOysAsFfUsCaeHa4aFidYvr4U08kYTGfhZTD9cuC4IcmIxXBFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ioUni5+xf+ohBENTsnzRg/nT2V64ToN0UrnOmP6/qK8=; b=v3MyWNWh
 KRtf5194dyXTl7iUmuclXRjUtxwNcQlQdX/MMHxHd0YLFwt+Wgs12D4UUsfUgyXO
 PxvWZ20uXATQDpOty/a2Bd680tw4TeuBDr11lIltg6BdsUoGUR036AvMeSfRJ9CV
 okEAF+fxeR9S9g2TNdzbk9P+8ms90REGwZd2Bli65WmpvUz+G59oOGRbTTIbCSbp
 olm/E2+bq7EE46XOWNXkZ1460ALZ7zkUgrfA69bm5X5fQoXJfupnPvqiA+oWBnn5
 85bgjTfDhBlBtN7krS9TaWFNSKgvkveTepLJNccvdUk5XTeBNs4hvqAbcUM3IK/n
 IjCaDOjwatA4sg==
X-ME-Sender: <xms:LIvOXmijyf8EGLPj88-L5I-fkFgo4WQ5kDLqOYiGLQpT-gmXEHeuQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:LIvOXnAfgC3AuVVNCWfKR1_0ZmCFmyNZgJclX9BS7vvnR1Gu-TK_-Q>
 <xmx:LIvOXuFabI5AMkIL4b2v-DIfD4Hpce8RbiFgCALRujI3J2xFZZbfiQ>
 <xmx:LIvOXvRDGCiM7Oecxlznx4gLGxS_Wp0Yfxh4EkGPru_0XvmgM2vwWA>
 <xmx:LIvOXqm928eR_RJbw-rNdbjUHFe8mkPgssDXMv2nEjJPtcLEYbFJdw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6B9173280066;
 Wed, 27 May 2020 11:45:48 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 14/25] clk: bcm: rpi: Add clock id to data
Date: Wed, 27 May 2020 17:45:10 +0200
Message-Id: <a09957318f07ffe7b4be2a461a36e34ab4f46a26.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084549_987981_FD123C87 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
