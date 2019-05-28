Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58E52BCA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 02:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Eymnpg1fBiMb+z0qREqj0pLASaN1qfekxDatlM8FD4=; b=SE6wSgic9SZ9PITsHoLb2sMY6
	vDbqdB2n0MD3FNWhdQLHX3pw/Ti7YIGU7gNbpoXpp2M5Nvy70sCjxBC9/Guzc6nn9H27Za7yOh60d
	11OJz55ISaWDh5+WjzeBQKvEitAXz4KnaeIPUJsF+jRTm74XTBzp9qYqwhypdNmStlv6Hw3VRL3QG
	BCQVx+ntUDN4XfDKAX5ARHgmmSUOILwN0RgruzyRrGtRPdTtV+KEnU9J59/lKUkUvY8vPkh0xJQq7
	CB6I8rbOSp5NjVPnKIFN3mZdQLNEqtxYKOFFpPS+WfIDmMB6x0lTunyzbUBj+74137ghQxQqKTEWF
	c1V+nzuzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVQR7-0007HS-Ee; Tue, 28 May 2019 00:57:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVQR0-0007Gz-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 00:57:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4S0vaIZ053625;
 Mon, 27 May 2019 19:57:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559005056;
 bh=zRMKW7nfKzQUttL+l6kIY23L8G9PLHAu3G2E3yLzK9w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=LbEtQnHBkkXhsGq4H7Y8vFkq6RBGBwqisP3lYPo3X6FUwuJTCzV8KBcMTmzdyBzXs
 1KR8l3+IGwVODOHJ+olCVDE7pLveRjt8P1yOAccRbFe7PuSn6cYaGLIKQ97Zq6JQ6/
 sKZiZqzefiZrEhq0nyEYRp38p6zsHl09aB2LNDeM=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4S0va0v065212
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 May 2019 19:57:36 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 27
 May 2019 19:57:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 27 May 2019 19:57:36 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4S0vW9X049805;
 Mon, 27 May 2019 19:57:32 -0500
Subject: Re: [PATCH 00/12] ti-sysc driver changes to drop custom hwmods
 property
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190527121348.45251-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <380809b1-7152-faa5-9f43-2243fb4dad19@ti.com>
Date: Tue, 28 May 2019 06:28:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527121348.45251-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_175746_840723_61336305 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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



On 27/05/19 5:43 PM, Tony Lindgren wrote:
> Hi all,
> 
> Here are changes to improve ti-sysc driver to the point where we can
> finally drop the custom hwmods property for most cases. This series
> drops hwmods property only for omap4 UART and MMC as those can be
> tested with core retention idle.
> 
> I'll be posting more patches for dropping hwmods properties as they
> get tested.

Tony,

What is the base of this series? It does not apply cleanly neither on 
linux-next nor on top of 5.2->rc1. If there are dependencies do you have 
a branch?

- Keerthy
> 
> Regards,
> 
> Tony
> 
> 
> Tony Lindgren (12):
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
>   arch/arm/boot/dts/omap4-l4.dtsi       |   9 --
>   drivers/bus/ti-sysc.c                 | 182 ++++++++++++++++++++------
>   include/linux/platform_data/ti-sysc.h |   1 +
>   3 files changed, 140 insertions(+), 52 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
