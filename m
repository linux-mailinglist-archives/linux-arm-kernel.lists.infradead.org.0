Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FFC12C035
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5bh9gWxJjWuwR66uEIizNXwwQnQIMBQz7MUo5VlYIv4=; b=Cduq8PHuKWHmLt
	gXQWb07pnC5z87n8SwrbfDgFAqnBCkJmys20ugzI2hgja+FSzkHsWJ8j3lypXilFIAZUMuhGBvPZf
	6CCx31u9+rGP/ydkhmsUuXfbJHH9cfGsIKYUjPyoNz3teenFVmJNTGt0fBakM6HLkBUtFR8W0k0VO
	HSUoAyibSCjs0i65/wBnz10Y1P5OfxHtBy7H1fzsajOqo59MKHMadq/mhkuaEmN1eyqGsf2a+0zqL
	kmLQIIfGbpOiz4uP9BALiDc/OoO/yP0VC4uhtwwsO0Nk32cotHbnfGrQb/4hBhwX5Mg8TAH9ljt2y
	sE+p0qep3HcejI5sJ6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilOon-00050P-1u; Sun, 29 Dec 2019 03:00:37 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilOnl-0003VL-26
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 02:59:35 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 87E91537;
 Sat, 28 Dec 2019 21:59:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 28 Dec 2019 21:59:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=FlxbmteQj2WfnOCq43+POyjgaR
 NNd4vGvnrLYbVa018=; b=hP+2x3RwHA3UR0joBco7hsH26HJmyEJjWlsrO+4jbn
 73sPMUwMW7N27SwXqYlUT7YjbWmyLyghXRwZeTNkaGZOqc1eiEJSxdX5scMblEay
 lPj0wf09y79VAwkO7Non2mY2yTMnvsCbFgL+OH5nnmKfhVCkFNPOAVAgXOzUbmRG
 J/bbkGhQUDaw65YxxuSZFOUkiX+J43Jl7wWgQCRppJAQnE36qAPmchd79Ae/9jcQ
 CpQ0/9+NJ6MhcDN9IzuINTq3pduFZlzYnXhA0SRxWN4/NnMPtmtqxbFLwtnZHzGE
 C/cx+JrUbCJ+akp4eypRAlZJGkzxpEDC/JGaaY60Uj9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=FlxbmteQj2WfnOCq4
 3+POyjgaRNNd4vGvnrLYbVa018=; b=FGozJWtQof7jiY8CiORe8lHSAX4MqcFsB
 yXh4D1JovsDfDSYUwVSfi+EK2bC1rXPABSe6OWtvaBzkiHZJVi9aepajnn7WhRBL
 rIOvyp9S2CH2K8ttx4SSQQ1e3Ge93EbimH7CtSw0Gc5xQ3RweaVWfQjRMt1d/V+7
 LFxbAjz54X1by8HJda6zUL4ci5F6ni/X9UuBTo5Oz4AcZnH0bUOWJVJEQnRqRgYi
 GN18Z3j7mK8CsKu5YFOiD0wVVqPOytHioefz3ZLuoylt85Zmpxmq3V2TgWCvYiVG
 oSRh+Byd19Mtccg+lLUBVYThhhpLf1cT/PZiYmQdhPFOCPcd4qrIA==
X-ME-Sender: <xms:ixYIXljUarw-Gh-lyibCkYHK5EKjk9vYGa2R-0SO4kpC1He6I0QRnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdefuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffohhmrg
 hinhepghhithhhuhgsrdgtohhmnecukfhppeejtddrudefhedrudegkedrudehudenucfr
 rghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrghenuc
 evlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:ixYIXr7hUahlrmd6LV4tZ66SzIHFT4r--_GGVqgqR06B3VCk_gRuQQ>
 <xmx:ixYIXpsOliV2fm9ITGyqHjIpd2PJ2Iahm7QK9I4no4RQsowzSaVd1A>
 <xmx:ixYIXozCUEblDR0G-Ysnq6vah39iSvK5cWQZXwi5So_hQycbFTzNiQ>
 <xmx:jRYIXleAogyinq1v7lZxBcr2Wrj5dGTYic4K7xrtHW5k58HAtChB9Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 75C793060938;
 Sat, 28 Dec 2019 21:59:23 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 0/3] A64/H3/H6 R_CCU clock fixes
Date: Sat, 28 Dec 2019 20:59:19 -0600
Message-Id: <20191229025922.46899-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_185933_146679_A8C694EB 
X-CRM114-Status: UNSURE (   7.50  )
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

Hi all,

I was examining the H6 BSP clock driver[1] for guidance when porting an
AR100 firmware[2] to the H6 SoC. I found some inconsistencies between
that code and the sunxi-ng driver.

I don't have a good way to verify the first patch. Someone with an
oscilloscope could set the divider and check the I2C/RSB frequency.

Patch 2 should have no functional change.

Patch 3 was verified by benchmarking. Details are in the commit message.

[1]: https://github.com/Allwinner-Homlet/H6-BSP4.9-linux
[2]: https://github.com/crust-firmware/crust

Samuel Holland (3):
  clk: sunxi-ng: sun8i-r: Fix divider on APB0 clock
  clk: sunxi-ng: h6-r: Simplify R_APB1 clock definition
  clk: sunxi-ng: h6-r: Fix AR100/R_APB2 parent order

 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 16 +++-------------
 drivers/clk/sunxi-ng/ccu-sun8i-r.c     | 21 +++------------------
 2 files changed, 6 insertions(+), 31 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
