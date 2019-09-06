Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C225BAB354
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w1p6R971hffY3TY6Qcb41rOcB60YIbyCHPVIhymsEV8=; b=JtmYAgSQnw3ExJYQGadLXEXrR
	Zye2elkuYegYBe4xVTDO1PIEJd9MKOf7hgVF9N8bwdXResZ4tzopP44yqEIYXgDMbmi0Y+3xX2c9E
	IzcDuuxZqhI7Z6SkFvhLyW6sKCxTROtihZ67o1TRQiwSrdlk4E57dL19/gm4b7O0IfzTQ7Xhat0Nk
	4UBa8CHzuePk4arkFY4VXniMyXzWzDjbQRnqFlnmNSTbbIaEYcVr+NLMsq/hqIB90ziaWVmyr3uUu
	FWk2UI7Yks+2nY/n06SbgQm86qub2oL+MOzKSd5wYLxy5CX8fEL4R3V8y73EkLNvGycNFRGsmRnpx
	t1Nz+RnTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68qS-0004Dx-6F; Fri, 06 Sep 2019 07:39:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68qE-0004DL-Au
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:39:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x867dRJB053866;
 Fri, 6 Sep 2019 02:39:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567755567;
 bh=z6Nh68YYvTDDh5HiSd5ce/6VHBCPMMXmMgbKOM1slds=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iT3e59oWcC9/GWHtEvNJFERDlEd0VDsMZpqKav5auCLqqTQwYdbZs8EqQFLsI8XrU
 SXq+HElmMR2X3k2eAlJiw/9PISXTbdHV2qiKjDSy6p68s2Y/5sQfQBKhxd+rYVubVD
 tfqhQNMpcmlE5XUW7wOdQ6USYzAY9iKr+slbYk7g=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x867dRN6029677;
 Fri, 6 Sep 2019 02:39:27 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 02:39:26 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 6 Sep 2019 02:39:26 -0500
Received: from [192.168.2.14] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x867dNc9078451;
 Fri, 6 Sep 2019 02:39:23 -0500
Subject: Re: [PATCH] bus: ti-sysc: Fix handling of invalid clocks
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190905215356.8168-1-tony@atomide.com>
From: Roger Quadros <rogerq@ti.com>
Message-ID: <3c9f7340-f17f-cecd-3ae4-ec8a1af7c2bf@ti.com>
Date: Fri, 6 Sep 2019 10:39:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905215356.8168-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_003934_483156_FEBF6258 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 00:53, Tony Lindgren wrote:
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
> 
> Fixes: 2b2f7def058a ("bus: ti-sysc: Add support for missing clockdomain handling")
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Acked-by: Roger Quadros <rogerq@ti.com>

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

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
