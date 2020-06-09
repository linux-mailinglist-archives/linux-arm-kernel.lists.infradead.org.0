Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FAE1F4169
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReiuqAAJuGb95m0DEed4303ERXaEjDofDGqV40Tl+WI=; b=Of6SoFH1t9LT6t
	dAOg+GxFED9bta81I+ELhnwdBCfCQho8/R7uru9iLQp2Yt1uMUHt52mtkWqN6t+8YTKyl0tbmmGKp
	KwzGghuOYNT/lV2CTzxpoBmtQjAmgQhzpq58PTYKE92VjXfMfDI+Q+Ov/ilKAurBzpZ6yGCrfgjZO
	J28oAZN+lHqqakFH7hljCeSs/tryNUuJzcRf0LKvj6x4NJGUYSX2GeJcZalKyM1h6asI+k0loOWkp
	ob3oQ7KmmYbm80WymjCsGeueAAFgT4QMkWihK/IxyyUlH/T215Pj5bAbndGxLHerdlyPPTwSW1T3j
	5ZSq/bPZBG5WukOgOPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jihUc-0002h0-A2; Tue, 09 Jun 2020 16:52:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jihUP-0002gI-Qh
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:52:43 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DA2BC8088;
 Tue,  9 Jun 2020 16:53:28 +0000 (UTC)
Date: Tue, 9 Jun 2020 09:52:34 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
Message-ID: <20200609165234.GM37466@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_095241_903605_6516F884 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Keerthy <j-keerthy@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200609 15:27]:
> On 09/06/2020 18:19, Tony Lindgren wrote:
> > Currently I'm only able to rmmod -f omapdrm, not sure if these issues might
> > be related.
> 
> Hmm, I always use modules, and can unload omapdrm and drm fine. But there's
> a sequence that must be followed. However, the sequence starts with
> unloading omapdrm... What behavior you see with rmmod?

Hmm maybe it's output specific somehow?

I just tried again with the following with v5.7. I see the omapdrm
usage count issue happen at least on duovero, but don't seem to
currently get /dev/fb0 initialized on x15 with these:

modprobe omapdrm
#modprobe connector_hdmi	# up to v5.6
modprobe display-connector	# starting with v5.7-rc1
modprobe ti-tpd12s015		# beagle-x15
modprobe omapdss

# rmmod omapdrm
rmmod: ERROR: Module omapdrm is in use

# lsmod | grep omapdrm
omapdrm                65536  1
omapdss_base           16384  2 omapdrm,omapdss
drm_kms_helper        155648  3 omapdss_base,omapdrm,omapdss
drm                   372736  7 ti_tpd12s015,omapdss_base,display_connector,omapdrm,omapdss,drm_kms_helper

On beagle-x15 I see these errors after modprobe:

DSS: OMAP DSS rev 6.1
omapdss_dss 58000000.dss: bound 58001000.dispc (ops dispc_component_ops [omapdss])
omapdss_dss 58000000.dss: bound 58040000.encoder (ops hdmi5_component_ops [omapdss])
[drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
[drm] Initialized omapdrm 1.0.0 20110917 for omapdrm.0 on minor 0
omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
aic_dvdd_fixed: disabling
ldousb: disabling

Maybe I'm missing some related module on x15?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
