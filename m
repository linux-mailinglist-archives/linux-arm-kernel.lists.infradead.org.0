Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716F137B26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwkhLXG37B7g8YVfPUtWloCeShvPyQAKw1KLHg/ChgU=; b=RQjXQM/6a30hTI
	rCkIhykygXlGZwJzDetVTyVhKWKYfIseXNJ2MxffX+lc8UmOnrUvoTFUMDSau06Wgq6wyhpxc7M9W
	PUGQGiMJjPjZIUn0XS3sfPQ3ZssYicqapWREV55iT17ONRHwG7xplzuydN6cVUzY94GTpY5dxDZYX
	g520wqeclVX/jN/WH1SH+PVmSPol1kPVgA6wdxjnrb4z8Hqg5xCvcZHnjfugDMlS8VYL7/E4zxOuo
	gYiScuIOJmybQlgolKTrF1pEnKjRmutueWSNZjfyhlT1bAj+FJpi3lY4ni14S4k5klEPFuf9DeH5S
	h/Liw5DD9otUfmV6NkHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwJE-0005pv-Du; Thu, 06 Jun 2019 17:36:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwJ7-0005pR-QQ; Thu, 06 Jun 2019 17:36:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C3952083D;
 Thu,  6 Jun 2019 17:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559842569;
 bh=pdq8qWIQe2AXVUfwDoQAl3L/f1GBHM2CtgEayvOOJOg=;
 h=In-Reply-To:References:To:Subject:From:Cc:Date:From;
 b=BwVfvF8v2Q979AL6mVsnn+nE3xjQrUjwkRimjqFEJhiFbEf8SR2T9nCVGTybohqdR
 AOoYSR0emcwc0BLcR1DkGl8wBOGZukuLZfVlGmkot+thcQ2z546O2TpYYmzUUHW5zj
 KTFdSDZq6kGs2i8xJJOqYFuh01E18mzPP7/+4R5Y=
MIME-Version: 1.0
In-Reply-To: <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
 <20190606170949.4A46720652@mail.kernel.org>
 <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, stefan.wahren@i2se.com
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 10:36:08 -0700
Message-Id: <20190606173609.2C3952083D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_103609_878741_BF02719F 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, mturquette@baylibre.com,
 ptesarik@suse.com, linux-kernel@vger.kernel.org, mbrugger@suse.de,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-06 10:22:16)
> Hi Stephen,
> Thanks for the review.
> 
> On Thu, 2019-06-06 at 10:09 -0700, Stephen Boyd wrote:
> > Quoting Nicolas Saenz Julienne (2019-06-06 07:22:56)
> > > diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c
> > > b/drivers/cpufreq/raspberrypi-cpufreq.c
> > > new file mode 100644
> > > index 000000000000..99b59d5a50aa
> > > --- /dev/null
> > > +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> > [...]
> > > +
> > > +/*
> > > + * Since the driver depends on clk-raspberrypi, which may return
> > > EPROBE_DEFER,
> > > + * all the activity is performed in the probe, which may be defered as
> > > well.
> > > + */
> > > +static struct platform_driver raspberrypi_cpufreq_driver = {
> > > +       .driver = {
> > > +               .name = "raspberrypi-cpufreq",
> > > +       },
> > > +       .probe          = raspberrypi_cpufreq_probe,
> > > +       .remove         = raspberrypi_cpufreq_remove,
> > > +};
> > > +module_platform_driver(raspberrypi_cpufreq_driver);
> > 
> > How does this driver probe? Do you have a node in DT named
> > raspberrypi-cpufreq that matches and probes this? I would think this
> > would follow the drivers/cpufreq/cpufreq-dt-platdev.c design where it's
> > an initcall that probes the board compatible string.
> >
> > Or, if it depends on clk-raspberrypi probing, maybe it could create the
> > platform device in that drivers probe function.
> 
> Well you just reviewed that patch :)

Ok. So what's your plan?

> 
> > > +
> > > +MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de");
> > > +MODULE_DESCRIPTION("Raspberry Pi cpufreq driver");
> > > +MODULE_LICENSE("GPL");
> > > +MODULE_ALIAS("platform:raspberrypi-cpufreq");
> > 
> > I don't think the module alias is needed anymore.
> 
> That's surprising. I remember the driver not being loaded by udev without it.
> 

Maybe I'm wrong. Could be not needed for DT based platform devices with
an OF table.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
