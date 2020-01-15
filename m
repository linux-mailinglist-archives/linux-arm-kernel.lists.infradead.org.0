Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE0813C96F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:34:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3xOfFyKTo3Px9g+CA4rG5p+z7NRtrD4AH9K2IHD73k=; b=U+piSEWIJ5bD4Y
	qryrMLwCugZTQAesuehlwNdTfgbidYK9fW9wwAvRL6q/kzMZp5yJoOf3WT3PxPY/zptU5jhhapqui
	wivqN5tZdClvUeyA0pwWZAnsn5YgrWcS5IajbhX2X2P7e3YhWTlSUMVdc6fZIOX+8vrk4OUhPvi5Q
	uSOc5x94yDtA8VJDT3ybnRhjTdblnYWqvUHT5s8LfoI562E09bRy1Nc1Kh+h2QbN5ye0wRpyTEtFk
	ilCFush1DQ9BO1qRFa2PvKgjTftW6xso9yvdvp9XOOy73HVsEjosszJ/MuyG5/swCC2GF1mwDKq0V
	RTtJ3uaS+dQr/5+xKtLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlcw-0006x6-Vc; Wed, 15 Jan 2020 16:34:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlcn-0006vg-AJ; Wed, 15 Jan 2020 16:34:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so16390862wrt.6;
 Wed, 15 Jan 2020 08:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eiPggUYZp/xQcpsjSZQUw89xeLxmmQi5kr/2jQMSVt0=;
 b=bWvAKkH91R12baIIjJmw9Vl4C/qXFMDwyMHSoeGIBcJCNWFV+Cegmw57Pw194FKtB8
 1zG4tUmy4fdV3diB80EOn4DkM5Z3FefTtlD9tzRgSIHLCsLchn5gqNSGtWUXFn2ADNkc
 C6qSn6N5Vrt9Onc3xTZt7ppQsEznZecQZT/EpF+kTw5UEk5HfeOivAi1Eu10CrSYXQcn
 eGjdEVgLfGhV+4FSAODYdQCoT4UYK+PdBH2yyNGdFt0zlkRg2sAIXBDMNCI7tI4qrYEn
 Zi3/3QqKbMyvPal4JeNimR5txI955ThAQ2DjxgnmAzPThNmHb9cBMGQSW4EDguN+0Exm
 3phQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eiPggUYZp/xQcpsjSZQUw89xeLxmmQi5kr/2jQMSVt0=;
 b=Ypmnh4vL5IbZfAjDv8H+5yfBuhQGjEENkXOti1cymDf3ADFRKjccf4DStbcS3O9wwo
 IvRb4OPuC1xi/mNLVswgqvxQwIpnvkrb9uhw1UV59N9cd9Dh9QODewUZi7dkK5mj7NaT
 o1mko9s/nEsRw+oTKEfKeWVT4T7Ef0hhzhwBuDKlwobEYHVi2CiQUksS9zibv5QTljVN
 Qd4CvnswPTgCRFV8qWrrgIb7eypVFjKya7p0xaztZg4CgIm9MBHSy/u7AuLQq8cSo1rD
 MSP9dH8hmkXhc3IW/lTcQ5OLwIZLO2KHOAjelU7a9pvuVyI+1G1zO/uh0eVVmIfq8c2C
 KODQ==
X-Gm-Message-State: APjAAAXv7mqIzinaW3Wvb3efLCdNfBjW9sSL2QgnHTe8A0ejEHQPfNNH
 Ro+TPuqIrlAQZFwov6PdVOgkm/C8
X-Google-Smtp-Source: APXvYqyulJJfQY9vSrpubio3QqQ1w5kvgs8OBmfR+jUbDHLQgw9gOqpYuTMGw6abmdNVTd9964xjHQ==
X-Received: by 2002:a5d:4847:: with SMTP id n7mr32294073wrs.30.1579106071100; 
 Wed, 15 Jan 2020 08:34:31 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id q15sm25227861wrr.11.2020.01.15.08.34.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 08:34:30 -0800 (PST)
Subject: Re: [PATCH v3] arm64: dts: mt8183: Enable CPU idle-states
To: James Liao <jamesjj.liao@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
References: <1579066955-2214-1-git-send-email-jamesjj.liao@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <eab75b17-020c-251d-61ae-7f2521510b18@gmail.com>
Date: Wed, 15 Jan 2020 17:34:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <1579066955-2214-1-git-send-email-jamesjj.liao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_083433_386321_779F08D8 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 15/01/2020 06:42, James Liao wrote:
> Enable mcdi-cpu and mcdi-cluster on MT8183 CPUs.
> 
> Signed-off-by: James Liao <jamesjj.liao@mediatek.com>

pushed to v5.6-tmp/dts64 which will end-up to be v5.6-next/dts64 when v5.6-rc1
is out.

Thanks!

> ---
> This patch bases on v5.5-rc6, adds idle-states for MT8183 CPUs.
> 
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 10b3247..1007a13 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -73,6 +73,7 @@
>  			reg = <0x000>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -81,6 +82,7 @@
>  			reg = <0x001>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -89,6 +91,7 @@
>  			reg = <0x002>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -97,6 +100,7 @@
>  			reg = <0x003>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu4: cpu@100 {
> @@ -105,6 +109,7 @@
>  			reg = <0x100>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu5: cpu@101 {
> @@ -113,6 +118,7 @@
>  			reg = <0x101>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu6: cpu@102 {
> @@ -121,6 +127,7 @@
>  			reg = <0x102>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  		};
>  
>  		cpu7: cpu@103 {
> @@ -129,6 +136,29 @@
>  			reg = <0x103>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +		};
> +
> +		idle-states {
> +			entry-method = "psci";
> +
> +			CPU_SLEEP: cpu-sleep {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x00010001>;
> +				entry-latency-us = <200>;
> +				exit-latency-us = <200>;
> +				min-residency-us = <800>;
> +			};
> +
> +			CLUSTER_SLEEP: cluster-sleep {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x01010001>;
> +				entry-latency-us = <250>;
> +				exit-latency-us = <400>;
> +				min-residency-us = <1300>;
> +			};
>  		};
>  	};
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
