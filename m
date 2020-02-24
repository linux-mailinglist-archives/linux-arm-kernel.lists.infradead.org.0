Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A3B16A187
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVmE8+cX8awfUO9mgt9QBkVFMd/y+Lp6PYmartPb8Jc=; b=koXsYbBFnR62rW
	VQiUmk7InS+sya1eG+xU5oQJTdQa4JPXNtt5uQcGivfvwydsObQRlPH3N57VXlBhqfi0wkpWtiHSW
	EbcDSPfrWjZ5yA4g/mhcwkjDN7B1rPULoEACqvffAL01AG/RQxKVKMIjdN56LeQE6pB6VXlOYJBn1
	EZsf9VpPrNeNF9neihOWEXQNRYIMOoiW06fewzyk2YN/VkYCundAPJEunNpqXBDqgiEAbrtP3Ylrx
	gHDOUO1/50gG6pXti2lwNxwDN5d154F1my8FKup8WcSch3F2kWMb9yhnJ1/MUIBp8D6jpiFY62J4G
	O6jIp818u8Xk6Jo1NEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69pJ-00060K-RJ; Mon, 24 Feb 2020 09:14:57 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jk-0001Wf-JS; Mon, 24 Feb 2020 09:09:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7B7525EB;
 Mon, 24 Feb 2020 04:09:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=gP4ZomwnT/rYT
 hUc5YeZEWVSbIFozmkpYRrF/X/JJys=; b=Hsi/CNGiDj/goIDdZPwn9YgaqFeKa
 ukDp8TQKpiksGu8BwVGtJ20YskLU7xyz/I1VhJwk4nQaT/waOyoZcft62vofUNQS
 Kb4YIp2LjnjrqQZhyqtE5xYOxMOfPX8L2QsX0O+AVE7h32rCtyWFVqwyUvY8LTxP
 GRUAwt35Gfcig/MU2Z+rpuTnMdMltGpA+LK0IQCHm62lHQvpV2FpLTUkOKcXRTNA
 3vCs0Obj/0V++Wc8krhKMHUaVmq11d2zOT7wrd3Bsm316hqAcvgQNtcVTJSXnwz3
 MKflgG835aglmXgP0Jy9vLIm9oN8C3WM5/EuHaw2DfGlJSVwuHgfnwMEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=gP4ZomwnT/rYThUc5YeZEWVSbIFozmkpYRrF/X/JJys=; b=L1hX0lwc
 BZa9/cpjf3pbZxT6EKzzOU+UYPsmTKOi6LaTS6l/mtyasQtji40Hy5AqjTp3bMIo
 gr/tXkfgeqQYkfUuXb3Ry/KN5N6SCzJw8b5JLpFf/wN0kG7g4oRUk2lQliudisri
 uU0kOE7r3xP7iNG7553APv+OEd3qRkVAiqWZXujKT4vxqvBYOYavTm801BKFwFPh
 zsQQnRh7OaYAQKdBFMYlkIcAR38DC7/fY8SLsIpLomrMMB9qdmiKvi5eHf/dfMwy
 X4quQHrodbvk9HQLkW2vIGWhYIogWb5jLd9miDy8f0G/MB3wlI8VU6dRMfKZzLPY
 UYYIVsjKpmpRVg==
X-ME-Sender: <xms:s5JTXlJYamnO5jVUee7wMXC8-W5427htvmeWFzPOVX_lGr6vmCqD3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepleenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:s5JTXhQnQWO7JyouFjpVcxGZc_V-AkgHZDG6ovAQ5Yaebp698uHi1A>
 <xmx:s5JTXrj5HyVmnz1P0s0DjHvP8fiHpDvVkk9esdwXzH7tucVWvalXWw>
 <xmx:s5JTXqrijeKRYlvggOKa5KSdu-YX1k68ZUpYt-SnsuP7VSt_kXN4hA>
 <xmx:s5JTXn30TvTDeYLAy6K5bBNHRl7HScVhOJ_eolFNYv0YS6J5jJkGAKUed0k>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B8B1D328005A;
 Mon, 24 Feb 2020 04:09:06 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 12/89] clk: bcm: rpi: Remove pllb_arm_lookup global pointer
Date: Mon, 24 Feb 2020 10:06:14 +0100
Message-Id: <703e21467f23f63acdac0e078b58040c39b852bf.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010912_800546_CE3A4EF1 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pllb_arm_lookup pointer in the struct raspberrypi_clk is not used for
anything but to store the returned pointer to clkdev_hw_create, and is not
used anywhere else in the driver.

Let's remove that global pointer from the structure.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 783c8c5e5373..0c1d6c292302 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -40,7 +40,6 @@ struct raspberrypi_clk {
 	unsigned long max_rate;
 
 	struct clk_hw pllb;
-	struct clk_lookup *pllb_arm_lookup;
 };
 
 /*
@@ -238,6 +237,7 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
+	struct clk_lookup *pllb_arm_lookup;
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
@@ -246,9 +246,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	rpi->pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
-						NULL, "cpu0");
-	if (!rpi->pllb_arm_lookup) {
+	pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
+					   NULL, "cpu0");
+	if (!pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
 		return -ENOMEM;
 	}
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
