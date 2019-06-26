Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF0756615
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPugcFoPVCGaHmiIP8I8X/47BP8T41r22s1fbOp/YJA=; b=IUmojjSbiDjH5J
	BqxMDlGm9Fk4IBnRJyApdsOhzDzyRZsvQCiDkEwTSuPJ4jg0j6EDT697So27xe0eAx24JFj+nuaay
	Ehh46eHXiihPYYSmDuN/QdQO4D0Of1xSYpxjJa3qzguCeMiqQWuhF3Y42Qr/JpmJ/cEFz26DdRUhb
	pdbiJ5n6RBv1UWyAMs51UmV9wc7orMj8ApWA1OkZhNKx1NC6IkEfHUlHoajctGDEliSkN1zDAa4Lg
	75ftFl9EKseU4+Zi1cDmSZWnwUY0vLBetTzFpDPu+2k+DI9d57LYrwTStj7La2IXI6OUEgnrBQHbG
	x3l5roYgKKtdpDt/CaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4k2-0003H8-B3; Wed, 26 Jun 2019 10:01:26 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4jH-0001tD-MH; Wed, 26 Jun 2019 10:00:42 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 0C3C6634C7F;
 Wed, 26 Jun 2019 12:58:27 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hg4h8-0000Pw-9f; Wed, 26 Jun 2019 12:58:26 +0300
Date: Wed, 26 Jun 2019 12:58:26 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [PATCH 1/3] media: i2c: ov02a10: Add ov02a10 camera sensor driver
Message-ID: <20190626095826.3w4lj4vmfnfgxv53@valkosipuli.retiisi.org.uk>
References: <20190523102204.24112-1-dongchun.zhu@mediatek.com>
 <20190523102204.24112-2-dongchun.zhu@mediatek.com>
 <20190531170307.tv652oech6vh4rye@valkosipuli.retiisi.org.uk>
 <1560262189.9392.42.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560262189.9392.42.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_030040_110750_E89ED510 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com, tfiga@google.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, Jun 11, 2019 at 10:09:49PM +0800, Dongchun Zhu wrote:
...
> > > +		return -EINVAL;
> > > +
> > > +	fse->code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > 
> > Instead you need check the caller set this. The frame sizes could be
> > different for different media bus formats.
> > 
> 
> For one sensor mode, there should be one Bayer sequence.
> In next version, this para could be changed when mirror/flip enabled.
> 

You should change the check based on the configuration.

...

> > > +#ifdef CONFIG_VIDEO_V4L2_SUBDEV_API
> > > +static int ov02a10_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> > > +{
> > > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > +	struct v4l2_mbus_framefmt *try_fmt;
> > > +
> > > +	mutex_lock(&ov02a10->mutex);
> > > +
> > > +	try_fmt = v4l2_subdev_get_try_format(sd, fh->pad, 0);
> > > +	/* Initialize try_fmt */
> > > +	ov02a10_fill_fmt(&supported_modes[0], try_fmt);
> > 
> > If this is all you need, you should implement the init_cfg pad op.
> > 
> 
> It seems that other sensors (for instance, OV8856, OV13858 etc.)
> initialize try_fmt in the same way.

Yes; these drivers should be changed as well.

...

> > > +					  ov02a10_test_pattern_val[ctrl->val]);
> > > +		break;
> > > +	case V4L2_CID_HFLIP:
> > > +		if (ov02a10->streaming)
> > > +			return -EBUSY;
> > 
> > You could instead use v4l2_ctrl_grab() (or the unlocked variant) when
> > streaming starts. Same below.
> > 
> 
> It seems that other sensors (for instance, OV2680 etc.)
> call V4L2_CID_HFLIP/V4L2_CID_VFLIP in the same way.

That's ok.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
