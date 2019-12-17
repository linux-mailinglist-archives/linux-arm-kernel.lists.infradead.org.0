Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C59122C98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndiF/A1amcGXZW5Ux5UNA8OOESxXN6i78gak7/oTK28=; b=GKOK4KVtoMylBW
	481xYQ+C42vg7dh7ySp3IAOc6C7R0fm8EJeYTrSk7ZiErGllbPCRbViCQT5S7FhzTyU5JPbdKu4gn
	LtbxIVmxzXu/bA/60C1fXiei0NoUu+KITGJm+KCUHe60z/HLfUH+ijsKfJgv4nv1h7rOxjxtdcDrU
	j2TnNv/qMEVHmZ5nbGemAwuZvIxmwDzD3NqPTEDk98nLXWmj+mbxVXeSu9+aMWqgweuQx37D0Q3EU
	IBjIYwkS43MmR9iVlX78zq4yCZTuEthw82MPwbIyEybtWsOQx0csMWdhUFFEudu06HCdqcMhJLHsO
	7O6dYc9YT7kl7KHqtwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCdS-0007f4-5E; Tue, 17 Dec 2019 13:11:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCdH-0007ea-33
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:11:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id f129so3101419wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 05:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EZSohn1ysZnbfO+3Bztlv6MzaXMOulcwi+iBjK/JuWw=;
 b=fc2Vim7oz1vcI4NLmDgMW1dhc0j8fgTDpLRrcaLg5cY39SRL+RXduKEm6XXtNlKeLx
 TOCFDNEAPs7T3Xb5xCtFVMzYDjMqGCEDtkbFKQbQPooDyqWVWTGqXlpgT/wwI7tV5Liz
 ggTVdpkqzR2EAt8HHECw0hyjZQI018s5nVgdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EZSohn1ysZnbfO+3Bztlv6MzaXMOulcwi+iBjK/JuWw=;
 b=WdGOd0P1mnsNj4tseI3baRCwRCu1MK+k7gXmf6zQuW5FcpoEgpkkRcZwEtaGhqXirG
 OLNHJ/J5fpTrma23jnQR68JvPl8qKNa5/0bEMe3f7F4AA2bYyMpfvlQDt432Pr9iRjCR
 0o8CvWDdxIH9QrT5ZNGluVwQsY4ZVz80zv7PzcezYLon+q658D4PUpxzobxKnHFWCgZ4
 xkpY1jxBjgYCPWP7yueHIOnMJU80zOQsi1tBmwaWf+rclIF0jaXm5yrylC9Qqi5Dbdih
 LXvwhCK5X4c7QdV0tLXL19BG/PVhyfz5a6sEiymTBxzLs0MOhLCrsio8wbAW0ZNBecRH
 ityg==
X-Gm-Message-State: APjAAAVTHvpYj5K7KaYpW9v9cJpJiCoPaEu09Cb1WlKI5CWQP9mBed5m
 xWM8ewRTdVoM83knb9l6JDbJVg==
X-Google-Smtp-Source: APXvYqwnmrkbC3b8LKKLFJqsp0qQ0RvZn9NSTyd4VwnWz/FmEMNPXPPr1xwYT+qU4vMGwbEpGinYzw==
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr5256447wmf.60.1576588280808; 
 Tue, 17 Dec 2019 05:11:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id k4sm3028383wmk.26.2019.12.17.05.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 05:11:19 -0800 (PST)
Date: Tue, 17 Dec 2019 14:11:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH 04/10] drm/malidp: plane_state->fb iff plane_state->crtc
Message-ID: <20191217131118.GX624164@phenom.ffwll.local>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
 <20191213172612.1514842-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213172612.1514842-4-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_051123_196039_BAF3E1D2 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 06:26:06PM +0100, Daniel Vetter wrote:
> Checking both is one too much, so wrap a WARN_ON around it to stope
> the copypasta.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org

Oops, subect should be drm/imx: ofc here.
-Daniel

> ---
>  drivers/gpu/drm/imx/ipuv3-plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
> index 28826c0aa24a..6776ebb3246d 100644
> --- a/drivers/gpu/drm/imx/ipuv3-plane.c
> +++ b/drivers/gpu/drm/imx/ipuv3-plane.c
> @@ -359,7 +359,7 @@ static int ipu_plane_atomic_check(struct drm_plane *plane,
>  	if (!fb)
>  		return 0;
>  
> -	if (!state->crtc)
> +	if (WARN_ON(!state->crtc))
>  		return -EINVAL;
>  
>  	crtc_state =
> -- 
> 2.24.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
