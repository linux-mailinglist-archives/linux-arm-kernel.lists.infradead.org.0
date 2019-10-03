Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBCFC98E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHW4MW2rVqOR/89UQeP2YyC//vByJXp0en5GLHsTUh8=; b=bpNOxHU8ydJK3X
	4zOQZaY68phV2nPsmKujvfnFpgicB6m0JzEn0xo0vwiVRpc9D6ihTco/xG8Z7WAYh+hJx3V+zZZEl
	9gNzh6hDLkBXWv+3o4CTfNDIXW8QS5RU3vHUfWhSkxj8jwkLdYZIu3U9aF9Rc2zRldEzEyIM8wfYF
	X9YToco1StnKKJOmHY6UNbU03xvdvFsHa21wfTrlvDGCA+CNw/ZpTD1n4M4PAM97jEk6St9QZWmhq
	OCf6S1y6xFhBVLpf+4q4A1F7GLWCmKzKaRMGujC1dUpvdRVv5LTnxX8VSU7gcYpaAb3HTkCYFGrmz
	jiWWy6LBMeCnBCG9BBHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvMp-0001Qn-2W; Thu, 03 Oct 2019 07:17:39 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvMg-0001Q5-SR
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:17:32 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 9D432634C87;
 Thu,  3 Oct 2019 10:16:47 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iFvLy-0002Ge-4R; Thu, 03 Oct 2019 10:16:46 +0300
Date: Thu, 3 Oct 2019 10:16:46 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 2/3] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20191003071646.GZ896@valkosipuli.retiisi.org.uk>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
 <20190830091943.22646-3-manivannan.sadhasivam@linaro.org>
 <20190923092209.GL5525@valkosipuli.retiisi.org.uk>
 <20191001184200.GA7739@Mani-XPS-13-9360>
 <20191002103715.GR896@valkosipuli.retiisi.org.uk>
 <20191003053338.GA7868@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003053338.GA7868@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_001731_095986_B18DEAD8 
X-CRM114-Status: GOOD (  21.42  )
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Thu, Oct 03, 2019 at 11:03:38AM +0530, Manivannan Sadhasivam wrote:
....
> > > > > +static int imx290_set_gain(struct imx290 *imx290, u32 value)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	u32 adjusted_value = (value * 10) / 3;
> > > > 
> > > > What's the purpose of this? Why not to use the value directly?
> > > > 
> > > 
> > > The gain register accepts the value 10/3 of the actual gain required. Hence,
> > > we need to manually do the calculation before updating the value. I can
> > > add a comment here to clarify.
> > 
> > It's better to use the register value directly. Otherwise the granularity
> > won't be available to the user space.
> > 
> 
> The sensor datasheet clearly defines that the 10/3'rd of the expected gain
> should be set to this register. So, IMO we should be setting the value as

The unit of that gain is decibels, but the controls do not have a unit.
Register value is really preferred here.

> mentioned in the datasheet. I agree that we are missing the userspace
> granularity here but sticking to the device limitation shouldn't be a problem.
> As I said, I'll add a comment here to clarify.

The comment isn't visible in the uAPI.

> 
> > > 
> > > > > +
> > > > > +	ret = imx290_write_buffered_reg(imx290, IMX290_GAIN, 1, adjusted_value);
> > > > > +	if (ret)
> > > > > +		dev_err(imx290->dev, "Unable to write gain\n");
> > > > > +
> > > > > +	return ret;
> > > > > +}
> > > > > +
> > > > > +static int imx290_set_power_on(struct imx290 *imx290)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	ret = clk_prepare_enable(imx290->xclk);
> > > > 
> > > > Please move the code from this function to the runtime PM runtime suspend
> > > > callback. The same for imx290_set_power_off().
> > > > 
> > > 
> > > May I know why? I think since this is being used only once, you're suggesting
> > > to move to the callback function itself but please see the comment below. I
> > > will reuse this function to power on the device during probe.
> > 
> > Yes, you can call the same function from probe, even if it's used as a
> > runtime PM callback.
> > 
> > There's no need to have a function that acts as a wrapper for calling it
> > with a different type of an argument.
> > 
> 
> You mean directly calling imx290_runtime_resume() from probe is fine?

Yes. Feel free to call it e.g. imx290_power_on or something.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
