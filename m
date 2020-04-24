Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469BA1B79CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nwKDPcTTXUYY6bvbwSG4RtO6h1p64stccFrG70sKGU=; b=klQwWNPOF8MnJf
	XP+umJXGNOm9TZgo6LwrOqqGtl9paqExTcjr2kdq5P09NI7QCO1u52qkB3gBHR+sQT0MC8QIsSdCV
	itrJ5N+ViLtKYVNKiMPODf4RDfSLMpp5J0BEytFZkfKf7K+RE8UTmrjvRF7ShA2tfhquQVdwoUfYM
	Mhyzip2mxZLbXNewa8U6B/g3pURrRkeA972hfM7lf+luExdnQGBv7tp9MNDUK6WkZQqu5oHuWcJtF
	yvuN4WGeKs/JrwiSmiTd1Qr1duMzvCaPhJVSXRWeVbfMskU0fnWCoYCN5ZWkY6i3ahkEphsH2yRnj
	+96IjfCOs/cAN5JKZkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0UG-0007QG-Mn; Fri, 24 Apr 2020 15:43:32 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ml-0007cd-Cs; Fri, 24 Apr 2020 15:35:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 790AD21A;
 Fri, 24 Apr 2020 11:35:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=oZbHyorDMwxbH
 Trhcz5bQgGX8lBzLk2euuxNjsSWUtU=; b=de+tScs0+fH3Dvipipex7eR5MnhKh
 whu/s+v+bx6eyycWJEpLX2U9rR1LqBKTipXQKVOJAbsvfPpm/kan34eYFxjBvChq
 QWaNt1BVOzgEMdNhGZ9Dgnww1lG4MKmCj5XecBEiqGGe4H0q5txJuum1vxjHheNS
 s2c7JoQ9gbIeWnVFmKWGzuo1zKaMSDTuFFIuZHCZF5R+AoMVD/CcNBVZQ7Q087ee
 aKUWgdiFa4lK1lA704pEhuFQgm1XEv8uYRk8l3JqLsPsCceOfGpWjthr0783ySfL
 ZOEcRFxebYKrq0vXDsjbmKUY70OLV2PGlArTLPh2HFhBxPKpSd1ot6Y0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=oZbHyorDMwxbHTrhcz5bQgGX8lBzLk2euuxNjsSWUtU=; b=mSURwmqm
 rc6YByRngmj4OpQsKVqjwqg0DhMBMcIfVPHb0Z26k2MTXZf1LdRiPQQVUlmIWu2K
 5Qu+Mt7a5urUl5zIp5xJD4Ssq5d8pGJCjp7raC2T1tLVHfftkFNieGfXAfIwJWcu
 C9qD+Ep1V4RaSzRDO/UWe/O0nh4/uwVCkk78NLfviZgYMnKS6WMh1ZHz06SWYO+3
 xkBAIiTdimJDbtfMIyHIB7udlkGZZBrkBIzo4STTiNSma/qJEu5QlIbVOjGSu1Rk
 w6gz1A7dNQGpNAJWkXmhV8NGpK3bc5WO3GqKVaRwyPR9HkdBibYF7k6jTUfALwzL
 aE6uRCPuR3ozPg==
X-ME-Sender: <xms:UAejXrRO2JOI4Drncsl8BVXW3EOjiwjlYn_up4i1umjEs6eCjGLUEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:UQejXhUGwQdkOMa4L61hlUmmpFOV9OXeJb2KQ5I4aMwg3KOpC1_EMA>
 <xmx:UQejXmT4sqmTZ8aa_Q8LLMKUrvWqWlsl9qJ0Y5z0oXDJ4nmPa9sGgg>
 <xmx:UQejXtoCfCNzaSDIZZ_eg5iL8lPhR7fxFH3s5PcDDIHakyuE8eMUWw>
 <xmx:UQejXs9Uybv06yOeISYAJ5lvEW8UlMkinjr8HzEnirPe5IKNDaglnwnfYTw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B518B328005A;
 Fri, 24 Apr 2020 11:35:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 16/91] clk: bcm: rpi: Rename is_prepared function
Date: Fri, 24 Apr 2020 17:33:57 +0200
Message-Id: <1ec4bbfd15358c85f076ea3d0670747bfa62796a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083547_485900_BEAC365B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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

The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
registered in the driver, but any clock exposed by the firmware.

Since we also implement the is_prepared hook, make the function
consistent with the other function names.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 6e8977b70e38..99201f58a609 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -87,7 +87,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	return 0;
 }
 
-static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
+static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -170,7 +170,7 @@ static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
-	.is_prepared = raspberrypi_fw_pll_is_on,
+	.is_prepared = raspberrypi_fw_is_prepared,
 	.recalc_rate = raspberrypi_fw_pll_get_rate,
 	.set_rate = raspberrypi_fw_pll_set_rate,
 	.determine_rate = raspberrypi_pll_determine_rate,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
