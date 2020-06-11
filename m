Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9DE1F62CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9o3oqtzOgOO68LMrouScXdhtCiofKVv8GtMmwCk+QM=; b=QWQzZIHxRmvBwK
	pVin4gvbmFoVgfjFUqvFoW2KgnKsOmG05dF7ecn/KOz5hKlkcZenlpj9FaMzDsrbbAh/XGUSRqe/0
	LETX+U0PKX+wG+iO7XojtBw2EgJB54OZ73ZMgNxFTVD9ZfPsP4tZQ58azHOteyOGGNvGqNHEdoC4m
	XbiAUUAJinOibckH9zczswa5TB70V8jlswlUyJJGBmlcv6E4CXfmmPtmMWKFh6WU2En36Lu+2x11L
	gL+XNLptZDZNUO0asQHN2ytNJ/ZjlXwWT6K3oumWLs5hAHuOdN+qhR7ksLRppR1MUrRJnBh/GeekK
	pPEfyx9JoBBaNpqBv1jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHpk-0004jz-7f; Thu, 11 Jun 2020 07:41:08 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHht-0001qM-Bv; Thu, 11 Jun 2020 07:33:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id AB8C35800D1;
 Thu, 11 Jun 2020 03:33:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:33:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=dnn2VwXT/vDYg
 D25QRwQqmGTjs6iJIx5UDDgqGWJzpY=; b=gqjSXbaThFVeYrZj74p7UxRK8aGse
 ggtThe3LaT6T7kwHNuwMpEBJnSa+gTKr/z6P9GlrVhfZjGXAjKibdKzHHy3ADjOf
 r38DPcOEXT5K7ITz5jLzuJQ6RJRDn1OzJUcTdEkCurn7i9u9DphRgvYlOLd+FG12
 jTz8PCHLwc3EABIEEGHJ1z7otuipLDZYQOixJdOUKnq7725crI747M6g9ZuTqp67
 bsDiWRq1uSG80oA2kC/07yHWTCUjQtCjgFi/VfoKC9riG9kh4kzu+cUc1S+U7DRl
 ClulElmCcJDrJwFOsjhLz8OhI6mIbHsyGu/jELf1xs/42DBEPZlqDAL8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=dnn2VwXT/vDYgD25QRwQqmGTjs6iJIx5UDDgqGWJzpY=; b=ivWAj0Hx
 CIwa+R19EQSVIC5KDTz+IvfE+NeiGpeFL5eo62teLR4ti2/x4HBWXBAvrV+b3/+f
 p5P32pUMSEkp5Mrj1JcsfTRBk3rBrmnqw/T8nvFcflyPMklcwr9IihzT5B4WK2xy
 mkIsY1fN+/QK5YekawMnOWp2E31DivOojBzL/bV/vJy4uNI1gd94syuIiNAwwhEm
 Hi/zDM3QVYBirZBIFADIj/BixMmKHu/cuqox/XeZ2rg5OR/0IgLjGabxpNSGhUnK
 +6HAl6NU7taIAv31EoRA/Ey2jdxlOjdDLkMB5joAk4sDUFwgqxLdKU8Yh5a/UWRH
 BhGRiMP3zU2koA==
X-ME-Sender: <xms:LN7hXvBu2S7-ObcUmH8UvXHZsRpdpteIPejqNvIEmyMrNBu2oPFBbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvtd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:LN7hXlj4dfmMvBF-FyYDIVwdBA58rci8ZrN15ovXTUFNo0tU_IbWXg>
 <xmx:LN7hXqkl2mytxiW0agjmpZu40Mum3jAJr23bIw-0FYW6sN2Y16yk-Q>
 <xmx:LN7hXhxLZ-EQCBuxZClvNQdbFkxfuyX07zUNl_rijlAmWaCN9Pi1xQ>
 <xmx:LN7hXnHK8f8H2ItW47LvNMt0ddTIYLqsG6V9Y5sKy6LiXkhxqJ8Aow>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4CF3D3061856;
 Thu, 11 Jun 2020 03:33:00 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 25/27] clk: bcm2835: Allow custom CCF flags for the PLLs
Date: Thu, 11 Jun 2020 09:32:14 +0200
Message-Id: <abfae9fb4bfd76cd83d5ae97499b97b56b5dee58.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003301_597992_C4CEE333 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

While some clock types allow for each clock to specify its own custom
flags, the PLLs can't. We will need this for the PLLB, so let's add it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 32f5c13be9d1..846ea68b2c73 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -421,6 +421,7 @@ struct bcm2835_pll_data {
 	u32 reference_enable_mask;
 	/* Bit in CM_LOCK to indicate when the PLL has locked. */
 	u32 lock_mask;
+	u32 flags;
 
 	const struct bcm2835_pll_ana_bits *ana;
 
@@ -1310,7 +1311,7 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 	init.num_parents = 1;
 	init.name = pll_data->name;
 	init.ops = &bcm2835_pll_clk_ops;
-	init.flags = CLK_IGNORE_UNUSED;
+	init.flags = data->flags | CLK_IGNORE_UNUSED;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
