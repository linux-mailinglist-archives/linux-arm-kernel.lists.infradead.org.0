Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C8EEC651
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWBNe3gUh4axNoTAHN7WuILeVhYsM4N2vFIDpb8W1CY=; b=DkIL21OSMv/URk
	btnsgnOq10Z6YILhQi+CnMeR9sfkXh87oGHYhCVw9V5juRgeMlEs4aKt5a4W+mONYZvAKyPSMieCG
	uD9KFw6Tz5t8aktep82HRIQ2aNK4X6hxDtLnauNNODrdB2eQ0HwuASOS9QGWuxtMls9Tq993s2xNJ
	6pkPwz958CUEQpHaejOvWugy31V4GL721jpICZkWdSI03Rf7xNnVhNIvJFpodqWgNd+IHSbeo8+QV
	18HwgxFNuIcjzE8u4C6ZRVIuweEk2DXrAMYzq2XK1C5sgozbxUkbGm5c5PBsU9xDPA5tke5Uw6708
	HH83lfzgjLKvAdzM8THw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZMz-0004q4-Fq; Fri, 01 Nov 2019 16:01:49 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZMq-0004p8-BP
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572624095; bh=E/fbHRLXQc9yL42ILQyIrY7ShI2u1NGQZd6aLMmys9A=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=tnaqTMz9YGuF8cKSjHlduKJk7RfWI4X44N3TU0gbrQA2h2DLvnZUMKqsidsL7hPZ4
 A/bAsSp2ImUz1BWUSUJ98G8UmIDOIgAUF+znhSvSvOBBd3/POx2U9jB2X/2j/sYEAb
 9KcZDkaVj6C9iExKATC2xCbWlcek8xFF3uYh6460=
Date: Fri, 1 Nov 2019 17:01:34 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] cpufreq: sun50i: Fix CPU speed bin detection
Message-ID: <20191101160134.n7ay2jl7j5vzofo2@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 linux-sunxi@googlegroups.com, Yangtao Li <tiny.windzz@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191031181359.282617-1-megous@megous.com>
 <20191101150701.fgke7hoad5zn3vn2@hendrix>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101150701.fgke7hoad5zn3vn2@hendrix>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090140_564033_DFAB3218 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ALLWINNER CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 04:07:01PM +0100, Maxime Ripard wrote:
> On Thu, Oct 31, 2019 at 07:13:58PM +0100, Ondrej Jirman wrote:
> > I have failures to boot on Orange Pi 3, because this driver determined
> > that my SoC is from the normal bin, but my SoC only works reliably with
> > the OPP values for the slowest bin.
> >
> > Looking at BSP code, I found that efuse values have following meanings
> > on H6:
> >
> > - 0b000 invalid (interpreted in vendor's BSP as normal bin)
> > - 0b001 slowest bin
> > - 0b011 normal bin
> > - 0b111 fastest bin
> >
> > Let's play it safe and interpret 0 as the slowest bin, but fix detection
> > of other bins to match vendor code.
> >
> > Fixes: f328584f7bff ("cpufreq: Add sun50i nvmem based CPU scaling driver")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>
> 
> Out of curiosity, which OPP table is being used? I guess it's one of
> the dozens of patches sitting there...

I'm using one from Orange Pi 3's fex file from Xunlong:

https://github.com/orangepi-xunlong/OrangePiH6_external/blob/master/sys_config/OrangePiH6_3_sys_config.fex
https://megous.com/git/linux/commit/?h=ths-5.4&id=7b409e83b4ac70f3435886da6a26cecf9af77213

This one doesn't really differentiate between normal/fast bins.

There's also another one in the Allwinner DTS files:

https://github.com/orangepi-xunlong/OrangePiH6_Linux4_9/blob/master/arch/arm64/boot/dts/sunxi/sun50iw6p1.dtsi#L349

which seems to be the one used by Yangtao Li in the dt-bindings
docummentation.
	
regards,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
