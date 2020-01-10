Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1D013742D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elrXS4SbdDrJnbKfoIxq/P8XJP6dCvFbpW9kdg3tKiM=; b=euiXlH738TPKFg
	e3TdkppiBglcboWN9NqU5j1cUCdIva9xqS0N7xlNd8kBmmTd9ePqWl0ojRMuhO+XtqSig9lE7609R
	4eTGoNrqj2zE3H1ydpZWvt5dA/pLmFcJSExDMH38AeVYvKimCNUIw/5vw3B1bfQPNSgLuGTw4bA7z
	0k9dQMoaWPbwLsZU5agmYJI8Uz1OjZ5XNeF4RGYMa95pDkeL06vBlsDJRF/cLuVO/Pl2dp/JkJk0/
	GEL5RI9YGH8ig/qbeZrR47eQ7k01LrxKy1rlTqIhyV6DhAKyEOzI38u1sl71RNx2+H984vQxA5h1p
	FdmlRIG/4Yv6ToKWDswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxaF-0004BY-SC; Fri, 10 Jan 2020 16:56:27 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxa7-00049f-B0
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=subject:references:from:mime-version:in-reply-to:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=qSIj+Q/eviriLbr4bwIlJlojdPvdcmcScS/njDhyucQ=;
 b=LhwpGXfR08rN9g16BlVN8gbCN9ye/zQBHzIsxKPxQh3U83DR/TBmKPdQog3hbSdONNnr
 dyOWBHmPkX+EcdEB75xJAjEAYbwV/jtoHwaCq+0kWoibQBWbMl7gzfzfORscv8JpHCRg63
 3pFUdmg+c8Aq4AfWopJU/Pz0KMMc/TUsw=
Received: by filterdrecv-p3iad2-57f487d66-l92zz with SMTP id
 filterdrecv-p3iad2-57f487d66-l92zz-17-5E18ACAC-63
 2020-01-10 16:56:12.829615348 +0000 UTC m=+2131774.242187522
Received: from [80.251.203.67] (unknown [80.251.203.67])
 by ismtpd0073p1mdw1.sendgrid.net (SG) with ESMTP id 2KGoAlXLSRW0ynbiZTRwlA
 Fri, 10 Jan 2020 16:56:12.443 +0000 (UTC)
Subject: Re: [PATCH v2 00/14] Support more HDMI modes on RK3228/RK3328
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <b159ee28-213e-35d2-6d09-516abc3358bb@ti.com>
From: Jonas Karlman <jonas@kwiboo.se>
Message-ID: <a188146c-b424-b8b5-d9dd-189a84f5c046@kwiboo.se>
Date: Fri, 10 Jan 2020 16:56:12 +0000 (UTC)
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <b159ee28-213e-35d2-6d09-516abc3358bb@ti.com>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h88Wy6SX3=2F1iV6Uej?=
 =?us-ascii?Q?3Xa3x+z7=2FIqgRn9rdyg=2F6rE6t8oWfMo1X9LETIX?=
 =?us-ascii?Q?eguuHt+rMgQYsQTVdR=2FtMP2d9t21ViSV7Ne7Rtc?=
 =?us-ascii?Q?sUzxQBbl27zAW+jQcMLVxXWn84LeMm0vaK8pADu?=
 =?us-ascii?Q?RkWrPKGjsWo4jZWrAXNhYHfcJbUA3iaJFsyEIH5?=
 =?us-ascii?Q?bT0wFxIJXWOxFyFB8OH4w=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_085619_443260_8B93EB14 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 2020-01-10 12:01, Kishon Vijay Abraham I wrote:
> 
> 
> On 09/01/20 2:37 AM, Jonas Karlman wrote:
>> This series make it possible to use more HDMI modes on RK3328,
>> and presumably also on RK3228. It also prepares for a future YUV420 and
>> 10-bit output series.
>>
>> Part of this has been reworked from vendor BSP 4.4 kernel commits.
>>
>> Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.
>>
>> Patch 6 prepares for use of high TMDS bit rates used with HDMI 2.0 and
>> 10-bit output modes.
>>
>> Patch 7-13 changes rk3228/rk3328 to use mode_valid functions suited for
>> the inno hdmi phy instead of the dw-hdmi phy. These changes allows for
>> more CEA modes to be usable, e.g. some 4K and fractal modes.
>>
>> Patch 14 adds support for more pixel clock rates in order to support
>> common DMT modes in addition to CEA modes.
> 
> Is it possible to split the series targeted for different subsystems or
> is it required for all the patches to be merged together?

I think it should be possible to split the patches without any issue.

The phy changes mainly targets HDMI mode rates that is currently not in use,
filtered out by current mode_valid or YUV420/Deep Color modes not yet supported.
And the drm changes should not have a hard requirement on the phy changes
in this series, but I have not tested them separately.

I will split this series and re-run some tests before sending independent series.

Regards,
Jonas

> 
> Thanks
> Kishon
>>
>> Note: I have only been able to build test RK322x related changes
>> as I do not have any RK322x device to test on.
>>
>> All modes, including fractal modes, has been tested with modetest on
>> a RK3328 Rock64 device using e.g.
>>
>>   modetest -M rockchip -s 39:3840x2160-29.97
>>
>> Changes in v2:
>>   - collect acked-by tag
>>   - drop the limit resolution width to 3840 patch
>>
>> This series is also available at [1] and the early work on YUV420 and
>> 10-bit output is available at [2].
>>
>> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-inno-hdmi-phy
>> [2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200108-bus-format
>>
>> Regards,
>> Jonas
>>
>> Algea Cao (1):
>>   phy/rockchip: inno-hdmi: Support more pre-pll configuration
>>
>> Huicong Xu (1):
>>   phy/rockchip: inno-hdmi: force set_rate on power_on
>>
>> Jonas Karlman (11):
>>   phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
>>   phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
>>   phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
>>   drm/rockchip: dw-hdmi: allow high tmds bit rates
>>   drm/rockchip: dw-hdmi: require valid vpll clock rate on rk3228/rk3328
>>   clk: rockchip: set parent rate for DCLK_VOP clock on rk3228
>>   arm64: dts: rockchip: increase vop clock rate on rk3328
>>   arm64: dts: rockchip: add vpll clock to hdmi node on rk3328
>>   ARM: dts: rockchip: add vpll clock to hdmi node on rk3228
>>   drm/rockchip: dw-hdmi: limit tmds to 340mhz on rk3228/rk3328
>>   drm/rockchip: dw-hdmi: remove unused plat_data on rk3228/rk3328
>>
>> Zheng Yang (1):
>>   phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate
>>
>>  arch/arm/boot/dts/rk322x.dtsi                 |   4 +-
>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   6 +-
>>  drivers/clk/rockchip/clk-rk3228.c             |   2 +-
>>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  47 ++++++--
>>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
>>  5 files changed, 120 insertions(+), 49 deletions(-)
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
