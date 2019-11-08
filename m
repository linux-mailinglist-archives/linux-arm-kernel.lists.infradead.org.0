Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2553F508F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZVRKrJmur5LIevAEdKaERDoTyYWCIaugKqZ0BbvAeQ=; b=O1YzyLc4a3mqmf
	xI7dCoXjTUtHBYiSf5p3g8EnZyPxV096edEpgoYMUpLEbzRGuFJ28BMljygG/mnwX3vo9tc7lQhMF
	+gs3KIusGE8iU4519t3wvgXOMNKEQVSX+Lf1Tg41CfKJQVXLCA62FSxea9G1NezHdp6c3fVU7CbyZ
	GKoWDLYiJtcE2rEFR4BBgyAZnnW1haOU9pH9j18OCAKSRVcviqXFcqb2wOQOSFfsVDh/IX1MJ/fNd
	MLtg4CFFj54q+WXBhH5GTkxMDYRLQk9XeqhKAXZsBMuJCU/ICs1WpUAKvqXjjDqtsWwF1kgOAjMqG
	LCJqXiEJnv1LAGSPQl2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6m9-0005re-Dj; Fri, 08 Nov 2019 16:06:17 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6ly-0005pr-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:06:08 +0000
Received: by mail-yb1-xb43.google.com with SMTP id g38so2977562ybe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 08:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pp2jWlCqJKLEk+ibjFXlnfbIxOH3q9oKQMy0Ofpc8qE=;
 b=P9+KNuvnFxtHeZW47U9PU1hLw36tD6FBGxejakql8CpvkHWnHxaE2Hsb7Ult2eNypQ
 GfJOBVChlOCUTlmcZG1H+puAgs5DttZdWxZliRFToxhKWccMxT/b0VI05a347WPVP9uY
 k7uIoL08R6YWDSolqaXK0cW9gcfV0NEyYlPI/6raUnB5Wu3yOQDEuVXKPK6QQxDjte/u
 NVLBdMqcIJgzkTG+cvIjn3mPQZoK1A6pS4Fu3joklD3YiDU64B/sUcyDfbqSe+hzpfk+
 gTOUloLnBFdK5+BdO1A3eNjqBPcRGLwipGEtRn6GhK6iCkiDvxjT1gEVcYKAzdmzi6Q1
 yoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=pp2jWlCqJKLEk+ibjFXlnfbIxOH3q9oKQMy0Ofpc8qE=;
 b=LZwlXOCzjmYftHQhGK4PxFyl1ld4OTiTlGgT16fyYaNceSg7YmvRoRNnVfdwErq9F1
 rz04MhGgHMIJKLncpFLJM70hKGj4jABFUKxnfFE192pcjCS6VL9R91KmPmsJGmagGmFK
 ADmelyr/w1a08u9rT+5ogh8gEkp4ThxdtqtToCEw0orHwGDRFJT/VFlXLPmarwtv4el/
 iD30ys8P2nR0yb4UXIp5snuhgeiewOnkAT3/RV2vsHGfOmlbups4+ewmAIOvDArEwV9F
 YRkfD1QLubAjv1fJ68oTsYeYNadBagwm/Hz1oqnl9L/DG/JltKhCgamAIzsqIwf9qKyh
 2uMA==
X-Gm-Message-State: APjAAAU3rM2zTrxEE3CE+cApklfnes0KnB59HecdXmsYpDgGnmwHPmeb
 mZqOR/XeduKkynhOq7aObQrXHw==
X-Google-Smtp-Source: APXvYqwHJn8rPwXJPMSPwZbAmzYjmDgS/hvf7KYotndLpNLBWxDPVgII5ANOE6uR/uxdy54DyxixSw==
X-Received: by 2002:a25:c64b:: with SMTP id k72mr9417242ybf.4.1573229163819;
 Fri, 08 Nov 2019 08:06:03 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 138sm2987950ywr.46.2019.11.08.08.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 08:06:03 -0800 (PST)
Date: Fri, 8 Nov 2019 11:06:02 -0500
From: Sean Paul <sean@poorly.run>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Message-ID: <20191108160602.GG63329@art_vandelay>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
 <20191107133851.GF63329@art_vandelay>
 <20191108124630.GA10207@wambui> <4996186.DxzAFJqeGu@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4996186.DxzAFJqeGu@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_080606_592568_5E27DB68 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 03:06:44PM +0100, Heiko St=FCbner wrote:
> Hi,
> =

> [it seems your Reply-To mail header is set strangely as
> Reply-To: 20191107133851.GF63329@art_vandelay
> which confuses my MTA]
> =

> Am Freitag, 8. November 2019, 13:46:30 CET schrieb Wambui Karuga:
> > On Thu, Nov 07, 2019 at 08:38:51AM -0500, Sean Paul wrote:
> > > On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
> > > > On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> > > > > Replace the use of the dev_err macro with the DRM_DEV_ERROR
> > > > > DRM helper macro.
> > > > =

> > > > The commit message should show the reason _why_ you are doing
> > > > this instead of just stating that you are doing this.
> > > > =

> > > > It's not that dev_err is uncommon in drivers/gpu/drm.
> > > > =

> > > =

> > > It is uncommon (this is the sole instance) in rockchip, however. So i=
t makes
> > > sense to convert the dev_* prints in rockchip to DRM_DEV for consiste=
ncy.
> > > =

> > > Wambui, could you also please convert the dev_warn instance as well?
> > > =

> > Hey, Sean.
> > Trying to convert this dev_warn instance, but the corresponding DRM_WARN
> > macro does not take the dev parameter which seems to be useful in the
> > original output.
> > Should I still convert it to DRM_WARN without the hdmi->dev parameter?
> =

> There exists DRM_DEV_ERROR, DRM_DEV_INFO and DRM_DEV_DEBUG to
> handle actual devices. Interestingly there is no DRM_DEV_WARN though.
> =

> So depending on what Sean suggest another option would be to add the
> missing DRM_DEV_WARN and then use it to replace the dev_warn.

Yep, this sounds good to me me.

Sean

> =

> =

> Heiko
> =

> =

> =

> > =

> > Thanks,
> > wambui
> > > I'll apply this to drm-misc-next and expand on the commit message a b=
it.
> > > =

> > > Thanks,
> > > =

> > > Sean
> > > =

> > > > $ git grep -w dev_err drivers/gpu/drm | wc -l
> > > > 1950
> > > > $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
> > > > 756
> > > > =

> > > > > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/dr=
ivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > > > []
> > > > > @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct =
platform_device *pdev)
> > > > >  	}
> > > > >  =

> > > > >  	if (!dsi->cdata) {
> > > > > -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> > > > > +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> > > > >  		return -EINVAL;
> > > > >  	}
> > > > =

> > > > =

> > > > =

> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > > =

> > =

> =

> =

> =

> =


-- =

Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
