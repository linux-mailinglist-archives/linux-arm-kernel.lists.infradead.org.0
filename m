Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BB81619A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 19:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9T+wisofvL3ivHZk/NzQlzu4Z61xI+PiBQLraCSx84=; b=G8GBngld/Nj4XL
	11+qFQK659U4dCrzJR/r9NhIxn/2W58v/vnNQOll6XsEpMJA/mTdXCAhpOS7LgVZSAtuIW6+m+QgD
	UxwqRzQSQ+7vpW/3RE33jVTrkpaboW0ZXgPI7iI6KKO/OR8T2qwi2SqQiDTwg2gKmg0eZWkPHPZoh
	vAZCwpBdJKVu4jTUv6jbdEEUqLv83pHWRCkfK7cZSZIf2npV0B8AdLHZTqW9XYE7NUl60/gkBRqR0
	P9dQ9IC5NCm4VVWkoZkIkT+y93t0QK1OjAx1hBQnHjR6+2Cv/O2DkS3+tt6DztP4nUQSqcoy5SYce
	GoNhheZDlvpY3/013Rxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kzl-0000tA-JK; Mon, 17 Feb 2020 18:19:49 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kzd-0000sP-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 18:19:42 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B1DDC1170;
 Mon, 17 Feb 2020 19:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1581963026;
 bh=LGYbPge+pK4TDEOF3sR06MljT1AaTQKK51QITDjD0Pk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kVCs+/i5Nf8a+0zGj3upccoToJSu9p8u3ivFHBRadhN4iL2nQhJNoBXHV672rY3o1
 jG2lTCpOryYQhy5snRE8bD9TA2r3ls+7jn+5nAP9uDAF0kiyE+rXTPY4I1VJnhQDID
 M++1Kyv+BqaaIwJGApOeTPOLhEUfTboaCsQ7FwB4=
Date: Mon, 17 Feb 2020 20:10:06 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200217181006.GE4830@pendragon.ideasonboard.com>
References: <20200214123244.109300-1-maxime@cerno.tech>
 <20200214131025.GI4831@pendragon.ideasonboard.com>
 <20200214154405.f5zuicm6uhhiczfs@gilmour.lan>
 <20200214154953.GJ4831@pendragon.ideasonboard.com>
 <20200217174253.mj53us4bb7h2lyca@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217174253.mj53us4bb7h2lyca@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_101941_318820_EA806CAC 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Mon, Feb 17, 2020 at 06:42:53PM +0100, Maxime Ripard wrote:
> On Fri, Feb 14, 2020 at 05:49:53PM +0200, Laurent Pinchart wrote:
> > On Fri, Feb 14, 2020 at 04:44:05PM +0100, Maxime Ripard wrote:
> > > On Fri, Feb 14, 2020 at 03:10:25PM +0200, Laurent Pinchart wrote:
> > > > On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> > > > > SoCs that have multiple TCONs can use the two set of pins on the first TCON
> > > > > to drive a dual-link display. Add a property to enable the dual link.
> > > > >
> > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > > ---
> > > > >  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
> > > > >  1 file changed, 7 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > index 86ad617d2327..aa6dd8409dbc 100644
> > > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > @@ -105,6 +105,13 @@ properties:
> > > > >          - const: edp
> > > > >          - const: lvds
> > > > >
> > > > > +  allwinner,lvds-dual-link:
> > > > > +    type: boolean
> > > > > +    description: |
> > > > > +      On a SoC with two TCON with LVDS support, the first TCON can
> > > > > +      operate over both pins sets to output in a dual-link setup. This
> > > > > +      will be triggered by setting this property.
> > > >
> > > > Could you maybe provide an example of how this property is supposed to
> > > > be used ? I'm especially wondering what ports are used in that case and
> > > > how they're connected.
> > >
> > > It's pretty trivial to support, it's only a property to set on the
> > > encoder node itself.
> > >
> > > I'm not really sure what you meant by your question with the ports
> > > though :/
> >
> > I assume that, in the single-link case, you have two TCON instances that
> > operate independently, each of them with one port that models an LVDS
> > connection to a panel.
> 
> Indeed,
> 
> > In the dual-link mode, how does that look like ? Does the TCON
> > instance that operate in dual-link mode have two ports in DT ? There
> > are two physical ports, so I think it makes sense to always have two
> > ports in DT. That's what we're doing for the LVDS encoders on R-Car
> > Gen3, in order to specify in DT which LVDS input of the dual-link
> > panel is connected to which LVDS output of the SoC. That allows
> > configuring the LVDS encoder to send the even and odd pixels on the
> > right port.
> 
> As far as I can tell, you can't control that in our TCON. It just on
> more lanes, that's it. Also, we currently have multiple ports, to map
> another feature of the TCON, which is that it can drive directly a
> panel, or will send its output to the HDMI / TV encoders. Adding
> another port in that will break the current binding we have.

This will create one issue though, in that the dual-link sinks are
supposed to have two input ports, in order to expose the odd and even
pixels ordering. If you have a single ouput port in your TCON, how will
you interface with such sinks ?

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
