Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93630F2FF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 14:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLyb+s6yhuR5tRcd8pPyvwxeWvhhcxT1viWyHDG4T/A=; b=sWGNuJCg62q5I/
	LYdlMClIpFoHcoiECTVJAF5hNUNGEJKbtf92ghdZdS8VI4k9YT9PIZrf7wdZqPA2YawxdNB0xeGnp
	o/wGGSf6BXfgtffz7qWqkOzSxpeKZqw5inprjzJ3NZmjofOcwdQBLIMGphHtdUz0knNLKV99KN+tr
	Mg4ZYBRhKRgLOiwcqiBCqQV9UXbtLYw2x7TQRlsh59lSR+dlNf11WkFbdVSO/IIGemNsNEs2syTaF
	7F3Y0sTzHD/MMn/vrbHxzaRvS1B+35+V+8x2OLvWW+uXwWAhKl5kDUbx2R9jgE6ZJbZFCU6XmMPaJ
	QnA+XpnO+RBKuTO7TbIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSi05-0000IF-OV; Thu, 07 Nov 2019 13:39:01 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShzx-0000HK-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 13:38:55 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y18so921314ybs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 05:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UR+FMpDRyPvXwNuet63hIA/KDaiYBztB4W2oxpuqt4A=;
 b=csf58IPg/w9lQ2Nl9oTvOEkFzDSskXTPBRw8RrWxLtI2rQy0W4i6vmQjsgLc6BoO+F
 YTwCDTgQVpF7vOqHSlyNAoDkvZPu8DoGhp4BImq5C36qnqFYH+f7ZnATq69eSOifv8Vu
 FSqy2tMQSkpc+MJ5dsMIbD4sVXsKkMrstvBaLhTvk8DoTkXYAaB+uta+3AVkJanTarNL
 EIIb/RnSDc0la+ZBS/pl2Qde1zl1wO453vc7F21/7iTG+a8J6RH+7gXYi/0zBvk5chRL
 se/x7c6J5b1pPsDWS+s/sbSoRs1b+WqYISDDPF9PZqfyCv6ZkcTYwGvP8qxTeqBIOwJ2
 PJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UR+FMpDRyPvXwNuet63hIA/KDaiYBztB4W2oxpuqt4A=;
 b=MJxa0a8kQrjNtd+aI3smzPuLeUrlrZojb2O0/+8DMWx/O1b7Qqa6a2+7jRwniRMRfx
 qhYTmJI8mWW0nbxshk3+Yk1dQtCc2s1I+DkrWoY1iaVTpB4MraFM75nGytGCxyFeZkR5
 SeIJt3IM0P0aoBAvZLaekdWU07RevjXEN10UY3qRp8C7gk5+qXH2So7+6n5v1e6BiJEA
 9EU/raRU689+ZJSMVvRgJtOS/SbzHixGWUswg8tR1qXPVTu2YLNP96oGWFXfVsXZsmP9
 jlrWw6pl6Px8eHebU0n6yewouTD3RMwEPi9FAnfE2gkVyWmZBW96O1XQJB07zpC/pZye
 NJFw==
X-Gm-Message-State: APjAAAVicqCYUYUHZxciQBRoXJ/xd/xcl9GNh8TiVbwuKpCn5H7OTQ/v
 E6RfIrG88ztheF5DjmAgYVD/8Q==
X-Google-Smtp-Source: APXvYqxMAOnQy88pixXrXkLY51EbFIn3dNn0lEnxFRVO0u+p/OxQmgx371p0fYm+lPnMmM6+RPfj8A==
X-Received: by 2002:a5b:d07:: with SMTP id y7mr3445302ybp.313.1573133932475;
 Thu, 07 Nov 2019 05:38:52 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i125sm750756ywa.68.2019.11.07.05.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 05:38:51 -0800 (PST)
Date: Thu, 7 Nov 2019 08:38:51 -0500
From: Sean Paul <sean@poorly.run>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Message-ID: <20191107133851.GF63329@art_vandelay>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
 <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_053854_061127_C3191927 
X-CRM114-Status: GOOD (  16.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: heiko@sntech.de, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
> On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> > Replace the use of the dev_err macro with the DRM_DEV_ERROR
> > DRM helper macro.
> 
> The commit message should show the reason _why_ you are doing
> this instead of just stating that you are doing this.
> 
> It's not that dev_err is uncommon in drivers/gpu/drm.
> 

It is uncommon (this is the sole instance) in rockchip, however. So it makes
sense to convert the dev_* prints in rockchip to DRM_DEV for consistency.

Wambui, could you also please convert the dev_warn instance as well?

I'll apply this to drm-misc-next and expand on the commit message a bit.

Thanks,

Sean

> $ git grep -w dev_err drivers/gpu/drm | wc -l
> 1950
> $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
> 756
> 
> > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> []
> > @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> >  	}
> >  
> >  	if (!dsi->cdata) {
> > -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> > +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> >  		return -EINVAL;
> >  	}
> 
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
