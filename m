Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCD5160E39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r59r0t7qhnLATad5q1umCmSXzHl/bY7+D10boPL0RFE=; b=YpLnt56UiI5TCy
	GnK1zIvWZtBrUjF+LrgSRUvo/Ed5Dy54RYA753RARbtOr72eAXkV7u93adiQg844GS8Y1FKhoBCTM
	ix6vJpcz8wprpPeGUWI7MQNJAr6AL2c2EWoD2SxP9SXSyN/lWIp2/qfV+95CceHEqfJMy+ENuBwr3
	5l87TsizORT5TcxOu18gWEQUfdCtmJIaTpE/noh/FShERukeFLtyhi15l0gm6UXwD7j6YhBGVTQEX
	hsVvUVv3awrt0C5NBmSXQ2A6w6djrln3GNZGHrdZHhsq9nTbkai3OYMs2Bico1tKu+/m0/rxmPFor
	aFB0Vg00had0V4DDIOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cUH-0007wy-4i; Mon, 17 Feb 2020 09:14:45 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cU7-0007w4-1R
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:14:36 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 23E8158D9;
 Mon, 17 Feb 2020 04:14:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 17 Feb 2020 04:14:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=I14qqSa44pqibysylqjnJvoStph
 owXN60qAH0HmIOOk=; b=EAuUGbIuhZh0DXzoXVHHztJTrb8eBm2mp9htdM6LVn/
 B4yzXZmGWryVzz9Fw8WCCnvJumnVY1EdR78GNUh9O/S4NzDZzeMieTUCK+KTLW95
 9SXL7yIrbv0MrpjZzRs29MBVa7AAey6KOVjkCrfMeTlGgOe29OomQ5W/3KhfdHEB
 2I5CkHHJpJ+tiQe+1huTRXXvfla2buzQbUWGLEtd0QpruMmX4P4tic+4rr3m9nZR
 uZ9HhmwQuWxJ/wYeKwtRGMLIMSsceuTg/J4y8PryN/u62SBmoP4ldSsAPytMHtuX
 aeXiNViClRaOK4gHgmwfPvbuadUde+HnJEY36xUeGRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=I14qqS
 a44pqibysylqjnJvoStphowXN60qAH0HmIOOk=; b=lik8Lr7RVQqNSV3aPYfoUp
 H90Xt8Fpw3L2KIrMaoRynRmRd9D9C24cDxR8GAusJRkQEwWT2rHg7d+m4wOdyBcu
 AXthhxe+m8akQCKbyUJEdzv2aHGTXaQqxDXR77IqiiC4s0fvzgLT/PtwpMKItwYZ
 h3qtxU10iXxprv/nPOY5AR3ekqWqrWNy86YDf85SGHiO4MK9B+qmW8d3UeSfYPw/
 6xcdTni4SXTveWcYtzegbp3NmNPy5CSl8Q2Vdq+f2x34PWZQ+3IG8eADG9cQU4hs
 G8+ZgJXCvqIhg/DYfdqlGlgIRzv/Tne7gU2+J3Kdswk7PZcIaeA+2OgCtz4YGSrQ
 ==
X-ME-Sender: <xms:cVlKXg51H4uoiVdRpFvbxv5WaiiJHys340EmbcV2izrGll7g2Mp8eA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeeigddtudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cVlKXjjKhtDjlU7U-ryVkWl9vjdPNTrE9gGOjfgHuR5pNC-o8u0TsQ>
 <xmx:cVlKXuITpIJ3ig2bMMiZbsUXKDTNM7wC1G_wEqOrfpQOLSOyqN_IXw>
 <xmx:cVlKXtraCBKH8gXKGfliAISdaG5b0xo3twF3iliEFo1SKbIXb1_DqA>
 <xmx:c1lKXgelgsQq-uTX3XtfZK319DHI1tQY9w1Fd2bvLlqtsutqVCD8oA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 83F823280062;
 Mon, 17 Feb 2020 04:14:25 -0500 (EST)
Date: Mon, 17 Feb 2020 10:14:23 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 00/34] sun8i-codec fixes and new features
Message-ID: <20200217091423.y2muniz3hosquho6@gilmour.lan>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_011435_227581_65059DCF 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Feb 17, 2020 at 12:42:16AM -0600, Samuel Holland wrote:
> The sun8i-codec driver, as used in the Allwinner A33 and A64, currently
> only exposes a small subset of the available hardware features. In order
> to use the A64 in a smartphone (the PinePhone), I've added the necessary
> functionality to the driver:
>   * The full set of supported DAI format options
>   * Support for AIF2 and AIF3
>   * Additional routing knobs
>   * Additional volume controls
>
> Unfortunately, due to preexisting issues with the driver, there are some
> breaking changes, as explained further in the commit messages:
>   * The LRCK inversion issue means we need a new compatible for the A64.
>   * Some controls are named inaccurately, so they are renamed.
>   * Likewise, the DAPM widgets used in device trees were either named
>     wrong, or the device trees were using the wrong widgets in the first
>     place. (Specifically, the links between the analog codec and digital
>     codec happen at the ADC and DAC, not AIF1.)
>
> I tended to take the philosophy of "while I'm breaking things, I might
> as well do them right", so I've probably made a few more changes than
> absolutely necessary. I'm not sure about where all of the policy
> boundaries are, about how far I should go to maintain compatibility. For
> example, for the DT widget usage, I could:
>   * Rename everything and update the DTS files (which is what I did)
>   * Keep the old (misleading/wrong) name for the widgets, but repurpose
>     them to work correctly
>       (i.e. "ADC Left" would be named "AIF1 Slot 0 Left ADC", but it
>        would work just like "ADC Left" does in this patchset)
>   * Keep the old widgets around as a compatibility layer, but add new
>     widgets and update the in-tree DTS files to use them
>       (i.e. "ADC Left" would have a path from "AIF1 Slot 0 Left ADC",
>        but "AIF1 Slot 0 Left ADC" would be a no-op widget)
>   * Something else entirely

I'm not sure this is really a concern here. We need to maintain the
compatibility with old DT's, but those will have an A33 compatible
too, and as far as I can see, you're not changing anything for that
compatible, so we're in the clear?

If not, then the third option would probably be the best, especially
since it's only a couple of them.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
