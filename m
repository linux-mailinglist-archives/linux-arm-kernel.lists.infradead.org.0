Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9C31F625F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxgPHhJYKst2ENMNYVUtoFfwJa8zHnZmjDs1LhEkmGY=; b=ESouIfY1rW0/3t
	jZZZ8ZLUfAyaqilt0Ai5ealzbFkuTvOvkUcOpcMBroahPKawqKuw78Zk9BD9A6jHp/f7lMIiVcsb6
	E1nwwQH9M15nCiSlWu2obLFOYZHw1BCDC4RT9RVQ08uN0M9bdIdgU3VNAa8NT+vOT7IwLMOf+7LG4
	siY0uovjuTegIRATxQjGm7k5dVI14h51txgxFTUBuCG5KYQI45dbIaqYWVaZXh6/rOpfHmbD480oM
	+W9o+Gt3fW/bCXymj5zYB1538ED6UTJLCQxixfEfxt6Rv9j+qIJ9nea9EETY5HXl7h3vND7bwWw6i
	+VduFzYs++sfWKCZY6ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHiQ-0001zL-LT; Thu, 11 Jun 2020 07:33:34 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhK-0001LQ-QG; Thu, 11 Jun 2020 07:32:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F240C5800D5;
 Thu, 11 Jun 2020 03:32:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=rnYATPXjkjOEO
 6HerwImW1bSp3HthGMZl9MTQlU3s0s=; b=gLIrHnyiFvxPtFk/9wIT1PwF9GFv1
 wKejZgl0OCReQT/oPde3YzbxUviQRB81U3gI4z5yabN6N4fmzMVdJh7kIqiA8hN5
 DhJ1qtTCCWF8qwWVutK3zaHRkBwmDI7QBPxfNRYN8C0CSgOXetqQzQ3KPNyQEhTq
 A2oM1Gvanb7oyXh2eYPchPWHnnYsYO+uZAefJLHKemP2BToBJgkE379tzIs/N0DC
 i9mOfhEvEpiI05p8Tf0GBpqTTWXbMIryo3XClwCZru67NFBNVe11pOuzeGXkZqeT
 zub8vIxL35615SUTqooKI/YxlAUQv8u5o8cBqJ8vShfaxl3f1XQjrKj9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=rnYATPXjkjOEO6HerwImW1bSp3HthGMZl9MTQlU3s0s=; b=BaV5yz9a
 heSagLExOhjzz5i/OKOfGuRnsB9sKnN0d2CicGdg8DMZ2vpb097UHvmrTxYY0fOz
 RSSoX9V29J+B9oVyNCp0xxQSXawZJWrLfQaJT2Sl2eqZsu6aD11ziJPHB8eVkLZz
 wWJpCb0rog/gGvx+xkXLLWv4OZ19u5cX3l9O/I/0atTMD6KfV9hxXfBPPGT6Cf3o
 KbOz0QNwEPu9rrsf8SI4zGQOFwiKE7AjGGxS/wwlkTh88r59fj7+jYFNtXNlMqdA
 +Z0AejVR6Fx/IR95g1DDo3ttnu6BXtadk1qyfbTUwIvwNOOnr5KRgS6Ou99s+Ezo
 05NtwPFuNFUN1A==
X-ME-Sender: <xms:Cd7hXvqhAzr0AvUhQRAYvXot-i2ptb_R2K059mcPSIniGFrcybibWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Cd7hXpqvgF0Db7_95NZOGgCjOdyI0Zm9vbkR5YJQEAZQxKbrDKqLkA>
 <xmx:Cd7hXsN459KAtwxdHfnh7uly3vJfe1mu5OZaGHNgtJZCGDGkC1KFQQ>
 <xmx:Cd7hXi4JtXXiaLnLi-bpv-ElqiK5HvEV4Yqnt_S1-6_k-P_CPO2OYQ>
 <xmx:Cd7hXgsYwmvSv5JcpH_Cx_R0U8fRO_i37Dtq6Ith3vXtPlIp9HhQBw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8F2D23061CB6;
 Thu, 11 Jun 2020 03:32:25 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 03/27] firmware: rpi: Only create clocks device if we don't
 have a node for it
Date: Thu, 11 Jun 2020 09:31:52 +0200
Message-Id: <c853e53cdf1f98a3e63741f5bdb0631dbba3031e.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003227_229382_8C04F03C 
X-CRM114-Status: GOOD (  12.10  )
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

The firmware clocks driver was previously probed through a platform_device
created by the firmware driver.

Since we will now have a node for that clocks driver, we need to create the
device only in the case where there's no node for it already.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
