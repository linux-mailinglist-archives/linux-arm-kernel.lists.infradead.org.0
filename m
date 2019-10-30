Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5C1E9903
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:15:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oczt46weo8StuWG3ca1ypohGAPapNt4hVK0s1Ciaq60=; b=Z6PlqRsBEzUMNm
	sb3c9viwq848hA3THgXhc+Vlic0PFgWIDZMew6LpDsMuXqRdlGPZL/EX7PXU0dubaOOe+G/9I7JkW
	vKKaV1t/QDLxdH+LVnOtI3HzViqEhwPMA6G3WBHj+BJ2PJRlQt3x2H0e5kYMvh7aZze/Q1CKwWwkI
	kVd8F65e8BdajGM1YVa9T81XwP+cpp9RNMZZgbOKra/GUgfhFsuzga90L4V1JXFyCKFmJW9wQRieb
	UNlYVN4O+XQfoOvx4OIUbmB+Ipxcz9XgRwYpyYCyCLofTAhsObjBXXcUygd/+jwl5uRo0oTMULAuq
	v/E9fdLm1MKYuXkPDMVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPk4q-0003X1-7e; Wed, 30 Oct 2019 09:15:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPk4d-0003W8-VM; Wed, 30 Oct 2019 09:15:29 +0000
Received: from [91.217.168.176] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iPk42-00079b-Tm; Wed, 30 Oct 2019 10:14:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
Date: Wed, 30 Oct 2019 10:14:49 +0100
Message-ID: <9095671.y4VLy4llMG@phil>
In-Reply-To: <CA+Px+wXAo5EPjudneS+aFEAfBRAQR1Xp6goutdMdYTPeKcfTTA@mail.gmail.com>
References: <20191028071930.145899-1-cychiang@chromium.org>
 <20191028071930.145899-6-cychiang@chromium.org>
 <CA+Px+wXAo5EPjudneS+aFEAfBRAQR1Xp6goutdMdYTPeKcfTTA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_021528_157142_1F4412A5 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
 Tzung-Bi Shih <tzungbi@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Liam Girdwood <lgirdwood@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Mittwoch, 30. Oktober 2019, 10:09:46 CET schrieb Tzung-Bi Shih:
> This series has 6 patches.  We noticed you have merged the first 4
> patches (includes the DT binding one:
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157668.html).
> 
> There are 2 DTS patches are still on the list:
> - [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
> rk3288-veyron-analog-audio
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157499.html
> - [PATCH v9 6/6] ARM: dts: rockchip: Add HDMI audio support to
> rk3288-veyron-mickey.dts
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157500.html
> 
> Are you waiting for other maintainers' acknowledgement?  Or do we need
> to resend them with maybe some modifications?

nope all good like it is, ideally driver-changes (including the binding)
and the devicetree-changes itself go through my tree in this case, as
otherwise we would often run into conflicts if dts change go through
vastly different maintainer trees.

Of course dts changes can only get applied after the driver side is happy,
so I'll be picking up these 2 changes (hopefully shortly)


Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
