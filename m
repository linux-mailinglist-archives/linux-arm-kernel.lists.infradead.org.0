Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418126BAE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1BY+c9uKw5LdUOwGta8XuXecb5EOYI4OWfdZl1aWkQ=; b=IVoHwHrRNz/h/E
	Mqs39wpnaA4YjOeGte0yaRvISMGUfKJwzd4+fYY47mti4KxJ53NvcwycC7r2EJvwApU6zfUZqKB1p
	x8EKFlRI9KPfOif30LHFt1biXpDvE8Pm4OOk3NojnFx+XEwtl4DaSdGrn23gS4wABsV9WEUO75KoI
	zsjesqBQnrBOjmwXr6c9SFrTRslTdm8RZwR26Z9+CHyxIcbfxJ9XG27vb8Ekqej/K85Uj8VXKAt4P
	k+Of0nFiUgFEi8bcK/Z/8jv3rvfCdsVowoIgoAcSp/AHsy3zJqZlsEcbp/hbtYjSWFFXQZ22ixCFX
	T8aQ0IyQi++y0tYWBKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhfB-0001nB-RC; Wed, 17 Jul 2019 10:59:58 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhez-0001lB-Hj; Wed, 17 Jul 2019 10:59:47 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id F142F8034E;
 Wed, 17 Jul 2019 12:59:33 +0200 (CEST)
Date: Wed, 17 Jul 2019 12:59:32 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/19] drm: drop use of drmp.h in drm-misc
Message-ID: <20190717105932.GA5188@ravnborg.org>
References: <20190716064220.18157-1-sam@ravnborg.org>
 <20190716065022.GA18452@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716065022.GA18452@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=e1VmrhLkSVZGwi_aLusA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_035945_768087_899047AB 
X-CRM114-Status: GOOD (  18.23  )
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Alexandru-Cosmin Gheorghe <Alexandru-Cosmin.Gheorghe@arm.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Deepak Sharma <deepak.sharma@amd.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Kevin Hilman <khilman@baylibre.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-rockchip@lists.infradead.org,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Robert Tarasov <tutankhamen@chromium.org>, Emil Lundmark <lndmrk@chromium.org>,
 Jani Nikula <jani.nikula@intel.com>, Jyri Sarha <jsarha@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-amlogic@lists.infradead.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Mikulas Patocka <mpatocka@redhat.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 08:50:22AM +0200, Sam Ravnborg wrote:
> Copied all recipients on the cover letter.
> As the list is long this mail may not hit the mailing lists.
> 
> 	Sam
> 
> On Tue, Jul 16, 2019 at 08:42:01AM +0200, Sam Ravnborg wrote:
> > This patch set removes a far share of the remaining uses of drmP.h.
> > Common for all patches are that the respective files are maintained
> > in drm-misc.
> > All patches are independent.
> > 
> > Patches have all been build tested with various configs and various
> > architectures.
> > There are likely introduced a few build issues that randconfig
> > build will reveal, but for all configs I have used the build was OK.
> > 
> > This patchset does not conclude the quest to kill all uses
> > of drmP.h, but it is a major step towards the goal.
> > 
> > Please review/ack.
> > I plan to apply the patches to drm-misc, but feel free
> > to do it yourself.
> > 
> > There will be conflicts with the ongoing work on ttm, gem etc.
> > But let's deal with the conflicts when they hit us - it
> > is simple conflicts in the list of include files.
> > 
> > v2:
> > - Removed merged patches
> > - Added ack from Emil Velikov to the full series
> > - Rebased on top of drm-misc-next
> > - Hand-edited the list of Cc: as get_maintainer.pl in some
> >   cases looks up too much people, due to cross kernel commits

I have collected the additional r-bs and acks and pushed out the full
series. Thanks for feedback to everyone!

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
