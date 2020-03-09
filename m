Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1747F17EA4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXtpgAleXWcE+dDWqXfXnxmCNaShYpsOs6UABrkNImQ=; b=Z+v6XlvYuPMTvt
	64l/S1MAHHYJw5edPwVxib4ZtlkPYsTerhPsY7ol1NvOWSRNeSzgD8cPjB31Tiee2vvgJL1kBl9ke
	TVd5RzOBer9JTC3rAJDstuE/0okPJt7DSBBiC2PzWl9bLRFlqd/JT50xlApD1uKzjp/qB3oElfaTT
	PtXdGSfTHqHMEuUG/W9vrlwEAzM0Wq57PrYEgSSRppl1I1Dy/YVPjJLu+ZbvEBjhOW0fOCCJp2r95
	usRnMvwGCoXIUuhOZkIdU9lEFFT51bPURUv+3qOactI3VYVNoiaNrjGR6vUsw5iUhTqVaBivvYCq/
	YWaiUVagUEw13aQBeRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPEt-0002aL-Fh; Mon, 09 Mar 2020 20:43:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPEi-0002YE-GV
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:42:54 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1903C294EC3;
 Mon,  9 Mar 2020 20:42:48 +0000 (GMT)
Date: Mon, 9 Mar 2020 21:42:44 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
Message-ID: <20200309214244.4d4671d9@collabora.com>
In-Reply-To: <20200309203211.GE4916@pendragon.ideasonboard.com>
References: <20191114131751.26746-1-marex@denx.de>
 <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
 <20200309192306.GA20358@pendragon.ideasonboard.com>
 <20200309205559.3c860aae@collabora.com>
 <20200309195926.GC4916@pendragon.ideasonboard.com>
 <20200309212218.11ac77ae@collabora.com>
 <20200309203211.GE4916@pendragon.ideasonboard.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_134252_851639_E71249CA 
X-CRM114-Status: GOOD (  34.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Mar 2020 22:32:11 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> Hi Boris,
> 
> On Mon, Mar 09, 2020 at 09:22:18PM +0100, Boris Brezillon wrote:
> > On Mon, 9 Mar 2020 21:59:26 +0200 Laurent Pinchart wrote:  
> > > On Mon, Mar 09, 2020 at 08:55:59PM +0100, Boris Brezillon wrote:  
> > > > On Mon, 9 Mar 2020 21:23:06 +0200 Laurent Pinchart wrote:    
> > > > > On Mon, Mar 09, 2020 at 11:50:59AM +0100, Philipp Zabel wrote:    
> > > > > > On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:      
> > > > > > > The bus_flags and bus_format handling logic does not seem to cover
> > > > > > > all potential usecases. Specifically, this seems to fail with an
> > > > > > > "edt,etm0700g0edh6" display attached to an 24bit display interface,
> > > > > > > with interface-pix-fmt = "rgb24" set in DT.      
> > > > > > 
> > > > > > interface-pix-fmt is a legacy property that was never intended to be
> > > > > > used as an override for the panel bus format. The bus flags were
> > > > > > supposed to be set from the display-timings node, back when there was no
> > > > > > of-graph connected panel at all.
> > > > > > 
> > > > > > That being said, there isn't really a proper alternative that allows to
> > > > > > override the bus format requested by the panel driver in the device tree
> > > > > > to account for weird wiring. We could reuse the bus-width endpoint
> > > > > > property documented in [1], but that wouldn't completely specify how the
> > > > > > RGB components are to be mapped onto the parallel bus.
> > > > > > 
> > > > > > [1] Documentation/devicetree/bindings/media/video-interfaces.txt      
> > > > > 
> > > > > Things are funny sometimes, I've run into the exact same problem with a
> > > > > different display controller today.
> > > > > 
> > > > > Shouldn't we use the data-shift property from [1] to specify this ?
> > > > > Combined with Boris' bus format negotiation for bridges, I think we
> > > > > would have all the components in place to solve this problem properly.    
> > > > 
> > > > I wonder if we shouldn't take more complex pin mappings into account
> > > > now and go directly for a data-mapping property describing those
> > > > mappings using a string. This way we'd have a single property that
> > > > would work for both fully parallel buses (DPI/RGB) and serial (or
> > > > partially parallel) ones (LVDS).    
> > > 
> > > I'm all for standardization, but I'm not sure data-mapping is the right
> > > property, at least with its current definition. It's really meant to
> > > describe how individual bits are mapped to the LVDS time slots. I'm fine
> > > extending it, but we need to define it clearly. How would you envision
> > > it being used in this case ?  
> > 
> > Well, clearly the data-width/data-shift approach does not solve all
> > problems: what do you do if the source R pins are connected to the sink
> > B pins? Well, the first answer would probably be 'have a serious
> > discussion with the HW designer responsible for this insanity' :-), but
> > once you've passed this 'WTF' stage, you'll have to find a way to tell
> > the source component it should use RGBxyx while the sink should use
> > BGRxyx (or vice-versa). This is something you can't extract that from
> > those width/shift props though. My suggestion would be to have one
> > string per MEDIA_BUS_FMT definition, so we can force things at the DT
> > level if we really have to. That's basically what the interface-pix-fmt
> > property was doing, except we would standardize the prop and values and
> > probably provide helpers so bridge elements don't have to parse this
> > prop manually.  
> 
> I don't think that would work in the general case though. We may want to
> use different formats and pick one of them at runtime based on external
> information (for instance when the sink can accept both RGB and YUV),
> hardcoding formats in DT isn't a good option. We instead need to add
> information to DT to specify how lines are connected, and deduce formats
> based on that.
> 

If we start describing the role of each pin, we're not that far from a
pinmux definition, the only difference being that we want pin configs
to match between the source and sink, where actual pinmux configs are
only controlled by one element (the HW block requesting exclusive
access to those pins).

Note that none of those things actually solve Marek's issue, which was
related to bus-flags, not bus-format. But I'm glad we have this
discussion, since that's something I need to solve for an imx setup
with a lvds-codec encoder connected to the imx-pd block.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
