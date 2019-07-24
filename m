Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC5A729A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ed1A9KClpH1GeropxVZf19TZkacqKdKBjJ+NYA1vgzs=; b=pqn0dq3Aqeil00
	IpfpTklDPDfSWLqCpfePN+klueFudyLlmKnlDD83Gb5V9AeT6z4+1JHn0m8vIbdzKzU/oINj4uyqu
	T9Rsb66m+iSW04arcmgIPxcTwfu/0IjofgXrEBAnkwZzuc0mYuN0xQGUhUHZhUDyJR0VNrhsWmNoL
	7p4nCcqw12n48uYnrYc9m7UMtHc/dlbMYouiTklZBgUgaRf0E/Kn66uzp59BUn52r/L/w0eiy3ZhG
	iw7ikCTgKanAlDfum7OVQBAUbT6JqXmC8t2BaeIrA2C+PMyIrtaFbGfR9674Q6Zt7R1KugCkN1nFo
	3i2u1Lsom8DEovC5QX4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCPB-000387-Vy; Wed, 24 Jul 2019 08:13:46 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCOf-00037K-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:13:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A211B1BE7;
 Wed, 24 Jul 2019 04:13:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 04:13:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=Z9cu/jAfTLPXGSW6gAaNx3qAdg
 J+sFyDlgrk5M8Y63Q=; b=k+q7UAhcAM26oYO9hUAagwzL+hrHSR5s1p4h3DUQVf
 U3oIxLHjx4rde1dUZb3afCorQ47ps3UvIeWll38clz3gIQSrUXZLsTcKduGXhJig
 M5TDhditvHG6Wpop8EwwNbYeJOnupyh8HCP8xRxD7xR1W4bdWBlh+HnWy14AWr1a
 ehnYd/38CqNYPW1mhoKfUl+eL3Wu+4+BY5YQgXq+KptsKc2Vi5XE7KfpAnEC7S0n
 7u12uMdmE7Z+VlUwF/3clczCW9aT8DZDgvBVyEZVgOpT7E1wUXoR3kc0DR6CAO6M
 ChGbhsmZvMPQGfJ5ueLDxtjr9VYqFbbY7H2CC5W3lUoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Z9cu/jAfTLPXGSW6g
 AaNx3qAdgJ+sFyDlgrk5M8Y63Q=; b=GFIe5u//MOSehrg4pLFa6fzeaefHTTHsC
 KcE4DtVvZqDdLSceuqsQt74U+Fx+UA3axFB9xLje/Zb6P1GbPk/I4g4I1j561/1r
 JzAKtd/Ra8UErE38HeG12g3eV73lZy4jnhHUYVIb64bSM0gfwDAUphRHwrYKXtrJ
 qcXBgtxmr8wPK7lxymd27AgKja3OcGk3WvlTLUm+8pw0XePcfUqVQmuW8hVszxgf
 J94UMeUPDWMiSyGdSwbJgC5+VrurGAoy2Dr65wseWzAuvVyQ+1rQWo6KnC3C8iIt
 wWnie7Fzf/Nf5il8bON/iYJWq8WO2hRRaXvbAUjIdQaZKVncbKs5Q==
X-ME-Sender: <xms:FhM4XdYl6s_v0frgxQfX-eAxBSB57mw8dBAcmK27Bs_7YjhXcUg_pQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeelgdduvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrghilh
 hfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:FhM4XToB9bhuKD6ybOqqYrcDVYdn-dvk50NL61v-LwO7mQPfIfvx3Q>
 <xmx:FhM4XcI2RIvOldexMpK96YaIO-5G9jytay0HYhfJ-Ztm1QwL-a8F_A>
 <xmx:FhM4XWbVBuikG1oH89_lRhBz9FV561KMHpeEQTIfLsvmUBKtopUwqA>
 <xmx:GBM4XVPmw2y04_DCBD8HGgbOG8QP_NcgdJT1ysI4NMLMBin7QWcMMg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 97BA080060;
 Wed, 24 Jul 2019 04:13:06 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
Date: Wed, 24 Jul 2019 17:43:10 +0930
Message-Id: <20190724081313.12934-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_011314_038280_D67C66E6 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Joel and I decided that going forward we're not going to name compatibles along
the lines of SoC generations, so discourage any further attempts by removing
the remaining instances.

It's probably best if we push the three patches all through one tree rather
than fragmenting. Is everyone happy if Joel applies them to the aspeed tree?

Cheers,

Andrew

Andrew Jeffery (3):
  dts: ARM: aspeed: Migrate away from aspeed,g[45].* compatibles
  pinctrl: aspeed: Document existence of deprecated compatibles
  dt-bindings: aspeed: Remove mention of deprecated compatibles

 Documentation/devicetree/bindings/mfd/aspeed-scu.txt         | 2 --
 Documentation/devicetree/bindings/misc/aspeed-p2a-ctrl.txt   | 2 --
 .../devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml  | 5 +----
 .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml  | 4 +---
 arch/arm/boot/dts/aspeed-g4.dtsi                             | 2 +-
 arch/arm/boot/dts/aspeed-g5.dtsi                             | 2 +-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c                   | 4 ++++
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c                   | 4 ++++
 8 files changed, 12 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
