Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC9F136B96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:00:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2GCehRFd5j/JeYUHmoTx4oVfuIk5EYQ5Hp3OR5CEQ8=; b=aKC6KAMBHK2+sm
	ZZG8nrC/nshpyx2svMm/FSWmZv1tt3ViU2GTSBW0PkNMsRw8rp0xa4DaqtQWvqT81PjD3H+YCV27e
	q9ic+NM7E/yYhII2h41TdQwiNxNT9oQ6UIyViOglwT7sOiHFMOjWaE+vx44WXVuHd5faErfjBw5xC
	XpH8vRgV0vNc1wSSUmDd3uc3tsXrmhAnetYaMfePKxcqO7WjfXTaPrTzrR6unP46qH43/QipMPNnM
	hMqGms5Y5SiD1XqbUYK3asJxBFvruJWgY3C49INLnWkNs6BlSPN2V3gys6A4VqilWIFhPPv+qnJxf
	quliP6ZA/j8AqtwnkCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ips1E-0004ju-95; Fri, 10 Jan 2020 10:59:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ips14-0004hj-AP; Fri, 10 Jan 2020 10:59:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00AAxZTe081793;
 Fri, 10 Jan 2020 04:59:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578653975;
 bh=9+Ck3PRaRVIdp1krLVpCgf4FURcXnlnWOb8T6coy79M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nyfrNejkNB1FiPAWgbDHVtQ3iiC2/Jp8H1uiZfT+cRUg1ai0DpE4z38L1wvYHw6Hq
 8cWFwy/ozYcxI31BVErd34xjIXMOHvvUdkNWpstpTW72gan8oeLU1scsQrmutxpChP
 jalicy0DTy0H6D+m2wH6BzDJ/S8XBZFmMsJS2to4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00AAxZhE012420
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 10 Jan 2020 04:59:35 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 10
 Jan 2020 04:59:34 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 10 Jan 2020 04:59:35 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00AAxWRT044018;
 Fri, 10 Jan 2020 04:59:32 -0600
Subject: Re: [PATCH v2 00/14] Support more HDMI modes on RK3228/RK3328
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Sandy
 Huang <hjc@rock-chips.com>
References: <20200108210740.28769-1-jonas@kwiboo.se>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <b159ee28-213e-35d2-6d09-516abc3358bb@ti.com>
Date: Fri, 10 Jan 2020 16:31:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_025946_481804_E3C00B3D 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/01/20 2:37 AM, Jonas Karlman wrote:
> This series make it possible to use more HDMI modes on RK3328,
> and presumably also on RK3228. It also prepares for a future YUV420 and
> 10-bit output series.
> 
> Part of this has been reworked from vendor BSP 4.4 kernel commits.
> 
> Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.
> 
> Patch 6 prepares for use of high TMDS bit rates used with HDMI 2.0 and
> 10-bit output modes.
> 
> Patch 7-13 changes rk3228/rk3328 to use mode_valid functions suited for
> the inno hdmi phy instead of the dw-hdmi phy. These changes allows for
> more CEA modes to be usable, e.g. some 4K and fractal modes.
> 
> Patch 14 adds support for more pixel clock rates in order to support
> common DMT modes in addition to CEA modes.

Is it possible to split the series targeted for different subsystems or
is it required for all the patches to be merged together?

Thanks
Kishon
> 
> Note: I have only been able to build test RK322x related changes
> as I do not have any RK322x device to test on.
> 
> All modes, including fractal modes, has been tested with modetest on
> a RK3328 Rock64 device using e.g.
> 
>   modetest -M rockchip -s 39:3840x2160-29.97
> 
> Changes in v2:
>   - collect acked-by tag
>   - drop the limit resolution width to 3840 patch
> 
> This series is also available at [1] and the early work on YUV420 and
> 10-bit output is available at [2].
> 
> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-inno-hdmi-phy
> [2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-bus-format
> 
> Regards,
> Jonas
> 
> Algea Cao (1):
>   phy/rockchip: inno-hdmi: Support more pre-pll configuration
> 
> Huicong Xu (1):
>   phy/rockchip: inno-hdmi: force set_rate on power_on
> 
> Jonas Karlman (11):
>   phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
>   phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
>   phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
>   drm/rockchip: dw-hdmi: allow high tmds bit rates
>   drm/rockchip: dw-hdmi: require valid vpll clock rate on rk3228/rk3328
>   clk: rockchip: set parent rate for DCLK_VOP clock on rk3228
>   arm64: dts: rockchip: increase vop clock rate on rk3328
>   arm64: dts: rockchip: add vpll clock to hdmi node on rk3328
>   ARM: dts: rockchip: add vpll clock to hdmi node on rk3228
>   drm/rockchip: dw-hdmi: limit tmds to 340mhz on rk3228/rk3328
>   drm/rockchip: dw-hdmi: remove unused plat_data on rk3228/rk3328
> 
> Zheng Yang (1):
>   phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate
> 
>  arch/arm/boot/dts/rk322x.dtsi                 |   4 +-
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
>  drivers/clk/rockchip/clk-rk3228.c             |   2 +-
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  47 ++++++--
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
>  5 files changed, 120 insertions(+), 49 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
