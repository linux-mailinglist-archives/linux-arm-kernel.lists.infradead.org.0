Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF7D1BF512
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwIMCssnVkTuc2ALfFKg1+2C9iR3GpwI+F0yJH38Kio=; b=el8DUWu2QYI2kX
	Oj62kEyfwmGY8q8tWJ5DpqXqrIdwnIvU1K1DwV45W9f6uIGYrEyWvDi5QO64NHYVi8jp//qacgoAF
	fxNr7KQBEuwDdYOd/MmHMjgr0dzeeeHe9D9f6o+h+jlupb/4qL9GRA+ViW7Bg3XXBv1/69u/ZlLjq
	+koc3UKh8IK5xBaBcASrbFphlcFBsUcfEXL1h83yMKMGtqWPUfCZURH2cQ1wInYRj4T9bg3l8V4hE
	j1ERN1qTvCfwd51uPDDZRm0hLLiTR+GCXrchSJiXzbbw3VhWYU5gCHp+9KERuEpmn/RdwDxCK8tN+
	jSlCyoRjk2KXI66fz6uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6B1-0004Pl-NR; Thu, 30 Apr 2020 10:12:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6Ar-0004OT-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:12:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jU6Ah-000826-Ty; Thu, 30 Apr 2020 12:11:59 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jU6Af-00047P-AG; Thu, 30 Apr 2020 12:11:57 +0200
Date: Thu, 30 Apr 2020 12:11:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v6 2/3] media: ov8856: Add devicetree support
Message-ID: <20200430101157.GD2188@pengutronix.de>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
 <20200429162437.2025699-3-robert.foss@linaro.org>
 <20200430093524.GB2188@pengutronix.de>
 <20200430094549.GF867@valkosipuli.retiisi.org.uk>
 <20200430095332.GC2188@pengutronix.de>
 <20200430095907.GG867@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430095907.GG867@valkosipuli.retiisi.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:00:34 up 68 days, 21:17, 162 users,  load average: 1.44, 7.88,
 6.50
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_031209_909819_F26BBF74 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel@vger.kernel.org, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-30 12:59, Sakari Ailus wrote:
> Hi Marco,
> 
> On Thu, Apr 30, 2020 at 11:53:32AM +0200, Marco Felsch wrote:
> > Hi Sakari,
> > 
> > On 20-04-30 12:45, Sakari Ailus wrote:
> > > Hi Marco,
> > > 
> > > On Thu, Apr 30, 2020 at 11:35:24AM +0200, Marco Felsch wrote:

...

> > > > > -	if (mclk != OV8856_MCLK) {
> > > > > -		dev_err(dev, "external clock %d is not supported", mclk);
> > > > > -		return -EINVAL;
> > > > > +	if (!is_acpi_node(fwnode)) {
> > > > > +		ov8856->xvclk = devm_clk_get(dev, "xvclk");
> > > > > +		if (IS_ERR(ov8856->xvclk)) {
> > > > > +			dev_err(dev, "could not get xvclk clock (%pe)\n",
> > > > > +					ov8856->xvclk);
> > > > > +			return PTR_ERR(ov8856->xvclk);
> > > > > +		}
> > > > > +
> > > > > +		clk_set_rate(ov8856->xvclk, xvclk_rate);
> > > > > +		xvclk_rate = clk_get_rate(ov8856->xvclk);
> > > > >  	}
> > > > 
> > > > Why do we handle the clock only in DT case? Is there a problem with the
> > > > clock handling and ACPI?
> > > 
> > > Not really, it's just that ACPI does not provide an interface to the clocks
> > > as such.
> > 
> > But you will get a clk by devm_clk_get()?
> 
> No, because ACPI does not expose one to drivers. Effectively the entire
> power sequences are implemented in ACPI, not in the driver.
> 

Ah okay, thanks for the explanation. I'm really not into the ACPI
stuff.. So this means the __power_off / power_on should only be done if
we are using DT's?

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
