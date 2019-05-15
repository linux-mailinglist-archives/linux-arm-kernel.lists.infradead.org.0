Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE8A1F9EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3Y1x+IM/FLEViW/YPMIMnccePPBZ9J7X1NQtZ6J1hY=; b=o1Wn9PSzZQEYqW
	4+LaPVcA3M9u1vZQmUfXgbvPrwoQCQmmVQcNuzKGCjQY4FPWunR939o0dSMukfdX2NQcW9KozVI9J
	93CqfqjZL1VqP+Qqo3nC2yBE5CAONlYqX+0rmJlfAZJ4tDNZfcMDQ6/3btmL8u6hsELssXXqnA3cz
	oMiJJ8sQvqKl7iE03os7oS0zhoi4dEk6COtJdqcEDi+RZdM/T7CaD8+ENG49sfktpbS7qRFViY1ia
	0qT3hmRp7VX3PnhMPTZpx077QCLcHY7O4rmtNKkRi9q5+gBHuRPzcnma7ow5CgEg/SJuX/ghwwTXE
	yvQgE5TbF6UFlKSmNEhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQybn-0001sT-3O; Wed, 15 May 2019 18:26:31 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQybM-0001WO-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:26:07 +0000
Received: by mail-qk1-x743.google.com with SMTP id d10so628010qko.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jFj8dh23g2idvSds2JYPP7kaIEok3DfVq0OP/6qEkjo=;
 b=BmVVmLPDeF0Gh1VuUSf55t4gi1/UnkJVNXU6pn3dvbTIbUr3GxfpIKRwrHu4flb3CG
 HTKZuXRN+BVDiyYtSqmjpKwFx3Bh00cbTfGG6bOcV9qX9VXnAILuUU7Y1v/0ih30no4w
 8gkbCH9MFy4Y544krG1rk/QqQmJeKFeOLst+j5q9VQIiRN27xsFJ3otCgPv3RlMQEUIZ
 tR1VE2Wrv4wzsnARmTsh7skwOd7YDlTtR5DagCMfo4NlY4yXpzS/Dz30DtgVtj6H4Oec
 JHh86xeV6tAR1Pj/JSY/zUj4zCxOeWJdikDAe/3NxIhDClKJf0UhbFttr3IzSE4bHCBi
 kSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jFj8dh23g2idvSds2JYPP7kaIEok3DfVq0OP/6qEkjo=;
 b=fUp9lRKYYZPh3DVBMtNlo646Mck7jDlCiqkZoF3bIWQH/81mjORze0USQ/id8E88DJ
 ZflFKhoUXAT0Qu3GkjkgwCq18apl9Fq6yS9WOP3MqyqO8hZjZ/hIUU8CX5xdGphguAdz
 geO3JqpqjmdIIEsQh78J6x1hsBmVIXYGyApr7q3Geg0uhuJIpD3SWPW2WF6/cjdZtoRk
 74XNvihuyZ1SviHnL/MFPJajqeUlKe2crgclGa/lMe8LO6tQsM3YSCjfd7yylCAFKVz6
 xhxaGfFGg2v494k1u82Clj2uCKnO80W2VPkObS//GTgj+2EeVrEbKU7bFaU7iQRm1dGY
 j9kA==
X-Gm-Message-State: APjAAAV9+2067RIdcGS2QuQzOgHuVQBx8UELNOei5z2m6MpFxbG42uuR
 fjj9odTzA6mys3gPLoES9StYbQ==
X-Google-Smtp-Source: APXvYqx5lu/OaoclV0DLdEX2WJ5Nw8BWbL4Pl6MEnRYhtodr67RdCqsBRDyDKxOX/wdl9ukhI9O9Wg==
X-Received: by 2002:a05:620a:3:: with SMTP id j3mr17330454qki.95.1557944763567; 
 Wed, 15 May 2019 11:26:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id h17sm1372773qkk.13.2019.05.15.11.26.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:26:03 -0700 (PDT)
Date: Wed, 15 May 2019 14:26:02 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 5/5] ARM: dts: rockchip: Add HDMI i2c unwedging for
 rk3288-veyron
Message-ID: <20190515182602.GY17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-5-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-5-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112604_759658_C99F0729 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

On Thu, May 02, 2019 at 03:53:36PM -0700, Douglas Anderson wrote:
> Veyron uses the builtin i2c controller that's part of dw-hdmi.  Hook
> up the unwedging feature.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index e1bee663d2c5..340b276b6333 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -163,8 +163,9 @@
>  };
>  
>  &hdmi {
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "unwedge";
>  	pinctrl-0 = <&hdmi_ddc>;
> +	pinctrl-1 = <&hdmi_ddc_unwedge>;
>  	status = "okay";
>  };
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
