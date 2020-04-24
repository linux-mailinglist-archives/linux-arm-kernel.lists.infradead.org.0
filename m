Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA8F1B79C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/freMtxZ5EqiOrzfNZPiIeggVuwmOwM6CjxR10N3wQ=; b=b2PV97QXojT9OO
	Fq6XofrRYFiy/axa1Aisl02dvF2p2nUZyTBdbA7wuft5Fpi2KPkO6/SK5X2PQB8MUSD6da41IIDyR
	17hjMqrffmUZz17gwOEpgvuOM6KPmWfu6CZJMFNPcx8kGauOxMXGNWms2BuZFggTZYt5M+MmShnIt
	A9GodxIWpkAi2hHfsIYtUBY0pqZRnE2o3VcWgSfBQU8DBS3OX8xUDQL5VAymk0H6aZAMKa48DRjWP
	5IEM0rJNeyLcdNdKp4ZO50BZGztJdpNbjjorvhDo5+E07K1ji/O1UuWY60J0xTEnaW+1xjWFowu0n
	ZX+YP2jqjYWg4qxy5rIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Rg-0005Qt-PE; Fri, 24 Apr 2020 15:40:52 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Me-0007Ug-4X; Fri, 24 Apr 2020 15:35:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 91E6F136B;
 Fri, 24 Apr 2020 11:35:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=CjNIxcvjbVsXB
 3BBQ3hl6U/fLM7FzBRPy0/KIGvl8dU=; b=Vi+dzVeCDLokp5nihEH6JVtgewSVK
 b4nPdkvaxiPVZcyVJEJkUWHeijb56kQiBzY5JuiMUn3823XHQUl4NTh22qGk5vBI
 onZ8WIMD5JI7HB90F2tJRoPEyN8RKGm+TNNzmdB0agxRNitaOkdvXL/BTwpNngDr
 v7E7gisxjfaOOeKwh4OH9JRWgEIuK0FJS8LKsHfnrY5OldCQ0q6w8zsVTqfcgW8H
 bbKzbd3iqRY7VJKbJMUef2fijwJVuPYSk4KIV/5Bf08XaKUT34kFELF8FlQceMJK
 WM8f5gTNCTrp9lMuCWJPnrItrCYRGCofDKGYt1P0uC/tscZ+lzlkR6AsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=CjNIxcvjbVsXB3BBQ3hl6U/fLM7FzBRPy0/KIGvl8dU=; b=Zc0IpeHy
 ZgXCtDJC8FiRmBMQ369smf5Ai8/WKg4JGHqBmP2e8KB+k6T9KOCS9XuF2MOxPmgA
 ONejYEkR5BKofASLnBvmBT7tu0IoUJPEiHCG5OHYc8vmfX03YjOtGbSOgqzJlokA
 LkW+uKZ6f769aZt2VpqtbBKCp6zs7AvCvJwybw2Ktgf2fCuRiX8+B6TO/ON/Tr6S
 7DjVUUioG3BuKkgIHnPQKhPGzVbGpFB0dTcKzsvVk6u2kApaR3PWbL6vzyYSED2l
 rK8DGwW8+ogTvfwQZA70eJdV9SVau7Bk7L2Hgle0/GHjyhjlWuhef2GJTL0MQrZT
 uw5664RzhpTQbg==
X-ME-Sender: <xms:SgejXh9SCS2PWHIbMlOlxA5CC9c9Sb3wrVTKdYTlAOH94jOfrTZ9XQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SgejXqrHlWsW2WenkxoLrbhudLx9X0yTrTWnBolInf_egZvSWaLBPw>
 <xmx:SgejXpwC2uE7lsm0QHIh9cvEtKFyvb9_0jBZ2l0tZ33KbxpDTR6hYw>
 <xmx:SgejXgIKQWIbA1OMh7FLLKWPhwocdchrBTvblNMIU3viLZ-_x81z8g>
 <xmx:SgejXrMqqh5h_n4NjlJ6ZFTPMIeLPffWGZEvQr3oOK3TX11JJlI6C-sXfZw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CE2DC3065DA8;
 Fri, 24 Apr 2020 11:35:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 11/91] clk: bcm: rpi: Switch to clk_hw_register_clkdev
Date: Fri, 24 Apr 2020 17:33:52 +0200
Message-Id: <ed3ef94ed15ab5426d269615dac4e670b877ded2.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083540_283737_883E9C96 
X-CRM114-Status: GOOD (  10.84  )
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
index 5bed35483e71..013706816895 100644
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
