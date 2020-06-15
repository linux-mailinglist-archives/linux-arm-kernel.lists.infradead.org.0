Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D551F920C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rM57EAxa/LY1z9QoWhg69e1HWdjw98G7Y/ymolF8gHU=; b=s0EA7T37TVXzCq
	S/eOvznwPXouOaZ9D2kcOqtN4sSLp4fCAZHmPliPsowc9xmcixENSOiokN1u32/dOHmRPen1NmZ3j
	bg/vbA6Fa/dlxxz2HZW8EoPSzwTjecasY18jNWgkeLdKiyM86mYZmOaqNYWOOd0Iq1vKH4G/TNywC
	1zAVD7b00POktRCF+lYSMSLl4U1XMUPcKkdhZWO6PHruCQGekC2jzEnScTNfZ/moKBUGj33uAh77N
	f4+JvijPLyeiiE9hSJNapIn0oH34bummve4NZ6Z5crZSwWxYY7Kw5PaTNKwDFdYUQaWLJye0KaiZb
	npgFrq5uUZa2SjlJOUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkkA-0004Yd-OW; Mon, 15 Jun 2020 08:45:26 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgV-0001jj-1P; Mon, 15 Jun 2020 08:41:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 12C6858014E;
 Mon, 15 Jun 2020 04:41:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Rr8VBcEhTzp8Z
 ny0soGodKkBo2/LmSW15ymF+jaUito=; b=Zw3eTI07RZmLQH0qKPCMZbG68ZPRW
 H8yIIiY3oGxS+RNeuq03aiMoCHaxfi7WQcXwVQHpDxXlmIAdwAytUEQmxeXp+DSP
 QYVPvjFhksheArWJduyt0lVpbtqmEb8g759XQEVVdoDSIk12+j69f3IYGFqaFzuy
 WaeNfHFpGblcVvnxFJAjuuQtej2NIzPnw7JSRooEdIKe0XEev2ARNPiuQEEKl40k
 AYfz8nGQ0zmIaHkKLynlyIDj0UFI/1wHOz3eKlyjclxbyULXsb7TRvJdHM0+FoGC
 gidEAVADZgDAtkKkJHrOkl1n0z8FC62rFK1HOLbNp2LhODKvMK62CY2Kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Rr8VBcEhTzp8Zny0soGodKkBo2/LmSW15ymF+jaUito=; b=d7SsIwvZ
 Y/pUvKwW5gPRtwgSVBv8+Gbz855DkLfdMRH16p8UlXCJtBTiYajcgc16MInftYGD
 QWXrsUsvf7rCzEHnzedfA7rVs42DWx7oyxSCLjCx5ddWVbAIZffWAkkqpIbIaU2t
 s4klvWid4vR0asAAz9KRH9LUPOwp0mX9e3NMTdFo89X+0Ymt8ex2h8hkW7JihvMU
 n16FNIL6TKOhPyh5kpAP1ABBrwJdQunQvKFexiu+GTfKVScYevoXGdF4ntKtat3T
 ZvmsgthQ6khOLuxd6lt+FU49xjrWPsA48H1zqK/vkpIpKxhewyCdSy0mw+jaZiN4
 jqyZPupkHIuOVw==
X-ME-Sender: <xms:QTTnXsYNKu_tySkIlgwc4fFicfJK8sL18j3VaQaTHrzN2YMSuYJNMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:QTTnXnbdxUtoi9JvwfRVRctbFkyjssNIk0YsjHCqLXQ6zbKOQz734g>
 <xmx:QTTnXm-nX3xLePweSek9aaAa4Q1BAL7kjJn3qWY-eqeTXswfk4L00g>
 <xmx:QTTnXmpwX8bhYQh6XLJpwN2CnhnX5S9zjDjIu6h_BMldoh7d2OOIyA>
 <xmx:QjTnXq1_Oeq9hp-KC2LHkiiSm9qg7gFi1k-4Z-KyOLHL6h0Q1EyTcA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A04EA30614FA;
 Mon, 15 Jun 2020 04:41:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 11/27] clk: bcm: rpi: Make sure the clkdev lookup is removed
Date: Mon, 15 Jun 2020 10:40:51 +0200
Message-Id: <075e2c6d315eccdaf8fb72b320712b86e6c25b22.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014139_222946_303D835C 
X-CRM114-Status: GOOD (  10.26  )
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

The clkdev lookup created for the cpufreq device is never removed if
there's an issue later in probe or at module removal time.

Let's convert to the managed variant of the clk_hw_register_clkdev function
to make sure it happens.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 23f06618a356..a20492fade6a 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -245,8 +245,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
-				     NULL, "cpu0");
+	ret = devm_clk_hw_register_clkdev(rpi->dev,
+					  &raspberrypi_clk_pllb_arm.hw,
+					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
 		return ret;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
