Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F811696B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bni8zkqv8Q3lveUBeaQ/tW1rISWliu+LTJdvvSfB+JI=; b=EZkJi8KbqOTRmR
	xdXdUa9EDKTLxqds85SwdYuXi6tH7dJHEsn+Rpw+hYi5fhtrEEsjhEFrFhIOHiOn56QjJOOGuL3VC
	aWE+Q3AJ6f9/nPjAqp1CO58Gnt4wlDMkcNS2AL9av7vd6U1Lsozg0hCbeb/wWnWLzS2fvzeHDZAEd
	ChYV8oKsM72Fwb3i+X4LIDZBuMNWBLmfJ9s7qixuNh4M9+uA57eQvkwxpqR8+eHfh1u0r50EHdl2c
	dG4mbQrMext1EtTc/ty/Fk7Ym14i6kBBqAl8DNhZ21UhujIfsnAv2UYVjeyOr7tSFgqeDep52o192
	09aArhreNiEAoMKKHFkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFRo-00084M-2Q; Mon, 09 Dec 2019 09:35:20 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFRK-0007tL-36
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:34:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 7BAE3228A2;
 Mon,  9 Dec 2019 04:34:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:34:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=mKPUX87mu/fBK
 Hm6UpGd87kix2+aso87ZbphQBUSJ0g=; b=n9qLyvJ027c8MM0s2e9x8V6nYdEVE
 1i5wvw0LrX5h9ETBcVIidFEQ/IrTF0w5TOyrIf1eFLmOUjKDLqCuLZ/H08tlwSjy
 JMeZFFrLPm+US1n2H8mWNMjkRJaHhI35mQuA7/Hn+O/exp19cFs/HewJkhGyiObo
 n8/zTNWCX2vcJH9S1PFgHhxeQtxKtlRgA5OnVsEPrdvWpiG+vnxmIVKX6x9Gt/zc
 q/aSyMYhKFRdK3MTR1eToXDa8/twamWNsx+hL56ADK+2dI7os2AkTAP8exqvxvaa
 VpaUkkCISpHmob96deM3PPLoYZjErUZD51yOrmVe9DZRDcMFNI1AZFanQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=mKPUX87mu/fBKHm6UpGd87kix2+aso87ZbphQBUSJ0g=; b=HDGVEXps
 Doo3ncZigmq4LeE3IgrmPwfE6wkNtispHA6IgQXCBSYGjPI2rXlpwP+WCNGRvKjL
 saIIG2gxDcLgeWDIIkih+/BSVfs0nNgqXdx4MSoCZ+1OKcpY4GKIBZjZBK5/gFFq
 tHt2RkWoYb8wIj9ghvck9MJ7WePqUA/r7wlvvet5OHKcnCQxMV3HD7AELSAuNen0
 jhW/p3t9Uql9sZ397toVcGpPlrrt6zSHOel0JjY7KAppy1bY5ONXz9TLSdNzsTuG
 S1dqjAfYKmlDJioum5bjQzcXdvrBP4fZWKNjArd3gJapsAghZIWvPBnTnL4KE123
 OdQkxrcuLKHBKQ==
X-ME-Sender: <xms:ORXuXXSNuxz6kO7E6TX9kjrXy0DPlXpojWamlRGt-PklqZrlVhqqlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ORXuXbTIjnTIWrsPo068HUEaywVux-AdVsBas1Lvv7C3bDgy795KYQ>
 <xmx:ORXuXc-JF_-RU38L4hhoGLx1t1UHNeqVFeH5yWLpBAQLbw2_pgxuKg>
 <xmx:ORXuXZ8fBif_nZUoZDHnoE8syONvj3I0ID0LqaeRGj3vZNvR8vQHbQ>
 <xmx:ORXuXa2xDW5TYNsCpE9YGukNO3faPZS5-qD4xTNQyaieDKbJQOaATA>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 19D1630600A8;
 Mon,  9 Dec 2019 04:34:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 2/4] dt-bindings: sram: Allow for more specific compatibles
Date: Mon,  9 Dec 2019 10:34:39 +0100
Message-Id: <20191209093441.50694-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209093441.50694-1-maxime@cerno.tech>
References: <20191209093441.50694-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013450_270430_F37596D5 
X-CRM114-Status: GOOD (  10.23  )
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

Even though the generic mmio-sram binding has a list of the sections
compatible allowed, most device trees have more specific compatibles
attached to those generic ones.

This creates warnings at the moment, and we don't really want to cripple
the generic binding with all the vendor specific combinations that would
prove to be hard to maintain.

Let's allow additional compatibles for the sections, and then we can have
the vendor-specific bindings to reduce the scope of what's allowed exactly.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/sram/sram.yaml        | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 83e3bc64d6fc..9ffef983510b 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -64,15 +64,16 @@ patternProperties:
         description:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
-        enum:
-          - allwinner,sun9i-a80-smp-sram
-          - amlogic,meson8-smp-sram
-          - amlogic,meson8b-smp-sram
-          - renesas,smp-sram
-          - rockchip,rk3066-smp-sram
-          - samsung,exynos4210-sysram
-          - samsung,exynos4210-sysram-ns
-          - socionext,milbeaut-smp-sram
+        contains:
+          enum:
+            - allwinner,sun9i-a80-smp-sram
+            - amlogic,meson8-smp-sram
+            - amlogic,meson8b-smp-sram
+            - renesas,smp-sram
+            - rockchip,rk3066-smp-sram
+            - samsung,exynos4210-sysram
+            - samsung,exynos4210-sysram-ns
+            - socionext,milbeaut-smp-sram
 
       reg:
         description:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
