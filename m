Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23CE12F9BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yncyXg6SUGN5lBcJL+lfIsYBkZdJxZ8s+MdNRhUrm3g=; b=UBbnhhulfr057C
	Lf3kR8l2p297H3FiD8tAfbcHJmSPJYWrkoAE37sz9J08OpM8v8qI9hRacyCc9lg8Al3/9/9vXshi6
	/sOyZa2kmf1jHPd59OTg0zu4aczS1o8twEKSpXqdwfHxdUrqvhfHy1loCPEdqA8r4+gRlc7yEUHUC
	IBDbqOl6ah/0R5mv+KJ1zyVVwceg3RGaBEyDXrVmo/mtmj8qMcxcIted0rxY1s/ZpocLl6yu+08x/
	But6GRvu9Od91ObuXUJFFCvu2do8VhssWtGUjhdpyLbRSB0BwWYBt0TjzDKyvb3+f/QQzNmsaqJV2
	oKgVlOt4AJzNjKYZFtTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOsI-0004Nz-7V; Fri, 03 Jan 2020 15:28:30 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOry-0004Fu-J4
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:28:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E6B639DF0;
 Fri,  3 Jan 2020 10:28:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 03 Jan 2020 10:28:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=2eZ1TIis3mooB
 V9Ss/MCpOTcREQeBYoHRaeqEzOlIRM=; b=RPwcJsmf2okewSa9Mg7Pr09AhPhad
 txed7tEEYkfHCqMcVoPPqWMaAEMaT48OkFx3lazIQ7ACtfhsk32u0rSWotPT5Y/O
 TM+0+Q1LQ/q+l8z+o2UbWfcU1jrwl93OlSvRd7FTHJBKAyI9N1TQiYi4oswm8wip
 bSmEnCaTpqYxA8h64it32GF7bJe9qhPprhTzmPn/jKc+3oOTiDbr2Vuu7XN9BI1k
 ZluDWLJioVybmWTXJfIsD/nhaadwe6GzqL1J7RCeCnkOWfqx2FYFK9IuRghGPMus
 N72hJBF58/nh9MB+JJXAbzPVe+NLbv3ryWlzH+KDv0Zn0tIVfDaYiqDXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=2eZ1TIis3mooBV9Ss/MCpOTcREQeBYoHRaeqEzOlIRM=; b=f0LikRLS
 kF3yMyyl9/lblrE/gJ81hwfaK6EpEpgIOOwjsvAVfgyQKAdPyQB+dRuOWVKaHKBo
 hLme6YmUrJ4z1FUTlsN5Tmjo8WuJXDT6q9sm7hUFvvIC6R0UQ0x/4PsgK7eJayhm
 5gCZcoxkoJLNorCCOGF8mUoMiQEkzmobVqF75AEebx0+8ZDPeT7QZberQ0LFbpXt
 EiXTvTSvI0ciGlKoBLCacewetNoAhcjcfPrngxhqs/zlFx+DQx/yc+9/Iaftkw7p
 czVt8e3aVdA8MHJwi+fPGB5cRZDZFRQX5UrHqvtC9ARKcsfY7IEQRumSUlW0Q1D+
 /+Rv1Hd0yWLyAQ==
X-ME-Sender: <xms:iF0PXjVSDIN6LpZwg6dZtz4FpeoqnnaJ6vAssaeJujhNv2fMKqY5FQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegfedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:iF0PXlu8-7NPO3fr7LdjzzMkUs58XBOQLZp749DwJABXQ0zDwz45iA>
 <xmx:iF0PXhF-Ji9M3T458tKHMY6jsTJknoInO4CA-YmK_7FTR0iTjUhGQw>
 <xmx:iF0PXtDEjiDFOTZxSmVUgLxcwJrBaRY4n3wykPf4wr1CAMycZZO38w>
 <xmx:iF0PXt7_dmA9UVf4NWgPaWCJQracVwxj-YoadEGw86XSjgJORNGAzA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6481380059;
 Fri,  3 Jan 2020 10:28:08 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 3/4] clk: sunxi: a23/a33: Export the MIPI PLL
Date: Fri,  3 Jan 2020 16:28:00 +0100
Message-Id: <20200103152801.47254-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200103152801.47254-1-maxime@cerno.tech>
References: <20200103152801.47254-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_072810_784299_ABF5568A 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
headers.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/sunxi-ng/ccu-sun8i-a23-a33.h      | 4 +++-
 include/dt-bindings/clock/sun8i-a23-a33-ccu.h | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-a23-a33.h b/drivers/clk/sunxi-ng/ccu-sun8i-a23-a33.h
index 72df69291cc6..5bf5c4d13b4c 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-a23-a33.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-a23-a33.h
@@ -24,7 +24,9 @@
 #define CLK_PLL_PERIPH		10
 #define CLK_PLL_PERIPH_2X	11
 #define CLK_PLL_GPU		12
-#define CLK_PLL_MIPI		13
+
+/* The PLL MIPI clock is exported */
+
 #define CLK_PLL_HSIC		14
 #define CLK_PLL_DE		15
 #define CLK_PLL_DDR1		16
diff --git a/include/dt-bindings/clock/sun8i-a23-a33-ccu.h b/include/dt-bindings/clock/sun8i-a23-a33-ccu.h
index f8222b6b2cc3..eb524d0bbd01 100644
--- a/include/dt-bindings/clock/sun8i-a23-a33-ccu.h
+++ b/include/dt-bindings/clock/sun8i-a23-a33-ccu.h
@@ -43,6 +43,8 @@
 #ifndef _DT_BINDINGS_CLK_SUN8I_A23_A33_H_
 #define _DT_BINDINGS_CLK_SUN8I_A23_A33_H_
 
+#define CLK_PLL_MIPI		13
+
 #define CLK_CPUX		18
 
 #define CLK_BUS_MIPI_DSI	23
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
