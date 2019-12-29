Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418F12C031
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 03:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/W+r2WWOexdYqYYbgBoQ68Wh6GS8TNKHqWLo9OKU1I=; b=qVENs1j2twUMKZ
	Jg5KZPNPY8eCf/iqVwU4GwVDdU8gfep4NkC0fZtXDdA3w96GCcE21Y/nrc+oiPcm/RVFRjR1dcgQt
	7m429W7c4fwngfEOxk7jnwHSdUke+e258AlUA+dhzW6Bo6HBGrQTZt4S77gy6cGsOchegY7DxHAvs
	l1VQPfcfCLVjpAe6Vyzm5F1F4HUSXgFKzsyNHUre/qs0L0EyT99iuqftwQbaQKZx5pFF7mgQB65fx
	EW+mJJCt+QzkmL4kJtgJunKgUR3vHrPqsMcOiHDeYyKVSjcW/TedyCyhUfMS5kYIXbVK4JAwGZOt9
	Mahn4p8xbmA7OCBvDjzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilOny-0003XK-0z; Sun, 29 Dec 2019 02:59:46 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilOnl-0003VM-26
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 02:59:34 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 8A301539;
 Sat, 28 Dec 2019 21:59:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 28 Dec 2019 21:59:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=ZDD1dMfJwP1vA
 w3RuR4Ni3oZSNxXqSku28CF47THuAw=; b=LgkOV0MbOV8eNPqF2wiRqAs4SQ49B
 ltrc83h6Yql5M7Wu0BWbmSPMu/vCAcDk99IFGoWqzRw0EZVFUP04gfFusaTipro+
 Wp2S2iKduGZkvoShMNiXHyEw8mgD3XzstpyefuoaqHDKmJMH/6YfvPj6q2nL4Ltl
 hZ80Jwguo8Z+rn2jq4vk47mq/zqbJJr3IDvykrnUmdSNxQf+fqb57dyGApqqSZ6M
 7sE+h+4AGcgX8O0+AUCAgyNqIxwsB973yx4Y2PD1o3jZOIk7WeeveZjL0NHsbgN+
 +N7NNVMDFO3uTGFkwwvXl7qAoKwIantHVRY9s2DnAwI95mt6PS4ES7qfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=ZDD1dMfJwP1vAw3RuR4Ni3oZSNxXqSku28CF47THuAw=; b=Odyaqsd+
 h71U9919/FEsIAhGUBci826x69IhiSnMWvdCDG9Rs5VTLdBFGjANDjJS7DxnPEaf
 IBJDNSTaHY7Td1IDeUyjeTUlpPgZ3Tu4Y+v6+OU9N+Z3fE0aA2B3IB8412vocqsD
 YxMPpAv3LuEcv/56pew1E1LS8hont/voGgaEUjYMy695KSKY0DvHkZtffpCxbADN
 kH6IELgM884rVAGh7uU1vHBjt9xq5D4nrJazpgix5cEhkLnoXFA8Ucg9M5v2bc8R
 0XuWTtcE3NZa8YcWXt3lzDb05u95pALhpekDkETIFbFcwj6MSkBqIZ/sLh1hyuW+
 MKVNX/4CQ3HJEw==
X-ME-Sender: <xms:jBYIXuy3ZFbiUYxiQwAamqftm8ZnhfYtOHqQBDkQZfik4Ar3zqyp8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdefuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:jBYIXpVSGQoP4L7AYDOCsj0DiMb7S057eNwdWmvrmfUykdacdNw_Tg>
 <xmx:jBYIXmjF4ve3tsevV3rryfBDKuaAKI4Mz8xspAIMzlQSjwKVsA_-NA>
 <xmx:jBYIXhCbsummRnaL7UFqq_wfxcYeF8VceJH3ImP9I2YtpEpOGeWxkg>
 <xmx:jRYIXohliOiVCCGXzeXCMr7is5URLuL11sbRc0LUxp-f16Xu54bZBw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4B96A3060A15;
 Sat, 28 Dec 2019 21:59:24 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 2/3] clk: sunxi-ng: h6-r: Simplify R_APB1 clock definition
Date: Sat, 28 Dec 2019 20:59:21 -0600
Message-Id: <20191229025922.46899-3-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229025922.46899-1-samuel@sholland.org>
References: <20191229025922.46899-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_185933_144169_4853A9F5 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

Like the APB0 clock on previous chips, this is a simple single-parent
clock with an M divider. Use the equivalent helper macro instead of
writing out the whole clock description manually.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
index 45a1ed3fe674..df9c01831699 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
@@ -51,17 +51,7 @@ static struct ccu_div ar100_clk = {
 
 static CLK_FIXED_FACTOR_HW(r_ahb_clk, "r-ahb", &ar100_clk.common.hw, 1, 1, 0);
 
-static struct ccu_div r_apb1_clk = {
-	.div		= _SUNXI_CCU_DIV(0, 2),
-
-	.common		= {
-		.reg		= 0x00c,
-		.hw.init	= CLK_HW_INIT("r-apb1",
-					      "r-ahb",
-					      &ccu_div_ops,
-					      0),
-	},
-};
+static SUNXI_CCU_M(r_apb1_clk, "r-apb1", "r-ahb", 0x00c, 0, 2, 0);
 
 static struct ccu_div r_apb2_clk = {
 	.div		= _SUNXI_CCU_DIV_FLAGS(8, 2, CLK_DIVIDER_POWER_OF_TWO),
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
