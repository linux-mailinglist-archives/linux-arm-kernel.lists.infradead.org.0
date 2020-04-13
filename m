Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DA01A6AAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0m/Xj/z+/ADBdNGiN3B5pmgQHOv+401WtKBQ7Ae4w8=; b=GHfj50+gWKxhQu
	aXWV4MaxLtyS29zVvZZP+QLhizbdfRt2c6UumcvQc4ZA4rQ353OfTVFwyKPk5apIGqDqCl/FT0QUA
	bXTAJc7ojeuxUWJzXFY95wJQhls4pbDp25ZfSWRMBzY2EsIqGSIF/CFWfcMQUwBg6zAAVcKbqOMaa
	9ZV7YWQIkRaKXsTnU0t6qEPIddfy14aIYo8wVoeJOC9tZiRqCZbHhS1vyEbk2Cnn0oR/Z/7hZER38
	aREpnjPq0A8IKJxlMNE48K8E0UUDEm8NoP7nVNgaoUqQUDqHZaR3zdfvcDqXYJbZiR3ZUtdpLV25L
	s+udMqCfIEy4tnttLXrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2Oq-0004ga-8R; Mon, 13 Apr 2020 16:57:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2Ob-0004eW-Lr; Mon, 13 Apr 2020 16:57:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so10687568wmh.0;
 Mon, 13 Apr 2020 09:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mTpx6Z0OKTLIJPkJ7Yh8VEwdZmjdLhJUA6nbN5ppiEE=;
 b=qrQL6k8mIe333DRTkKehUyZNRhe3bactg8WMTrWAfRvbP9QXHYBQF1uyMNdWpG+bVV
 ZR5Bs42ZB6+oSnMcb7XSrmTQpKGnGE1dpZWnCdHUSs1NBLf5ndfJ+ohDrH2lfsAamHnY
 fO3ZiFKvnxsLB7k1GpL5jaNOSi/J5g8pdwgUke0/5hoRF26lhNlTiMzOxQAY5he8iSKJ
 dIn7wC1nBq66L3GRt9gjXr0/9kUopyHeWuvItyJV4zlpgXPIG6Vk3+7yRepRxyNti6K+
 Z+uYLO94LvBbLYfgU/H9GJHsxuVZA/W1MkxTelwZalDFsCe9N6SouzjA98nGAPPsJGnC
 2EbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mTpx6Z0OKTLIJPkJ7Yh8VEwdZmjdLhJUA6nbN5ppiEE=;
 b=gunE2MszcxdIGcFEvuKDJjvBzmBm+5lYPhm9X0hGnPfOSxMMyFCK1YVKyThew/bG5d
 8RFJO2oXK72caImdXkzVltNKO27tyyJqeq2HvETSGF8sLdujQ8xxGpDqqINjqJ/dt+Hd
 /nlam9iZllWOqm1kkZJCMqzZlCIenEk938L+oz0b59XdudmwtE100yJjdSawybrTJznN
 aFqri1iimHiHm/sJaP+z4RzLbHFSzBptCtxe7VgVozuIM+jZDqUMzjJFBy4MBYoXO2A2
 DLoyft3i0Lhz0bYritkqHU292lyJq0QSOlBrxPJ2H2CG1wIaABDqx5X6XWT5Wsh5zCTG
 y4QQ==
X-Gm-Message-State: AGi0PuY1N8n9PSmZCCODBjseKcbnERZyOxP/Hrt+ZGF1O8VISO4Ou+TD
 KR64snOohrOynmVhVCjcsag=
X-Google-Smtp-Source: APiQypLcKYqiy17tJMR9wM00PZxGuCAJar8Ngo68RhBhAo1IY9kUsqEObXdIXuwbnnwkQCLa37T8aw==
X-Received: by 2002:a1c:ba09:: with SMTP id k9mr19020911wmf.176.1586797036339; 
 Mon, 13 Apr 2020 09:57:16 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id g186sm16227344wmg.36.2020.04.13.09.57.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 09:57:15 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: mt8183: adjust cpuidle target residency
To: Ikjoon Jang <ikjn@chromium.org>, linux-mediatek@lists.infradead.org,
 James Liao <jamesjj.liao@mediatek.com>
References: <20200225080752.200952-1-ikjn@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <e8c4314a-466e-8ba4-d5ea-d50eab7a709b@gmail.com>
Date: Mon, 13 Apr 2020 18:57:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200225080752.200952-1-ikjn@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_095717_744194_F5360E4D 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 hsinyi@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/25/20 9:07 AM, Ikjoon Jang wrote:
> Split a cluster level cpuidle state into two, so mt8183 variant
> boards can adjust parameters for each cluster, and reduce cluster0's
> default target residency to 1000us as power measurements showed that
> its minimum residency is slightly less than cluster1's 1300us.
> 
> Signed-off-by: Ikjoon Jang <ikjn@chromium.org>

Applied to v5.7-next/dts64

Thanks!

> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 26 ++++++++++++++++--------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index f1381e77918b..5c7dd262eaf3 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -74,7 +74,7 @@ cpu0: cpu@0 {
>  			reg = <0x000>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -83,7 +83,7 @@ cpu1: cpu@1 {
>  			reg = <0x001>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -92,7 +92,7 @@ cpu2: cpu@2 {
>  			reg = <0x002>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -101,7 +101,7 @@ cpu3: cpu@3 {
>  			reg = <0x003>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
>  		};
>  
>  		cpu4: cpu@100 {
> @@ -110,7 +110,7 @@ cpu4: cpu@100 {
>  			reg = <0x100>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
>  		};
>  
>  		cpu5: cpu@101 {
> @@ -119,7 +119,7 @@ cpu5: cpu@101 {
>  			reg = <0x101>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
>  		};
>  
>  		cpu6: cpu@102 {
> @@ -128,7 +128,7 @@ cpu6: cpu@102 {
>  			reg = <0x102>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
>  		};
>  
>  		cpu7: cpu@103 {
> @@ -137,7 +137,7 @@ cpu7: cpu@103 {
>  			reg = <0x103>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> -			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
>  		};
>  
>  		idle-states {
> @@ -152,7 +152,15 @@ CPU_SLEEP: cpu-sleep {
>  				min-residency-us = <800>;
>  			};
>  
> -			CLUSTER_SLEEP: cluster-sleep {
> +			CLUSTER_SLEEP0: cluster-sleep@0 {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x01010001>;
> +				entry-latency-us = <250>;
> +				exit-latency-us = <400>;
> +				min-residency-us = <1000>;
> +			};
> +			CLUSTER_SLEEP1: cluster-sleep@1 {
>  				compatible = "arm,idle-state";
>  				local-timer-stop;
>  				arm,psci-suspend-param = <0x01010001>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
