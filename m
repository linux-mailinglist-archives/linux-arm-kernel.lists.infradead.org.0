Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3876A17F452
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8Kw+4NXeFHh7Wv9tU5PXiQDIjAIAXyj1VOzgIFfWvU=; b=mfuTtdmVwjPKM8
	iLiLu7CRQXqZ5cet4qJjpkdB1X2aYkUOVYJzqvIYdM3kXfb94KS3CaZdBjUoEfgyX1HfXX09KCVxs
	G+nt4gLkN8ut4kVru8mm4uGopu/kcK7JLyYe6E3xTp6zpUnoIbiAgX+CqznO40XlHuRGFQQphuoVi
	i89jtFQUge4LPCW8kRcwXuGJEs0HPkq4ykoTRfrUnJL2j2ui4froA4nNcqMJth8d9f94mFZPadh6H
	mA/9y4IU4jEwFqKOh27ukOOIp/b452s7mI+yNdLwHZjksc/bWE4UocANlL7RS3Oz0o1USE21NLwVS
	R+pDfNFNquZvYWbnsenw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBble-0006Qt-LU; Tue, 10 Mar 2020 10:05:42 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBblT-0006Pm-QJ; Tue, 10 Mar 2020 10:05:33 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:05:29 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="242269786"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:05:25 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 6BF08209DF; Tue, 10 Mar 2020 12:05:23 +0200 (EET)
Date: Tue, 10 Mar 2020 12:05:23 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V3, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20200310100523.GC5379@paasikivi.fi.intel.com>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-3-dongchun.zhu@mediatek.com>
 <1583834419.5781.33.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583834419.5781.33.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_030531_907056_CD2ACE83 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, Mar 10, 2020 at 06:00:19PM +0800, Dongchun Zhu wrote:
> Hi Sakari, Rob, Andy, Tomasz,
> 
> On Fri, 2020-02-28 at 23:59 +0800, Dongchun Zhu wrote:
...
> > +static int dw9768_init(struct dw9768 *dw9768)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret, val;
> > +
> > +	/* Reset DW9768_RING_PD_CONTROL_REG to default status 0x00 */
> > +	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
> > +					DW9768_PD_MODE_OFF);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/*
> > +	 * DW9769 requires waiting delay time of t_OPR
> > +	 * after PD reset takes place.
> > +	 */
> > +	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
> > +
> > +	ret = dw9768_write_array(dw9768, dw9768_init_regs,
> > +				 ARRAY_SIZE(dw9768_init_regs));
> > +	if (ret)
> > +		return ret;
> > +
> > +	for (val = dw9768->focus->val % DW9768_MOVE_STEPS;
> > +	     val <= dw9768->focus->val;
> > +	     val += DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> > +			return ret;
> > +		}
> > +		usleep_range(DW9768_MOVE_DELAY_US,
> > +			     DW9768_MOVE_DELAY_US + 1000);
> > +	}
> > +
> 
> What do you think about the approach taken by this patch?
> From the view of VCM hardware, the collision sound of lens should only
> happen when moving position back to zero.
> When opening camera, one should be able to move lens to the position
> directly.
> I tried to replace this code to a single dw9768_set_dac(dw9768,
> dw9768->focus->val),
> there is no collision sound when open camera and it could reduce several
> hundred ms when open lens driver fd.
> Are we okay with this?

I think so. Usually on VCMs with ringing compensation the only problematic
case is when the power is cut. :-)

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
