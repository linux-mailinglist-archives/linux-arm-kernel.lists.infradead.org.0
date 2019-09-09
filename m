Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABF6ADF2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ydU4ieC452Ck4rv6mq9sJHWfCd4knGjB29/zp3XXwaI=; b=lsICNzY6ZoE4umoJ+RwsnBt2P
	cr+3tgZgKQEU3IO7NmZaPiiLpsgW+NPjEuyhTfLvPOm0tsM11+xq8graC+1TAu8cBdFlHp8DiKA0U
	eI+dARmVplzk+lwV/xMC4BgblSTBqexYBYbuXL/dInRuZB3v04raVRHSGlo6kZmCvpn8N5pz2/dtc
	t4uhTj59ArKNv6f+yOLt5XfUVXwE7WrQJRHv6cMz0GFagTIYb0APo5nAt6a8WMVkaO8CxzljnFN3c
	T7gFLqwvPHBTaQQnssMli8RF2EBOUXgQV45LV2JoUMnGi3Pn48G5Uq0w3XnHFtoZTluk7WfN7reiS
	f0xHHwSaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OqM-0003jc-3C; Mon, 09 Sep 2019 18:56:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OqB-0003ix-2q
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:56:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so6986690plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9PpVHKOkn7AvbOWw4B8dKfxzmxwCcW0yqGrQBUq0hN8=;
 b=DhYg+foHMBNgIp8ZI6L0UbWWMEHpLnOxeSdowJUQ0hVIusLXPBuzB5YrlNfmFeh+K6
 Xm1rdE3/IBzPQjUatOMjcobzfLiFnLZihws9zc6ra29d7Wwo8P3N3LBSRVlys2Nug1v3
 s+0LaXu2s4EWSkKyG4IEoUsd5ohWbInVKmiAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9PpVHKOkn7AvbOWw4B8dKfxzmxwCcW0yqGrQBUq0hN8=;
 b=caUOqO+CCJ3L76Cz0yeULoqxLv5Jqzqi+I1FfwoXghaKbSuGcrb6cjpqWQ2iLoziMU
 eWurL0TxNGQxcb0eBYc0FxCvtRgMheqWul5w7vLaYaUmh2i+o3nSsXcWkAxj5ruWHgj9
 SV2o3m8nfrpZRCtX/AcPsX8yddo3ddZGFfXbrpd7GXE4vAs3sOcyEF0g7pRmRUN8ISML
 d+l8QJILIIU5cQND3+XXijM5I6Wc52xPHUOi2xKWgRuyBXrtDqo9gzJzyIfabUl/r7fg
 +HpoAoBvDQUu2i1BU5gwnuvPhlQKki3eV5klCgeJ6U7kStNry8g5ume7kVchz/36TltS
 O/7A==
X-Gm-Message-State: APjAAAXjQ/3Pc7lD1CBIIyuYiIu/0hnakpPOvGVugBMe91nCawGb/6ji
 4Q7aWH2fqRIy27sOsmmswTVz4fsubZhgbu1S
X-Google-Smtp-Source: APXvYqxHAEqC9e+AAStf9IM6pukGCQTPomG2dj8gqDOX6pR5nm98F+0IcF0DggiI0chSTzXXODrb7A==
X-Received: by 2002:a17:902:166:: with SMTP id
 93mr26449506plb.320.1568055401720; 
 Mon, 09 Sep 2019 11:56:41 -0700 (PDT)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l72sm270722pjb.7.2019.09.09.11.56.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 11:56:40 -0700 (PDT)
Subject: Re: [PATCH v1 1/1] arm64: dts: Fix gpio to pinmux mapping
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <664091a5-7cc0-eeb9-425a-ce39c31b1dfc@broadcom.com>
Date: Mon, 9 Sep 2019 11:56:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568018127-26730-1-git-send-email-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_115643_133053_9D4A7CEF 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/9/19 1:35 AM, Rayagonda Kokatanur wrote:
> There are total of 151 non-secure gpio (0-150) and four
> pins of pinmux (91, 92, 93 and 94) are not mapped to any
> gpio pin, hence update same in DT.
> 
> Fixes: 8aa428cc1e2e ("arm64: dts: Add pinctrl DT nodes for Stingray SOC")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>   arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 5 +++--
>   arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi         | 3 +--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> index 8a3a770..56789cc 100644
> --- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
> @@ -42,13 +42,14 @@
>   
>   		pinmux: pinmux@14029c {
>   			compatible = "pinctrl-single";
> -			reg = <0x0014029c 0x250>;
> +			reg = <0x0014029c 0x26c>;
>   			#address-cells = <1>;
>   			#size-cells = <1>;
>   			pinctrl-single,register-width = <32>;
>   			pinctrl-single,function-mask = <0xf>;
>   			pinctrl-single,gpio-range = <
> -				&range 0 154 MODE_GPIO
> +				&range 0  91 MODE_GPIO
> +				&range 95 60 MODE_GPIO
>   				>;
>   			range: gpio-range {
>   				#pinctrl-single,gpio-range-cells = <3>;
> diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> index 71e2e34..0098dfd 100644
> --- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
> @@ -464,8 +464,7 @@
>   					<&pinmux 108 16 27>,
>   					<&pinmux 135 77 6>,
>   					<&pinmux 141 67 4>,
> -					<&pinmux 145 149 6>,
> -					<&pinmux 151 91 4>;
> +					<&pinmux 145 149 6>;
>   		};
>   
>   		i2c1: i2c@e0000 {
> 

Thanks for the fix. Looks good to me!

Reviewed-by: Ray Jui <ray.jui@broadcom.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
