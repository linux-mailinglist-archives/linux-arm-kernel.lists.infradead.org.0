Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FFE7819C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sr+zH54TXjagzlB7ZM5mBAaZwTf3BXuUAY19wx4Qdzc=; b=JUPftgvujdw1Rz
	gPlnZ5zxZsQnhGHmfNx7mu4zHJiTYYk80ClIQ7VjhuBBLF840i8GGEbJxOmzWfbNMTFo66ngD2Tcd
	vBjXgwoxcRpTpBXSeLJGRVXwzmPtkwZu//hbzA8UC06EH9THmHGbTulCVbRVN5raomFvIwjSuKgsU
	nf2bwOiHAJAWfGCK1I3OcjwS1ZxnxZA2mZx1x1yV3bTOmfx3wNP9MQLqQg3HbsST3Jay5doXNO3Ld
	hSZoT5wrE0BbHC/zfKlMmAvgbY1mYGPy+qQst3nDiJ6Y+bXw75OpgADls/FNzbVFkIbAmoRpgMbMI
	Ozot0gzELKEJY9kht2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqDF-0003Xd-V3; Sun, 28 Jul 2019 20:56:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqD3-0003W6-4r; Sun, 28 Jul 2019 20:56:02 +0000
Received: from ip4d16169c.dynamic.kabel-deutschland.de ([77.22.22.156]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hrqCz-0007WZ-0i; Sun, 28 Jul 2019 22:55:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to
 memory node on rk3288-veyron
Date: Sun, 28 Jul 2019 22:55:56 +0200
Message-ID: <8373672.S8ITYX37Bm@phil>
In-Reply-To: <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
References: <20190727142736.23188-1-krzk@kernel.org> <86910491.m50tbimVMv@phil>
 <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_135601_339893_6EA9D90C 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 28. Juli 2019, 13:38:43 CEST schrieb Krzysztof Kozlowski:
> On Sat, 27 Jul 2019 at 17:33, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Krzysztof,
> >
> > Am Samstag, 27. Juli 2019, 16:27:36 CEST schrieb Krzysztof Kozlowski:
> > > Fix DTC warning:
> > >
> > >     arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
> > >     Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> >
> > please see the comment directly above the memory node on why that needs
> > to stay that way. So no, we'll keep the veyron memory node as is.
> 
> Damn it, I missed it.

no worries :-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
