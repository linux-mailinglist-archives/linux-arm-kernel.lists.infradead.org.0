Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5544C0297
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ynv856iRRIpavzfsqSpsm16bMT0TShmH6hGXf8dbG38=; b=IXgIWOo61CIgfB
	V5u1e9otZun/E8HMtuYqQP6U2IykNAQAIfFPkFt9cV2qerTIlfJb/NVeHbB7yzlaA+TT7OSqk3Omk
	tzoDU9K/EXXQ08jRAN4aVv68nvtCmchMpEg6PwPhu2bcCSaRZ21qQUjgTdSotN6nqaSknXSMwm+5G
	5H9HAAplP1y3Ln/ntYwXyKTztlpjWK7bAi6pNPHCEaq8zbG73XOeMBvLC6Jz9a9zf4O7ljKB6bGGU
	HaNXie7BRFoTKclELG3YfryRzoHzr8T50JAgPGzAycjSWePdMydWvvpiKsPzqdsHUyY8bLZHsB6Fr
	lf9iDnOAamrBCyIpQwFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmop-0000T2-Ct; Fri, 27 Sep 2019 09:45:43 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmof-0000SE-5G; Fri, 27 Sep 2019 09:45:34 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 02:45:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="273756190"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 27 Sep 2019 02:45:26 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iDmoX-0004S0-1P; Fri, 27 Sep 2019 12:45:25 +0300
Date: Fri, 27 Sep 2019 12:45:25 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [PATCH] media: ov5695: Add suport for registering sensor-related
Message-ID: <20190927094525.GP32742@smile.fi.intel.com>
References: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_024533_240911_144E2951 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 03:18:23PM +0800, Dongchun Zhu wrote:
> Hello,
> =

> This series modifies the interface of async register V4L2 sub-device invo=
ked in probe function for OV5695 CMOS sensor.
> The Omnivision OV5695 image sensor would be used in camera features on Cr=
OS application.
> 5.0 Mega Pixel MIPI Camera Mdoule also supports auto-focus control (AFC) =
with embedded AF VCM Driver.
> =

> Here we use v4l2_async_register_subdev_sensor_common() instead of v4l2_as=
ync_register_subdev()
> to register a sensor sub-device to the asynchronous sub-device framework =
and parse set up
> common sensor-related devices, such as actuator.
> =

> This function is just like=A0v4l2_async_register_subdev()=A0with the exce=
ption that calling it will also parse
> firmware interfaces for remote references using=A0v4l2_async_notifier_par=
se_fwnode_sensor_common()
> and registers the async sub-devices.
> =

> After applying this change, we can see the VCM move when changing the sce=
ne.

When you derive Cc list, set some threshold to the get_maintainer.pl, like

	scripts/get_maintainer.pl --git --git-min-percent=3D67

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
