Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6083B1F9E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XB+sNuYdgsn24nhLNHt+6c/lBqRArUHckPZaZXBO/2Q=; b=Y8eYeKuisCgFKo
	/dgU2nOi1yi6iRzO2vetRsuilqy/C+bvrK+hXhwWTHlgoBfXo6vZIhDg/HnDOytycVI8ElzQ+EUVv
	3/XYI27XScq3KJPYY7C8l2T/7Cimo4yKytkjhSY/LXM9grMNiFShy24Hz3uCzqHCrXOI1wzcl1mW9
	xSBR5HlSYr4hHD47sKtdF++YA6txJZZ4JCorZDtOJtHWT2fVl38kVOEds+vJKjpkSqCr+mq0RdVIG
	SKTJq7u7f8dXw6F6bqMdcfrUfljC8+1Mwn6TAQEJcJYPsMQmp460fBggMwMR8efkJafuhf692ZHDs
	GbZ8GfDGHzYrt0cOviVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQybD-0001HU-0s; Wed, 15 May 2019 18:25:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyb4-0001FT-7T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:25:47 +0000
Received: by mail-qt1-x841.google.com with SMTP id m32so885573qtf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uevvlYfgOpXcBdOPgi1PLyx6eXxlSuyhw6lRRCuesfo=;
 b=TqUjzDnCZmv6DWpuf0cnlhe53qd6a/4tumMZ0fZw9U0qgMuucJ5FWPcQ5yJxnopnKT
 geiPTrEINDWv1Mg13o5dluWxczAZ0EqqzbBXIm7bdy7586rxyBgwBz+B86+nBt9p1Rac
 wzURb9WAoKStN4ih/1eDy3TDPBr4lJp5mnGxzs491XF91MShcz1ODdMXi/viD0CJUTH0
 bLLBPYk/lr/wwmP6ubJmA6AoFVkQi6fxI3T9MYR4kt8ZTPR8gyLAzInU8OJUtyssAsVZ
 jDU21ExK/qtRKXpFZxpNsvRowe+xQeZgmWY8sN9sYBYUfvoTWwX2n7mqIGQxnDgr6FTK
 DmBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uevvlYfgOpXcBdOPgi1PLyx6eXxlSuyhw6lRRCuesfo=;
 b=fl7lhBdvmYDZIa6BT+5iQMr9ZlGA+FPaBK3hpUBm88fQBO6aagzGC8qWi/FRO+AVMC
 edE374t31pXZrlmLdLS7I7IazgjMZBD0+2iH9L3Qp9ec8FnvctIJOnk61Lsl6UJFLwld
 YS/tWoaAmYvOlIWQQveR3ZgAi//z7HIaXQXclFwvEvFmrypy718UMLmRrOkxVkqmUvDr
 7zC19YbgkfQ/G36YH4F2pgzn706xfrzFAsjWF8niT9DhNGQVj4wQmtx26LcVkE4xW4dB
 NDStgqdxXzB8Bm65DMd2rM5PD3CCSPBd9BJYNPDhZF+/cEoQloqYMtgjLXCvF/ginz0v
 APJQ==
X-Gm-Message-State: APjAAAVBGi0QbqulS+YTFwnqnGWzzhz79+tQ96JlGi4v8mH6ywxxbpEI
 9Ug2cm1cmYAyAuGhEyzhCQPfPA==
X-Google-Smtp-Source: APXvYqyjVVjWkzvrQizl0QTykiPZBiDOEfoq0Ogb2zru/TMF45dYDtbCR70ikjwUT1A+sxFVf0ucJw==
X-Received: by 2002:ac8:4a84:: with SMTP id l4mr37683309qtq.374.1557944745132; 
 Wed, 15 May 2019 11:25:45 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n2sm1272422qkk.43.2019.05.15.11.25.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:25:44 -0700 (PDT)
Date: Wed, 15 May 2019 14:25:44 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 3/5] ARM: dts: rockchip: Switch to builtin HDMI DDC bus
 on rk3288-veyron
Message-ID: <20190515182544.GW17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-3-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-3-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112546_276238_19F5ACCC 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:53:34PM -0700, Douglas Anderson wrote:
> Downstream Chrome OS kernels use the builtin DDC bus from dw_hdmi on
> veyron.  This is the only way to get them to negotiate HDCP.
> 
> Although HDCP isn't currently all supported upstream, it still seems
> like it makes sense to use dw_hdmi's builtin I2C.  Maybe eventually we
> can get HDCP negotiation working.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 1252522392c7..e1bee663d2c5 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -163,7 +163,8 @@
>  };
>  
>  &hdmi {
> -	ddc-i2c-bus = <&i2c5>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hdmi_ddc>;
>  	status = "okay";
>  };
>  
> @@ -334,14 +335,6 @@
>  	i2c-scl-rising-time-ns = <300>;		/* 225ns measured */
>  };
>  
> -&i2c5 {
> -	status = "okay";
> -
> -	clock-frequency = <100000>;
> -	i2c-scl-falling-time-ns = <300>;
> -	i2c-scl-rising-time-ns = <1000>;
> -};
> -
>  &io_domains {
>  	status = "okay";
>  
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
