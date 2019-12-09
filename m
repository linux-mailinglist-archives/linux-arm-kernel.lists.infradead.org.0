Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B45D11696C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBsU1RnPqF3gm6pauFRnt3/juxQh2nVlVlz4tMHmEIk=; b=Jcj513f/lzxVLI
	m1z24826ufV7m+fZvlK82FPnIV8eW5lHlg4AfZg7IquCwgbvAMlOV/DSXP30xsW720uWgvC4SQDXD
	oQSDkGxI6JkosvT4LoZhqcDeuuFtpM3MuQAQoZxu2PzAhkiJZ3/4zko55y8G2XNkNSCI+8UnfWFLh
	8IdOLRk82TrIAniizqu9Wcb1S4EVXjLr6fYRnOMeTYdkrdrfyYx9B0xTadM9m+pyMStHXZQ8zRuPN
	u+3EEUYiVyq+oYyTUKPW0t5tiOXIf73rsp6LP0B6MhMqw7gin/O34e6AJvf93qmQXbBA1Riz0BAJN
	D6q5DoBliycFHRUyuacQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFS2-000153-0I; Mon, 09 Dec 2019 09:35:34 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFRM-0007uo-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:34:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id F329522855;
 Mon,  9 Dec 2019 04:34:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:34:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=S5c/sy1rEfhoC
 tKq1f3YwzXpZZiw9bf4fsl2pQLauCM=; b=Gm1hRYX+P4eIv90Wp1zpSYlo2it95
 mclPXvfYsFPAZqMhBpvU0j9xNQ/dxptE6/B1zkLGlC1jEnZbSBNFlrnfkZ0QNuFT
 Ej8ilray5YvxdnE8ZXCWzJ/2X9r2O0SAoM7yxv/5VSteNBt1+Fq7EEQogiw0VfTl
 vjh08Tb+scfOtsu11xx8ArLmThAlOPmd1GvsV46aTNoej1JI4MnqOth0iM7VqOO7
 CQNlhH6vfA1H3gyGE8P9CZ592GC+wmJsXoGtu9HiJ51h+S+KUe9Ae07mbS2miP1z
 3njY/a1+E1gbp+yp905apS+q5Tteb1sYS/rNjTZU+yVExIhtARCxdX5Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=S5c/sy1rEfhoCtKq1f3YwzXpZZiw9bf4fsl2pQLauCM=; b=WoRSJ/D/
 kjMqWPPUgk6iPmiK9jejSrzmdPCCpl5pj27wJ9cngEKs4Zb7nC3W05xqDbDuD/6A
 R3ofNcOYfW1SyRFHT1TeemgSQjMXCa8yz92RVOHlzknX75jmAcqNydvsIH8GVJn2
 lcEFuVLt4/u4guoM1Witn6Tx7zpeLuxEYk6y0nz4Mc+C7Fk8TB4bH38sGN3Wu9kE
 8hFMcsQpDkOHIL/w29nM8KPhvUocbeB2DMSAKPbj6+2uWVHqucxoN/Vfw6l5IdCU
 YdTWCk7sB4z3m3daQypFoRbczE89KOskOxjsdKyMii3BEQJsr5/a6QR1whhdVza6
 dLkFyspJP5NuLw==
X-ME-Sender: <xms:OxXuXchVn6Nu7cjuoDxoNnl_EmJKaNtIsBGnWhDnvLJdnyn8JO7XcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:OxXuXaCgXiNqTuAAVHUCmg7-u1btZ2ge5EypcQv-m14dGEWsVR5_KA>
 <xmx:OxXuXb9x8CMxStJdislNuKmDqek_U7vby-CsL_4NAgrLXjhGIBg29w>
 <xmx:OxXuXbFcqV6iPY1olGMYCy-xQf2-NfCbxmNLWwwU6SzdXxjsJSXwzA>
 <xmx:OxXuXVliBq3lhhFtiK0RCguwhDEamrnm17FYW1d7GxwPfBdnr5CrOA>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 74A2A8005B;
 Mon,  9 Dec 2019 04:34:51 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 3/4] dt-bindings: sram: Add Allwinner SRAM compatibles
Date: Mon,  9 Dec 2019 10:34:40 +0100
Message-Id: <20191209093441.50694-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209093441.50694-1-maxime@cerno.tech>
References: <20191209093441.50694-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013452_802251_EA03DDC2 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, krzk@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mmio-sram binding was added missing a few SRAM sections compatible for
allwinner SoCs. Let's add them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/sram/sram.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 9ffef983510b..7b83cc6c9bfa 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -66,7 +66,11 @@ patternProperties:
           <vendor>,[<device>-]<usage>
         contains:
           enum:
+            - allwinner,sun4i-a10-sram-a3-a4
+            - allwinner,sun4i-a10-sram-c1
+            - allwinner,sun4i-a10-sram-d
             - allwinner,sun9i-a80-smp-sram
+            - allwinner,sun50i-a64-sram-c
             - amlogic,meson8-smp-sram
             - amlogic,meson8b-smp-sram
             - renesas,smp-sram
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
