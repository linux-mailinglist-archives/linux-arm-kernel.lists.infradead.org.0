Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82E0ADF28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITsUwIiwWQzSXR6/SvX/dBK0ucj7D/4xb4DPU+5B7bI=; b=uXzFE+T0xvv7Ba
	UjReUquriy7SMvCnOb6f3Yq3qZ6dljyxi5S8YQzsdUlbm0EM/7pqY298PhybpalJbTfSrLKbp2rnR
	F7mEjuMpokpw/hYTiP0lH9r8nlU6rVEUvi5nA2ArTNYjyb9pGFXR8bjqm2H+ofal3QN3KxSWCX7jj
	uJ2e2oXhCF9IQQm0KSzNJLwiglXO1wCJCsIk8mqLaE1nEI7QKp+ij2+6k2NpeY8cP8RKhcU/VW7Xd
	97Foai7J4aWmQLkT1jibUxLnEq00W3g61/JYxw0GmNwTDIHL0mZImhHYUo1PN6w+YDhf5bO4DQBmS
	e50HCpVvqrg7/YGSesIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OnU-0001wQ-O8; Mon, 09 Sep 2019 18:53:56 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OnL-0001w4-Ei
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:53:49 +0000
Received: by mail-wr1-f65.google.com with SMTP id u16so15303537wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CwHYXxof8Php+/UN1FeQs9EQLGPhSRQiZ+KCEvXPatU=;
 b=ddbGIBbSZiQm5F0BqWPUrFN8SPYm23fhK6TDJx2PDdf/8xZlHiZ43ODqM4QxJ924WD
 nXgeRiuapsELzOV9QwEh+RQRQNrQvklPxNiGAIm19EV8dM+YY7lYzf/f+gWAd9mbCjwm
 4BqJdYyzUvyrES07pX+uEiEt1mZQg144GHDJtib99d1H3PGylnofpjMThRREiqibVxRD
 fSsZ1g4ekLLvjBIm5Y1UcCmBD0Nej1eLS1E621P4Jr68+RqdMxyTRqk9fdBl2BmdkjHy
 2XDwOr0Ea08wekD+cH83c3tC2jA8x26Sef7xVwr/Tf89xRXOv4d0WvPAPGqlR4YFUxzl
 K40Q==
X-Gm-Message-State: APjAAAV2J6nMklF73DwdYk/C9FF266t8r1/2drrjt5SBNjLVZJ+ya30N
 AcufKb60AMwIA2Ubuu/dflY=
X-Google-Smtp-Source: APXvYqygDZqRMWLJ4M5iQcM6jFXigiv0dCcQqevTZr4XkGXmJwUFf/iXq+yauwCiU4ZdfdhJmooG6g==
X-Received: by 2002:adf:e612:: with SMTP id p18mr1091103wrm.218.1568055225699; 
 Mon, 09 Sep 2019 11:53:45 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id q26sm458534wmf.45.2019.09.09.11.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 11:53:45 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:53:43 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Yao Lihua <ylhuajnu@outlook.com>
Subject: Re: [PATCH 2/2] ARM: dts: s3c64xx: specify dependency of clock
 providers
Message-ID: <20190909185343.GB10091@kozik-lap>
References: <20190907024719.16974-1-ylhuajnu@outlook.com>
 <BY5PR12MB36991E62DD57AA6962C05420C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB36991E62DD57AA6962C05420C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_115347_496019_4C63A25A 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 02:48:12AM +0000, Yao Lihua wrote:
> From: Lihua Yao <ylhuajnu@outlook.com>
> 
> fin_pll is the parent of clock-controller@7e00f000, specify
> the dependency to ensure proper initialization order of clock
> providers.
> 
> Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
> Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
> ---
>  arch/arm/boot/dts/s3c6400.dtsi | 1 +
>  arch/arm/boot/dts/s3c6410.dtsi | 1 +
>  2 files changed, 2 insertions(+)

Idea looks good but should go to each of DTS files.

Best regards,
Krzysztof

> 
> diff --git a/arch/arm/boot/dts/s3c6400.dtsi b/arch/arm/boot/dts/s3c6400.dtsi
> index 8c28e8a0c824..ef5a8fa3555c 100644
> --- a/arch/arm/boot/dts/s3c6400.dtsi
> +++ b/arch/arm/boot/dts/s3c6400.dtsi
> @@ -34,5 +34,6 @@
>  		compatible = "samsung,s3c6400-clock";
>  		reg = <0x7e00f000 0x1000>;
>  		#clock-cells = <1>;
> +		clocks = <&fin_pll>;
>  	};
>  };
> diff --git a/arch/arm/boot/dts/s3c6410.dtsi b/arch/arm/boot/dts/s3c6410.dtsi
> index a766d6de696c..b201b71d45b5 100644
> --- a/arch/arm/boot/dts/s3c6410.dtsi
> +++ b/arch/arm/boot/dts/s3c6410.dtsi
> @@ -38,6 +38,7 @@
>  		compatible = "samsung,s3c6410-clock";
>  		reg = <0x7e00f000 0x1000>;
>  		#clock-cells = <1>;
> +		clocks = <&fin_pll>;
>  	};
>  
>  	i2c1: i2c@7f00f000 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
