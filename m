Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACE21F9213
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaSR66G6t8l1PqhneYyZ8JcSG6IXnA3swSCRprcaZ4A=; b=AFuV4huggRVjQu
	efI/y1Z8ryesOq81TVAqdT317XoVsA/tl5FYOX0VlUu1hbb861wKBrnPwyGW6WV67uFRrAV8DKwwz
	rzsMdQol23TIC+9UxTijIKq5wfip/g73E7RdfjH/QDI0VVngQ++COfR5YKQDv/RKz/SqG9xMrDPBD
	XXfXUFJLQSbypLzHviO7bdXMaqnoUWZmD/1qm9ASdxivC/w8DCCgvhfrZWH964pidzu5ermoU286n
	8vm/c17ogjPVWaTiD5s5sDjDoFGqAYavI055UDz4y3jfaZmkq3SoAxPdWQ89fpM8BBI3Xx7mSD+fS
	ZcN81Ihr9VtToUUjd8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkkz-0007j5-PK; Mon, 15 Jun 2020 08:46:17 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgZ-0001ol-DH; Mon, 15 Jun 2020 08:41:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C56EF58014B;
 Mon, 15 Jun 2020 04:41:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=NwC80/cm603O+
 ywg+BGnSjJaMSMbm5A5w1hmeDpyxCw=; b=b0Syra3U5hL/ukKyQtLhRJwdn0FAp
 H5V+/mYgrM/H36t+czdhca36wmDrOB4BQFeckOKfgia0UZZfmBSpdRE/qsfV8uva
 VBlu8UaOoXFZAoFD+uPz8V1yYMRgNK8oxxUBzRgx7aFNocVbQVFtB5KXzJ9FBSzz
 75BU8ddQzHD9Kgql6o1xlmlTYPFpYGxKWdynZvCUNMzPH0GjO3z4q5kuplXw0B4Y
 ZtWt5CUVO2v48vjkJxM9W0dDxS680jHxKaa660lJRAokG4m7KfCehSpYGcVnVJ/9
 IwhJpP5oDZdy6/zTDmUdLabBVDGwH1g/2pwBaaXgENYtpohXvoQAIx0wQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=NwC80/cm603O+ywg+BGnSjJaMSMbm5A5w1hmeDpyxCw=; b=NP89kzCd
 noeB5pYQ8cee18jBNcSLRI0A1mIdw9NCnhqeVB6jtRB8umf/tFDO5mQUJDDTP9xZ
 rZC5DErBpgnFzTGWHs6sqpI2WwRVjca2dcWBaq3Qk/P0LcmAYAqgE7mtZ8Zi72Ty
 b8DjN2oDbsL/CoMeMNTAW6RjmbFrWM66S8wwGHaWI9ZI4iGDVnRc1Hp/nlDBfYVX
 KiuyHQF38rpbSsH4gGdjvHUb/BwCFNwVHhw2TZI4gNaC0FE1pRmuuTodrvoztgVY
 v9sUOpbeOBabULYCaq2EiluBn3KpN7QFdij1J9VID1d/OKp6eY+SEp4PM1pmgMFX
 BwvMDmFm+PzVBw==
X-ME-Sender: <xms:RjTnXsfuuw8gEfmRUIy4w3FRtRDCwE71w5hk8I-mKaZQewQPCKaaeQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RjTnXuOQ9YSeD-sGjc6XYPct0ABBqk-aG8-ebOZZlO3zi3dlJOcP9Q>
 <xmx:RjTnXtj6Xp_Y7VRE0XJl5NOGEQWiRKISz4vLiseCmJZW-NyJrzKlGg>
 <xmx:RjTnXh9K0gSc29jUrLlTh7FyzgsVYCQIdSvEv7UEgZW-g6fjs5oLog>
 <xmx:RjTnXqIwGjHx6JqMnAUoSRDc9KZ2xgjsUeeBEZPuC7Cjsdr4eta-Ag>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5F78F3280064;
 Mon, 15 Jun 2020 04:41:42 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 14/27] clk: bcm: rpi: Add clock id to data
Date: Mon, 15 Jun 2020 10:40:54 +0200
Message-Id: <e23c37961b97b027e21efa3b818578970f88527a.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014143_607228_4BA67207 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
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
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
