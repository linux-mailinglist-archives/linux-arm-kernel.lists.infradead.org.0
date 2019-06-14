Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC32045CC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgsERY68frp0KfozSRwLghfy6cAzhtxTZr6nLPFPe8s=; b=hvzLa55M2E/D/+
	UZdl/dgU9XyxOUnK+JaXepoL6jCBqSBnh5sbOyckWlumL2a/96996sqcmDYPa09wUsPpRtps4pRkQ
	PEHCEORsZ00ffhhYXwAa8aua8rSMYsRVwjmAipu9UBywAxTUCTcwBBTd+wxyxpXaKpHU7MtXJECnZ
	NaxE4omt1s+BGtbsGgjIrdmXlx1eOFqnJzDc6sUVEEvxtnNbEejcu69SieLZHGxC8f2a8Oer55Mt3
	Zb71MdmQNwUZrZNcO0lSyRdhuKA1/HMiDWP9lnhPhAC2I9prSs0kr4QX4EXBrxsJOnE4zCs06iKVE
	7gc4HBbZwIjncZEFVD3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblHf-0000yO-7c; Fri, 14 Jun 2019 12:26:19 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hblHT-0000xX-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:26:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 05:26:04 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 05:26:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v4 02/12] drm/client: Restrict the plane_state scope
In-Reply-To: <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
Date: Fri, 14 Jun 2019 15:28:59 +0300
Message-ID: <87wohouz90.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_052607_845180_BEF4D17A 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, eben@raspberrypi.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> The drm_client_modeset_commit_atomic function uses two times the
> plane_state variable in inner blocks of code, but the variable has a scope
> global to this function.
>
> This will lead to inadvertent devs to reuse the variable in the second
> block with the value left by the first, without any warning from the
> compiler since value would have been initialized.
>
> Fix this by moving the variable declaration to the proper scope.

This is an improvement, but I'd consider renaming also to not shadow
variables.

BR,
Jani.

>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  drivers/gpu/drm/drm_client_modeset.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
> index 006bf7390e7d..8264c3a732b0 100644
> --- a/drivers/gpu/drm/drm_client_modeset.c
> +++ b/drivers/gpu/drm/drm_client_modeset.c
> @@ -861,7 +861,6 @@ EXPORT_SYMBOL(drm_client_panel_rotation);
>  static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool active)
>  {
>  	struct drm_device *dev = client->dev;
> -	struct drm_plane_state *plane_state;
>  	struct drm_plane *plane;
>  	struct drm_atomic_state *state;
>  	struct drm_modeset_acquire_ctx ctx;
> @@ -879,6 +878,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool 
>  	state->acquire_ctx = &ctx;
>  retry:
>  	drm_for_each_plane(plane, dev) {
> +		struct drm_plane_state *plane_state;
> +
>  		plane_state = drm_atomic_get_plane_state(state, plane);
>  		if (IS_ERR(plane_state)) {
>  			ret = PTR_ERR(plane_state);
> @@ -901,6 +902,8 @@ static int drm_client_modeset_commit_atomic(struct drm_client_dev *client, bool 
>  		unsigned int rotation;
>  
>  		if (drm_client_panel_rotation(mode_set, &rotation)) {
> +			struct drm_plane_state *plane_state;
> +
>  			/* Cannot fail as we've already gotten the plane state above */
>  			plane_state = drm_atomic_get_new_plane_state(state, primary);
>  			plane_state->rotation = rotation;

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
