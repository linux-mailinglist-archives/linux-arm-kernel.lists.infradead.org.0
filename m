Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A8A148C50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:36:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysquvEnvBuJdQbPaHsR9oS7iw+XUPE7767cX/xm5XhM=; b=CJViYziLUjSSeU
	vxRv9U1qVuGvdN3nwGZySqZmu8EEMUSfV5k9x4MAFnUa7gLnK9HX5WDoygbPy4zCUTH99IJPZ2WCi
	2XMFIRK+kO0J0CQ/ZWQ1PADN289gGSy481pfJImALX6IrRtWcYtKGnZdYKZ3qnekTay2AKfPeH6Ey
	JTrdmsf5NEn7uU7W/KewDib/OpgvWBYe2KYwyoCvnOtno/SXXp01AvKudocxC7ssdhuTEFnKmYrn/
	UmRwoPMQcp42LipdKB0uL1SwVj3s6PMUC7b7S5MOHNOTkYtincrI8HHuqoQmGkHixD+T5yunH7UIN
	D8HK+Pfv3uGbsyXqQbCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1wx-0001Pt-5Y; Fri, 24 Jan 2020 16:36:51 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1te-0005IA-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 16:33:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2A4F421F92;
 Fri, 24 Jan 2020 11:33:21 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 24 Jan 2020 11:33:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=EBr2n5r06Qk8M8EcrP2ppV6Pux2
 ICKEX+0XMuXgRpvk=; b=kWooy/ll1OWesspYToz7Vl9DfpYVdVDC/9aBpGqdpRf
 bDPrNyHjyACHyFbc7EutLp+T9BLMCfTcOqaWDM5VLVO4yTK3s2oYHtQevl1Vc50T
 S2dtTjXkTS1UD2+71l9a3YYIbS9wyeK9m+ti0dDoEpG9J8K8as2NOcWwjBqFYNQf
 XyMyRYLTngbX1vmJQ+jQvx+Fx4e4A3Y0VMGa826v5MOcDjc+juaqlaUCa3C1VoXD
 XQRRMBtZpJ5h/3UuQSw4b7HpyHxykWWvmWoHsXzoKuT7kaL2uwJcBqVZdkvMUw3V
 XOh22vus8VOCF25gutkXhF6qzEikhAfQdBl3W4+xHZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=EBr2n5
 r06Qk8M8EcrP2ppV6Pux2ICKEX+0XMuXgRpvk=; b=D1aaetkkx/4bsrcZZ8VC7o
 apDNLwpPCHz7/I0jr9/JqahYe+/Ib74FFKDeJvBHe5cPPsdMZDh7nmiDvVtPlb2W
 A8SFZnuX5yo36l4Sq1q1oLZC/dP/i+Q8jOr3xKxVU3sQ0SnokMzD9yMdbGU/hajY
 BAzw4BvkxS9+pMOUQFFqmJ3x0X+xKnguKcz1/ekNPmoP5zZTdADa+I2E2N5ET98U
 zC+hkp0deXt5bsfg1r5unP8ACP2mUYBe85ZUrI/VvPt/LqKvt65Qzai+duM2GFlK
 6kF1PonuE53HrcuNjOTwldYYF3PCZXsW3md5u3PuHvvngenvwI6VsQyg88iwlRgA
 ==
X-ME-Sender: <xms:UBwrXre8l04Zxc1Er61PYFZ7Pa2iNplRj9LB2gWTSLGo_Kcg2VuXrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvdeggdeklecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UBwrXsp1DT-h61_rPcdMsvhBOTOJAKNshlS1_mslv_n7vulV0zwk8w>
 <xmx:UBwrXoE4X4MjR1adJ-KFDVWmKKFkKC3sCIEICNq29iSG5To5oigrww>
 <xmx:UBwrXl8UQkRBbNQHe6_tDbCTtMD5NUYLlHd9J2XpL7TrjOUetCTlxQ>
 <xmx:URwrXpBt_H-qeUhtY7nJbYWBh3ughy4qVwZSuASyEpF_A05ow1kzRw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 382C63280063;
 Fri, 24 Jan 2020 11:33:20 -0500 (EST)
Date: Fri, 24 Jan 2020 17:33:18 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused
 AXP803 regulators
Message-ID: <20200124163318.y3pykbfgpwsqiru6@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
 <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
 <8006a501-733e-b998-edb3-378769cd3a4c@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8006a501-733e-b998-edb3-378769cd3a4c@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083326_759331_7464349D 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 09:14:02PM -0600, Samuel Holland wrote:
> On 1/21/20 3:05 AM, Maxime Ripard wrote:
> > On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
> >> The Pinebook does not use the CSI bus on the A64. In fact it does not
> >> use GPIO port E for anything at all. Thus the following regulators are
> >> not used and do not need voltages set:
> >>
> >>  - ALDO1: Connected to VCC-PE only
> >>  - DLDO3: Not connected
> >>  - ELDO3: Not connected
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>  .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
> >>  1 file changed, 1 insertion(+), 15 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> >> index ff32ca1a495e..8e7ce6ad28dd 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> >> @@ -202,9 +202,7 @@
> >>  };
> >>
> >>  &reg_aldo1 {
> >> -	regulator-min-microvolt = <2800000>;
> >> -	regulator-max-microvolt = <2800000>;
> >> -	regulator-name = "vcc-csi";
> >> +	regulator-name = "vcc-pe";
> >>  };
> >
> > If it's connected to PE, I'd expect the voltage to be at 3.3v?
>
> If we provide voltage constraints, the regulator core will enable the regulator
> and set its voltage at boot. That seems like a bit of a waste.

I'm not sure the regulator core enables them if there's neither
regulator-boot-on nor regulator-always-on.

> I don't think the voltage really matters, since nothing is plugged in to the
> port. ALDO1 can't go over 3.3V anyway, so even if it does get turned on for some
> reason, nothing will get damaged.

Looking at the schematics, it looks like the PE pins are connected to
the front-facing camera?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
