Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 156E315B29D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4zeARZ/bny9Xc0pGj/ipSOucegCMEMpmTlufOmQgwg=; b=F5PV7Jj6ylBr8T
	8WCR2QrH+h9xSjpT3dih4Sqx7IOMepwT/bOrw21JPAymK8rHL83JEE7BOd90zS/9/PDmmDTTwhZgC
	/0kUQlzsjnhWFKvFjF5RZzb+PNPrfJzFedMc/9bt3KqiB3sXQFuFDb3tla423bUrTNACeHeoZql7q
	79p/ithMTz2CjSra32eZkDFTIsGiWCiy3PbEWAZpcq5m15LCOm2SYZjNFOCdDqAy1LFwFH58T/SGH
	Yhz8x3KD419WwUrGVivf8cn6j8d3i0jZ4WsuzX++iXrqFGJu9uXST4adh7zRbzL6LMAbLCaFHh+tu
	0TV3fn9i/YuIuDfLnttA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1zM5-0002Yg-Ve; Wed, 12 Feb 2020 21:15:33 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1zLy-00019i-Bm; Wed, 12 Feb 2020 21:15:27 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 13:13:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="432449589"
Received: from wendeand-mobl.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.52.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 Feb 2020 13:13:20 -0800
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 0320921D13; Wed, 12 Feb 2020 23:13:17 +0200 (EET)
Date: Wed, 12 Feb 2020 23:13:17 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20200212211317.GD3087@kekkonen.localdomain>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
 <20190815131748.GS6133@paasikivi.fi.intel.com>
 <78856358-1afd-31a7-86dd-22f7d6d7fb05@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78856358-1afd-31a7-86dd-22f7d6d7fb05@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_131526_425050_30A8A91B 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com,
 Dafna Hirschfeld <dafna3@gmail.com>, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Allon Huang <allon.huang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, Jacob Chen <cc@rock-chips.com>,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dafna,

Apologies for the late reply. I learned the mail had got lost due to mail
server issues.

On Fri, Jan 31, 2020 at 08:38:34PM +0100, Dafna Hirschfeld wrote:
> Hi,
> I (Dafna Hirschfeld) will work in following months with Helen Koike to fix the issues
> in the TODO file of this driver: drivers/staging/media/rkisp1/TODO
> 
> On 15.08.19 15:17, Sakari Ailus wrote:
> > On Thu, Aug 15, 2019 at 11:24:22AM +0300, Sakari Ailus wrote:
> > > Hi Helen,
> > > 
> > > On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
> > > 
> > > ...
> > > 
> > > > > > +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> > > > > > +				 struct v4l2_subdev_pad_config *cfg,
> > > > > > +				 struct v4l2_subdev_format *fmt)
> > > > > > +{
> > > > > > +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > > > > > +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> > > > > > +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> > > > > > +
> > > > > 
> > > > > Note that for sub-device nodes, the driver is itself responsible for
> > > > > serialising the access to its data structures.
> > > > 
> > > > But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> > > > ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> > > > most probably) ?
> > > 
> > > Good question. I had missed this change --- subdev_do_ioctl_lock() is
> > > relatively new. But setting that lock is still not possible as the struct
> 
> 'the struct' - do you mean the 'vdev' struct allocated in
> 'v4l2_device_register_subdev_nodes' ?

Yes.

> 
> > > is allocated in the framework and the device is registered before the
> 
> > > driver gets hold of it. It's a good idea to provide the same serialisation
> > > for subdevs as well.
> > > 
> > > I'll get back to this later.
> > 
> > The main reason is actually that these ops are also called through the
> > sub-device kAPI, not only through the uAPI, and the locks are only taken
> > through the calls via uAPI.
> 
> actually it seems that although 'subdev_do_ioctl_lock' exit, I wonder if
> any subdevice uses that vdev->lock in  subdev_do_ioctl_lock.
> It is not initialized in v4l2_device_register_subdev_nodes where the vdev is allocated
> and I wonder if any subdevice actually initialize it somewhere else. For example it is null in this
> driver and in vimc.

It needs to be set before the video device is registered, so indeed, it
seems no driver can make use it.

> 
> > 
> > So adding the locks to uAPI calls alone would not address the issue.
> 
> What I can do is add a mutex to every struct of a subdevice and lock it
> at the beginning of each subdevice operation.
> Is this an acceptable solution?

Please do. That's what other drivers do at the moment as well.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
