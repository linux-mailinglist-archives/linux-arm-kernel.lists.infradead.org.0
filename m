Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0164A17E96A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:56:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9Ndjb5Bfs/A0645RkULXyo0/ulwCwSF17vwA7nsIAc=; b=QwN2syBu4hyEpv
	y9s1DFlea4+a33kDZcl7Eos8UKXFY40ZxZQLdXaEzAHASAro13AInJrNH6wLtj5dyYO8xPC5MonW1
	E08QOuTSxSRs08CLr4dGHp+dfkuM1LD92OlCnDf/2q5Vi4mQKorubKdm+Pf3REJuzv+ndFxuSZKgu
	OLmJaG2dStcO8GlowKSIsDhG+zImvb2KujvsPhR4iKNpxNN391YuFlS/0QzerKmLcXGpPiI82hExE
	yGudwaNf/ODjwq3s1BnrNR04iu0Z9GdYu5WL6cR+rOrfaEP+XT2ZttvJZ3IdNncAv9Uzf8d0xSG42
	y/ci0j4pqaEgXuxOzGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOVd-00021o-VM; Mon, 09 Mar 2020 19:56:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOVT-00021H-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:56:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B2D2A294D5A;
 Mon,  9 Mar 2020 19:56:03 +0000 (GMT)
Date: Mon, 9 Mar 2020 20:55:59 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
Message-ID: <20200309205559.3c860aae@collabora.com>
In-Reply-To: <20200309192306.GA20358@pendragon.ideasonboard.com>
References: <20191114131751.26746-1-marex@denx.de>
 <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
 <20200309192306.GA20358@pendragon.ideasonboard.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_125608_078887_65437561 
X-CRM114-Status: GOOD (  19.58  )
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

On Mon, 9 Mar 2020 21:23:06 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> On Mon, Mar 09, 2020 at 11:50:59AM +0100, Philipp Zabel wrote:
> > On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:  
> > > The bus_flags and bus_format handling logic does not seem to cover
> > > all potential usecases. Specifically, this seems to fail with an
> > > "edt,etm0700g0edh6" display attached to an 24bit display interface,
> > > with interface-pix-fmt = "rgb24" set in DT.  
> > 
> > interface-pix-fmt is a legacy property that was never intended to be
> > used as an override for the panel bus format. The bus flags were
> > supposed to be set from the display-timings node, back when there was no
> > of-graph connected panel at all.
> > 
> > That being said, there isn't really a proper alternative that allows to
> > override the bus format requested by the panel driver in the device tree
> > to account for weird wiring. We could reuse the bus-width endpoint
> > property documented in [1], but that wouldn't completely specify how the
> > RGB components are to be mapped onto the parallel bus.
> > 
> > [1] Documentation/devicetree/bindings/media/video-interfaces.txt  
> 
> Things are funny sometimes, I've run into the exact same problem with a
> different display controller today.
> 
> Shouldn't we use the data-shift property from [1] to specify this ?
> Combined with Boris' bus format negotiation for bridges, I think we
> would have all the components in place to solve this problem properly.

I wonder if we shouldn't take more complex pin mappings into account
now and go directly for a data-mapping property describing those
mappings using a string. This way we'd have a single property that
would work for both fully parallel buses (DPI/RGB) and serial (or
partially parallel) ones (LVDS).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
