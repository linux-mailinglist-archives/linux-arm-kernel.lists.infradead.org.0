Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A771F9EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPbGC0NrecsFYDusBbNWX9Uzxf20pH49ZbY4bFBCB8k=; b=AIU6mq9YkubmW0
	L3mWxXd3/SJNf6qcLpYXU1kNzbLhpx/5VNXZ2ko3US9zQQgPhCcDcXwJ5/k9ZpDh3PHDHZDa/e1hw
	fKXFniGvsVCrCbCxbIAQUWDsydQMPItlP4q8d4z8bwJWg+OcSk3dliEpN8UBEtJ2ZxtiHdFclMXDJ
	Ei21vf2wrG5kGvpXTHK0QGIk3g3UWd0Rja3edrDm3fPQqvRqPRwRfR+YxKpey6VWyIwYEH8kJu46r
	UOZlfZqUf4LJfmm+pymC7d2T4wzwRcAsT4rZ6w+e9vGNZh2m9WGtO/h9Jek+MQpl9KXR2ZhLE4piJ
	WNkhty7HtkEUkho5ggsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQybU-0001YL-HZ; Wed, 15 May 2019 18:26:12 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQybF-0001Pr-Mi
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:25:59 +0000
Received: by mail-qk1-x742.google.com with SMTP id q197so615159qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ze14/ZyXsEJTAjqaTo2lTRx3s0ItRZ2g8TsWrPqezoA=;
 b=EjKmmzK4gaGig9/kRlPUp7k1dxcQOfTfpH60q/LrsE/SgieDpD1q0gvpNH6TQ4tFjk
 1kkS929EIWvcDVI/Iw2ykhlxaxBqrx+s4/GGEcQPd6Pya0uZy2IWKniwpSiCizKSh/fg
 DDIA6lUED4xtnPQ+hRekTJ9bcuKmvx2fk1G14CEkPfkHD7NUN1iuolK8YmibOenB3JUS
 KR+DDqXevo4MqhdGQEA1/W3oG/449EBa36KxghqJ46EwDP7jT0znVN/+ULNUP0E6dGQe
 sRTgAwnXUmFRig1ct0llZ8ztKQC6ZDzpk4DGUt49WVfGNEPdwD+c9RPfVFMatHflLcp1
 py/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ze14/ZyXsEJTAjqaTo2lTRx3s0ItRZ2g8TsWrPqezoA=;
 b=mLt2GY2RnLAFKDA7nBjb9+2/5HWI+8JvAkeI++8dtGDoZBeduYYcI5lUQS1PxrQuGs
 G3qxvt1Bt9hTZBOTGjT/Jn/VUqHeXYSIgWBiPVeYgD0SPulAX2L0oOZ+w1XBQB6o/CfO
 3MUilHw6MrQiQD76Oc8vioA/jPbTcjfXcKImlKdNiiuVNJNRiLwxB5JOvWIAKmfOxeex
 109+iqYv/tPW9EZnWKwKyZuCuVFzhawAXeJ0K8RuGQ+mTsWNc0shD1tnvQzM1ToqPgVO
 f7CC86VEpxNcENKyX3T+4X0YbUBTghg8CyAnnvvl56poobrdzBtGE5w1pOAI9qTEPX7n
 JNPA==
X-Gm-Message-State: APjAAAV9jULslEzf/n/AdDF/pZjzsvDNLqvSfKLxjl54jBWF1fkPd41+
 HVl2NzDT892ZUcrMXpibD/iCEw==
X-Google-Smtp-Source: APXvYqzE4tU3wB1W/soxDI0IVT0K319tP4nNUGqGgn0iQCnc2JttjgI+YgxYaWAdWbpys/mgpEEGHA==
X-Received: by 2002:ae9:f218:: with SMTP id m24mr25687228qkg.261.1557944754518; 
 Wed, 15 May 2019 11:25:54 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n19sm1253535qkg.58.2019.05.15.11.25.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:25:54 -0700 (PDT)
Date: Wed, 15 May 2019 14:25:53 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add unwedge pinctrl entries for
 dw_hdmi on rk3288
Message-ID: <20190515182553.GX17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-4-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-4-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112557_758596_6C81098A 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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

On Thu, May 02, 2019 at 03:53:35PM -0700, Douglas Anderson wrote:
> This adds the "unwedge" pinctrl entries introduced by a recent dw_hdmi
> change that can unwedge the dw_hdmi i2c bus in some cases.  It's
> expected that any boards using this would add:
> 
>   pinctrl-names = "default", "unwedge";
>   pinctrl-0 = <&hdmi_ddc>;
>   pinctrl-1 = <&hdmi_ddc_unwedge>;
> 
> Note that this isn't added by default because some boards may choose
> to mux i2c5 for their DDC bus (if that is more tested for them).
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 74c9517c4f92..eebc04fa1e4d 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1545,6 +1545,15 @@
>  				rockchip,pins = <7 RK_PC3 2 &pcfg_pull_none>,
>  						<7 RK_PC4 2 &pcfg_pull_none>;
>  			};
> +
> +			hdmi_ddc_unwedge: hdmi-ddc-unwedge {
> +				rockchip,pins = <7 RK_PC3 RK_FUNC_GPIO &pcfg_output_low>,
> +						<7 RK_PC4 2 &pcfg_pull_none>;
> +			};
> +		};
> +
> +		pcfg_output_low: pcfg-output-low {
> +			output-low;
>  		};
>  
>  		pcfg_pull_up: pcfg-pull-up {
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
