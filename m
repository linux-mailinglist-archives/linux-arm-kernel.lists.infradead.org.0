Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031351AD838
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s7Hlq/8aUy2FfcEBW5raL27ie4cjZY62GERZWgTHb70=; b=dtKMusbUO+sTFMMbp1h8WVs7k
	vUaZe2zWAW8QeXzWKp8TwIw8xO8uB2/byEI5B+2qCMSoXS3k3kNKr3kvn+lwfNsZbew/Wp/2KMI8Z
	LLEPKkl8pKe2DJdXJbID7NfgrVv6EhJ53VbOri1NUhUrjMKqZCirs+HcSNBevndb/ViY/U25PhVrc
	/Z8RhvV/JtvqIwKtN7ocRAHc+AAczvMhtfZtycILZ20g9A4A6ifU0Py8hEQyqJhuuN/7yWZb5/8PV
	NaLy09TBvHrt2285n6cV8vzYgojFC8PlWnQnGOnclNEq/kr+C6qhi+P/dIpEEWujUilQ/7vXpH1oK
	k7cs4/dCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPM1J-0001EI-Ax; Fri, 17 Apr 2020 08:06:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPM19-0001DK-2z; Fri, 17 Apr 2020 08:06:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 8AD6E2A2164
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v6 1/8] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
In-Reply-To: <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA@mail.gmail.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-2-adrian.ratiu@collabora.com>
 <CAFqH_52eKB4jtmn5e4HQubv8ijOPqDqncp1dRGahhU3NOorJMQ@mail.gmail.com>
 <87lfmvjmt5.fsf@collabora.com>
 <CAFqH_513KB+En_xbpXSBG6Q38kYxWCgw0KO3NVxCb6fqHDaKBA@mail.gmail.com>
Date: Fri, 17 Apr 2020 11:07:37 +0300
Message-ID: <87imhyk01i.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_010631_262036_CC73A089 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020, Enric Balletbo Serra <eballetbo@gmail.com> 
wrote:
> Hi Adrian, 
> 
> [snip] 
> 
>> >> 
>> >> +static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi 
>> >> *dsi) +{ +       regmap_read(dsi->regs, DSI_VERSION, 
>> >> &dsi->hw_version); +       dsi->hw_version &= VERSION; + if 
>> >> (!dsi->hw_version) +               dev_err(dsi->dev, "Failed 
>> >> to read DSI hw version register\n"); 
>> > 
>> > Is this an error that should be ignored? If you can't get the 
>> > HW version, probably, there is something wrong with your 
>> > hardware so, don't you need to return an error? 
>> > 
>> 
>> After thinking a bit more about it, that error should be a 
>> warning. 
>> 
>> I added it because in some cases (for eg. if the peripheral 
>> clock is disabled) the reads can return 0 which is obviously an 
>> invalid version and the bridge will error in the next step when 
>> not finding a layout. 
>> 
> 
> If you'll error anyway, why wait? IIUC at this point the clock 
> *must* be enabled, and if not, something is wrong with the 
> driver, I don't see any advantage on delay the error. do you 
> have a use case where this is called and peripheral clock 
> disabled? 

There should be no real use-case (maybe malfunctioning HW), and we 
could error out here to catch driver bugs ASAP, so I'll go this 
route then :)

Thank you, much appreciated!

>
>> So I'll make this a warning in v7 and explicitely mention that
>> reads version == 0 can be caused by a disabled pclk.
>>
>
> -- Enric
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
