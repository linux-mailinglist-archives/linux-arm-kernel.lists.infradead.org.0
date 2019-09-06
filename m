Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81C1AB02E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCx2UxiQJO3mpo9wiSF9iscdjqY4MKnP7C2zuRudQs0=; b=jfrhcBhhL+GJUz
	DaIHP2uf4sULsBf6l9gykdbGwftuINpmA56dsmTpGNowjJR1mesC8ONzPrhmArt95/OxfmEZr2oVM
	x2RDPRokcpf3UwAGX+sCJwsOZu8p/KzmI9DSQrOZWIduPW5FXnPKfDnTiS5qhPn/vYBsQfS10vqL+
	QbwlCbRvemTt94yJ8jgA1H+UtG9+PHwBq/d6WK1k3JJbwPOU23X/k4UUxqT2hm8B0OfX2lh3BMmPx
	ttxB0MvGMEDcD9X0zWBKP3C7aRPeGKUbN9oRgHzluKMd6TE4tj/1EhZqoy/NwCmSPnk4sgm6tM/En
	65b1B/3J1BuCFgDE//kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6380-0006tN-Ma; Fri, 06 Sep 2019 01:33:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i637q-0006pr-Qs; Fri, 06 Sep 2019 01:33:24 +0000
X-UUID: 00c7e03b78b846faa5f322daa04fcdf5-20190905
X-UUID: 00c7e03b78b846faa5f322daa04fcdf5-20190905
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 213228797; Thu, 05 Sep 2019 17:33:13 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 18:33:12 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 6 Sep 2019 09:33:03 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Sep 2019 09:33:02 +0800
Message-ID: <1567733585.21623.163.camel@mhfsdcap03>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 6 Sep 2019 09:33:05 +0800
In-Reply-To: <CANMq1KDVMGkeBvu1nO5WHopWwec9mxHfhmLmX2BzvaYVLzxoXw@mail.gmail.com>
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190819083009.GC6133@paasikivi.fi.intel.com>
 <1567676465.21623.100.camel@mhfsdcap03>
 <20190905104546.GA5475@paasikivi.fi.intel.com>
 <CAAFQd5Bh-11D9RR9WVH5A3DbXZoxWhbMhXSNKUV25mempMi+ag@mail.gmail.com>
 <20190905160512.GG5475@paasikivi.fi.intel.com>
 <CANMq1KDVMGkeBvu1nO5WHopWwec9mxHfhmLmX2BzvaYVLzxoXw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F407418E7C5334074F2F61C9B1662FF6503DAC5082ABBBF7307673C1AD9D1A8A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_183322_881190_94F91151 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Tomasz Figa <tfiga@chromium.org>, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob
 Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU
 DRIVERS <iommu@lists.linux-foundation.org>,  Joerg  Roedel
 <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-09-06 at 06:58 +0800, Nicolas Boichat wrote:
> On Fri, Sep 6, 2019 at 12:05 AM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
> >
> > On Thu, Sep 05, 2019 at 07:53:37PM +0900, Tomasz Figa wrote:
> > > On Thu, Sep 5, 2019 at 7:45 PM Sakari Ailus
> > > <sakari.ailus@linux.intel.com> wrote:
> > > >
> > > > Hi Dongchun,
> > > >
> > > > On Thu, Sep 05, 2019 at 05:41:05PM +0800, Dongchun Zhu wrote:
> > > >
> > > > ...
> > > >
> > > > > > > + ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > > > > + if (ret < 0) {
> > > > > > > +         dev_err(dev, "Failed to enable regulators\n");
> > > > > > > +         goto disable_clk;
> > > > > > > + }
> > > > > > > + msleep_range(7);
> > > > > >
> > > > > > This has some potential of clashing with more generic functions in the
> > > > > > future. Please use usleep_range directly, or msleep.
> > > > > >
> > > > >
> > > > > Did you mean using usleep_range(7*1000, 8*1000), as used in patch v1?
> > > > > https://patchwork.kernel.org/patch/10957225/
> > > >
> > > > Yes, please.
> > >
> > > Why not just msleep()?
> >
> > msleep() is usually less accurate. I'm not sure it makes a big different in
> > this case. Perhaps, if someone wants that the sensor is powered on and
> > streaming as soon as possible.
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/timers/timers-howto.txt#L70
> 
> Use usleep_range for delays up to 20ms (at least that's what the
> documentation (still) says?)
> 

Thank you for your clarifications.
From the doc,
"msleep(1~20) may not do what the caller intends, and
will often sleep longer (~20 ms actual sleep for any
value given in the 1~20ms range). In many cases this
is not the desired behavior."

So, it is supposed to use usleep_range in shorter sleep case,
such as 5ms.

> > --
> > Sakari Ailus
> > sakari.ailus@linux.intel.com



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
