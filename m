Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4258127EFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdyG0ntosKEfPLGnD4pOm7aXrDG2Gi10E3aRDXgbbEQ=; b=HglhYgGHyLtHmH
	WUFYxHbX0Lgh39EcF+Lix+4GVudS5dk0JsSu+rhroz8kLnCVTYlu0skvd4y4mqyCJ31FZ+W1jlpv5
	NCu1sWaDEQVchQW8ZYd4cyXGqPGQx+hXtHPtcEE/uBBHIQC3gfQRaCDkBOFpZYvza5rQGegEZEITu
	hSABnHKI8H9HhqzglBvg5UHDYyP3fnW8NxxSdH7yS1oTKWAepXE1o+tNIb9UYQTA3I4HqYreKAIJc
	2Hdy9F0xvKOFBmdFZHkdK6U336eyneWhXqQ4uF134g8QxZREbcSLvJJhI1QOIb+GQXRTLw5mdPS7H
	sjYjz75K6hFHQVdiX6og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToIa-0006bq-2L; Thu, 23 May 2019 14:02:24 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToIR-0006aE-U8; Thu, 23 May 2019 14:02:17 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 07:02:13 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2019 07:02:13 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 07:02:13 -0700
Received: from shsmsx104.ccr.corp.intel.com (10.239.4.70) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 07:02:12 -0700
Received: from shsmsx108.ccr.corp.intel.com ([169.254.8.126]) by
 SHSMSX104.ccr.corp.intel.com ([169.254.5.33]) with mapi id 14.03.0415.000;
 Thu, 23 May 2019 22:02:11 +0800
From: "Zhang, Rui" <rui.zhang@intel.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Mark Brown
 <broonie@kernel.org>, Eduardo Valentin <edubezval@gmail.com>, Elaine Zhang
 <zhangqing@rock-chips.com>
Subject: RE: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
Thread-Topic: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
Thread-Index: AQHVEQ59ng5b65ntw0ypm8xLYzn0kaZ4KgWAgAAB5wCAAJHx8A==
Date: Thu, 23 May 2019 14:02:11 +0000
Message-ID: <744357E9AAD1214791ACBA4B0B9092637757AD75@SHSMSX108.ccr.corp.intel.com>
References: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
 <20190523131207.GC17245@sirena.org.uk>
 <ac2f06ac-2bf5-7af6-06c3-37b865c43738@collabora.com>
In-Reply-To: <ac2f06ac-2bf5-7af6-06c3-37b865c43738@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWIyNDI1MTEtODVlNy00ZmQzLWFlZWUtYzI3OGQ0ODdiMDBlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibXUyNlNRZ3U4RWtRSEI1Q1ZFdjlOMURGMmlRVnc0M29SemtQREFEb0FGd0NLdDdUSkNEVXNqS2JzcXV4VXhEcCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_070215_985840_6B8DBD6F 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "matthew.hart@linaro.org" <matthew.hart@linaro.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mgalka@collabora.com" <mgalka@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Enric Balletbo i Serra [mailto:enric.balletbo@collabora.com]
> Sent: Thursday, May 23, 2019 9:19 PM
> To: Mark Brown <broonie@kernel.org>; Eduardo Valentin
> <edubezval@gmail.com>; Elaine Zhang <zhangqing@rock-chips.com>
> Cc: tomeu.vizoso@collabora.com; guillaume.tucker@collabora.com;
> mgalka@collabora.com; matthew.hart@linaro.org; khilman@baylibre.com;
> Daniel Lezcano <daniel.lezcano@linaro.org>; Heiko Stuebner
> <heiko@sntech.de>; linux-pm@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-rockchip@lists.infradead.org; Zhang, Rui
> <rui.zhang@intel.com>; linux-arm-kernel@lists.infradead.org
> Subject: Re: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
> rk3288-veyron-jaq
> Importance: High
> 
> Hi Mark,
> 
> On 23/5/19 15:12, Mark Brown wrote:
> > On Wed, May 22, 2019 at 07:23:09PM -0700, kernelci.org bot wrote:
> >
> >>   Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
> >>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-
> g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE
> =y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
> >>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-
> g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE
> =y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
> >>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting
> error
> >
> > It looks like this issue has persisted for a while without any kind of
> > fix happening - given that the bisection has identified this commit as
> > causing the regression and confirmed that reverting it fixes shouldn't
> > we just revert?  My guess would be that there's some error with the
> > pinctrl settings in the DT for the board.
> >
> 
> After some discussion Heiko sent a patch that reverts the offending commit
> one day ago [1] and it's waiting for maintainer to pick-up the patch.
> 
I thought Eduardo will take the patch.
But I will apply it and queue it for -rc2 anyway.

Thanks,
Rui

> The reason why we think is best reverting that fix it is explained here [2]
> 
> [1] https://lkml.org/lkml/2019/5/22/467
> [2] https://lkml.org/lkml/2019/4/30/270
> 
> Thanks,
>  Enric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
