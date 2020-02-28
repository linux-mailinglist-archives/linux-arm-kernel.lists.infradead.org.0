Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3B7173B26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YswZVms6LhZjj6yGUi/gqomYrrSds20UHtezSfcRKhM=; b=nHOFsVEHTtOck4
	NfjGCVoqUmNGG9htBuuMz56twgmfmoAsbwQzj5XXBNGf+T+FVTVc4nLtlnC+rJIgXudpPNqluioaD
	X/KIA/934md4GBS8aZKYGM1hnnOWUSDSGmM+uWFTSs93dmdopBH5I5gC8VzT+Fm6IvUi4KZlQ+Wma
	pYEnM2L/dBaoPoKNcD/froGfOS/WLoXH4MOPityDE9ytZ5ADQxa5TcbvtDB5dZ3SD1YYzkg0TsDOx
	vVdd28LNNZVj27UOyYUlAy/xirgVCeYaL21XTFDBgR6WrgJA30dOR+yZmKeujfmVRouOGN8hQW7cM
	LpoFiaUYGRDgyGfglIWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hMn-000224-LT; Fri, 28 Feb 2020 15:15:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hMd-0001zp-2Y; Fri, 28 Feb 2020 15:15:44 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j7hMM-0006eU-6O; Fri, 28 Feb 2020 16:15:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 28 Feb 2020 16:15:25 +0100
Message-ID: <3144691.gaQQKPV42P@diego>
In-Reply-To: <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
References: <20200227180630.166982-1-t.schramm@manjaro.org>
 <12370413.gKdrHkWbHd@diego>
 <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_071543_274305_1D8BD4F9 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 enric.balletbo@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tobias,

Am Freitag, 28. Februar 2020, 15:57:10 CET schrieb Tobias Schramm:
> thanks for the review. I'll implement the changes and send a v2.
> 
> >> +	 * of wakeup sources without disabling the whole key
> > Also can you explain the problem a bit? If there is a deficit in the input
> > subsystem regarding wakeup events, dt is normally not the place to work
> > around things [we're supposed to be OS independent]
> 
> The issue is that some users wanted to be able to control the wakeup
> functionality of the keys separately via sysfs. That does not seem to be
> possible when combining both keys into one gpio-keys node. A more
> detailed explanation of the issue can be found at [1].

ok ... but that is really strange, because looking at gpio-keys.c I see
it checking the individual button wakeup-property before setting
the irq-wake in gpio_keys_enable_wakeup() .

Ah, but I guess manually disabling/enabling wakeup via sysfs only
works for the whole device and all wakeup buttons.

In general this sounds more like a gpio-keys deficit, but in the end
we can keep the separate gpio-key nodes here, they don't violate any
dt-bindings ;-) .


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
