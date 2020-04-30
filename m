Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518EB1BF997
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lq4oWl8QpHQD78XwZOPuzMkYReesCfnFqQXkhOcBZgo=; b=NYfO3dKIKhi5nr
	XsClGeMuw+n8DGK2IDI0SkHQQWrRHBJEXxTop4Gd6fa70X8+ygoYPVOvVPfWTlMWR6hGirNpgP0l1
	CdO7NIwDC8achoI5uO6EY0AVle2e8mDt6CSG96V4NNn/NMaMH5VHF/fe6DrBHD/RxdAmIeuAj5AM1
	BdkNRU0/tVRdFF57axs0EUkKZ0f2oKOqdr+BiL37S87z2B52fV2+2cMFpwqZSteM+1Ke9GpL+2GJS
	MNcQSAKofPoxYCc1FHjS4WOldbMRKx6QJA4nrBRiOZ433x8o77i+RmsAR9GPuUA/TWVrgBVdbICgS
	WkZ/0EA+CUCFYu6ihCSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9JV-0002Fn-K0; Thu, 30 Apr 2020 13:33:17 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9JM-0002E9-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:33:10 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id C2C81634C91;
 Thu, 30 Apr 2020 16:32:57 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jU9JB-0000Re-LJ; Thu, 30 Apr 2020 16:32:57 +0300
Date: Thu, 30 Apr 2020 16:32:57 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v6 2/3] media: ov8856: Add devicetree support
Message-ID: <20200430133257.GM867@valkosipuli.retiisi.org.uk>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
 <20200429162437.2025699-3-robert.foss@linaro.org>
 <20200430093524.GB2188@pengutronix.de>
 <20200430094549.GF867@valkosipuli.retiisi.org.uk>
 <20200430095332.GC2188@pengutronix.de>
 <20200430095907.GG867@valkosipuli.retiisi.org.uk>
 <20200430101157.GD2188@pengutronix.de>
 <20200430102018.GI867@valkosipuli.retiisi.org.uk>
 <20200430120740.GG2188@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430120740.GG2188@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_063308_530539_61885185 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Thu, Apr 30, 2020 at 02:07:41PM +0200, Marco Felsch wrote:
> On 20-04-30 13:20, Sakari Ailus wrote:
> > On Thu, Apr 30, 2020 at 12:11:57PM +0200, Marco Felsch wrote:
> > > On 20-04-30 12:59, Sakari Ailus wrote:
> > > > Hi Marco,
> > > > 
> > > > On Thu, Apr 30, 2020 at 11:53:32AM +0200, Marco Felsch wrote:
> > > > > Hi Sakari,
> > > > > 
> > > > > On 20-04-30 12:45, Sakari Ailus wrote:
> > > > > > Hi Marco,
> > > > > > 
> > > > > > On Thu, Apr 30, 2020 at 11:35:24AM +0200, Marco Felsch wrote:
> > > 
> > > ...
> > > 
> > > > > > > > -	if (mclk != OV8856_MCLK) {
> > > > > > > > -		dev_err(dev, "external clock %d is not supported", mclk);
> > > > > > > > -		return -EINVAL;
> > > > > > > > +	if (!is_acpi_node(fwnode)) {
> > > > > > > > +		ov8856->xvclk = devm_clk_get(dev, "xvclk");
> > > > > > > > +		if (IS_ERR(ov8856->xvclk)) {
> > > > > > > > +			dev_err(dev, "could not get xvclk clock (%pe)\n",
> > > > > > > > +					ov8856->xvclk);
> > > > > > > > +			return PTR_ERR(ov8856->xvclk);
> > > > > > > > +		}
> > > > > > > > +
> > > > > > > > +		clk_set_rate(ov8856->xvclk, xvclk_rate);
> > > > > > > > +		xvclk_rate = clk_get_rate(ov8856->xvclk);
> > > > > > > >  	}
> > > > > > > 
> > > > > > > Why do we handle the clock only in DT case? Is there a problem with the
> > > > > > > clock handling and ACPI?
> > > > > > 
> > > > > > Not really, it's just that ACPI does not provide an interface to the clocks
> > > > > > as such.
> > > > > 
> > > > > But you will get a clk by devm_clk_get()?
> > > > 
> > > > No, because ACPI does not expose one to drivers. Effectively the entire
> > > > power sequences are implemented in ACPI, not in the driver.
> > > > 
> > > 
> > > Ah okay, thanks for the explanation. I'm really not into the ACPI
> > > stuff.. So this means the __power_off / power_on should only be done if
> > > we are using DT's?
> > 
> > Correct. That's why it bails out early. It could be yet earlier though,
> > without doing anything.
> 
> Yes I see. For easier and error less prone handling I would prefer:
> 
> if (is_acpi_node())
> 	return 0;
> 
> as first instruction for __power_off/on().
> 
> Also I would refator the ov8856_check_hwcfg() so the common part can be
> used by this function and by a ov8856_parse_of() function. But thats
> only my opinion.

I guess it could be the same function, up to you.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
