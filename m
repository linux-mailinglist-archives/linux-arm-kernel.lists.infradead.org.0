Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4058B79A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jj7PXv6tx+e8rGXWDhHW6eZkk5e1DqNzXq9q9QCl2jA=; b=ia2alfakhq5WHn
	GfiWm5g8G+04q/2EMXla4QDXg31AaKICEjmRMuEb4JKbSHKqyEmlOn8tEUgFKsMvozK54ZyqVr4n+
	rDITadH0MA+Qqkyw2ow3bfgna0hY8kpSeAlqsjMnsiWRiGBsaQHw2Ztc7N8ZWrtZmi1BlfZJpsrDE
	MYSMh82VCKMdHrraioY98fiULJ5MYNZiYlmfXSqgg7aFOpBgZirmQjkOctHsRJHuVTXjC2CAAztfh
	a8HqhN/c5evJZxHf5i7JfRpl/ZqXiUJgKdDmVAUxhTvJGr3JZil+4N9Wrs7sTug9YjoPIGtvFJvO1
	p5ci0+e166eGNjt3NgVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVLr-00017m-T2; Tue, 13 Aug 2019 11:52:31 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVLc-00015m-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:52:18 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 58F8C634C89;
 Tue, 13 Aug 2019 14:52:05 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hxVLQ-0000fI-OT; Tue, 13 Aug 2019 14:52:04 +0300
Date: Tue, 13 Aug 2019 14:52:04 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813115204.GB2527@valkosipuli.retiisi.org.uk>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813113846.GG13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813113846.GG13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_045217_052357_6E8ACF6B 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Aug 13, 2019 at 12:38:46PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > +Required Properties:
> > +- compatible: Should be "sony,imx290"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the xclk clock.
> > +- clock-names: Should be "xclk".
> > +- clock-frequency: Frequency of the xclk clock.
> 
> Driver code:
> 
> +       ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);+       if (ret) {
> +               dev_err(dev, "Could not get xclk frequency\n");
> +               return ret;
> +       }
> +
> +       /* external clock must be 37.125 MHz */
> +       if (xclk_freq != 37125000) {
> +               dev_err(dev, "External clock frequency %u is not supported\n",
> +                       xclk_freq);
> +               return -EINVAL;
> +       }
> 
> So, only 37125000 is supported - is that not worth mentioning in this
> description?  Is this a hard requirement of the sensor?  If so, why
> does it need to be mentioned in the DT binding?

The driver only supports a particular frequency, but the sensor is not
limited to that. Unfortunately this is not uncommon for camera sensors, for
the vendors often provide register settings for a given configuration only
(external clock frequency, number of CSI-2 lanes, CSI-2 bus frequency,
image cropping, binning etc.).

That still doesn't mean there are no alternative configurations for
different external clock frequencies, or that there could not be a driver
that was able to configure the sensor to use a given frequency.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
