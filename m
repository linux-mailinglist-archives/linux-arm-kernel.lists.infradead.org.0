Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A8D85004
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+avFeBFs+mZFT2d9xeRh9DU7/DyKT0VAKdQCEtrxzc=; b=p0lMjZEtV+Yw0X
	zHLdMY7xhuAsIukFDtjnrwmehFOX0JbJkmxMq6mRyWdI4wcUqesSHLp3Tl6ZKN5kAb+Io061d5PCw
	QvCOmU08JrjkkwoAQhVEkOqHJjrHC20Q3PaQfMMO1cGknJ9QTtVHD5bWMdglJC0yMPSUHbKS0lLfV
	iONlVakXT6fce1HZJGnMT0U/2G1i1M40JLRvAsjGIOVvMPx/+ACZtndi9bdxq5yAWhiGQ0yVvdEl2
	+kHhuebEW81OvK1z4dGyB2mtDHfk2wX1/+EckJ9StEvmiUXcNxZk/kJv7Oedjl1CbllO/LaY9gfLP
	9nsjxXwNGqSu3lTEENYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNzJ-0006sw-Oq; Wed, 07 Aug 2019 15:36:29 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNz7-0006s1-VV; Wed, 07 Aug 2019 15:36:19 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:36:16 -0700
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="349794837"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:36:11 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8A00920355; Wed,  7 Aug 2019 18:36:46 +0300 (EEST)
Date: Wed, 7 Aug 2019 18:36:46 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 09/14] media: rkisp1: add rockchip isp1 core driver
Message-ID: <20190807153646.GO21370@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-10-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-10-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_083618_057358_48DCA8FD 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

On Tue, Jul 30, 2019 at 03:42:51PM -0300, Helen Koike wrote:

...

> +static int rkisp1_fwnode_parse(struct device *dev,
> +			       struct v4l2_fwnode_endpoint *vep,
> +			       struct v4l2_async_subdev *asd)
> +{
> +	struct sensor_async_subdev *s_asd =
> +			container_of(asd, struct sensor_async_subdev, asd);
> +
> +	if (vep->bus_type != V4L2_MBUS_CSI2_DPHY) {
> +		dev_err(dev, "Only CSI2 bus type is currently supported\n");
> +		return -EINVAL;
> +	}
> +
> +	if (vep->base.port != 0) {
> +		dev_err(dev, "The ISP has only port 0\n");
> +		return -EINVAL;
> +	}
> +
> +	s_asd->mbus.type = vep->bus_type;
> +	s_asd->mbus.flags = vep->bus.mipi_csi2.flags;
> +	s_asd->lanes = vep->bus.mipi_csi2.num_data_lanes;
> +
> +	switch (vep->bus.mipi_csi2.num_data_lanes) {
> +	case 1:
> +		s_asd->mbus.flags |= V4L2_MBUS_CSI2_1_LANE;
> +		break;
> +	case 2:
> +		s_asd->mbus.flags |= V4L2_MBUS_CSI2_2_LANE;
> +		break;
> +	case 3:
> +		s_asd->mbus.flags |= V4L2_MBUS_CSI2_3_LANE;
> +		break;
> +	case 4:
> +		s_asd->mbus.flags |= V4L2_MBUS_CSI2_4_LANE;
> +		break;

Could you use struct v4l2_fwnode_endpoint directly? The mbus config is a
legacy struct from bygone times and I'd like to avoid using it in new
drivers.

> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_async_notifier_operations subdev_notifier_ops = {
> +	.bound = subdev_notifier_bound,
> +	.unbind = subdev_notifier_unbind,
> +	.complete = subdev_notifier_complete,
> +};
> +
> +static int isp_subdev_notifier(struct rkisp1_device *isp_dev)
> +{
> +	struct v4l2_async_notifier *ntf = &isp_dev->notifier;
> +	struct device *dev = isp_dev->dev;
> +	int ret;
> +
> +	v4l2_async_notifier_init(ntf);
> +
> +	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
> +		dev, ntf, sizeof(struct sensor_async_subdev), 0,
> +		rkisp1_fwnode_parse);

I know these functions aren't old but there's a better alternative. See
e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c or
cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.

> +	if (ret < 0)
> +		return ret;
> +
> +	if (list_empty(&ntf->asd_list))
> +		return -ENODEV;	/* no endpoint */
> +
> +	ntf->ops = &subdev_notifier_ops;
> +
> +	return v4l2_async_notifier_register(&isp_dev->v4l2_dev, ntf);
> +}

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
