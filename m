Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357B566129
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 23:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6A8nIj6f3ylFsve2dsvRxDKI6aSVQDBXDTUGYvKGmY=; b=MC8/ZD59z60nx3
	EHRGaTfKO4Oei87mgngM+p0r+c2YBN2Uv8eoXZcs3DLjyKbvAdxM2k52t7kM9YaPPHw1i2yz7/hyK
	dQa2xp8nGWjCeMFaaQIVgzAT4FG08hYPKjywyXAFmJ6S0gXyyK0dlfdX0SQM8tfkPHNNHrAbzLUol
	Wu5ZVvj0Nf2kVFVNaGedV71inCRJ5BJTrsDkWinTNrS2TXHRgru53Cu7CQt0YuvKCprn5Ewe4u6NV
	5pfEMx4iU2MQ5rENq5R7lsxddUkF71AzKW1a0KPcXdL60xJ3+4EnsKcZWR/WfUAlF2zVexgeMGjDA
	e7XkFrDCCTzvW/D79WyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlgeH-0005yj-Dw; Thu, 11 Jul 2019 21:30:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlge2-0005xK-GJ; Thu, 11 Jul 2019 21:30:28 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hlgdn-0006o7-SB; Thu, 11 Jul 2019 23:30:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 3/7] arm64: dts: rockchip: Specify override mode for
 kevin panel
Date: Thu, 11 Jul 2019 23:30:10 +0200
Message-ID: <2176386.nGWJ3FArxS@diego>
In-Reply-To: <20190401171724.215780-4-dianders@chromium.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-4-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_143026_697811_26BA8CA4 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Brian Norris <briannorris@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Eric Anholt <eric@anholt.net>, Viresh Kumar <viresh.kumar@linaro.org>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?ISO-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 1. April 2019, 19:17:20 CEST schrieb Douglas Anderson:
> From: Sean Paul <seanpaul@chromium.org>
> =

> This patch adds an override mode for kevin devices. The mode increases
> both back porches to allow a pixel clock of 26666kHz as opposed to the
> 'typical' value of 252750kHz. This is needed to avoid interference with
> the touch digitizer on these laptops.
> =

> Cc: Doug Anderson <dianders@chromium.org>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: St=E9phane Marchesin <marcheu@chromium.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
