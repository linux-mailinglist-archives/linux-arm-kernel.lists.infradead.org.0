Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AD51E54B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ0nb4z8hbjye1BdWk473aQ7r4DbyLmSgsaGZbaSelw=; b=ny5xVP6kD/Gfz2
	y7ad2yI7Tj2t3QA73ThSDMh4QZTuHEruel114kCHFBN43Lu5HkajamlcXCCDxnN7gn+hI7BrFyTR1
	2A9FyX8FDc2unmCC5WGNY15VrDkMJRM+0llQxjh1dl/Tj9NLVV+gNcBwo8YohOQeK52IQwlEBaqpV
	vSjI+GzL2w665UQE0U26pI1AYslF7DVQf0Gyd/JA0X7zHwYRQwX3ArvHFvF7QnI/J7V5OEYL7E0br
	cju/L83QeqGyVmn320zMeQh+3ThiKWxD1VTyNYsov8bmwTU+GLtG757peLI62ZD9WpTZ/Yh1AROsJ
	nReXcSa61G8ceojOj8jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9Lh-00080I-SG; Thu, 28 May 2020 03:36:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9LW-0007ye-7p; Thu, 28 May 2020 03:36:43 +0000
X-UUID: faa115bcb225478a870f95e80bf2edc4-20200527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=B6mKHMDfrymV2HHPTTa5aBOQ9ky9BHCqAwadTmNHccs=; 
 b=TUF7+Zf5fFkb6aXHGMEhOvrn6uow7lzAU5G7sk4CucFjAx5XmRNTxiOSavhADjZZgnbktTj4YfccuA5vOhv4SsB0Ep6nE+0404oRJHcWMTTDkZF/LTCSb97CqMMW19Q2giNFgEXIP4A9EpTGZuGD4oRvEz2lZry1RBMzK3xlxKI=;
X-UUID: faa115bcb225478a870f95e80bf2edc4-20200527
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 491293446; Wed, 27 May 2020 19:36:40 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 27 May 2020 20:36:38 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 28 May 2020 11:36:30 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 11:36:29 +0800
Message-ID: <1590636882.8804.474.camel@mhfsdcap03>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Thu, 28 May 2020 11:34:42 +0800
In-Reply-To: <20200527211628.GT7618@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus> <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0450CC54ABF4AD762CD5AF3FD76B1C4256091870E9459F877A5F0726FFA223302000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_203642_287889_CB0606C5 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari, Rob,

On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> Hi Rob, Dongchun,
> 
> On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > +    properties:
> > > > > +      endpoint:
> > > > > +        type: object
> > > > > +        additionalProperties: false
> > > > > +
> > > > > +        properties:
> > >
> > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > 
> > Yes, if you are using it.
> 
> Dongchun, can you confirm the chip has a single data and a single clock
> lane and that it does not support lane reordering?
> 

From the datasheet, 'MIPI inside the OV02A10 provides one single
uni-directional clock lane and one bi-directional data lane solution for
communication links between components inside a mobile device.
The data lane has full support for HS(uni-directional) and
LP(bi-directional) data transfer mode.'

The sensor doesn't support lane reordering, so 'clock-lanes' property
would not be added in next release.

> So if there's nothing to convey to the driver, also the data-lanes should
> be removed IMO.
> 

However, 'data-lanes' property may still be required.
It is known that either data-lanes or clock-lanes is an array of
physical data lane indexes. Position of an entry determines the logical
lane number, while the value of an entry indicates physical lane, e.g.,
for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
the clock lane is on hardware lane 0.

As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
support lane reordering, so here we shall use 'data-lanes = <1>' as
there is only a clock lane for OV02A10.

Reminder:
If 'data-lanes' property is not present, the driver would assume
four-lane operation. This means for one-lane or two-lane operation, this
property must be present and set to the right physical lane indexes.
If the hardware does not support lane reordering, monotonically
incremented values shall be used from 0 or 1 onwards, depending on
whether or not there is also a clock lane.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
