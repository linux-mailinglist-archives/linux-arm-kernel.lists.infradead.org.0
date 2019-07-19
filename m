Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481716EC0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 23:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23SLyI2nMApF01rvRwVu2uxTM2zAkOpVSsSEml4N1R4=; b=nzVInNi06rYwRT
	B0zWNAwtgsPltLFaUYROhlm6Y/lsUhPqRo0Tkt3J1XQUVtaDp3VLXUPP+PMKyDu4e+4XuGvqWVJDA
	l9KMm7oHFZcan9VUv4ue8dzlMMjgKIp5OCRAHMN8J9/UjST/17cS+LQoHIhlRVmKbUTVVRzqrkoWZ
	/83p0g1FzTakHvDynAKOMHOTZjVpL/huiasHRxQCKlWD5pGKYd1e4G/HLh3sNIYdfEGpyC98ugHhY
	n2TNRY9d41qxufwqVJN+mkAieooiQZUyxjgaziAkvkucLtqW+vJpgK0wimUjJKY8b74XO2Q4QIrmT
	xviLOC3dXh5B+0/Py6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoaPP-0007pt-My; Fri, 19 Jul 2019 21:27:19 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoaP9-0007pB-7C; Fri, 19 Jul 2019 21:27:06 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id D2F5E20085;
 Fri, 19 Jul 2019 23:26:52 +0200 (CEST)
Date: Fri, 19 Jul 2019 23:26:51 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v1 0/11] drm: header maintenance
Message-ID: <20190719212651.GA25918@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10
 a=MfMJ2rOYQePwhqdKWdMA:9 a=wPNLvfGTeEIA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_142703_615475_F3A9218E 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding <treding@nvidia.com>,
 Sean Paul <sean@poorly.run>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 06:14:56PM +0200, Sam Ravnborg wrote:
> First patch from Jani fixes so drm_print.h is self-contained.
> Next two patches are trivial removal of uapi dependencies.
> =

> ati_pcigart is fixed to drop use of drm_os_linux.h
> =

> drm_vblank is likewise fixed to drop use of drm_os_linux.h
> This was a non-trivial conversion, *review requested!*
> =

> The remaining patches are preparation for and removal of
> uapi/drm/drmh from drm_file.h.
> There were a few files where we had to push include
> of drm/drm.h out to to have a clean build.
> =

> CK Hu - please let me apply the mediatek patch to
> drm-misc-next, as it is required for the final patch.
> Or push it to drm-misc-next yourself.
> =

> 	Sam
> =

> Jani Nikula (1):
>       drm/panel: make drm_panel.h self-contained
> =

> Sam Ravnborg (10):
>       drm: drop uapi dependency from drm_print.h
>       drm: drop uapi dependency from drm_vblank.h
>       drm/ati_pcigart: drop dependency on drm_os_linux.h
>       drm/vblank: drop use of DRM_WAIT_ON()
>       drm: direct include of drm.h in drm_gem.c
>       drm: direct include of drm.h in drm_gem_shmem_helper.c
>       drm: direct include of drm.h in drm_prime.c
>       drm: direct include of drm.h in drm_syncobj.c
>       drm/mediatek: direct include of drm.h in mtk_drm_gem.c
>       drm: drop uapi dependency from drm_file.h

Added relevant acks and pushed following patches to drm-misc-next:
       drm/panel: make drm_panel.h self-contained
       drm: drop uapi dependency from drm_vblank.h
       drm/ati_pcigart: drop dependency on drm_os_linux.h
       drm: direct include of drm.h in drm_gem.c
       drm: direct include of drm.h in drm_gem_shmem_helper.c
       drm: direct include of drm.h in drm_prime.c
       drm: direct include of drm.h in drm_syncobj.c
       drm/mediatek: direct include of drm.h in mtk_drm_gem.c

Following patches was dropped:
       drm: drop uapi dependency from drm_print.h
       - There was not a clear consensus what to do here, and the patch
	 broke one way to use the DRM_(PRINT) macros.
       - I did not have the time/enegy to start a logging debate.
         There is too much that could be done and it is not the right
	 time for me to look into the possibilities.

       drm: drop uapi dependency from drm_file.h
       - There were relevant push back from loosing the information
         that a uapi type was used to represent 'magic'

Following patch is worked on:
       drm/vblank: drop use of DRM_WAIT_ON()
       - Got excellent feedback from Michel D=E4nzer and Daniel Vetter.
       - An updated version will be posted when I have tested it
	 at my local setup

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
