Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8ED55878
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6FMxkcQAuoZV5Pe3uyaZInIDor36lEx6vXaAT9vZew=; b=neVAX/tIoz6FIw
	anAJ4ttsktmfRI4kGMP5YEFAzIe82OmgnIx/69R9mVn55YHKqstfg1VgaOmx1RyQZ+5ANYx/0oCkh
	26EhRGQNNaJI4Pr3YGKEJX8iH+Mdvqdrfh4h7SKwvNkyTbfNV2w61P5YBnz7my68ZUMNfoFXtmUEP
	9OJF8M4HasG10BpVx1aAWX1Q4KTurR87G5SacVumO1JVGcLqdSXMtqHvLtt7eC7uG5wRDry9LqbZv
	iFT4WqnOT6oPYugYlQEaCmWJ9BfPQYtbtfoLFeKQ4IgEBRiIN7ubmOKv6SqptWnWbDnsIXGjY3Jte
	O3Xst48I38EnBPGxj+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrnE-0004ie-Oh; Tue, 25 Jun 2019 20:11:52 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrn1-0004hv-9z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:11:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so29033759edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 13:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=zkV6FjfcQsvo6WYlA8ceAW7NTugFBRZuAe5/8PprGgI=;
 b=EqENzc8ZFmkojdUW4bYooe/jHYrBPUxIfH5lufyaa/ljp7fZjFaQVWzP2rlePy2DAk
 tfSJFccP/J6XNDXKPMrYnu/DCrc9n9AXAa/9a0pfe5ig1PwrFxmcHQChxJ1LNWbAM/az
 ssuZV1iUpkscfXe/eYKaPcbpNlh7TWiA16EY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=zkV6FjfcQsvo6WYlA8ceAW7NTugFBRZuAe5/8PprGgI=;
 b=pDGQ2ZnDGBL8o3z+os9QO+93f+ZR9oSJRO1C3jjC9p0sxYj5rodfCwMtrGB/t/ywB0
 0XS48CdFbQbj6QM5az2G7LcV1Qa/vFBn21CgIO3nhGlBgJsPGs3nvFVHiAShMwKCQRrn
 gv2x8FsONelO2JSrIDTCrWdTgnuOHyRY+PHg5WqzsypA1A8xYwsbDPmeWhjvVeYMrmhR
 d72bIUzNVlf3qup/1Qe/bdVO/my1rri3NAJv8id45dW1ckrSanH9H9RmwBuw2Nrj5Tbh
 tfRQysz4SKjnVCbup6i8DnSEoX9d1Ea4OJFsNfFR8jy+HJXZKH1WtfBlqxpQkpX8/hK0
 YKcQ==
X-Gm-Message-State: APjAAAXtDpKNf6iOy5rG0RGelpSlwuu+gbCM7Uzo/msVqzcr84AK3FOV
 HE5hEHtuFVmLkVmi6udR4vMovc7Fqgc=
X-Google-Smtp-Source: APXvYqwoVMnAgUuE3liJcixkOYd1NT201/L7ZxinP68zsYUut//RkA+BJy/SK3l/jTY4VRTqV7InDw==
X-Received: by 2002:a50:b635:: with SMTP id b50mr327666ede.293.1561493497807; 
 Tue, 25 Jun 2019 13:11:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id k3sm1048485edi.14.2019.06.25.13.11.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 13:11:36 -0700 (PDT)
Date: Tue, 25 Jun 2019 22:11:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [PATCH v3 3/4] drm/vblank: estimate vblank while disabling
 vblank if interrupt disabled
Message-ID: <20190625201134.GF12905@phenom.ffwll.local>
Mail-Followup-To: Robert Beckett <bob.beckett@collabora.com>,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1561483965.git.bob.beckett@collabora.com>
 <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b96132cef4b63118df1026a99b3c345692e3de26.1561483965.git.bob.beckett@collabora.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_131139_349923_4C47D8AC 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 06:59:14PM +0100, Robert Beckett wrote:
> If interrupts are disabled (e.g. via vblank_disable_fn) and we come to
> disable vblank, update the vblank count to best guess as to what it
> would be had the interrupts remained enabled, and update the timesamp to
> now.
> 
> This avoids a stale vblank event being sent while disabling crtcs during
> atomic modeset.
> 
> Fixes: 68036b08b91bc ("drm/vblank: Do not update vblank count if interrupts
> are already disabled.")
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> ---
>  drivers/gpu/drm/drm_vblank.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 7dabb2bdb733..db68b8cbf797 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -375,9 +375,23 @@ void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
>  	 * interrupts were enabled. This avoids calling the ->disable_vblank()
>  	 * operation in atomic context with the hardware potentially runtime
>  	 * suspended.
> +	 * If interrupts are disabled (e.g. via blank_disable_fn) then make
> +	 * best guess as to what it would be now and make sure we have an up
> +	 * to date timestamp.
>  	 */
> -	if (!vblank->enabled)
> +	if (!vblank->enabled) {
> +		ktime_t now = ktime_get();

Would be nice to fake this a bit more accurately and round the timestamp
here to a multiple of the frame duration, i.e. ...
> +		u32 diff = 0;
> +		if (vblank->framedur_ns) {
> +			u64 diff_ns = ktime_to_ns(ktime_sub(now, vblank->time));
> +			diff = DIV_ROUND_CLOSEST_ULL(diff_ns,
> +						     vblank->framedur_ns);
> +		}

		now = vblank->time + diff * vblank_framedur_ns;

Picking the right macro for doing 64bit multiplies left to you :-)

> +
> +		store_vblank(dev, pipe, diff, now, vblank->count);
> +
>  		goto out;
> +	}
>  
>  	/*
>  	 * Update the count and timestamp to maintain the

Somewhat unhappy that we're duplicating this logic with
drm_update_vblank_count, but it's just 2 lines of math.
-Daniel

> -- 
> 2.18.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
