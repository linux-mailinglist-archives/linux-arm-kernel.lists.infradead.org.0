Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4793EA27D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqzBSg8O4Nw6wMVjoqjefdeAwQ1iE1B8fihwhu/Eh1Y=; b=KAcF8B0zwiUi1Q
	N+4l066m3Zb0h8XA1dDXeIR7WYbtd29fnyLDpbAhoEM5yeRgF+4Qh8CHUHo2EdUJwfP1CbSO3s6I5
	d6natzUmjqWxV+F5KO75rEkNQACxmz3pg/NByo5lhO0JG+CpvfZrDL/Y0RTLSTS30uwFAMUtyXK4E
	xgODD/+1IvNlN1MYdAC5jsZci15Zi4VPQDiSpurE9SyY8LB7gdUtDUKyWIIPd/vh4HDONyzwzPlwc
	+iREUMB3p1/3OVNlcZ+nNKl7m9orCYw1Drhk+v1rZ4tvwbybTSm+K6UaaFfPBFYQu7TRi3486oVES
	js0peDsx7U+sUL2Rl5iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3QtZ-0008Tv-7O; Thu, 29 Aug 2019 20:19:49 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QtM-0008TZ-Bd
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:19:37 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 8052A634C87;
 Thu, 29 Aug 2019 23:17:01 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1i3Qqr-0000yE-Ce; Thu, 29 Aug 2019 23:17:01 +0300
Date: Thu, 29 Aug 2019 23:17:01 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 2/3] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20190829201701.GA3568@valkosipuli.retiisi.org.uk>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-3-manivannan.sadhasivam@linaro.org>
 <20190813105920.GH835@valkosipuli.retiisi.org.uk>
 <20190829170415.GA4427@mani>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829170415.GA4427@mani>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_131936_576039_55AEE54D 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Thu, Aug 29, 2019 at 10:34:15PM +0530, Manivannan Sadhasivam wrote:

...

> > > +static int imx290_set_fmt(struct v4l2_subdev *sd,
> > > +			  struct v4l2_subdev_pad_config *cfg,
> > > +		      struct v4l2_subdev_format *fmt)
> > > +{
> > > +	struct imx290 *imx290 = to_imx290(sd);
> > > +	const struct imx290_mode *mode;
> > > +	struct v4l2_mbus_framefmt *format;
> > > +	int i, ret = 0;
> > 
> > Note that sub-device drivers need to serialise access through the uAPI to
> > their own data.
> > 
> 
> You mean guarding with mutex?

Yes, please.

...

> > > +static int imx290_get_regulators(struct device *dev, struct imx290 *imx290)
> > > +{
> > > +	unsigned int i;
> > > +
> > > +	for (i = 0; i < IMX290_NUM_SUPPLIES; i++)
> > > +		imx290->supplies[i].supply = imx290_supply_name[i];
> > > +
> > > +	return devm_regulator_bulk_get(dev, IMX290_NUM_SUPPLIES,
> > > +				       imx290->supplies);
> > > +}
> > > +

...

> > > +	ret = imx290_get_regulators(dev, imx290);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "Cannot get regulators\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	imx290->rst_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_ASIS);
> > > +	if (IS_ERR(imx290->rst_gpio)) {
> > > +		dev_err(dev, "Cannot get reset gpio\n");
> > 
> > Remember to put the regulators from now on. Or grab them later.
> > 
> 
> Shouldn't that happen by default with devm_regulator* APIs?

Ah, I missed you were using the devm variant. Please ignore the comment
then.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
