Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1063185523
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 09:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3uV1HB60gSMukyKWzdHpx3/IIiSbK/q5ocEjmDmMh4=; b=PDvKfHfzuEIBwN
	G5iFzYicTx3vvFfutsCrhzNZfGqg+LearxTkBpjecPUA+VxLCYxxcv8FamkhrKwx9Mt52xbSZVVxV
	dckXzfzJUfe7Mx1M6RdH6VoMGy/99bxuRum9/QsTZ4A5gZ5idpXxTYosKDqdBtJSJBcm0ycGk/+I/
	2NcnCJ/xlBKn3fBRJDVw0jjPYoFu9uLeV3/jdPWaqinJopiTFNtDVMB5kDpcOmb9xMv5zJ0z0r128
	3Acn23AEUKCMNHksegHcsRnn71c5rAYXz8mpv01/RZrAguzQs+fPF5q+WBkc3iVaFR9wIgqpbYZNN
	P2UKRRtSD7ZdFKOZaTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD1xz-0006ch-Ls; Sat, 14 Mar 2020 08:16:19 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD1xr-0006cE-Ns
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 08:16:13 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id DB66D8051D;
 Sat, 14 Mar 2020 09:16:07 +0100 (CET)
Date: Sat, 14 Mar 2020 09:16:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 3/5] drm: panel: add Xingbangda XBD599 panel
Message-ID: <20200314081606.GA10236@ravnborg.org>
References: <20200311163329.221840-1-icenowy@aosc.io>
 <20200311163329.221840-4-icenowy@aosc.io>
 <20200314080000.GE5783@ravnborg.org>
 <6AE386BC-BBC9-491F-82F0-CA32EAFE44DF@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6AE386BC-BBC9-491F-82F0-CA32EAFE44DF@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=QDd3ko92FGBvql3bwNIA:9 a=CjuIK1q_8ugA:10 a=pHzHmUro8NiASowvMSCR:22
 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_011611_959305_DEA91E2D 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy

> >> +++ b/drivers/gpu/drm/panel/panel-xingbangda-xbd599.c
> >> @@ -0,0 +1,367 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * Xingbangda XBD599 MIPI-DSI panel driver
> >> + *
> >> + * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
> >2020?
> 
> The work started at Mid 2019.
> 
> Is 2019-2020 okay?

We see this in other places so I guess it is. The point
here is that the driver contains work from 2020 so you should at least
specify 2020.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
