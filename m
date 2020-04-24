Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECE21B79BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTXSUKM3RsXmraY45UjVh86N9C6FIBZrqmPUjG2QDL0=; b=r0QAkySeDNgR9b
	tOjC0cNGJyItQwDmC0gfJrtlgtDLofwEMeJe38BWAJB6VqcowokZEvhCoYCaRnF1Q7d44II6w9GRZ
	7Z0JBubS2dufpsTBmI3fla6JqcS0bWcdpSc42kvmU3H7t1DxYgOrov0nYpYTLgQyY0BPAt3rrCbkm
	g1m3p6IyQ2Ul6QnGxg31JenejewW7pAqZS8dgbAjp6bneVbaYQUiyxTMrbNWT7mnXOTOy7F9ogSGA
	mnEUtD3Pi43NUUE1CdI7zl1thD4eE6v1XBTTij9qyVlajMMsH2lj1yJy9XBG2pxvVqEywPV2cjDII
	L8vtMRGG69VGmMUrTKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Ov-0000iz-24; Fri, 24 Apr 2020 15:38:01 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0MX-0007OE-OX; Fri, 24 Apr 2020 15:35:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 030D67EB;
 Fri, 24 Apr 2020 11:35:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=QuNnjLTy9RNDV
 bBJK6dCprswSE6BtAg0WvZwRmfFQZg=; b=ZKQ6ct6O1M+LDrOqaE50nYh6AiLC0
 ItNdopuP3WumtV7dxprdML/ordP7eSN1IPE9tUhzB1gL4BQAAnvhEmrS01ba6hNT
 E/46Ky287M+RkmOmaJb8zir/kmTLLBYatgKpgoLwVCpsSgl+R13vuOiR9LV6zwMT
 Ijlj9IyZr9PhhDWPWqp3NuybXVwbxkx4mzLza6azcFt19VXptDFbrqu5Ws2lD9qu
 No4CUtIKkGUDP+GgiIRCvXG4cVGGQk63xDm+y6WriQHYIc3EWZM3/BCVJyKoXDPI
 deWqGKIze4TOxXJzwB1N1/daI/z6d4Ts1JKNtRh5YeljDIZtuv1wZ88ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=QuNnjLTy9RNDVbBJK6dCprswSE6BtAg0WvZwRmfFQZg=; b=uKm8sUgZ
 vI0Q/of6T6mo21jR1EIt+VHz5A8ldWtPSI8uRbgESTVODHS13v3cGAdK57O5tu8C
 bbJgpcdLh4QbYkuvVd2IpLFoNxwJ4isWEaXS8yY0eNkNF9qdcKJrP/n0FyeePJiX
 5TCGWoLG++lIad/J9GcSJxwdLuYiQT5L0GkdFQGJHKptQg1VZkrunjGT5SWx5Lan
 xXn16vW7Qdb+ktAJYyim5W/opDcBljc0P4Hlrf9PRXRCv+hcZ3oS5WRnDXrqhsgV
 GyQ0/bzakIR8Zkh/AdmY3UuJ33qgoCK2AeJ8w/SBJnfh1sd5dm+nCFT1iVILoXjN
 EBv7WCI/WFoJhg==
X-ME-Sender: <xms:QAejXu0idgZ3JOQ6YqSgKg3ZNnP94XCvA7WvdntmY4sIRtgNsJkm5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QAejXiWu15kxWzVNVQwdrxQsZuwSY6U7FyESro7wXogjqvRQobGH6w>
 <xmx:QAejXvy2iSShnMVnu2Lkv6AiCPm4d7zFlwW6sREBSAyA9H8LIuR6UQ>
 <xmx:QAejXm07FGZdmNZqmZWh4_QbD7H2HRQJUFJ28JyHG_bnomW8eb7P7Q>
 <xmx:QAejXiQuC7o4FxBiyARSEBf0Y48kT63HFcaOtzGjK8VEit0Y1bkD8ig4QOo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DCA313280063;
 Fri, 24 Apr 2020 11:35:27 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 04/91] firmware: rpi: Only create clocks device if we don't
 have a node for it
Date: Fri, 24 Apr 2020 17:33:45 +0200
Message-Id: <b181d867cb9523e1877a3dfd258bafde2988024f.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083533_849545_2B74C3B9 
X-CRM114-Status: GOOD (  13.65  )
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware clocks driver was previously probed through a platform_device
created by the firmware driver.

Since we will now have a node for that clocks driver, we need to create the
device only in the case where there's no node for it already.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/firmware/raspberrypi.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index da26a584dca0..1874f41b007c 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -210,6 +210,15 @@ rpi_register_hwmon_driver(struct device *dev, struct rpi_firmware *fw)
 
 static void rpi_register_clk_driver(struct device *dev)
 {
+	/*
+	 * Earlier DTs don't have a node for the firmware clocks but
+	 * rely on us creating a platform device by hand. If we do
+	 * have a node for the firmware clocks, just bail out here.
+	 */
+	if (of_get_compatible_child(dev->of_node,
+				    "raspberrypi,firmware-clocks"))
+		return;
+
 	rpi_clk = platform_device_register_data(dev, "raspberrypi-clk",
 						-1, NULL, 0);
 }
@@ -262,8 +271,12 @@ static int rpi_firmware_remove(struct platform_device *pdev)
 
 	platform_device_unregister(rpi_hwmon);
 	rpi_hwmon = NULL;
-	platform_device_unregister(rpi_clk);
-	rpi_clk = NULL;
+
+	if (rpi_clk) {
+		platform_device_unregister(rpi_clk);
+		rpi_clk = NULL;
+	}
+
 	mbox_free_channel(fw->chan);
 
 	return 0;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
