Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D6BF6DD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNNuZakwQ2Isqp8QPgjGAZZnfJwL+AoIPEDNutpIqkk=; b=CBucinR1uHelMg
	sengo0iXPsqQLIylDTKy8xa7eWFgWjmGWHyxYsR8rLReYkU00sUNR4Vyi3PX4YPVi6XmszGtBQaeQ
	kdxR+flR46zEcSDICDE9CrRdN6yxhZndf33qT2pLrM+r95qnWmlDqpa3LW3LS0B1tmqQkZ46etoro
	G5vzX6erBY34R7eereTuXk6kGFSDXGIQT7R0FNPOWJTREFLSp/U6BgltfuKv+hONeGJjmzIOGus8q
	doKSi48dAt7lsfSjLUClM+A5LbTN32BlVP1bA4yGCn+vFRNqIlKH8hYZiNLq+Eyw0lgDfJWMX5+a0
	7viZe0ds0Z7POdylsTyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2AC-0007yB-HJ; Mon, 11 Nov 2019 05:22:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2A5-0007x4-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:22:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id q17so8684308pgt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 21:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wn68B/9oTQwMIS3XezYv2F3iHvuzpiojYbkvmpMuIps=;
 b=OrmjFwvr4biPvwrdT3kD+iqfanRLDTEy+qgIcQW0X6kulRevk5kmkeJoBypeigKALq
 y1VCFkDcyIPv4H7dQXHNCIH2F7D2WGzTza4DB20+hjf009mzaWm5pxLMrJebIetlfMSZ
 2oUcqsxGhobF3XOoVhw19OuiCTP4kYvTu1ZAFc7eB2hdEWHJ5w+hJh+iQikAQBdwxxjo
 U1dRZ6sY7pJe3GjME9fLguElpzgwwviwPcx5r8DfsHPwdMhFgUsxlrhfDqlwfkrQ/CS3
 rfMgtYMURSjBQWPkZa7Rmzw60qlbIwTg8dsKFnsLp+cSwUd2nugWvWycGEjCHK3+V+tE
 HR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wn68B/9oTQwMIS3XezYv2F3iHvuzpiojYbkvmpMuIps=;
 b=Q9c4qJjTIzA+jYx2NGqFKD5N9vS/tuvb67NVP9Sc7FDuhqQAIc5JbGartyNxNj+Aff
 v7X1EMvDQkd9/zoIUN71Xmc7HsE9l6L5Rz+7XDxb6y1Ucaqm4eVhmEzxDCuOcI6UnoTq
 rbahRbWJyCCJb4LGLSNVxxOTKwuAu+69W2vDIsv3XJaSpkOxtDtiedlN4e6nCe8PgUAN
 4sDUfnyXrWkpKMvb4A9e2PUJhE/8Js5XQryMz3zbY2xfyjJkS472pftP5Mz8A2YHy6oZ
 Chvgmom1LibD05b0aMKaPq128Y55/7pq40tkpJQbDOY79ZY54SxTOLrlCW4w1zd38vU3
 ul1w==
X-Gm-Message-State: APjAAAXj+E7zzUNu0sQm+9iD3Ac1vSgmrONVGn7a48hYRJtMmCfIBzfW
 gvxjj/UfPc8tWbgMSNw6yiWD
X-Google-Smtp-Source: APXvYqwyFuqsrSanrsgjZWam9y+4GIL/Fjuql1Gjr5R6qpTb9d+I0He5/Y2DwCn4UgfPYQhDRvm/pA==
X-Received: by 2002:a17:90a:741:: with SMTP id
 s1mr32134482pje.107.1573449762760; 
 Sun, 10 Nov 2019 21:22:42 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:6309:fffb:304b:b40d:24e5:f9a8])
 by smtp.gmail.com with ESMTPSA id x25sm13239593pfq.73.2019.11.10.21.22.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 21:22:41 -0800 (PST)
Date: Mon, 11 Nov 2019 10:52:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191111052232.GA2842@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111005158.25070-2-kever.yang@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212249_495150_30A134DA 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kever,

On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
> Add vdd_log node according to rock960 schematic V13.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index c7d48d41e184..73afee257115 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -76,6 +76,18 @@
>  		regulator-always-on;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;

The default value seems to be 0.9v as per both Rock960 and Ficus schematics.

Other than that,
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> +		vin-supply = <&vcc_sys>;
> +	};
>  };
>  
>  &cpu_l0 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
