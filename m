Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B311F91BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcBQfiD7QQeld+F8FkqgVBktPIXwCnitE7xdsiW025o=; b=bYNtgYe973+4q/
	DH7wjgw3BVEafz7p67UvXomKnhDyUEtHXwZaGyGsoXi3fmlaYiDh9S2SDaS1La/4mY7qxdfo46TL3
	VkgDChYmqtvgpmyFZ9qA2D9uzKcCZUj6mI2h3eOspgoqqDvFyU6v6uo3L6ThrunuAHGU9yEu6LVdQ
	gLPWC/gP+PS/Znpy6UkjRoQuHpCEF0gyPeBKcdIKuFi1oV7ggPt133kGsO1PHqL37jr0WVFQWx6uW
	Ad4GzrR4GUhLXapZTX1euv37/Aua+2qoEgFW7RKNHF1m797+DUaPRX2UV1KQ7d/gUTEUIuOMeZCMN
	H74ULTqtfwskVk72vT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkhI-00029r-29; Mon, 15 Jun 2020 08:42:28 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgH-0001Wn-UU; Mon, 15 Jun 2020 08:41:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 56AE658015A;
 Mon, 15 Jun 2020 04:41:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=iwX/khD8FWvPO
 xGGR0GQsUImRwtN+u0WBdQoQmvGapw=; b=Baz2FF76S/KeM8JG5AEBSyQcqrs8y
 ZS5eell9y4Q+PqzSGGKbuEgCZEysP/jSTyTP78xaP6kXP6A8rUccDckAt+ceL4zq
 LcOFTrb4vwpWEDsjDbg2mWIU2xTQEvBna2nO2lKs8HI9rPGKi0OUyM6SOc86tw99
 UKk0yB3s0tH55yX9bbDM1rf8rLrbJGMjyhXaTHFK9jEO74zkb4ZRdxsW/u+sUB9A
 /OtuV+C8zBkYTJOUFJT8qISHuZkGiNq6PemSKXbzvVbamY0E0IAYOR29ivib31m/
 IhKM8mQb04x6AKCcQ0d9hUHAhcGrTBG2CzTzqlMna56wNbICBdiKDqDfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=iwX/khD8FWvPOxGGR0GQsUImRwtN+u0WBdQoQmvGapw=; b=FDV6gBv0
 1aNDhpi0Mz3G1EZ/xVPuE/m4NrUelJaj5bYk4BxO3pIR1LuGLycxNB/QcI8Cx2VG
 k2SioZFJPHyKLUC10a9FVhoTsyxw3rY8HCaCLCmqgqKvZQauVvtZf/dzyheAozBn
 wF4zSy6XdwMb3czRR8VBjKON/SvlghO90RqsDkjCBPzKDgP9Zro4CJiNJ9RToN2I
 vZVrvY54A2dtMBdWW/nckdkMhUxXk73EuCaKsSiNNsqmQUJmhkzYBSegLBoj8436
 nmYC+Y2t0vK0erW9+yTDeWZBNLxglIiTdXuvvXn5x+dAormNXa3+XNJds2RuXNrd
 jo2v7AMTEog31g==
X-ME-Sender: <xms:NTTnXv34ciGCDa6ZtNNxeKLBAPey-nIT8MPRrubtQW-jsnP-yfLxfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NTTnXuFt2cBSL9XX_pFNBMXlc8a9p9-dGcOaRXp8ZWYGL2J_gCIuvQ>
 <xmx:NTTnXv5GGNa382GiFJ8Zc-Oez4EQUlSir8snOHkgVGsZq2FVQ3bY8Q>
 <xmx:NTTnXk3aKfPEh8KREHvy-l4qjnnB3am6ZQXjKuXpqD11tWqcmKLIMA>
 <xmx:NTTnXlAoTvkUfVtYc52-FHjr-tyN17AphArgDYgrJW_0S-ZYdIeQow>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E90C930614FA;
 Mon, 15 Jun 2020 04:41:24 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 03/27] firmware: rpi: Only create clocks device if we don't
 have a node for it
Date: Mon, 15 Jun 2020 10:40:43 +0200
Message-Id: <72114c4287ebda2dbd952ea238d4489d359897e5.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014126_113116_1BA6CF0A 
X-CRM114-Status: GOOD (  13.18  )
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

The firmware clocks driver was previously probed through a platform_device
created by the firmware driver.

Since we will now have a node for that clocks driver, we need to create the
device only in the case where there's no node for it already.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/firmware/raspberrypi.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index ef8098856a47..b25901a77c09 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -208,6 +208,20 @@ rpi_register_hwmon_driver(struct device *dev, struct rpi_firmware *fw)
 
 static void rpi_register_clk_driver(struct device *dev)
 {
+	struct device_node *firmware;
+
+	/*
+	 * Earlier DTs don't have a node for the firmware clocks but
+	 * rely on us creating a platform device by hand. If we do
+	 * have a node for the firmware clocks, just bail out here.
+	 */
+	firmware = of_get_compatible_child(dev->of_node,
+					   "raspberrypi,firmware-clocks");
+	if (firmware) {
+		of_node_put(firmware);
+		return;
+	}
+
 	rpi_clk = platform_device_register_data(dev, "raspberrypi-clk",
 						-1, NULL, 0);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
