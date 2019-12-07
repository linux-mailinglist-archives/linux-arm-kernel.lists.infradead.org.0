Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C103115A6F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 01:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vfq5oetHuoApjVoBPOT1sJUIf0Yg7W+zAmgyU7QPA88=; b=T4D/XaegSDZz3/G8zD4y0PtqU
	tazqRvIrEe/ss5DltrDV3OJcfi0KI0n0NlfoQlSgjUIViLQ0Kr9lEIOuKB7dGYlfyQFfvyqK+ijz9
	b6NEgG+Vl2Kdnx3roL2c96DzahXGmZDGS42posvjbEAJkAATEA2sfzlCPWI0ZElhlaS3pwXeCeewj
	mt1rtMJsE3EON4aZhuZoSy1Mv2O98iI4FTbZ9peN0EZula6H8IOXhZIPiW8z3R2U+xWctW+2XzSK6
	wPqv4JEjRuUL/F1ypTy4qCKjICbAOHN44z2hZ5W+tDf+ERETX2FLpL5iKKgtsHUzyUhJbyzfMZnwB
	Glhrp+M0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOMo-0002rB-P9; Sat, 07 Dec 2019 00:54:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOMh-0002qm-0o
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 00:54:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id b6so9714076wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 16:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YyHqnh3RgU+jkragtEYCmywD+W1GeJPYa5pDIp3hGtA=;
 b=FcTHjpXtuWKl1ktGy/jvKmj2CEIxaOGf7WtJh22SSUSCoRnxI007b1epPMs2yzPAU6
 8XKVC+aUUW4HrvmDIskh7Faxk/Hkh/OBnV3BQ53u77XgaJZ944tnynobm08sy3X5HTGy
 p9ox1+HGbfpaQpNgvjmcoidglRxGol+snYZog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YyHqnh3RgU+jkragtEYCmywD+W1GeJPYa5pDIp3hGtA=;
 b=OLQ03crpF3au3purxeI8bvAXh8ABQS6MOvs0tvzNmTWOUnVOXY4N6LDDvl4QF3BA4S
 kaAeqZrShTwdZ+QvilOfs7HXczxzxd2FIDHZ+IPIdd83ls2Z+2+2HYZtL3E8duJj7rHJ
 2np6QDdHJ7QGbdIt3Ctnay8kB4IvwZrCfbkXpZ5pA2bIkGhFR/ZnZzmQ+jn/U3fIJy5l
 6MXj8UD0YC6Ykdg5S+mFtfc7jkconXDI2qcxmtPyzcpL9hq5M4UxgR3WyFDYejqj/eVA
 lp5V6tBn5WBku0zPTcpZQTIxq4htmwoZvEDPUQE0tSj5GLpEngIutG/puRQlNNovYGkx
 y9aQ==
X-Gm-Message-State: APjAAAWHdv1ky7ST0KHct5q0fz9HhJi2a5UkdhdVA8uhzaSfRxYvQdGN
 B4B3uW/GT+B42YNIc9iF5sLrhQ==
X-Google-Smtp-Source: APXvYqycLhNIOEqhQ1FJre7Q/J/PU8EfKeYG6wG58YToIgr2m9pkiKsbRjmM2iUnZ/GXddXke7yIhQ==
X-Received: by 2002:a5d:540f:: with SMTP id g15mr17461759wrv.86.1575680069042; 
 Fri, 06 Dec 2019 16:54:29 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h97sm19347000wrh.56.2019.12.06.16.54.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 16:54:28 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: Cygnus: Fix MDIO node address/size cells
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <20191206181909.10962-1-f.fainelli@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <86e8fbec-f9e5-28d8-cc58-c12ce53a18e9@broadcom.com>
Date: Fri, 6 Dec 2019 16:54:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191206181909.10962-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_165431_065966_A5282BE5 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, grygorii.strashko@ti.com,
 Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org,
 simon.horman@netronome.com, open list <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 rafal@milecki.pl, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/6/19 10:19 AM, Florian Fainelli wrote:
> The MDIO node on Cygnus had an reversed #address-cells and
>   #size-cells properties, correct those.
> 
> Fixes: 40c26d3af60a ("ARM: dts: Cygnus: Add the ethernet switch and ethernet PHY")
> Reported-by: Simon Horman <simon.horman@netronome.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>   arch/arm/boot/dts/bcm-cygnus.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
> index 2dac3efc7640..1bc45cfd5453 100644
> --- a/arch/arm/boot/dts/bcm-cygnus.dtsi
> +++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
> @@ -174,8 +174,8 @@
>   		mdio: mdio@18002000 {
>   			compatible = "brcm,iproc-mdio";
>   			reg = <0x18002000 0x8>;
> -			#size-cells = <1>;
> -			#address-cells = <0>;
> +			#size-cells = <0>;
> +			#address-cells = <1>;
>   			status = "disabled";
>   
>   			gphy0: ethernet-phy@0 {
> 

Looks good! Thanks!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
