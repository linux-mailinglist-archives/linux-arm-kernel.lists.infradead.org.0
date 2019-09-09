Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E27AD1B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 03:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EFAliHTJGSDJn4bCUU6uWDBmTg17TPu8ThHJNhoxu/k=; b=iUPZAeYVnqRQHuT1oHOR6x8UL
	mh+w9hZvkCzhDDoS++04vlq9gFB5saXun0RmMAXNmJrzNgVBgD42gDvQh1TCy6jDks2wTY7BlQsoM
	XvQ9bitXxD1867VwnHOfQL/hYk8EKpkxmFLdOfcY4Dv/t3kAsUeUQbSlJvsGEzbMP0GPqyybAkm6X
	Z9uChQuEd4OX2bU17JISYEO7xq6cw9VBdu4U1X1gBJf6yrVcTTStclVfmaG/ps5F08N/cRkzt9YpH
	XYMUNggg+W+4P03ssLZAwRIMoOH6Xo4mC+T/XcohYzFx0LF/CYAvNomFaQgXxhldoqn9RCLoiqbkA
	mgQ3TWR3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i78vF-0005cV-4T; Mon, 09 Sep 2019 01:56:53 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i78v6-0005bp-MM
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 01:56:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x891ucNi093546;
 Sun, 8 Sep 2019 20:56:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567994198;
 bh=lUH/u9a2zTD6UF778x023rDtCPXhaWcsnAHpbSuBK3o=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nFoHhQ+r46Wn0jPfAF+YacwzfnNk4mm29ggO1pW5VUXM90PuQMzsYZ7PQda6sx/nm
 wkxRkAYX44pkz21mUWS5IbKnkVQBZzd3W+oqvcyirTBTQPFuwObt+WBpGWFn15uiJw
 eXh3LIsGFqpFkBGe4/BjbIdlFokfub5YhMT0GjiQ=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x891ubNL019345
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 8 Sep 2019 20:56:38 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 8 Sep
 2019 20:56:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 8 Sep 2019 20:56:37 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x891uWaN094203;
 Sun, 8 Sep 2019 20:56:32 -0500
Subject: Re: [PATCH] bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle()
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190906200154.6510-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <40e5c2a1-3682-584a-4eb9-4d96901bbfda@ti.com>
Date: Mon, 9 Sep 2019 07:27:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906200154.6510-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_185644_865217_7BD8644C 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vignesh Raghavendra <vigneshr@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/09/19 1:31 AM, Tony Lindgren wrote:
> Commit d098913a10f8 ("bus: ti-sysc: Fix clock handling for no-idle
> quirks") fixed handling for no-idle quirk modules that are not enabled
> by the bootloader.
> 
> But it also caused unpaired clockdomain calls that won't allow idling
> the system. That's because clkdm_allow_idle_nolock() and
> clkdm_deny_idle_nolock() have usage count with clkdm->forcewake_count.
> 
> Let's drop the unpaired sysc_clkdm_deny_idle() to fix idling of devices.

Tested-by: Keerthy <j-keerthy@ti.com>

I believe still the previous fix [1] for nfs boot is still not on 
linux-next. Are you planning on more testing or it will be queued as fixes?


[1] https://lkml.org/lkml/2019/9/5/616

- Keerthy

> 
> Fixes: d098913a10f8 ("bus: ti-sysc: Fix clock handling for no-idle quirks")
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   drivers/bus/ti-sysc.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -2363,7 +2363,6 @@ static void ti_sysc_idle(struct work_struct *work)
>   	 */
>   	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
>   				 SYSC_QUIRK_NO_IDLE_ON_INIT)) {
> -		sysc_clkdm_deny_idle(ddata);
>   		sysc_disable_main_clocks(ddata);
>   		sysc_disable_opt_clocks(ddata);
>   		sysc_clkdm_allow_idle(ddata);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
