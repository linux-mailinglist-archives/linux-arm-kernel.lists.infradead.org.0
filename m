Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCF58E641
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDDq15mnWgkI7HAOCzpU+yv30/J6u/qyFfCB4+YjKT8=; b=I7O5CoxGy71Wza
	uZHabFxMcFh6UwgXdSwEKLy2BOddzvYIhABKzg4xZYuavEJqEozAZxZaUsLJFTvCRnqpNqFjLbXjQ
	StgHME76eTq0OxELfT/zU8QmL3ts9or45TAR42oN1faahwomUysSkQ4asOTaqjXcsPdxYGWs3tnRb
	7ggGYNNutzmNZqKVVGj/DcCaisFIplc2yTe4bMsD69bLHCV7sr6v/vZShLnByxrSnY9AkFdt6adh5
	8w14p8Cf5+Vz+/vVq9f/+IImGsICJP/ONJliPafZ90BJdi/YyT/zqFxFZhrDdQkaxoOELJt7rf1Fk
	Nh9gDDq9u3NoQ8H05Pgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB55-0005Ya-Cy; Thu, 15 Aug 2019 08:25:59 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB4h-0005Rq-TA; Thu, 15 Aug 2019 08:25:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 01:25:33 -0700
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; d="scan'208";a="184561788"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 01:25:28 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 7CD1B20BCA; Thu, 15 Aug 2019 11:24:22 +0300 (EEST)
Date: Thu, 15 Aug 2019 11:24:22 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20190815082422.GM6133@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012536_180526_1A69769E 
X-CRM114-Status: GOOD (  31.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Allon Huang <allon.huang@rock-chips.com>,
 Jacob Chen <cc@rock-chips.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:

...

> >> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> >> +				 struct v4l2_subdev_pad_config *cfg,
> >> +				 struct v4l2_subdev_format *fmt)
> >> +{
> >> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> >> +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> >> +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> >> +
> > 
> > Note that for sub-device nodes, the driver is itself responsible for
> > serialising the access to its data structures.
> 
> But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> most probably) ?

Good question. I had missed this change --- subdev_do_ioctl_lock() is
relatively new. But setting that lock is still not possible as the struct
is allocated in the framework and the device is registered before the
driver gets hold of it. It's a good idea to provide the same serialisation
for subdevs as well.

I'll get back to this later.

...

> >> +static int rkisp1_isp_sd_s_power(struct v4l2_subdev *sd, int on)
> > 
> > If you support runtime PM, you shouldn't implement the s_power op.
> 
> Is is ok to completly remove the usage of runtime PM then?
> Like this http://ix.io/1RJb ?

Please use runtime PM instead. In the long run we should get rid of the
s_power op. Drivers themselves know better when the hardware they control
should be powered on or off.

> 
> tbh I'm not that familar with runtime PM and I'm not sure what is the
> difference of it and using s_power op (and Documentation/power/runtime_pm.rst
> is not being that helpful tbh).

You can find a simple example e.g. in
drivers/media/platform/atmel/atmel-isi.c .

> 
> > 
> > You'll still need to call s_power on external subdevs though.
> > 
> >> +{
> >> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> >> +	int ret;
> >> +
> >> +	v4l2_dbg(1, rkisp1_debug, &isp_dev->v4l2_dev, "s_power: %d\n", on);
> >> +
> >> +	if (on) {
> >> +		ret = pm_runtime_get_sync(isp_dev->dev);
> 
> If this is not ok to remove suport for runtime PM, then where should I put
> the call to pm_runtime_get_sync() if not in this s_power op ?

Basically the runtime_resume and runtime_suspend callbacks are where the
device power state changes are implemented, and pm_runtime_get_sync and
pm_runtime_put are how the driver controls the power state.

So you no longer need the s_power() op at all. The op needs to be called on
the pipeline however, as there are drivers that still use it.

> 
> >> +		if (ret < 0)
> >> +			return ret;
> >> +
> >> +		rkisp1_config_clk(isp_dev);
> >> +	} else {
> >> +		ret = pm_runtime_put(isp_dev->dev);
> >> +		if (ret < 0)
> >> +			return ret;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int rkisp1_subdev_link_validate(struct media_link *link)
> >> +{
> >> +	if (link->source->index == RKISP1_ISP_PAD_SINK_PARAMS)
> > 
> > Is this test correct? The source is the source end of the link, i.e. the
> > video node.
> 
> Ah yes, it should be link->sink->index (and not source), thanks for spotting this.
> 
> > 
> > How about the links that end in a video node?
> 
> I thought that the only possibilities were sensor->isp1 and params->isp1 (where params
> is an output video node that should be catched by the corrected version of the if
> statement above.
> 
> Or do you mean another thing?

The link_validate of the sink entity will be called only, for the knowledge
what is possible is generally in that end.

So you'll need this for all the sink pads this driver is in control of.
I suppose this means the sub-devices as well as capture video nodes in
practice.

> 
> > 
> >> +		return 0;
> >> +
> >> +	return v4l2_subdev_link_validate(link);
> >> +}
> >> +
> >> +static int rkisp1_subdev_fmt_link_validate(struct v4l2_subdev *sd,
> >> +					struct media_link *link,
> >> +					struct v4l2_subdev_format *source_fmt,
> >> +					struct v4l2_subdev_format *sink_fmt)
> >> +{
> >> +	if (source_fmt->format.code != sink_fmt->format.code)
> >> +		return -EINVAL;
> 
> ops, should be -EPIPE
> 
> >> +
> >> +	/* Crop is available */
> >> +	if (source_fmt->format.width < sink_fmt->format.width ||
> >> +	    source_fmt->format.height < sink_fmt->format.height)
> >> +		return -EINVAL;
> 
> -EPIPE
> 
> >> +
> > 
> > Could you use v4l2_subdev_link_validate_default()?
> 
> v4l2_subdev_link_validate_default() only allows for an exact width/height match,
> but here we allow the sink to be smaller then the source for cropping, no?

The width and height generally must match over a link. But cropping takes
place inside a sub-device, it is not a concern in link validation as such.

> 
> Thanks again for your review!

You're welcome!

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
