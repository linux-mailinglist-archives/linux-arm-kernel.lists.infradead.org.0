Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064D4164978
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 17:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AKZc6KvSAsJeq+CoBaZZ4nokjPXEeSx7EyZZrmVbwo=; b=a1zWwS1OIokEqk
	wT7NAoBkvOGJjSgWfZk5MxJP70IIl3pAGExM+AakXER/fm7nfz3epPjXJxL6/s8TRbAB2i4Dm3Fhn
	zKziDUoPpDNQpyTmBnah5kjqeTXLxPrnD3wTCssQNaEixrJJPhcytfIHlDpePaId8FjUq296UGaPu
	hyIcXGNQCsPgQzxzYPxtQ2ae9XqWTiTLiMxOW5tpcvGfwJ1pCxzV4iFRt7WjFV3FD0vylcTiZosUH
	7Jp4jEZJiPPrksW3JxO5ci+apOse/RDV5hki7TvEF9DWYHHwWUljSAZMN+14IPdW+Vzwt0iFzHugG
	nkP0OahELcaGWqkEgMzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RsR-0002DK-TO; Wed, 19 Feb 2020 16:07:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RsK-0002Cp-II
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 16:07:01 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9778A52B;
 Wed, 19 Feb 2020 17:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1582128418;
 bh=rJBM2Gnp8sGsg4UIZMvUb7h2wsW/k0LNeeSa2VfEEa4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VrkdB72GClhJCGPFukl1RsMjTQgw+Uz3H/bdlKKwOevD1SmVjL/yq0IItfutggc1Y
 npftcZQMgILD6IbF+Xcwtfw7XSq1/Y9PKw36ig7W0hkLlLaQhZUKFDWK4JgbPub+3g
 SjTC+SMHv04cVImPMuHlNIlvZvjO7f0PfL24RWeo=
Date: Wed, 19 Feb 2020 18:06:40 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: rcar-gen3: Add reset control
 properties for display
Message-ID: <20200219160640.GY5070@pendragon.ideasonboard.com>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-4-geert+renesas@glider.be>
 <20200219153339.GT5070@pendragon.ideasonboard.com>
 <CAMuHMdUjVqC=AsNjO1icMyNRrdeMVed_HxMzn6HY=fRt+LvUwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUjVqC=AsNjO1icMyNRrdeMVed_HxMzn6HY=fRt+LvUwQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_080700_756370_9C0D797E 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Wed, Feb 19, 2020 at 04:55:52PM +0100, Geert Uytterhoeven wrote:
> On Wed, Feb 19, 2020 at 4:33 PM Laurent Pinchart wrote:
> > On Tue, Feb 18, 2020 at 02:30:18PM +0100, Geert Uytterhoeven wrote:
> > > Add reset control properties to the device nodes for the Display Units
> > > on all supported R-Car Gen3 SoCs.  Note that on these SoCs, there is
> > > only a single reset for each pair of DU channels.
> > >
> > > The display nodes on R-Car V3M and V3H already had "resets" properties,
> > > but lacked the corresponding "reset-names" properties.
> > >
> > > Join the clocks lines while at it, to increase uniformity.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> > > --- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> > > @@ -2503,10 +2503,11 @@
> > >                       interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
> > >                                    <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
> > >                                    <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> > > -                     clocks = <&cpg CPG_MOD 724>,
> > > -                              <&cpg CPG_MOD 723>,
> > > +                     clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
> > >                                <&cpg CPG_MOD 721>;
> > >                       clock-names = "du.0", "du.1", "du.3";
> > > +                     resets = <&cpg 724>, <&cpg 722>;
> > > +                     reset-names = "du.0", "du.3";
> >
> > I wonder if this should be du.2, especially given that 722 corresponds
> > to the non-existing DU2 channel. It's a bit of a mess at the hardware
> 
> Just following the bindings: "du.3" is the lowest channel that is affected
> by the reset.

Yes I was looking at that, and replied to the DT bindings patch. If the
outcome of the discussion there is to keep the bindings as-is, you can
have my

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

for this whole series.

> > level :-S
> 
> Note that supporting R-Car H3-N will make your^H^H^H^Hthe rcar-du device
> driver writer's life even more miserable, as suddenly there is no longer
> a DU2, while the single unified Display Unit node prevents the DTS
> writer from not setting the DU2's status to "okay" in the board DTS
> file. But you might look at the ports submode?

This will require a separate compatible string I'm afraid.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
