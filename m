Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719A717E979
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFrb0ppmW0rbMz53V4xgiKs2IJ7KGB5vWMfCdBX18pY=; b=s/RjwIbDBmw8Gi
	EMMcCfuX+T74XdoBPz+/lN9betVjAgsq/9md2WC4lYK33YvAtMM6GfxsIJnd/KfXco0IX7pzWcBJc
	DVzfX+1+hVmWeSiqbe0EEA7BgpSfaMhScsufE3N3mnRm4OWwpRZw0Uh46ZPzJGVbAY+VEtEWpByP9
	OyPhyJXGGga6Diggi4/UnO50GhmUY8SvTF4Je1C2IexGRwn+KvCAl+cZZ2hOasb+mp5+qML/fk+2B
	SX+ze5N+HX1u0oNLUnRXYs/IKM0/RTZmQO6cK7W295IRqrNNUfY+U1KBL92xIyyZqFrhlS29aKkJ8
	6xALzzpXpavaQ1na51yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOYx-0002fq-TI; Mon, 09 Mar 2020 19:59:43 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOYq-0002f3-B8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:59:37 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6ED1B4BAB;
 Mon,  9 Mar 2020 20:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583783969;
 bh=9HPzE7v0X5C4I5Gj+pgKvWNjSp7g0CtAz1oCtlZ15GE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ScqnMUjBQQuy3ahDHVkCtaxP/TOCfGKlio0goqXw4vNBk05m348YYiB64Nxi5IfD9
 wEYpFEmkEAHk33Re49CCw+AcnrnAErMyJbIXeftdCZNs0QHMwVl7UPXDokRs9Zai+h
 9S+rdSuMRA6BcKC0T2ZZCFxEtB8ynPtDRIeFlcNU=
Date: Mon, 9 Mar 2020 21:59:26 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
Message-ID: <20200309195926.GC4916@pendragon.ideasonboard.com>
References: <20191114131751.26746-1-marex@denx.de>
 <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
 <20200309192306.GA20358@pendragon.ideasonboard.com>
 <20200309205559.3c860aae@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309205559.3c860aae@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_125936_529809_9818ADBF 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Boris,

On Mon, Mar 09, 2020 at 08:55:59PM +0100, Boris Brezillon wrote:
> On Mon, 9 Mar 2020 21:23:06 +0200 Laurent Pinchart wrote:
> > On Mon, Mar 09, 2020 at 11:50:59AM +0100, Philipp Zabel wrote:
> > > On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:  
> > > > The bus_flags and bus_format handling logic does not seem to cover
> > > > all potential usecases. Specifically, this seems to fail with an
> > > > "edt,etm0700g0edh6" display attached to an 24bit display interface,
> > > > with interface-pix-fmt = "rgb24" set in DT.  
> > > 
> > > interface-pix-fmt is a legacy property that was never intended to be
> > > used as an override for the panel bus format. The bus flags were
> > > supposed to be set from the display-timings node, back when there was no
> > > of-graph connected panel at all.
> > > 
> > > That being said, there isn't really a proper alternative that allows to
> > > override the bus format requested by the panel driver in the device tree
> > > to account for weird wiring. We could reuse the bus-width endpoint
> > > property documented in [1], but that wouldn't completely specify how the
> > > RGB components are to be mapped onto the parallel bus.
> > > 
> > > [1] Documentation/devicetree/bindings/media/video-interfaces.txt  
> > 
> > Things are funny sometimes, I've run into the exact same problem with a
> > different display controller today.
> > 
> > Shouldn't we use the data-shift property from [1] to specify this ?
> > Combined with Boris' bus format negotiation for bridges, I think we
> > would have all the components in place to solve this problem properly.
> 
> I wonder if we shouldn't take more complex pin mappings into account
> now and go directly for a data-mapping property describing those
> mappings using a string. This way we'd have a single property that
> would work for both fully parallel buses (DPI/RGB) and serial (or
> partially parallel) ones (LVDS).

I'm all for standardization, but I'm not sure data-mapping is the right
property, at least with its current definition. It's really meant to
describe how individual bits are mapped to the LVDS time slots. I'm fine
extending it, but we need to define it clearly. How would you envision
it being used in this case ?

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
