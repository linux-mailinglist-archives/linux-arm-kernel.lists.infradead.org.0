Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B8B1E48B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3f5ORRrXbvaTX9FEiw0NO+12O4mcpVqngJT1yK9q/o=; b=B276+XVI2D3Wej
	V84lHcoyqMjO2gWdLkLk9OrXVf1o7gzvPpX6q/nX5vGn3u+GTS5DQK2+RvqJzR3Nf2+P34B+RTkln
	tntDjOTYwPtr9fT+APkfM7Q2WYVJ3K3ADbe/fdI7tY0WibGlRwqTX4KZs4SaWNvphpR+sO+yXjKSK
	iZT24mFd2mvkCa9yQChPZ+pvJyVQx1hXAOcT4CnE4UoLX/2mFp2iFZ9fwJ1SSWrW20QvtHdDKXB5g
	Pp2NhR23t835gq9xRsmOMiyUH2sBxC9OOCvcRJ65sQTkwWgXDv9P4mO+i+9d4pwTkqicLRm0/aiR4
	7+ADEdpl9a7JbWKG2biA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyPD-0006yT-Cc; Wed, 27 May 2020 15:55:47 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFj-0003Rg-Ob; Wed, 27 May 2020 15:46:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1C2585C022E;
 Wed, 27 May 2020 11:45:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=IGxwyMxL9Kcyf
 SUFGTQGogce6XS1vfJTB6fg+Id+FaY=; b=vtk3c4OvV/hPySlUnT6bJboPNbH97
 nHc1suL0veILJR0u0/pKMAozsJuASlOHaMz7d4i7lLT0prvlHrTeF3IIEOIup5aX
 SZq9w6OCiumFD8w9bfyCKu0ug6mBsUIOMH7/k7RMj6oPeVO/V+uK62vMk3pwEBzu
 IBmP4VFpwhdE/cWmIUH4HqLuyxwvH/RPjb1QQBqitFg2qLGeG7+TEtBxQppQgDXz
 00zrfuPx2qsDy1l2hRkKSlf588b9MpvgQYbVPB3bpVUF5I261TafndZdQ1DzE39N
 QdyW+JHbzYa0mDnGc8pAf1UEf0armoTi8b3jH0l8TndX66QMaHFSoxK7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=IGxwyMxL9KcyfSUFGTQGogce6XS1vfJTB6fg+Id+FaY=; b=T6+wCH+U
 yBEHT3AUZoav92tBu+V2TEVSJt3ZWxsxE5B+iFEdF/siDE35w0W+GCh26wPOBrHp
 ESt1WfjRusgThFJyXPFmvo/zLw8XSI04anCasj5aHAxQiv8rsUCZv+UARRghkCBi
 WS/omFbaupxUOG323GeHXmHyXBzBNTiW45FgT+/5K5igfCqvhE2/8RL/YObRuuxU
 tT6EMXaOb54QPPw8+VYVEogLmFBjszKaKsX8kkApVjmfjY/Iy+ep/UVl9znK01Xz
 wHQ6sccy4OCJ+IqGHyDEjMBrxocwJ7PXaCDyL6fxWURviohdQECjUQQ4ELAUnxcH
 wfH49ajKO5YneQ==
X-ME-Sender: <xms:NYvOXjvpRQ6jL_CIVNtPtmufzTg76G5hUrM7qIKI33UjzOJFDWv7bw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:NYvOXkdsqVd7IpCPZWjuT7c2CfONoVw8z7QVUO17x24S8LuIkw7hUg>
 <xmx:NYvOXmw8P-VsFV3ulnkX1f5EC5GI7SyqmsKACYeXi-R6002SzDP-vw>
 <xmx:NYvOXiMuqQzB4hB6byjtgNzc6hLddMZ1naFE5ktyjoFeypaE8m8FFA>
 <xmx:NovOXum1HZuDQy-9IbXevwIlivc2KydTJcXVq3A4A3s0V8FwH6BGFQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B02603280059;
 Wed, 27 May 2020 11:45:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 20/25] clk: bcm: rpi: Add an enum for the firmware clocks
Date: Wed, 27 May 2020 17:45:16 +0200
Message-Id: <c56fb0a912fe254416ed5a247e6fb6d79fb604bc.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084600_116495_4ECA8480 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the firmware allows us to discover the available clocks, we need to
discriminate those clocks to only register the ones meaningful to Linux.
The firmware also doesn't provide a clock name, so having a list of the ID
will help us to give clocks a proper name later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 5f4e2d49432f..eebd16040f8a 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -18,7 +18,23 @@
 
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
-#define RPI_FIRMWARE_ARM_CLK_ID		0x00000003
+enum rpi_firmware_clk_id {
+	RPI_FIRMWARE_EMMC_CLK_ID = 1,
+	RPI_FIRMWARE_UART_CLK_ID,
+	RPI_FIRMWARE_ARM_CLK_ID,
+	RPI_FIRMWARE_CORE_CLK_ID,
+	RPI_FIRMWARE_V3D_CLK_ID,
+	RPI_FIRMWARE_H264_CLK_ID,
+	RPI_FIRMWARE_ISP_CLK_ID,
+	RPI_FIRMWARE_SDRAM_CLK_ID,
+	RPI_FIRMWARE_PIXEL_CLK_ID,
+	RPI_FIRMWARE_PWM_CLK_ID,
+	RPI_FIRMWARE_HEVC_CLK_ID,
+	RPI_FIRMWARE_EMMC2_CLK_ID,
+	RPI_FIRMWARE_M2MC_CLK_ID,
+	RPI_FIRMWARE_PIXEL_BVB_CLK_ID,
+	RPI_FIRMWARE_NUM_CLK_ID,
+};
 
 #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
 #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
@@ -31,8 +47,6 @@
 
 #define A2W_PLL_FRAC_BITS		20
 
-#define NUM_FW_CLKS			16
-
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
@@ -320,7 +334,8 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
-	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS),
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws,
+						 RPI_FIRMWARE_NUM_CLK_ID),
 				GFP_KERNEL);
 	if (!clk_data)
 		return -ENOMEM;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
