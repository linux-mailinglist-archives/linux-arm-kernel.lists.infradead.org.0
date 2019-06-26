Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E37456A73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRAFKlhyIrDAMknUNkBZgVL7vkDPkOrvb82q1q3+2g8=; b=rp2cABujSAW3sz
	WYypZcCAfm4KwAHv+57sQDjnrSqM6SVirGX+q8CqHN71zW+NdhexYR0hxi3e0+JrxfJ+IuhHBDJZI
	mr4PjI2IOUzzuA0/45hax7jcBVqDxIUDe+69nagjnq0JsaL/YdnsCrhilEE+0JgRS/9OHhsqCkv3V
	R8G49wm6CtfQdg19yxPgL9HTJ9WUrNIulQr5CLYbSGqP24h6EWkWsIwrjRY+o+kZ4J35Y6slRwtf9
	3x/HjKNR6Q5qZs6Ytzs6o+hWdOShQNh5WJJ3TyYX114KagvZBpHbpKP1zMq+oZtBH67NDP7/W3bFn
	rdvdyg/chyohItGh5zuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7zn-00071j-OZ; Wed, 26 Jun 2019 13:29:55 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7zZ-0006cf-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:29:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 06:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="170066599"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 26 Jun 2019 06:27:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jun 2019 16:27:32 +0300
Date: Wed, 26 Jun 2019 16:27:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [PATCH v3 3/4] drm/vblank: estimate vblank while disabling
 vblank if interrupt disabled
Message-ID: <20190626132732.GP5942@intel.com>
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_062941_882263_D2CB4D64 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 06:59:14PM +0100, Robert Beckett wrote:
> If interrupts are disabled (e.g. via vblank_disable_fn) and we come to
> disable vblank, update the vblank count to best guess as to what it
> would be had the interrupts remained enabled, and update the timesamp to
> now.
> =

> This avoids a stale vblank event being sent while disabling crtcs during
> atomic modeset.
> =

> Fixes: 68036b08b91bc ("drm/vblank: Do not update vblank count if interrup=
ts
> are already disabled.")

I don't understand that commit. drm_vblank_off() should be called
when the power is still present, so it looks to me like that
commit is actually wrong. So I think we may want to just revert
it and figure out what the actual bug was.

> =

> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> ---
>  drivers/gpu/drm/drm_vblank.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 7dabb2bdb733..db68b8cbf797 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -375,9 +375,23 @@ void drm_vblank_disable_and_save(struct drm_device *=
dev, unsigned int pipe)
>  	 * interrupts were enabled. This avoids calling the ->disable_vblank()
>  	 * operation in atomic context with the hardware potentially runtime
>  	 * suspended.
> +	 * If interrupts are disabled (e.g. via blank_disable_fn) then make
> +	 * best guess as to what it would be now and make sure we have an up
> +	 * to date timestamp.
>  	 */
> -	if (!vblank->enabled)
> +	if (!vblank->enabled) {
> +		ktime_t now =3D ktime_get();
> +		u32 diff =3D 0;
> +		if (vblank->framedur_ns) {
> +			u64 diff_ns =3D ktime_to_ns(ktime_sub(now, vblank->time));
> +			diff =3D DIV_ROUND_CLOSEST_ULL(diff_ns,
> +						     vblank->framedur_ns);
> +		}
> +
> +		store_vblank(dev, pipe, diff, now, vblank->count);
> +
>  		goto out;
> +	}
>  =

>  	/*
>  	 * Update the count and timestamp to maintain the
> -- =

> 2.18.0
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
