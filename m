Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C7E983F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 09:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OIDASfGcgJ4K0i6tr+wvwg3toOzZwcJG+zRUWg8wOo=; b=nJX/IzBxDY05Xq
	nZV05wxz/P6IZOxQqlKzQUw/++8FX1QEVN/JrHTGKTR8mndHsuul+0ml6fi4dkwqdQHGRfOs090iG
	0nucrYAOEbS4D9Wv2jfRJJHmy06BSfm9Zu6UFHLzMin0vzajBfy/wPMYU3gqBWRFbTmOETfomaVAp
	pYY13QXgip1uh1kDNxPUKcCL+93qRE9ubeWgAma1+EE/1/xyKn4rYB3GNI+Ujm70OJpGxSKAZhjbH
	uOdW7mFHbWPirJQ3mVawDNVzN3rMWENqPTBo+hKAwKZBHhRuvtaocm0kxLhFAnIqDyrdaUxk+tG0o
	QKWuTR5krtY+TRqyR6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjVA-0001b1-HE; Wed, 30 Oct 2019 08:38:48 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjUy-0001Ho-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 08:38:38 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 71E17634C87;
 Wed, 30 Oct 2019 10:35:45 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iPjSC-0001cI-Hz; Wed, 30 Oct 2019 10:35:44 +0200
Date: Wed, 30 Oct 2019 10:35:44 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 2/2] media: i2c: Add IMX296 CMOS image sensor driver
Message-ID: <20191030083544.GG5017@valkosipuli.retiisi.org.uk>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-3-manivannan.sadhasivam@linaro.org>
 <20191029121320.GA5017@valkosipuli.retiisi.org.uk>
 <20191030062634.GA11637@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030062634.GA11637@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_013837_124488_E6896394 
X-CRM114-Status: GOOD (  10.38  )
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
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:56:34AM +0530, Manivannan Sadhasivam wrote:
> Hi Sakari,
> 
> Thanks for the review!

You're welcome!

> 
> On Tue, Oct 29, 2019 at 02:13:20PM +0200, Sakari Ailus wrote:
> > Hi Manivannan,
> > 
> > On Fri, Oct 25, 2019 at 11:29:08PM +0530, Manivannan Sadhasivam wrote:

...

> > > +static struct i2c_driver imx296_i2c_driver = {
> > > +	.probe_new  = imx296_probe,
> > > +	.remove = imx296_remove,
> > > +	.driver = {
> > > +		.name  = "imx296",
> > > +		.pm = &imx296_pm_ops,
> > > +		.of_match_table = of_match_ptr(imx296_of_match),
> > 
> > No need for of_match_ptr here.
> > 
> 
> AFAIK, of_match_ptr is needed for !OF case. Else we need to manually add
> #ifdef clut to make it NULL. Does the situation changed now?

ACPI based systems can also make use of the compatible string for matching
drivers with devices through of_match_table. This may sometimes be the most
practical approach. I.e. you don't need ifdefs either.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
