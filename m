Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B14A1EB8E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hir9aXrkQF7JXvxiBnKKzrtWBSKQApu7y/ZLH5qt6wA=; b=hLQ1Iq8y2xnR2u
	rIDQMBCmUjA/gtSkR4Iy1mmxcuH4EusFZoj1dX1sNBYk2cfnZs03mWoTU2aOBsFrt46iNotRlFPqm
	Ki2Oo/W1dVEMHnp/ALrFAZ58B08ll3+D43FnTbSvN5jReIiNjiAz9dIhbxIoOf9Pl+W/FHpskx77b
	A5LMYgCUFCsr9OzA6FsS3fVLhcOklzrHKILlxnaD/PO+ujhGWn16MoJ5B0u4aXr9y1ybx4q84i3fi
	3o+KXWb9vnEnlcxUgjAxZW5xUTmzBfccCA2x6DmrNOk7pDHmEhmvPhz4FVYmRYelUypBl8UxKmjms
	7UeN/OqxW4cJGdqthejg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3bg-0006rJ-MT; Tue, 02 Jun 2020 09:53:16 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3bZ-0006qe-Pt; Tue, 02 Jun 2020 09:53:11 +0000
IronPort-SDR: UxOhD1aV2Sg/8WskFq1JWQlphW8iAMwCqJXk8CK1Il8R8Of+3jDR9qDQaEFNSX+Xt3oUZTWR98
 8u2TKxFgCqlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:53:08 -0700
IronPort-SDR: CsZWdHpTA5ecE3pbfMjrm+iFhne8ZavvJCoD3a+43uYypNnuCBwngOXzUFmY8Nt7gmqvd3TZ0D
 3bB5NOfI2vAg==
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="286599332"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:53:02 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 7472B20A25; Tue,  2 Jun 2020 12:53:00 +0300 (EEST)
Date: Tue, 2 Jun 2020 12:53:00 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200602095300.GC29325@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus>
 <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
 <20200527211628.GT7618@paasikivi.fi.intel.com>
 <1590636882.8804.474.camel@mhfsdcap03>
 <20200528072332.GW7618@paasikivi.fi.intel.com>
 <1590653082.8804.517.camel@mhfsdcap03>
 <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5AuHDpQN8xZsWgnAt6m2reAYJbs9nBp0+mBo7_FS81LbQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_025309_859928_B35B3A25 
X-CRM114-Status: GOOD (  28.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 03:43:30PM +0200, Tomasz Figa wrote:
> On Thu, May 28, 2020 at 10:06 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Sakari,
> >
> > On Thu, 2020-05-28 at 10:23 +0300, Sakari Ailus wrote:
> > > Hi Dongchun,
> > >
> > > On Thu, May 28, 2020 at 11:34:42AM +0800, Dongchun Zhu wrote:
> > > > Hi Sakari, Rob,
> > > >
> > > > On Thu, 2020-05-28 at 00:16 +0300, Sakari Ailus wrote:
> > > > > Hi Rob, Dongchun,
> > > > >
> > > > > On Wed, May 27, 2020 at 09:27:22AM -0600, Rob Herring wrote:
> > > > > > > > > +    properties:
> > > > > > > > > +      endpoint:
> > > > > > > > > +        type: object
> > > > > > > > > +        additionalProperties: false
> > > > > > > > > +
> > > > > > > > > +        properties:
> > > > > > >
> > > > > > > Actually I wonder whether we need to declare 'clock-lanes' here?
> > > > > >
> > > > > > Yes, if you are using it.
> > > > >
> > > > > Dongchun, can you confirm the chip has a single data and a single clock
> > > > > lane and that it does not support lane reordering?
> > > > >
> > > >
> > > > From the datasheet, 'MIPI inside the OV02A10 provides one single
> > > > uni-directional clock lane and one bi-directional data lane solution for
> > > > communication links between components inside a mobile device.
> > > > The data lane has full support for HS(uni-directional) and
> > > > LP(bi-directional) data transfer mode.'
> > > >
> > > > The sensor doesn't support lane reordering, so 'clock-lanes' property
> > > > would not be added in next release.
> > > >
> > > > > So if there's nothing to convey to the driver, also the data-lanes should
> > > > > be removed IMO.
> > > > >
> > > >
> > > > However, 'data-lanes' property may still be required.
> > > > It is known that either data-lanes or clock-lanes is an array of
> > > > physical data lane indexes. Position of an entry determines the logical
> > > > lane number, while the value of an entry indicates physical lane, e.g.,
> > > > for 1-lane MIPI CSI-2 bus we could have "data-lanes = <1>;", assuming
> > > > the clock lane is on hardware lane 0.
> > > >
> > > > As mentioned earlier, the OV02A10 sensor supports only 1C1D and does not
> > > > support lane reordering, so here we shall use 'data-lanes = <1>' as
> > > > there is only a clock lane for OV02A10.
> > > >
> > > > Reminder:
> > > > If 'data-lanes' property is not present, the driver would assume
> > > > four-lane operation. This means for one-lane or two-lane operation, this
> > > > property must be present and set to the right physical lane indexes.
> > > > If the hardware does not support lane reordering, monotonically
> > > > incremented values shall be used from 0 or 1 onwards, depending on
> > > > whether or not there is also a clock lane.
> > >
> > > How can the driver use four lanes, considering the device only supports a
> > > single lane??
> > >
> >
> > I understood your meaning.
> > If we omit the property 'data-lanes', the sensor should work still.
> > But then what's the meaning of the existence of 'data-lanes'?
> > If this property 'data-lanes' is always optional, then why dt-bindings
> > provide the interface?
> >
> > In the meantime, if omitting 'data-lanes' for one sensor(transmitter)
> > that has only one physical data lane, MIPI receiver(e.g., MIPI CSI-2)
> > shall enable four-lane configuration, which may increase consumption of
> > both power and resource in the process of IIC communication.
> 
> Wouldn't the receiver still have the data-lanes property under its
> endpoint node, telling it how many lanes and in which order should be
> used?

Yes.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
