Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C163D55C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RUfc2BzX+N+lq1pzA2f0DwKYHai1eTDknHOXrjjXNrA=; b=av7hHP9RNPOWDMRtSrzLWPQGZ
	nllzXrEePQMOm948zkBMUV1o/J1F4pPbOoTXj1zouR5d47hTKU1jtpLCblhSlirUwF3D3CzzCLt+c
	A5XIwCiQX73/HINDLsi5YzYUfyBvsD975fY8sZUAkGsYimYiM70Ci0YdvwAmtudlgYkM6+P4txJ2e
	EFqDApMZPteY7ecOIz6w2304uuAGay1c9yRF+38tE659KDSuT6FAsJT1hyWuRU9L1TEX/dGiTyOUB
	lyLH9TcNXvd0K5DL2xPhEfgMJqEbP1EFQSqgZuTzdghiSkBwwDq3+dTElUIYEYxcEOyIThuSbIDz+
	9zaqGt59Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halN9-000362-JF; Tue, 11 Jun 2019 18:19:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halMx-00035Z-9o
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:19:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BIJWho063062;
 Tue, 11 Jun 2019 13:19:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560277172;
 bh=FjbeW6hQygWtg4Ftr4sb6KJZYE5ajtCT1MrP4b5Ra4w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oBV1Z9Nb5Q7kQwN/yOHuE3nYYbXU7V2J8ixmBG1IJ02pkhMSxh/y1QKGgUO7Lg+a/
 aa4I94OpjP9iX7r75qbDXVKqCqfOsFuJgUNiv4EL1a+AszO848vlvXUjdiEVIDIlRP
 bVWFLd+HVRtltJXL8zQn+2PL7sP3YaP1DUW31BDg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BIJWsh081807
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 13:19:32 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 13:19:32 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 13:19:32 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BIJTAm015771;
 Tue, 11 Jun 2019 13:19:30 -0500
Subject: Re: [PATCH] arm64: configs: Enable GPIO_DAVINCI
To: Keerthy <j-keerthy@ti.com>, <will.deacon@arm.com>,
 <catalin.marinas@arm.com>, <shawnguo@kernel.org>
References: <20190605061401.25806-1-j-keerthy@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <09a60289-2747-a570-54e0-822b0ea4b01a@ti.com>
Date: Tue, 11 Jun 2019 21:19:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605061401.25806-1-j-keerthy@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111939_431231_95DAA4F3 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, nm@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/06/2019 09:14, Keerthy wrote:
> Enable GPIO_DAVINCI and related configs for TI K3 AM6 platforms.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>   arch/arm64/configs/defconfig | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index d1b72f99e2f4..57d7a4c207bd 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -385,6 +385,9 @@ CONFIG_PINCTRL_QCS404=y
>   CONFIG_PINCTRL_QDF2XXX=y
>   CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
>   CONFIG_PINCTRL_SDM845=y
> +CONFIG_DEBUG_GPIO=y

Why DEBUG_GPIO?

> +CONFIG_GPIO_SYSFS=y

Also, why GPIO_SYSFS?

Both of the above are nice for debugging purposes, but should not be 
enabled by default imho, as they are not needed by drivers.

> +CONFIG_GPIO_DAVINCI=y

I think you should not modify defconfig, rather add these as platform 
required features under arch/arm64/Kconfig.platforms?

-Tero

>   CONFIG_GPIO_DWAPB=y
>   CONFIG_GPIO_MB86S7X=y
>   CONFIG_GPIO_PL061=y
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
