Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C8C1F5E6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGDptqB4ubnjZoSD+gyoVuSL0tld9GeF9OkkRczNeko=; b=jPn1MC4jlxA7NX
	GuBmI5+AkC7XxnZ1X1rlzul4ZeRJ2QaimQjk/xM6W9c4grHqwPA2wAEmEh5fslz3ot8ee7LAzp6SL
	YB6Gn9O0DIRORbQx8WZn4DFHFyazC14s1PN/+jBKYZGHx7uDkJCxnw5QR2jcJYAPzK8nShWPm5FhM
	vO9V6vzzw8QbtGsAatKDINLkeSMmTdbErQE3qH39VovVqPwO0HPKFECXGhXftckfpJYxUy7AN7iE1
	skj4Ap6M6/yrscML5N0njCAn6aGSTxulwme9+mzsfHcA6wEekJ4zIk6W6EVf9lvmNKtXyUctjzTpI
	MCfI4GTs0fasHCj/dV1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj9Pb-0001pC-4H; Wed, 10 Jun 2020 22:41:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj9PS-0001og-FK
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:41:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id AE4F18081;
 Wed, 10 Jun 2020 22:42:11 +0000 (UTC)
Date: Wed, 10 Jun 2020 15:41:17 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
Message-ID: <20200610224117.GE43721@atomide.com>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
 <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
 <20200603140639.GG37466@atomide.com>
 <47e286dd-f87a-4440-5bde-1f7b53e8b672@ti.com>
 <20200609151943.GL37466@atomide.com>
 <9ed70121-2a53-d2b3-051a-88eb83e6c53f@ti.com>
 <20200609165234.GM37466@atomide.com>
 <20200609171043.GN37466@atomide.com>
 <7c4809d0-5262-a739-354a-61e617fe6c6e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c4809d0-5262-a739-354a-61e617fe6c6e@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_154126_545669_62A960A7 
X-CRM114-Status: UNSURE (   8.67  )
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

* Tomi Valkeinen <tomi.valkeinen@ti.com> [200610 11:48]:
> On 09/06/2020 20:10, Tony Lindgren wrote:
> 
> > > On beagle-x15 I see these errors after modprobe:
> > > 
> > > DSS: OMAP DSS rev 6.1
> > > omapdss_dss 58000000.dss: bound 58001000.dispc (ops dispc_component_ops [omapdss])
> > > omapdss_dss 58000000.dss: bound 58040000.encoder (ops hdmi5_component_ops [omapdss])
> > > [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> > > omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
> > > [drm] Initialized omapdrm 1.0.0 20110917 for omapdrm.0 on minor 0
> > > omapdrm omapdrm.0: [drm] Cannot find any crtc or sizes
> > > aic_dvdd_fixed: disabling
> > > ldousb: disabling
> > > 
> > > Maybe I'm missing some related module on x15?
> > 
> > Still did not figure what I might be missing on x15 :)
> 
> The log above shows that nothing is missing, omapdrm has probed fine. But it
> cannot see anything connected to the hdmi port. Are you booting with correct
> dtb for your x15 revision? And you have a monitor connected? =)

Oh you're right, I forgot to connect the HDMI cable back to X15 :)
No wonder it's no longer working for me..

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
