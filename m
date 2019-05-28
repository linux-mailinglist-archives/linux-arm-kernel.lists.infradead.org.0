Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8010C2C0C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UWML1Pk4uOuG+ndHoSL5szxJGLP1mW7ri2rVF1y3pq8=; b=JZsirIWUS1hqes9GerZoGnrwV
	NIr3mCu/pwbgZk2cp6N6nB9Fm7P4ZqXOtenM47nRVSQZmQ2/irvHnPndpcyqxCMQ4EGs1y2RUTX0+
	R8SasyCEQGT4sFuRW36MGdggW3IBqGjLq0zeeTSiac4esX6bUm5FcOSkjHeOxM5q04Wx4gaSNkK1a
	4+R5r8gwg/yG9YeWo0PoRCdoNX00yIMaMHcVy1qwgPLwcWNI2KfP4JUBZTpLZmJdBdjh5ZTiSZPdm
	kVhFmChWtb1G9PsEvdY5IG/fCWHrpjK276/GewSHby6O2WrJvVtHlsxce2xdcEiDG120r2rT6Seuu
	2b7Hi14DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVX3I-0007w2-5N; Tue, 28 May 2019 08:01:44 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVX39-0007vX-L1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:01:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4S81Qie048278;
 Tue, 28 May 2019 03:01:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559030486;
 bh=aitQvQ8mJN5/QEKKXw77CNQIyj8FxmH4Q6Rk0NNv7Y0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cSFw7XtBGEtL7PubqwFuThoJD1pxhWO19jSTEg7a8aikMaG5zxJwgbCNJ351rms2h
 13odvuFWuNgCoBrZ49ocJ5UUUaKwFtc8+EQamjTaqlbR/oTpoe+yVKKK46/oVAOmqf
 /zfT6w9lOokUVlBX3absWSJpPcDQfngjozOQdDcg=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4S81Q76068834
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 03:01:26 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 03:01:25 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 03:01:25 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4S81Lh6085829;
 Tue, 28 May 2019 03:01:22 -0500
Subject: Re: [PATCHv2 00/13] ti-sysc driver changes to drop custom hwmods
 property
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190528062414.27192-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <0ba540b0-ad04-ee56-5874-69921eb4f374@ti.com>
Date: Tue, 28 May 2019 13:32:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528062414.27192-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010135_796189_28089DF7 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Suman Anna <s-anna@ti.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28/05/19 11:54 AM, Tony Lindgren wrote:
> Hi all,
> 
> Here are changes to improve ti-sysc driver to the point where we can
> finally drop the custom hwmods property for most cases. This series
> drops hwmods property only for omap4 UART and MMC as those can be
> tested with core retention idle.
> 
> I'll be posting more patches for dropping hwmods properties as they
> get tested.


Added missing dra71/76 patches on linux-next which get them to boot.

Tested for boot on dra71/76.
Tested for DS0 on AM43/33.
Tested for RTC+DDR mode on am43.

For the series:

Tested-by: Keerthy <j-keerthy@ti.com>

> 
> Regards,
> 
> Tony
> 
> Changes since v1:
> 
> - Repost the series against v5.2-rc1 as the first patch in the series
>    got accidentally left out for patch "bus: ti-sysc: Add support for
>    missing clockdomain handling"
> 
> 
> Tony Lindgren (13):
>    bus: ti-sysc: Add support for missing clockdomain handling
>    bus: ti-sysc: Support 16-bit writes too
>    bus: ti-sysc: Make OCP reset work for sysstatus and sysconfig reset
>      bits
>    bus: ti-sysc: Allow QUIRK_LEGACY_IDLE even if legacy_mode is not set
>    bus: ti-sysc: Enable interconnect target module autoidle bit on enable
>    bus: ti-sysc: Handle clockactivity for enable and disable
>    bus: ti-sysc: Handle swsup idle mode quirks
>    bus: ti-sysc: Set ENAWAKEUP if available
>    bus: ti-sysc: Add support for disabling module without legacy mode
>    bus: ti-sysc: Do rstctrl reset handling in two phases
>    bus: ti-sysc: Detect uarts also on omap34xx
>    ARM: dts: Drop legacy custom hwmods property for omap4 uart
>    ARM: dts: Drop legacy custom hwmods property for omap4 mmc
> 
>   arch/arm/boot/dts/omap4-l4.dtsi       |   9 -
>   arch/arm/mach-omap2/omap_hwmod.c      |  39 +---
>   arch/arm/mach-omap2/pdata-quirks.c    |  60 +++++
>   drivers/bus/ti-sysc.c                 | 309 ++++++++++++++++++++------
>   include/linux/platform_data/ti-sysc.h |   9 +
>   5 files changed, 314 insertions(+), 112 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
