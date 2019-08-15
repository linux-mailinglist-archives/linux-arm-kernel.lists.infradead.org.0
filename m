Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6349E8E936
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unfkbouQOjpd3ZY17bB2KAM2Dsb9SekFiM5NPLxfzbw=; b=DpVQbd1zYnuafZ
	PiDHZOsBHUu7Y+kJoq+IK8/fRloqRKCXfG9s0YGpsLngO/V56+jgjuVdCo1izUwP7l1yg58PFUdRV
	NWg8JLpc2uZrAPYXBmouLuwcSImuqfGDRzp1IfKnotqgKfMj2OupcuDPSPCKD4yxMEHnK55cGVfcB
	F9IgdC53V3bWe8mdt6seFlHLp/6tgCWbmseCjfmH0qwEUwY8XSWLSK91iovBOjYlPJYdSPFu0m6w2
	nw9Rp9bvJxsD25crH7hjrlm3uGI50idsD2Ey6kG0XA49hUr+gCJoAFpG6vuzMebfLETkuoS32P2oj
	DSMo+OxFT+k7GUoi/orA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDHL-0002od-Li; Thu, 15 Aug 2019 10:46:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDH2-0002oF-Aa; Thu, 15 Aug 2019 10:46:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 03:46:27 -0700
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="179338295"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 03:46:22 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 091E520F68; Thu, 15 Aug 2019 13:45:16 +0300 (EEST)
Date: Thu, 15 Aug 2019 13:45:15 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20190815104515.GO6133@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
 <CAAFQd5Cd2k5ZCDfu=a281NLOa88vpm-P7ZPWF4Nnx==iyEkn7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5Cd2k5ZCDfu=a281NLOa88vpm-P7ZPWF4Nnx==iyEkn7A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_034628_377818_88660C1F 
X-CRM114-Status: GOOD (  31.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 kernel@collabora.com, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Chen Jacob <jacob2.chen@rock-chips.com>, Jeffy <jeffy.chen@rock-chips.com>,
 =?utf-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Allon Huang <allon.huang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Jacob Chen <cc@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 07:29:59PM +0900, Tomasz Figa wrote:
> On Thu, Aug 15, 2019 at 5:25 PM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
> >
> > Hi Helen,
> >
> > On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
> >
> > ...
> >
> > > >> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> > > >> +                           struct v4l2_subdev_pad_config *cfg,
> > > >> +                           struct v4l2_subdev_format *fmt)
> > > >> +{
> > > >> +  struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > > >> +  struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> > > >> +  struct v4l2_mbus_framefmt *mf = &fmt->format;
> > > >> +
> > > >
> > > > Note that for sub-device nodes, the driver is itself responsible for
> > > > serialising the access to its data structures.
> > >
> > > But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> > > ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> > > most probably) ?
> >
> > Good question. I had missed this change --- subdev_do_ioctl_lock() is
> > relatively new. But setting that lock is still not possible as the struct
> > is allocated in the framework and the device is registered before the
> > driver gets hold of it. It's a good idea to provide the same serialisation
> > for subdevs as well.
> >
> > I'll get back to this later.
> >
> > ...
> >
> > > >> +static int rkisp1_isp_sd_s_power(struct v4l2_subdev *sd, int on)
> > > >
> > > > If you support runtime PM, you shouldn't implement the s_power op.
> > >
> > > Is is ok to completly remove the usage of runtime PM then?
> > > Like this http://ix.io/1RJb ?
> >
> > Please use runtime PM instead. In the long run we should get rid of the
> > s_power op. Drivers themselves know better when the hardware they control
> > should be powered on or off.
> >
> 
> One also needs to use runtime PM to handle power domains and power
> dependencies on auxiliary devices, e.g. IOMMU.
> 
> > >
> > > tbh I'm not that familar with runtime PM and I'm not sure what is the
> > > difference of it and using s_power op (and Documentation/power/runtime_pm.rst
> > > is not being that helpful tbh).
> >
> > You can find a simple example e.g. in
> > drivers/media/platform/atmel/atmel-isi.c .
> >
> > >
> > > >
> > > > You'll still need to call s_power on external subdevs though.
> > > >
> > > >> +{
> > > >> +  struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > > >> +  int ret;
> > > >> +
> > > >> +  v4l2_dbg(1, rkisp1_debug, &isp_dev->v4l2_dev, "s_power: %d\n", on);
> > > >> +
> > > >> +  if (on) {
> > > >> +          ret = pm_runtime_get_sync(isp_dev->dev);
> > >
> > > If this is not ok to remove suport for runtime PM, then where should I put
> > > the call to pm_runtime_get_sync() if not in this s_power op ?
> >
> > Basically the runtime_resume and runtime_suspend callbacks are where the
> > device power state changes are implemented, and pm_runtime_get_sync and
> > pm_runtime_put are how the driver controls the power state.
> >
> > So you no longer need the s_power() op at all. The op needs to be called on
> > the pipeline however, as there are drivers that still use it.
> >
> 
> For this driver, I suppose we would _get_sync() when we start
> streaming (in the hardware, i.e. we want the ISP to start capturing
> frames) and _put() when we stop and the driver shouldn't perform any
> access to the hardware when the streaming is not active.

Agreed.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
