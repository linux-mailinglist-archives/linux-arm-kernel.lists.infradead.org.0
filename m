Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EEE1DB8CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YI3KJ5zGr4+hKnRMlzqgba0dl0Ysmu9mxFRsuLeFwOU=; b=CNvzO/IRHUII0o
	LZTfdNyCOmqaiBZF+seaBJFgt3K6ZSxVarDjOxcog1zgApI3/wu+OYw25LDQhjx543O/qbaoMCe2k
	6Chf7axLwlUiS/oJUrbqo3jbLj0oczh1ATGikCcmYSr5bChmgZXkE+3X7HfdiWUCKN/DuS2otEPvR
	hKyZUSNaXDaKfJEL1E1bh8SoKFjXrwm4do6A7AKYSACc7CiKnOMy7or7TrLgM8xGttNd6bhFqmRwl
	QwlgumNUl/pLXLJMUx8HNjWI/2OfUxTBu9tOI/gCXTR6bJbajHh1B0Wj6tQw8YzN2XrFu1bbxpjav
	xJsVde27XZoxgcR0OlAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbR5M-0004bO-TN; Wed, 20 May 2020 15:56:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbR5F-0004as-Le
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:56:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so1508688plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hOwD4KDmO4c54eHC+Ps5e7+C9BlvcIc1+wZ5clo9GBI=;
 b=el2iAQUkBGchfrlbgxzUCLqjga7+Ob0EEoW20tub+n9btv1zPGHLURO13+XF+P9/HC
 aN+914Hwt6YrWpA3iI2e+NVuOdYIy1bAs3i2iwIWSVsdz1p3dU0q2VssY5514UEwlTWn
 VC5OIcKBaQGkQidMaUyPFd7b0i7h/5cs11KjD5FrYuBfHm6IxW1HYgw1vsHTNcGpI1hd
 uSYsIni/J1PhCfznnYnCMDnkuMLK3cm+SKZLfEu157InBY30/jk8ZHb2e6Va+TRL5GvP
 zgasJCyxJyAyPYR1usWzAMHCBo0mGgyPdvggYsEV8LCMF1AnwnV/Vub9UAifR1tLLEIn
 hoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hOwD4KDmO4c54eHC+Ps5e7+C9BlvcIc1+wZ5clo9GBI=;
 b=TuUCMUhtsu3bCn/nVxbubWvb2LsnKmkl0FrXsTWAtn/Dv6tLsWEhB7o2q7+l+i2IbR
 jmaDioCLMAbq5cz12zTy1TjDqQhsvri7SvhBQW/Btm19kehJiy9cltyQRj5Vzz454vH2
 Eqv+7m0rlTSRA8F0uNps9MGNyJS2tJS4FJ20HH9pLnC1xfNm01jfd/lJRJFG4050sxkO
 InRVh8Jksc3933ZqL/nInf5pvjfRk9debW5tN+IUsgR8jzfTIdX2hyd1g7JFQJv0Va95
 RUu9J8Bcxnt9mWN3bQDFpibYwITAYB5YZY08sKyRSwHWoR4qNpcoP1tVDk5EQKZ0UDQS
 kMRg==
X-Gm-Message-State: AOAM532Efeladn+GeYdPTr8Na5uVHUFg+0B9SU0SpXj0YPIKhjj3MvEQ
 w/46qDCfZy13A/FhX5TI6w0PYMTu
X-Google-Smtp-Source: ABdhPJwEo2UcjRjR81rH/5WnV+UzjCPf8Krxexr6Grt7MJHVm0iEcnG4e4+TfhxI6Ptd1DKhH6nU7g==
X-Received: by 2002:a17:90a:db0c:: with SMTP id
 g12mr6058124pjv.5.1589990200391; 
 Wed, 20 May 2020 08:56:40 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x62sm2450278pfc.46.2020.05.20.08.56.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 08:56:39 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: bcm: HR2: Fix PPI interrupt types
To: Hamish Martin <hamish.martin@alliedtelesis.co.nz>, robh+dt@kernel.org,
 rjui@broadcom.com, sbranden@broadcom.com
References: <20200520043042.7281-1-hamish.martin@alliedtelesis.co.nz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <685f412c-5c52-ef56-bf9d-e42b72b3b993@gmail.com>
Date: Wed, 20 May 2020 08:56:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200520043042.7281-1-hamish.martin@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_085641_732983_E1A2F4C6 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 9:30 PM, Hamish Martin wrote:
> These error messages are output when booting on a BCM HR2 system:
>     GIC: PPI11 is secure or misconfigured
>     GIC: PPI13 is secure or misconfigured
> 
> Per ARM documentation these interrupts are triggered on a rising edge.
> See ARM Cortex A-9 MPCore Technical Reference Manual, Revision r4p1,
> Section 3.3.8 Interrupt Configuration Registers.
> 
> The same issue was resolved for NSP systems in commit 5f1aa51c7a1e
> ("ARM: dts: NSP: Fix PPI interrupt types").
> 
> Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>

Thanks Hamish, this should also have a:

Fixes: b9099ec754b5 ("ARM: dts: Add Broadcom Hurricane 2 DTS include file")

I will take care of adding it while applying, thanks!

> ---
>  arch/arm/boot/dts/bcm-hr2.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
> index 6142c672811e..5e5f5ca3c86f 100644
> --- a/arch/arm/boot/dts/bcm-hr2.dtsi
> +++ b/arch/arm/boot/dts/bcm-hr2.dtsi
> @@ -75,7 +75,7 @@ a9pll: arm_clk@0 {
>  		timer@20200 {
>  			compatible = "arm,cortex-a9-global-timer";
>  			reg = <0x20200 0x100>;
> -			interrupts = <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
>  			clocks = <&periph_clk>;
>  		};
>  
> @@ -83,7 +83,7 @@ twd-timer@20600 {
>  			compatible = "arm,cortex-a9-twd-timer";
>  			reg = <0x20600 0x20>;
>  			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) |
> -						  IRQ_TYPE_LEVEL_HIGH)>;
> +						  IRQ_TYPE_EDGE_RISING)>;
>  			clocks = <&periph_clk>;
>  		};
>  
> @@ -91,7 +91,7 @@ twd-watchdog@20620 {
>  			compatible = "arm,cortex-a9-twd-wdt";
>  			reg = <0x20620 0x20>;
>  			interrupts = <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) |
> -						  IRQ_TYPE_LEVEL_HIGH)>;
> +						  IRQ_TYPE_EDGE_RISING)>;
>  			clocks = <&periph_clk>;
>  		};
>  
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
