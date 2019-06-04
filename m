Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2242341E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFDIXHRLM24VHKHBIXZOwc5cjMwqgxAk12WSR0Hp2NU=; b=HRCR6njxqDEgzO
	TTKUuAS1T8I3k7Np4KAo6H5jf0W6K/Ny0RodG19P+/NUL2/7Hju9SffruMS6stqnaQe9A3Za79yth
	oEds2AsRuGhkHfQfzPVjiqUag4vLDD29GP5nh4pwiDPFAEaB1GjZWYbUy2LSGG0oFmR6U+jOt+wGB
	Kud/FLh67efnSuHiH/Kq67WaIDcDBHBVLcEU3ksBH8xJ4QRXaIISod1lUf4qbujbNh0KYzn0zEuSA
	ZVCDNeqFadTjtAOzV9kkT5DzLJsyKMNHnQghX+0OlqojuDsltVHKz0EnkIQKqPywHP50PEOe89JHO
	iLhC8ULZy/l8D03c1CLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4rp-0001gh-NW; Tue, 04 Jun 2019 08:32:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4ri-0001gJ-B5; Tue, 04 Jun 2019 08:32:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8C467260E1F;
 Tue,  4 Jun 2019 09:32:15 +0100 (BST)
Date: Tue, 4 Jun 2019 10:32:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v4 0/5] drm: Fix fb changes for async updates
Message-ID: <20190604103211.7a42be9b@collabora.com>
In-Reply-To: <20190603165610.24614-1-helen.koike@collabora.com>
References: <20190603165610.24614-1-helen.koike@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_013218_640125_243F3E2D 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Sean Paul <seanpaul@google.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 eric@anholt.net, Mamta Shukla <mamtashukla555@gmail.com>, kernel@collabora.com,
 Anthony Koo <Anthony.Koo@amd.com>,
 Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 David Francis <David.Francis@amd.com>, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, harry.wentland@amd.com,
 andrey.grodzovsky@amd.com, Daniel Vetter <daniel@ffwll.ch>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-msm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeykumar Sankaran <jsanka@codeaurora.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@google.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  3 Jun 2019 13:56:05 -0300
Helen Koike <helen.koike@collabora.com> wrote:

> Hello,
> 
> I'm re-sending this series with the acked by in the msm patch and
> updating the docs in the last patch, the rest is the same.
> 
> v3 link: https://patchwork.kernel.org/project/dri-devel/list/?series=91353

Series queued to drm-misc-fixes.

> 
> Thanks!
> Helen
> 
> Changes in v4:
> - add acked by tag
> - update docs in atomic_async_update callback
> 
> Changes in v3:
> - use swap() to swap old and new framebuffers in async_update
> - get the reference to old_fb and set the worker after vop_plane_atomic_update()
> - add a FIXME tag for when we have multiple fbs to be released when
> vblank happens.
> - update commit message
> - Add Reviewed-by tags
> - Add TODO in drm_atomic_helper_async_commit()
> 
> Changes in v2:
> - added reviewed-by tag
> - update CC stable and Fixes tag
> - Added reviewed-by tag
> - updated CC stable and Fixes tag
> - Change the order of the patch in the series, add this as the last one.
> - Add documentation
> - s/ballanced/balanced
> 
> Helen Koike (5):
>   drm/rockchip: fix fb references in async update
>   drm/amd: fix fb references in async update
>   drm/msm: fix fb references in async update
>   drm/vc4: fix fb references in async update
>   drm: don't block fb changes for async plane updates
> 
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  3 +-
>  drivers/gpu/drm/drm_atomic_helper.c           | 22 ++++----
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c    |  4 ++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 51 ++++++++++---------
>  drivers/gpu/drm/vc4/vc4_plane.c               |  2 +-
>  include/drm/drm_modeset_helper_vtables.h      |  8 +++
>  6 files changed, 52 insertions(+), 38 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
