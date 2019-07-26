Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB2D76711
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYwZzvJIvs6qInmQw4x8KclDiL6aY3sE35n8SQbJsic=; b=Zj5uFlxcNA/0sl
	P5O01UOZZ3QaL6g/WkHaFyWH+z3qKV/aq1v46nWAV/lGllydopEBSWSvRYXo7QU4fMQGWo3PFSj8L
	DBA8KYG2+4ghT9llNjRAkkIu/0OoE375tcZOC8kH39hVL+3QOPV3TrxsGZoQuEI+g73cA4yiiOTlV
	jt0ZS5/vtgVKhMuJCLV0dxItIClGaWIvjB3/50y/wQhssmV2yIATAuqrlS2wL48cfNRv3N7r1yXoB
	PjtJ+homkzK3plA/3oXkZBTSjjJ15bp2aaKh5VKhUNNJoKoOyvH3EA+4LPBejte1nutgnf7uG228r
	ZWo0HxDYuKwBY1ey6nLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr04K-0000cY-G8; Fri, 26 Jul 2019 13:15:32 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr040-0000Y7-9g; Fri, 26 Jul 2019 13:15:14 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 1C3B480502;
 Fri, 26 Jul 2019 15:15:07 +0200 (CEST)
Date: Fri, 26 Jul 2019 15:15:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: "dbasehore ." <dbasehore@chromium.org>
Subject: Re: [PATCH v7 2/4] drm/panel: set display info in panel attach
Message-ID: <20190726131506.GB17801@ravnborg.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
 <20190710021659.177950-3-dbasehore@chromium.org>
 <20190723091945.GD787@ravnborg.org>
 <CAGAzgsonxAcOLxPSoP6Swab+AFPxWaxmC_tg87J=6Nes_awACg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGAzgsonxAcOLxPSoP6Swab+AFPxWaxmC_tg87J=6Nes_awACg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=VwQbUJbxAAAA:8 a=CPKLS5VrouiAa9iZAqIA:9 a=CjuIK1q_8ugA:10
 a=E9Po1WZjFZOl8hwRPBS3:22 a=AjGcO6oz07-iQ99wixmX:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_061512_521215_16AEE87A 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Derek.

On Wed, Jul 24, 2019 at 03:15:19PM -0700, dbasehore . wrote:
> Hi Sam, thanks for pointing out the potential conflict.
> 
> On Tue, Jul 23, 2019 at 2:19 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Derek.
> >
> > On Tue, Jul 09, 2019 at 07:16:57PM -0700, Derek Basehore wrote:
> > > Devicetree systems can set panel orientation via a panel binding, but
> > > there's no way, as is, to propagate this setting to the connector,
> > > where the property need to be added.
> > > To address this, this patch sets orientation, as well as other fixed
> > > values for the panel, in the drm_panel_attach function. These values
> > > are stored from probe in the drm_panel struct.
> >
> > This approch seems to conflict with work done by Laurent where the
> > ownership/creation of the connector will be moved to the display controller.
> >
> > If I understand it correct then there should not be a 1:1 relation
> > between a panel and a connector anymore.
> 
> 
> Can you point me to this work?
Please take a look at the series with subject:
"[PATCH 00/60] drm/omap: Replace custom display drivers with drm_bridge
and drm_panel"
Link: https://patchwork.kernel.org/cover/11034175/

Laurent has done a great job explaining the background,
If you look into the patched you will see the idea is that a drm_panel
no longer get attached to a drm_controller - it will be an argument to
get_modes().

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
