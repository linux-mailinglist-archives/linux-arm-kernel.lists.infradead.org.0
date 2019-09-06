Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62022AB378
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oFjFhAQW9thwNYaKw67Y5iNxnO232ZF+QPP1K+99z2c=; b=aFlaDAcO3riNZan+ddjfz9QjY
	fHQYf0t1t7zXOB0dXp/DeCOjg5Cd+qheXIRbiBn6BZ4ZEf5KoTFyHci46VmcqwWlmC3jEO0NlnE7v
	gDZ7Sljxli/RejDsb9DzFyira3OCeef5I8ViINoLR9v88wY3UQQctQ+NL7V1GQBAJbkaX30UUh190
	bXzy1WUB6wfsXvdrqhLwfMJbfo2R9I17kyS/KvyoRfrUIQI7SkAp05gSvW8Wq4dRga59ztV3Cj8DK
	tqTwlGQCF15tfHPfZeoOICWP9ZEcSyMIDQtqL5MAvjTOHoMmiOs5H9Fz92zwtWGlLrfhQkp/8spdA
	HRM19Hkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68zJ-0008Ue-8k; Fri, 06 Sep 2019 07:48:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68z6-0008U9-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:48:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x867mX7e071654;
 Fri, 6 Sep 2019 02:48:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567756113;
 bh=vrG6lpi8QEWkZKj5pHICh2MWv598YJm3hDtGFd45Ws8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=g30HVDUyWInJMcMatKA49ZDCVU8I4zfgaktbMK8nK2CgRdz3d0MIVRLhL/NgxDddz
 9ogWHNd17/arDpVY2AuOSnn3T+FWnwXTVIk9MOGz6FnWEcR2pRgj9AkUaJUo+rdtXY
 1oW5naxq0C4WV684cX/bI41caxxkVoaGiUKh8wMk=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x867mXim041637;
 Fri, 6 Sep 2019 02:48:33 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 02:48:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 6 Sep 2019 02:48:33 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x867mTW5109187;
 Fri, 6 Sep 2019 02:48:30 -0500
Subject: Re: [PATCH] bus: ti-sysc: Fix handling of invalid clocks
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190905215356.8168-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <fd38f85f-c5f0-0166-c55c-0da6d5c2518d@ti.com>
Date: Fri, 6 Sep 2019 13:19:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905215356.8168-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004844_956173_3C258D07 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/09/19 3:23 AM, Tony Lindgren wrote:
> We can currently get "Unable to handle kernel paging request at
> virtual address" for invalid clocks with dts node but no driver:
> 
> (__clk_get_hw) from [<c0138ebc>] (ti_sysc_find_one_clockdomain+0x18/0x34)
> (ti_sysc_find_one_clockdomain) from [<c0138f0c>] (ti_sysc_clkdm_init+0x34/0xdc)
> (ti_sysc_clkdm_init) from [<c0584660>] (sysc_probe+0xa50/0x10e8)
> (sysc_probe) from [<c065c6ac>] (platform_drv_probe+0x58/0xa8)
> 
> Let's add IS_ERR checks to ti_sysc_clkdm_init() as And let's start treating
> clk_get() with -ENOENT as a proper error. If the clock name is specified
> in device tree we must succeed with clk_get() to continue. For modules with
> no clock names specified in device tree we will just ignore the clocks.

Tested for DS0 and RTC+DDR modes on AM437x

FWIW
Tested-by: Keerthy <j-keerthy@ti.com>

> 
> Fixes: 2b2f7def058a ("bus: ti-sysc: Add support for missing clockdomain handling")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   arch/arm/mach-omap2/pdata-quirks.c | 4 ++--
>   drivers/bus/ti-sysc.c              | 5 +----
>   2 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
> --- a/arch/arm/mach-omap2/pdata-quirks.c
> +++ b/arch/arm/mach-omap2/pdata-quirks.c
> @@ -491,11 +491,11 @@ static int ti_sysc_clkdm_init(struct device *dev,
>   			      struct clk *fck, struct clk *ick,
>   			      struct ti_sysc_cookie *cookie)
>   {
> -	if (fck)
> +	if (!IS_ERR(fck))
>   		cookie->clkdm = ti_sysc_find_one_clockdomain(fck);
>   	if (cookie->clkdm)
>   		return 0;
> -	if (ick)
> +	if (!IS_ERR(ick))
>   		cookie->clkdm = ti_sysc_find_one_clockdomain(ick);
>   	if (cookie->clkdm)
>   		return 0;
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -280,9 +280,6 @@ static int sysc_get_one_clock(struct sysc *ddata, const char *name)
>   
>   	ddata->clocks[index] = devm_clk_get(ddata->dev, name);
>   	if (IS_ERR(ddata->clocks[index])) {
> -		if (PTR_ERR(ddata->clocks[index]) == -ENOENT)
> -			return 0;
> -
>   		dev_err(ddata->dev, "clock get error for %s: %li\n",
>   			name, PTR_ERR(ddata->clocks[index]));
>   
> @@ -357,7 +354,7 @@ static int sysc_get_clocks(struct sysc *ddata)
>   			continue;
>   
>   		error = sysc_get_one_clock(ddata, name);
> -		if (error && error != -ENOENT)
> +		if (error)
>   			return error;
>   	}
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
