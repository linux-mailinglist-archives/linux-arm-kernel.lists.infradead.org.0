Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD61F64A12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPSBsfLzaYHWkx5By+ckqxC+0xYX9qHNZc1LEfa6IT8=; b=g41ejSPiBDxwok
	wIn6NqdDvKt5MhCjx2gQCC+7KY2Bgm96QDOViwJpvPxGMalkP5NKXJvrcLZakW+MKuoxaxYISPJxv
	20EvMymBPA2KAF8whXsacMHF7OsQpaXSjK0Z9ZOylHEL5Q52H8uH4J5JAfhaJPGQCpc9z9d9Of97r
	1Sh3rChK7hVAWsx9ezD0uTqWFa5KjHDgQ9tT+hNpMSo9fcW+APfi5GsSzzjsFEVekLhiIwDPRBAIw
	1bYNj4OZz6sx1DRGUVdb4KlSxycbqGyFzrGzVbCFuKiDW4J/trq2TRLpTyKwoD1tI6BoL/HeM+q/j
	5Xfd/x4zsGunUNlVoabg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEqq-000433-LY; Wed, 10 Jul 2019 15:49:48 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEqc-00040r-8b; Wed, 10 Jul 2019 15:49:35 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 02FEB80444;
 Wed, 10 Jul 2019 17:49:17 +0200 (CEST)
Date: Wed, 10 Jul 2019 17:49:16 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Derek Basehore <dbasehore@chromium.org>
Subject: Re: [PATCH v7 0/4] Panel rotation patches
Message-ID: <20190710154916.GA13810@ravnborg.org>
References: <20190710021659.177950-1-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710021659.177950-1-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=CF2rFHbX0Lz1B-FzuQEA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_084934_491861_618F0BAD 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Derek.

On Tue, Jul 09, 2019 at 07:16:55PM -0700, Derek Basehore wrote:
> This adds the plumbing for reading panel rotation from the devicetree
> and sets up adding a panel property for the panel orientation on
> Mediatek SoCs when a rotation is present.
> 
> v7 changes:
> -forgot to add static inline
> 
> v6 changes:
> -added enum declaration to drm_panel.h header
> 
> v5 changes:
> -rebased
> 
> v4 changes:
> -fixed some changes made to the i915 driver
> -clarified comments on of orientation helper
> 
> v3 changes:
> -changed from attach/detach callbacks to directly setting fixed panel
>  values in drm_panel_attach
> -removed update to Documentation
> -added separate function for quirked panel orientation property init
> 
> v2 changes:
> fixed build errors in i915
> 
> Derek Basehore (4):
>   drm/panel: Add helper for reading DT rotation
>   drm/panel: set display info in panel attach
>   drm/connector: Split out orientation quirk detection
>   drm/mtk: add panel orientation property

First two patches are:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Last two patches are:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
