Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E451F91EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMq/HI3MJX4GCpzu9nKLQrwZw+hAN9W9SdnQIhjhbh0=; b=ohujMJBa9MWfGE
	kEj7RC1atL8ukw5x+Cdla/9bzSGQ3mqMHumEDM5X8RDGKdEzECCxwkr+t6yp9cbmaSY4UoPJeJbTB
	u9G7lujyW9i5tUFgeY6R2Wz2Uu2bHXifsWVOdIqIWHMRW97SAaYGaPv8qytU09mFHv7pUmqWUuSmI
	yO9Wn/+3wktglUfRwlrGyKV6j2BJSl51MUO+hviv6wJRnnuT4l62G8Gwt5vojBl5Zkf07b8qgsc8/
	SqbB6YkyAUX87ED1gYpDX8KqVs7vSW/yIROdJjfbJUgNrvwpgJwVxzHVUVxM8DN61WNFR5vTeTXE7
	CMVarsH7WZnRvTVNcfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkiB-0002wM-87; Mon, 15 Jun 2020 08:43:23 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgL-0001Y6-2y; Mon, 15 Jun 2020 08:41:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7E7F158014E;
 Mon, 15 Jun 2020 04:41:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=kZTi+Ua3AZclE
 VFFt8dvZ6VcmnI6J89SBajyMLNn8es=; b=VOpH3xGVoZk3cZvK1vGk+nGWAPwId
 6uKbvHVMKawbh0hQuLMuVUCe7RClJfzhZ9OCPAgXgdQHkhB6+v7r4+rYZM35Bbl9
 HehUKfGUjcngWYd5CiwHEVqYlahgME3IeEUDXrTbEiOycRvIuMRUdPE3TbbY5P61
 vQd4RJzvYa+cbMOzpjc8kNgpOdmK9Y2p0rRfcPDewQ6o3ArNhC++TiOMzyjMoBLP
 20nZtjsa7NTKFNY17BjU+MLJNjw3wZGRARrZPA28NA5eSNrMXKjm4qEbnz3HctzS
 YtL/eFf/gTXJ4VcmmR5HN2JqEeuNFhkQo1ggUGCJgtxsgzk943z7IU7YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=kZTi+Ua3AZclEVFFt8dvZ6VcmnI6J89SBajyMLNn8es=; b=oQ9vuA9d
 Q8fwGOO36h2EzhCNNjN3ppRHP2XNv7WnJep8dAWqI8NoTNVhCKz+qIrHiOlf9FYf
 SxlsKs4ccXK0ZQvGTRYHp+MeZWppvo+K8pFmnz9ra+gnRd5GhRCwEiZZOKDLBBbX
 HXaiHshNklpLd3bb/NS2szoRK3mdawRPtD4pX/zZKC148E4fGmxpMELydv+AwScm
 R2t7I0hBC7HkAdzU04QWubgSJUrHCH0QpzXCSNBrptYsHHw2gDXxvZQvTen5eoom
 +bA5BpkE7avgUqEXqQr+F8xcg6ZOLFHbXZ++A7ksVlYMQr3rNw65ja4zJ/Qry5az
 BnLbeLzfiNKiAQ==
X-ME-Sender: <xms:ODTnXpcOFi138EXK2UV1t-4nuMpAAVbuYeWYNgoTvq0yyCfuXt5Cpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ODTnXnP8qbDQMf3H3d_HmTBnv4If7h_gzng_WsXKZ6bedCGGZjEk1w>
 <xmx:ODTnXignlFyNTHGS9kWPMMvSn22B97Ge2vWLS6mrlvPHe9uy54eYpA>
 <xmx:ODTnXi8IBpQuxbpecdLbkaytYEV79OcTixPzLnz41cuhFoY601CQuQ>
 <xmx:ODTnXrKS-ROc1o2DkIlVKfEz_n1u_rmx1i0o7DqTPlYFC7KAFw8ONg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1944230614FA;
 Mon, 15 Jun 2020 04:41:28 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 05/27] clk: bcm: rpi: Statically init clk_init_data
Date: Mon, 15 Jun 2020 10:40:45 +0200
Message-Id: <0342572daa561dc1bb4c9fd10641b2016493e32b.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014129_302756_52CEA264 
X-CRM114-Status: GOOD (  11.24  )
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

Instead of declaring the clk_init_data and then calling memset on it, just
initialise properly.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 8610355bda47..ddc72207212e 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -175,11 +175,10 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
 static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
+	struct clk_init_data init = {};
 	u32 min_rate = 0, max_rate = 0;
-	struct clk_init_data init;
 	int ret;
 
-	memset(&init, 0, sizeof(init));
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
