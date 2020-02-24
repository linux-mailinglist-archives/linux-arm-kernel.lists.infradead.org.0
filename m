Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BDE16A15D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqpX7Tvf8Ki0w4ju9j7N2a3wZFwLQH6Owmg03ae4siE=; b=TFE97jQl23znD/
	4wWqsaTBu2JLPqFmRHLgkjRmSRLT0g1BdW5UtI2rE8Cw9B8lW7+FRu1g/ZPOsdgRvZiouTC2pSxfd
	AHlgpxL1RazsraZA/1/Mly6Le93KsPbqxAPejtE4NzrfVZU1ROQKy2sQ9WdYxX2RKrWzhXvm/GvZS
	1eQkQZNzQvzqZpMVIAM0jpQdNcM9IYYsVca3Zl3+eSkov+ZOC4vpSuBnrRUb749TgtxSsepb8G2b+
	SKu1nWnQ3WGzQFt9fWEgJ0VaFVA58qZiVK1irLp8ntpJ4zWehkDXHa9Pm6RiCUhQthMR8Rak8c+aa
	/eXEfDzXk+EdUhyk91KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69nE-0004u2-27; Mon, 24 Feb 2020 09:12:48 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jf-0001TC-37; Mon, 24 Feb 2020 09:09:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id A7151580;
 Mon, 24 Feb 2020 04:08:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:08:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=TaGtmbCmLF2Fo
 LaNLgYEVhUrtAG5EI8ELKtGohVOro0=; b=BUvdZv5wWbBsyN+nVxMcymEYKnG/i
 wumVPJ1GGKyeY9X98f7lFwy/vqAo/3ILVZij8Zh+y5Xfo0ygANooo9z0+g2sO59f
 p+OQgAUMplLubLWDJasuSHAoF92w95eXqoIzrU41x9JIXrk/5lcq71j684ILXVY3
 TzC1/FaoqAitEJTWJCPVqt0tVto+aO6bpoX+OjdhBbpjK68VW4s8KZ1ZZFm3u2g6
 gVO3BJ86kuPkl7n05ln+w1cuntEhkaPj3xcfXq7j6jjwfRXviScqkza7u1lqEoxK
 CLyhnf381uQs+oXE6Of/IQXptxoHnXzyjZfWZk2V2544Z7YUydfFMm8Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=TaGtmbCmLF2FoLaNLgYEVhUrtAG5EI8ELKtGohVOro0=; b=nYqUxtdB
 ucZ+FoExm9RSKGYxVbpWe0m+/9MAZNY1asuA+zyCxTqj7ONdleIeo2INZ1KF7HhB
 04Jbl3M5h7czA9pwT94y8hedIiyzfYupFmkFmtK65NIC/nPt9TtgSX1FSjHtKedP
 D2otDpQHJ7rQ/Sn/3UxlmFiM8XQQ0H0y6El+kBLAUsy4OGhsWyNkrOb8jomkV5J/
 Cl6ISglAwA/f3mY0ss8KqWsc+BKz8uhe8FilbTD4soKTpFbw8gcAFnmLWiowuCM3
 K/RiUa3Fkk3nYizxIgHnXkJaIU8RWwjGeuteRgxaJPDcFVEefb/v4E3hXfTTZf8J
 IpmddzCpoQb5JQ==
X-ME-Sender: <xms:qZJTXibiV2JmdrenwtVxvc563scseREJr743WVaIpYFcl4SKVOWXcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qZJTXqp3oFJPciVBlxgdDC9h8a9BxU9CNpJfmxjZpPpAIM0IxWCmtw>
 <xmx:qZJTXupOIe_jrq_5DGf-EojaB-WYHmzJqgH7j6BhDxEulCViWIlHpw>
 <xmx:qZJTXs3LFZ6uvQdFooOTqbYPSW5tcpeMuQ1pZlzXj6ril02CcB9OhQ>
 <xmx:qZJTXg8U8qKaPUjruZQXyaa_vKRq4r35zf92rmA2zyp9TFlP99K29hnE-9s>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C2E4930610E8;
 Mon, 24 Feb 2020 04:08:56 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 05/89] clk: Return error code when of provider pointer is NULL
Date: Mon, 24 Feb 2020 10:06:07 +0100
Message-Id: <ab03d578775df76c12e1dcff5d5cc5c1eb4d6fa7.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010907_192455_22FDD971 
X-CRM114-Status: GOOD (  11.51  )
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

The clock framework DT provider helpers don't check the pointers in the
array registered by the clock provider before returning it.

This means that if the array is sparse, we will end up returning a NULL
pointer while the caller expects an error pointer, resulting in a crash.

Let's test the pointer returned and properly return an error if the pointer
is NULL.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/clk.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index f0f2b599fd7e..8532b5ed1060 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -4318,13 +4318,18 @@ struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct clk_onecell_data *clk_data = data;
 	unsigned int idx = clkspec->args[0];
+	struct clk *clk;
 
 	if (idx >= clk_data->clk_num) {
 		pr_err("%s: invalid clock index %u\n", __func__, idx);
 		return ERR_PTR(-EINVAL);
 	}
 
-	return clk_data->clks[idx];
+	clk = clk_data->clks[idx];
+	if (!clk)
+		return ERR_PTR(-ENODEV);
+
+	return clk;
 }
 EXPORT_SYMBOL_GPL(of_clk_src_onecell_get);
 
@@ -4333,13 +4338,18 @@ of_clk_hw_onecell_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct clk_hw_onecell_data *hw_data = data;
 	unsigned int idx = clkspec->args[0];
+	struct clk_hw *hw;
 
 	if (idx >= hw_data->num) {
 		pr_err("%s: invalid index %u\n", __func__, idx);
 		return ERR_PTR(-EINVAL);
 	}
 
-	return hw_data->hws[idx];
+	hw = hw_data->hws[idx];
+	if (!hw)
+		return ERR_PTR(-ENODEV);
+
+	return hw;
 }
 EXPORT_SYMBOL_GPL(of_clk_hw_onecell_get);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
