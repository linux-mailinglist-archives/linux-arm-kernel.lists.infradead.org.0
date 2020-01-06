Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49905131B4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/WVfMSzVI3zsXVlxO1UQRaehNYxrAkn5Zom4gelH3A=; b=YW8tnz/NUXbopK
	DTpom6/Zh9lT1hrGaYiGc9CEP5pazkBkNzUwQ07c44/5KsQCjfN7Y0bS4mKXN68yk4DKG1SXo6cWL
	c8LAZx3R3hX2TkFj3ugKjwNz7+ZLKyCaRIRgKXsHfxvY4P3gKcn6w1ku+8ygNCPI+yCTNl7kVMXc4
	SsRW4RiWxmQ0Yp9mUSlcWZ/suiozw21e8DcDWiFa5E4iLpCs3utB7fVrvmSRZgwLjnpyBfmPiF2SS
	ZboBnBVZzSIFtQ4jqtdJ5vWfx1XaJFC5I+9Br7gabvn8/XvMxhgITOlB8akuk7dVm9Jzlt5namrv6
	EYrnBN+QcanFDNZfR9gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioap6-0001gD-QS; Mon, 06 Jan 2020 22:26:08 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaop-0001aT-L3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:25:53 +0000
Received: by mail-vk1-xa42.google.com with SMTP id g7so12903510vkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eV/1akoxP7P3ABmGBw2S16HDMJ8eaLjqFUo1f5/sSLU=;
 b=Nyopb1GgYHuYm4R4qPjbmQiRz9pqSDRwa0NMCNwzi97cVj5VOB0eC1RQIKPkLo7RAY
 3Yfg8Sb5Xzxc2VGfuD3QSRolbSggv0XZfau1AluQ0W6H97XjPI2HXUl3iqL/kDoH8Uf3
 zHQkdzZ2Dg3uxiLBFDyXjtSHyOlzhm3/QNAgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eV/1akoxP7P3ABmGBw2S16HDMJ8eaLjqFUo1f5/sSLU=;
 b=im6nOIj4DYJhkE6eNEfTOSjSA1Fc/PcyVA2HILzd+M1tcvxyejM3+/cNH9WEogIliS
 T1IHBuUzqek0+qBfQ/jMq9XgJETbOmmhaZej2cF630I4wCAiP8wb5lhhOODJTKEzvrgJ
 9gKDY48lUimRBEzyui7u2FkyQjh5mM7bDTVDFFrulKcGCzS7O4YxUHbeAaHWdwmOoodm
 e4MrQhDvcobYls31KwUtpkWodWm9j4Br3HrsplGdpPBwxdxB8l0CbrMqb95x61FMDh6A
 eHBKmbP2yDYEbpHVT5l4r/9mNMWSIYOzR8tQx0JVOu/sKTkNS+q6aPtckZmh6iXWoltb
 bztA==
X-Gm-Message-State: APjAAAWX1i5i1WSI5ypWsqOHyJakoBlx7rSR4bD1P1yW4I8EXt+rbZUT
 xECAJ3x9waZ2w3VhFQ6mUQVrURMuwng=
X-Google-Smtp-Source: APXvYqxljgIa0Qbaw4cJHv0Q2wZoti9IAF+zyDuctwZzaOM1t7WeQMd4fQS7PV8eJur73+Um04YFjw==
X-Received: by 2002:a1f:db81:: with SMTP id s123mr60593624vkg.45.1578349550214; 
 Mon, 06 Jan 2020 14:25:50 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id u20sm16745652vsq.25.2020.01.06.14.25.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 14:25:49 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id x18so32676436vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:25:49 -0800 (PST)
X-Received: by 2002:a67:8704:: with SMTP id j4mr55143272vsd.106.1578349548941; 
 Mon, 06 Jan 2020 14:25:48 -0800 (PST)
MIME-Version: 1.0
References: <HE1PR06MB40118544456FC5461F49DDE8AC2E0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB40118544456FC5461F49DDE8AC2E0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Jan 2020 14:25:37 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XbmwC1H446Og9juqYBR66ozjNVw9SDa2WWz=sKQg_imw@mail.gmail.com>
Message-ID: <CAD=FV=XbmwC1H446Og9juqYBR66ozjNVw9SDa2WWz=sKQg_imw@mail.gmail.com>
Subject: Re: [PATCH for 5.5] phy/rockchip: inno-hdmi: round clock rate down to
 closest 1000 Hz
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_142551_728143_C11C1842 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Sean Paul <seanpaul@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Dec 23, 2019 at 12:49 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Commit 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the clock framework")
> changed what rate clk_round_rate() is called with, an additional 999 Hz
> added to the requsted mode clock. This has caused a regression on RK3328
> and presumably also on RK3228 because the inno-hdmi-phy clock requires an
> exact match of the requested rate in the pre pll config table.
>
> When an exact match is not found the parent clock rate (24MHz) is returned
> to the clk_round_rate() caller. This cause wrong pixel clock to be used and
> result in no-signal when configuring a mode on RK3328.
>
> Fix this by rounding the rate down to closest 1000 Hz in round_rate func,
> this allows an exact match to be found in pre pll config table.
>
> Fixes: 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the clock framework")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++++
>  1 file changed, 4 insertions(+)

Sorry for the regression and thanks for the fix.  It seems sane to me
since you're just matching against your own table and all the rates
there are all in kHz.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
