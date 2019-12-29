Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1AD12C033
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toSDBaRghN0oswBgA+429JGu0ggZdR+cr8cXnL3Fl1U=; b=PJkhc7qsetRXSN
	jHAEHR5uS2ITiUCtJmwIbWD1GKm/j3oKUuFk8JU5p1jqKr4pQ1pI5P/2qAXs58P9IOAigbZXHAAjI
	1Npx5nI3wyksZueFCov/D0iNaA6aQ1JkfEI0R/bCuQE3NCEsLyUakXTr9xRqFUNFNXu7Zc/k2WZYB
	frvHlyXLHbATRqpzI8LXRO6en/An1fNGeisUAHUvwOCUArR6SJ0yb21CmcArBAzPCJEBm622IWUxa
	TNoRku+NmGBp4xxPIToBdpHL6UXHOct/Yzfa2ZKQR9Ceqe/SZuSOYnflMSTq2MbsjGtHA908mqrdE
	bl8KNvzRnspDIlujRUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilOoE-0003gz-N8; Sun, 29 Dec 2019 03:00:02 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilOnk-0003VN-W5
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 02:59:34 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 9057B542;
 Sat, 28 Dec 2019 21:59:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 28 Dec 2019 21:59:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=NwHOl9r2jOmJg
 JvC0fW2SeeCz3WaxtKWL9iSQCd7ocM=; b=HfLeF8aLCBciifaADKWL9e/+rj6Sg
 PL+rFqHNXg6wC61FFil1fNtmvAublyFRsjhvIc9jWkxBUzHDoyyhfRpJYbknnfvC
 f1/cxx3zJ9KN+BFi5s8c4s2HEHyfkfb+AF+buDN83id+hJc44N0mf8Kx2wYVtWkK
 gC1mw/FOtEz0xaoH2E+CyiGfm/Ggg6aQmk3RCf2smiqVXQxlb1Wiwu4ummp0qaGs
 naZXDP5BjTSGJh/1Dp9QQtbla980Ly9yrmoihEmtilkSLiyyH84vZuuEaVOu5DlR
 4zkXNjfprV+9ym6W4IMnu4zRkDhSzIym/NnEjbk+DmM8aiR19Z6gue08g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=NwHOl9r2jOmJgJvC0fW2SeeCz3WaxtKWL9iSQCd7ocM=; b=jvpznrSy
 0c1ULk1LXDfiWtqFXqygbe+vBDBQJBiWWjF69zaGmb0cE5fdwYa5dniLTFjhE8HZ
 bgoltdiPqQFkRE9frU/tZilhcCGOl5yKx1rwREnjbJfg26RkFEAC7SgxCuim0X9e
 6t+TgbbfxQny8Wlb4VAj23jNXZkIOUFsWYgecCfZnLJsbQ6UuPyXF7P9WTH+FYn4
 GS6Ao+9rHmEpG52o42xeFdzhqfOp1NoVV3EkW8x4Y3qGtK7RPuHuemBolFoKygVX
 QZ5LMbYxwLvaiLNPosDK6Ypes0+5Tsxm35YGgduF755o3iRQpGcKgCDVUmH/5F6n
 zCt+dhBGy7Guqg==
X-ME-Sender: <xms:jRYIXgBJZvp5IfAEYJrO83pzFxDVqnBfbqYoxO1xWKOeI8mtmqCuXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdefuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:jRYIXto6nzVpeG7P2CYc0voZvqV08WZrxopxs9rjjt9nFoJWp1RlPA>
 <xmx:jRYIXo8FLlv4TtByjcq0nk09tgoqsx3kwOMsGs9Tig5fBhjqYEj1CA>
 <xmx:jRYIXmmXsE2GMrafeveknWYzqK10bvktFZnLQX457uZCaIWNIqH8Vg>
 <xmx:jRYIXuZF8ZZYNBrYbrqtKiSqRQU7nn6gzYB4IVKsjS19joPaol4gfg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id AC897306099E;
 Sat, 28 Dec 2019 21:59:24 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 3/3] clk: sunxi-ng: h6-r: Fix AR100/R_APB2 parent order
Date: Sat, 28 Dec 2019 20:59:22 -0600
Message-Id: <20191229025922.46899-4-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229025922.46899-1-samuel@sholland.org>
References: <20191229025922.46899-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_185933_075932_53D9C4BF 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, Samuel Holland <samuel@sholland.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the BSP source code, both the AR100 and R_APB2 clocks have
PLL_PERIPH0 as mux index 3, not 2 as it was on previous chips. The pre-
divider used for PLL_PERIPH0 should be changed to index 3 to match.

This was verified by running a rough benchmark on the AR100 with various
clock settings:

        | mux | pre-divider | iterations/second | clock source |
        |=====|=============|===================|==============|
        |   0 |           0 |  19033   (stable) |       osc24M |
        |   2 |           5 |  11466 (unstable) |  iosc/osc16M |
        |   2 |          17 |  11422 (unstable) |  iosc/osc16M |
        |   3 |           5 |  85338   (stable) |  pll-periph0 |
        |   3 |          17 |  27167   (stable) |  pll-periph0 |

The relative performance numbers all match up (with pll-periph0 running
at its default 600MHz).

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
index df9c01831699..50f8d1bc7046 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
@@ -23,9 +23,9 @@
  */
 
 static const char * const ar100_r_apb2_parents[] = { "osc24M", "osc32k",
-					     "pll-periph0", "iosc" };
+						     "iosc", "pll-periph0" };
 static const struct ccu_mux_var_prediv ar100_r_apb2_predivs[] = {
-	{ .index = 2, .shift = 0, .width = 5 },
+	{ .index = 3, .shift = 0, .width = 5 },
 };
 
 static struct ccu_div ar100_clk = {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
