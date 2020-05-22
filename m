Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C22A1DEF71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MS+gy2/BWZdx+TwX6BJZ2grBrSNdTjxGP4FHUPlOAVU=; b=d/n/dhOvYlcrAc
	YYWShpnoharAZPAWrVmWVISCReU50/T1ysIVzEkm/Kk5gviXa7tSKe/Q8eHzwuaTaJFOiHBEk+M2Q
	lrTxqjfsqwlmZxv+YC4ReAlvowexRPjVC8H8giB8PKJRX81GenrxmALK6RSvGhA5fFMRnPSChKjfC
	yNh325ipmZMLsPCsTOXYCNQkIrTvyPjuvj6kBV0CynN1EFCzNd1yzGGjxrWQlGD4rbg2/C7EmkZr4
	vlk7oZS1RhepXAwHotidOdZdKT59/hsNt8eB+1e+s4VikM8FxWMAJt64Xi57MWMl8fVChGJUc14rP
	nHIqGaCLyCzA61UGul5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCgE-000478-4T; Fri, 22 May 2020 18:46:02 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCg2-00046k-UX
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:45:52 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 99BC1804FE;
 Fri, 22 May 2020 20:45:44 +0200 (CEST)
Date: Fri, 22 May 2020 20:45:43 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH 01/21] drm/cma-helper: Rework DRM_GEM_CMA_VMAP_DRIVER_OPS
 macro
Message-ID: <20200522184543.GA1516204@ravnborg.org>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-2-tzimmermann@suse.de>
 <20200522174835.GA1087580@ravnborg.org>
 <CACvgo53YDOD1t4KYOWKiO-q8T639jNbMrZuyTXcbe1FBAfxP+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo53YDOD1t4KYOWKiO-q8T639jNbMrZuyTXcbe1FBAfxP+Q@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=aClSpYbynbokIFx6wVUA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_114551_158603_4346B8F9 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>,
 Marek =?utf-8?B?VmHFoXV0?= <marex@denx.de>, khilman@baylibre.com,
 Alexey Brodkin <abrodkin@synopsys.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, ludovic.desroches@microchip.com,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 NXP Linux Team <linux-imx@nxp.com>, joel@jms.id.au,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>, Jyri Sarha <jsarha@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Vincent Abriou <vincent.abriou@st.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, bbrezillon@kernel.org,
 andrew@aj.id.au, Philippe Cornu <philippe.cornu@st.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rongrong Zou <zourongrong@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Emil.

> > Please fix zte/zx_drm_drv.c which also uses DRM_GEM_CMA_VMAP_DRIVER_OPS.
> >
> Isn't DRM_GEM_CMA_VMAP_DRIVER_OPS introduced to zte with the last
> patch in the series?

You are right, I just applied all patches and throw them after my
build script and zte failed.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
