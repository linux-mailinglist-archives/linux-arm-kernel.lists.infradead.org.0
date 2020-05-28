Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E551E5A7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz1PwgGgbnxcMaC5xR24Ta5LEHl6+UndjfAGner9abE=; b=OlCCZOmKKRptNN
	aZfsfyGV+wrU2ic6Pe1qnxHUOkp9AtDXsSFQCSrixKclP1gfyoGuNBx6aPHn7qV1dfNMvLCGh0q20
	gq+pBQ+ZOULQwwzzEIxo9c3Cm6RzzZBmAo/iWIO05b8NOuLQaCsehOGA5RjYiNekHy+U7oI3Wgn0w
	IltxZO2MTQZbQjhay0MP36t8ScymwWZa2YNVXQq73nosH078aUPtwYK6H306l6EVSSaOBkZerLaok
	2MxDdHz555LxvDx3kpEylljlKywf/H9TTASotIBhnMw/RvQCHh85rV6m/1XoVgyCkItUY95xA+wDP
	+TjO41JJtTX4/21cHGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDfK-0006tl-97; Thu, 28 May 2020 08:13:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDeo-0006eg-TP; Thu, 28 May 2020 08:12:58 +0000
X-UUID: 6b86cc787cd640b095d3642c22018e83-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vdtwpDh+BfZcY9fDqODOL1gT1h9erHJDlZqiyVdKXQw=; 
 b=ZmuMmaRWWGZgcQs1oemoalKmlFPS239xjO4kzXUxQ2ijMGIE2B9pR68jSteAK4O3voBy+yB0o4hl6mv+Jof6BmPRE2IIe2O1oSGfv5BdDjRwAcvZBe57vU7xtG9vZz9V/NV7j/3kJinFgEOQlN8P99ns6a6hWGxDf6yoBD+daQw=;
X-UUID: 6b86cc787cd640b095d3642c22018e83-20200528
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1776174737; Thu, 28 May 2020 00:12:53 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 01:06:33 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 28 May 2020 16:06:29 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 16:06:30 +0800
Message-ID: <1590653082.8804.517.camel@mhfsdcap03>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Thu, 28 May 2020 16:04:42 +0800
In-Reply-To: <20200528072332.GW7618@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus> <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 40A29D3792692DD8CE5B51233948BE224921176E99DFDF64883FC26B2B3119662000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_011255_249854_F4934AFD 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > Hi Sakari, Rob,
> > 
> > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > Hi Rob, Dongchun,
> > > 
> > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > +    properties:
> > > > > > > +      endpoint:
> > > > > > > +        type: object
> > > > > > > +        additionalProperties: false
> > > > > > > +
> > > > > > > +        properties:
> > > > >
> > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > 
> > > > Yes, if you are using it.
> > > 
> > > Dongchun, can you confirm the chip has a single data and a single clock
> > > lane and that it does not support lane reordering?
> > > 
> > 
> > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > uni-directional clock lane and one bi-directional data lane solution for
> > communication links between components inside a mobile device.
> > The data lane has full support for HS(uni-directional) and
> > LP(bi-directional) data transfer mode.'
> > 
> > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > would not be added in next release.
> > 
> > > So if there's nothing to convey to the driver, also the data-lanes should
> > > be removed IMO.
> > > 
> > 
> > However, 'data-lanes' property may still be required.
> > It is known that either data-lanes or clock-lanes is an array of
> > physical data lane indexes. Position of an entry determines the logical
> > lane number, while the value of an entry indicates physical lane, e.g.,
> > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > the clock lane is on hardware lane 0.
> > 
> > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > there is only a clock lane for OV02A10.
> > 
> > Reminder:
> > If 'data-lanes' property is not present, the driver would assume
> > four-lane operation. This means for one-lane or two-lane operation, this
> > property must be present and set to the right physical lane indexes.
> > If the hardware does not support lane reordering, monotonically
> > incremented values shall be used from 0 or 1 onwards, depending on
> > whether or not there is also a clock lane.
> 
> How can the driver use four lanes, considering the device only supports a
> single lane??
> 

I understood your meaning.
If we omit the property 'data-lanes', the sensor should work still.
But then what's the meaning of the existence of 'data-lanes'?
If this property 'data-lanes' is always optional, then why dt-bindings
provide the interface?

In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
shall enable four-lane configuration, which may increase consumption of
both power and resource in the process of IIC communication.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
