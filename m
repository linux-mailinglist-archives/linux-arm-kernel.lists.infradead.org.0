Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DDA1F553D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 14:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUjuDNYV8wLvBTSDJzExa5pOeL99kDGBT0f5zPxa9dU=; b=ORh8j0et71bQEn
	7AxAf6G4o/QYp7lfz6lgJyxCW5AQuxZiu54WipZrqdKVnmLw1yWzvGZB7uZfMZwhT6NOdyPCcrj5n
	KPubOXMAzuhubzUUxrlJOnvvkI+1SPEwibjIbt+8ry4XC5olDVKeGwwH89h/nX/NIcbm7qTEVivbD
	/ANESFj0mOcToxwCxwDwpcHKa3/e6TsZf+b0VP8pb5+alApCG2NJXRv52bMfMWZXAzWQiRgrnjOzV
	xgFa/lBoQwnk4I17ExESW/3Lc2oOuFoDO2kIkh3a777moy3NYZ9zMZmcS8HEJ8woLYSOEjJc6SQEt
	8X0uDbf9xcR5kWCUDyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0JI-0001JH-Ce; Wed, 10 Jun 2020 12:58:28 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0JA-0001Im-Bc; Wed, 10 Jun 2020 12:58:21 +0000
IronPort-SDR: RT+cL26DZlC5uUZQ4ArDxgo1sRkmGN9Lf79vtL1OhfgpSPvWvI+4iZ55cOrRi9PMXSDZEieoNa
 4PD4atp+cQvg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 05:58:19 -0700
IronPort-SDR: x3O8cvdGygNGuR71gedAE/dXngwkvm27l9HiR8qBN0I7pniLgn9C7kruwSpSE6mMZ81gBjtdBP
 LcstwaPIarBA==
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="349838222"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 05:58:14 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 5D2A9203EB; Wed, 10 Jun 2020 15:58:12 +0300 (EEST)
Date: Wed, 10 Jun 2020 15:58:12 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200610125812.GF16711@paasikivi.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605124643.GG2428291@smile.fi.intel.com>
 <1591424358.8804.599.camel@mhfsdcap03>
 <20200608132720.GS2428291@smile.fi.intel.com>
 <1591674341.8804.628.camel@mhfsdcap03>
 <20200609111428.GH2428291@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609111428.GH2428291@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_055820_409744_311F0982 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, louis.kuo@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy, Dongchun,

On Tue, Jun 09, 2020 at 02:14:28PM +0300, Andy Shevchenko wrote:
> On Tue, Jun 09, 2020 at 11:45:41AM +0800, Dongchun Zhu wrote:
> > On Mon, 2020-06-08 at 16:27 +0300, Andy Shevchenko wrote:
> > > On Sat, Jun 06, 2020 at 02:19:18PM +0800, Dongchun Zhu wrote:
> > > > On Fri, 2020-06-05 at 15:46 +0300, Andy Shevchenko wrote:
> > > > > On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> 
> ...
> 
> > > > > > +#define DW9768_AAC_TIME_DEFAULT			0x20
> > > > > 
> > > > > Hex? Why not decimal?
> > > > > 
> > > > 
> > > > There is one optional property 'dongwoon,aac-timing' defined in DT.
> > > > I don't know whether you have noticed that.
> > > > 
> > > > 'DW9768_AAC_TIME_DEFAULT' is the value set to AACT[5:0] register.
> > > > I thought the Hex unit should be proper as it is directly written to the
> > > > Hex register.
> > > 
> > > I see. I would rather put it like (BIT(6) / 2) to show explicitly that we
> > > choose half of the resolution.
> > > 
> > 
> > I knew your idea.
> > '(BIT(6) / 2)' may somewhat show the meaning of 'median of the total
> > range of AACT[5:0]'.
> > 
> > But this value is still very obscure relative to '0x20'.
> > As I thought that simple is the best, especially for kernel upstream
> > patch.
> 
> Okay, let's wait for maintainers to speak up.

The value 0x20 is the device default, I don't see it having any other
special significance. So I'm totally fine with 0x20.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
