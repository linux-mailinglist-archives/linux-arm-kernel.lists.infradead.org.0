Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C9A7279C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 07:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TkEhMHxDk1dnODOCAxGh/aDjYN5DyG6Y5u2vud7/a9g=; b=l4M8jF0js1zSGGPVoyjvb+ObN
	zks0OtVGUAc2K1EHyOsj+3rIIEeanl5zynHg/y3GuHyaDSyfauQma68SYaucVMqOAZ0pfz5Zfk6tA
	DEGC9joK8XI819yF69BN+Z0p5xEqvzqQ+DJOIQKoNwHB6ut/3WKyVL80wH2uEUVSL4vHP2hEt/Fmv
	vlf2a/eiqpagrthQe7lROVQQuhxaws7TQSJckrCRzwtdUfrV6Lj3Bqu3B4BfTuPWWPnvHHNTeVDfQ
	sqTslvrtyh/Wsp59wS2nNJ5kO7fIbkAsb1fkDqF8BlkmTGmsjSR3zjkkkxPwAJcuwL5UAkm+zgygP
	JqMmwO8Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqACL-0007b6-V3; Wed, 24 Jul 2019 05:52:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqABm-0007AM-CV
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 05:51:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6O5pht6095860;
 Wed, 24 Jul 2019 00:51:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563947503;
 bh=/ukI6z7MwTgGEJKQ7FloIKRXPBiEaTOaKdMkfX0Lm6c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=m4UD7L77PYQorEIAvyPJXNXpMcdziaU0iCvOD5nB0J7WeSorpyHJ0hPoQ5Izkuy41
 8rC5e+CxYsvXn61rik6QU+PHVOY/kTTaPoJw91Kz/OPSsvVb2sUNgy+/WXwfuwp6FS
 irwpJYjRBGts224etehfvcSvo4Me7NT5Yv4U8KfU=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6O5phYB048370
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 24 Jul 2019 00:51:43 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 24
 Jul 2019 00:51:42 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 24 Jul 2019 00:51:42 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6O5pcdZ000559;
 Wed, 24 Jul 2019 00:51:39 -0500
Subject: Re: [PATCH 0/8] ti-sysc related warning fixes for v5.3-rc cycle
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190723112811.44381-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <84de9487-761f-2f66-0227-97615e240477@ti.com>
Date: Wed, 24 Jul 2019 11:22:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723112811.44381-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_225146_792333_5810A37B 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23/07/19 4:58 PM, Tony Lindgren wrote:
> Hi all,
> 
> I noticed that with recent ti-sysc driver changes some new warnings
> have crept in. Mostly they are caused by having different configuration
> in the dts compared to the legacy platform data. Let's fix these first
> before we continue dropping the legacy platform data.
> 
> I also noticed we need two fixes for the ti-sysc driver while looking
> at the warnings.

Tony,

Apart from Patch 2(breaks DS0 on AM3). Rest all work fine.

Tested for DS0/RTC+ddr on AM4, DS0 on AM3 Boneblack.

You can add my:

Tested-by: Keerthy <j-keerthy@ti.com>

For all the 7 patches except Patch 2.

Regards,
Keerthy

> 
> Regards,
> 
> Tony
> 
> Tony Lindgren (8):
>    ARM: OMAP2+: Fix missing SYSC_HAS_RESET_STATUS for dra7 epwmss
>    ARM: OMAP2+: Remove unconfigured midlemode for am3 lcdc
>    bus: ti-sysc: Fix handling of forced idle
>    bus: ti-sysc: Fix using configured sysc mask value
>    ARM: dts: Drop bogus ahclkr clocks for dra7 mcasp 3 to 8
>    ARM: dts: Fix flags for gpio7
>    ARM: dts: Fix incorrect dcan register mapping for am3, am4 and dra7
>    ARM: dts: Fix lcdc sysc flags for am3
> 
>   arch/arm/boot/dts/am33xx-l4.dtsi              |  6 +++-
>   arch/arm/boot/dts/am437x-l4.dtsi              |  4 +++
>   .../boot/dts/am57xx-beagle-x15-common.dtsi    |  2 +-
>   arch/arm/boot/dts/dra7-evm.dts                |  2 +-
>   arch/arm/boot/dts/dra7-l4.dtsi                | 31 ++++++++-----------
>   arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  2 +-
>   arch/arm/mach-omap2/omap_hwmod_7xx_data.c     |  3 +-
>   drivers/bus/ti-sysc.c                         | 10 +++---
>   8 files changed, 31 insertions(+), 29 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
