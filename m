Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A15F1E5874
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx4+bn0xz3dGx7qZYcr9eIGksypSPlgPfTRxZ9RhEaQ=; b=X9odnF7zRkSk4O
	+bjSnPFCIVEMm2rZncH22Lou8aFgJnruohyNRiWBx5elF0GRQIIwSUwi97RZo1uATu17jExij/OOL
	AbfC5oxzj05FVME2Ujwn02yPP+Ge7LkAxA2D7v5e9ameRqerMnYCjeDF5jfpDT96PYbiDehEFJbim
	i4o3GICsfCkhEJBozi3p50UEt4wRD2+rvEjjMGlvPM3JKZkqf8OppMjOhlrcHEnqaplS+zFpPBOX6
	MJ8tEOjVkxY0fM4xyeOsJKsLs0ruBh2SPepsfQ2b4JTX0SkzoFLDMsqWIBVCcOgl5ATh2aCTS+8A5
	frKLfDN1iJZlWR3CrYrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCtQ-0007oo-Kz; Thu, 28 May 2020 07:23:56 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCt9-0007m2-4v; Thu, 28 May 2020 07:23:41 +0000
IronPort-SDR: 1YvWrmrmQ5Fq5ZlsXn7INZVwu+ueRZ3P2koKvqS3pnJxfZRR4RvauYmN0qGlJKZfsOOUbR78Ly
 EHuMGFHb5NoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:23:38 -0700
IronPort-SDR: Cq682KuSibl51HWgu35fWEi3NwANS2Mgne5bhc3ZisPoIf3Lu3h3gtstnZAyvyo6tm9/DTiOWg
 UT0E4D4DZGkA==
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291904084"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 00:23:34 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 283F1206EA; Thu, 28 May 2020 10:23:32 +0300 (EEST)
Date: Thu, 28 May 2020 10:23:32 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200528072332.GW7618@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus>
 <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590636882.8804.474.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_002339_248011_C163469B 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> Hi Sakari, Rob,
> 
> On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > Hi Rob, Dongchun,
> > 
> > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > +    properties:
> > > > > > +      endpoint:
> > > > > > +        type: object
> > > > > > +        additionalProperties: false
> > > > > > +
> > > > > > +        properties:
> > > >
> > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > 
> > > Yes, if you are using it.
> > 
> > Dongchun, can you confirm the chip has a single data and a single clock
> > lane and that it does not support lane reordering?
> > 
> 
> From the datasheet, 'MIPI inside the OV02A10 provides one single
> uni-directional clock lane and one bi-directional data lane solution for
> communication links between components inside a mobile device.
> The data lane has full support for HS(uni-directional) and
> LP(bi-directional) data transfer mode.'
> 
> The sensor doesn't support lane reordering, so 'clock-lanes' property
> would not be added in next release.
> 
> > So if there's nothing to convey to the driver, also the data-lanes should
> > be removed IMO.
> > 
> 
> However, 'data-lanes' property may still be required.
> It is known that either data-lanes or clock-lanes is an array of
> physical data lane indexes. Position of an entry determines the logical
> lane number, while the value of an entry indicates physical lane, e.g.,
> for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> the clock lane is on hardware lane 0.
> 
> As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> support lane reordering, so here we shall use 'data-lanes = <1>' as
> there is only a clock lane for OV02A10.
> 
> Reminder:
> If 'data-lanes' property is not present, the driver would assume
> four-lane operation. This means for one-lane or two-lane operation, this
> property must be present and set to the right physical lane indexes.
> If the hardware does not support lane reordering, monotonically
> incremented values shall be used from 0 or 1 onwards, depending on
> whether or not there is also a clock lane.

How can the driver use four lanes, considering the device only supports a
single lane??

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
