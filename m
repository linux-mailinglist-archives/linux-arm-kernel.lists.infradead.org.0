Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7A24CBCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mb7f2a94dhOdKmbJ42mpxbvUbDJiqYhUUvzLFR0dDZo=; b=DQr6KSa2sP55RN
	YsaEfLX4/bFDU59ikX0eFBUPid5Ugz8dfRSAdvqYSCw4R5lT5jShtwyewDiGNBcrOgEPg5AAlKR/8
	G8qSxhRD8gDeBkyy0YDW29CzOZqLEgvAt+yNmnzn1X0tYICv/2M9toSaLqT5DHH44bckpc3/KGGQM
	Ado8OukNi5aTfHnAMsEyP/qywZHT8kKrnF5FazqaCGDWtSumdVwKXDpQT7RgC/St1A++zmRKEg3j6
	NMOld7PrZfcRBAVbO0OMp0SWsvp352F7HxKk+oi0wyagodIeBNQ0rCpTZxkXWGlg75bTZb2wpNRKJ
	BpBD8aXpgchNBI/WgHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduGY-0005Ej-NE; Thu, 20 Jun 2019 10:26:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hduGI-0005EB-Sf
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:25:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BAEA360;
 Thu, 20 Jun 2019 03:25:46 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 810A63F718;
 Thu, 20 Jun 2019 03:25:45 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:25:43 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190620102543.GB20984@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-3-andrew.murray@arm.com>
 <20190618223402.GA24894@xps15>
 <e5b288ad-91bd-8854-469a-bee44bf202cf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5b288ad-91bd-8854-469a-bee44bf202cf@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_032546_975640_66AA34BE 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 09:32:56AM +0100, Suzuki K Poulose wrote:
> 
> 
> On 18/06/2019 23:34, Mathieu Poirier wrote:
> > On Tue, Jun 18, 2019 at 01:54:30PM +0100, Andrew Murray wrote:
> > > Synchronization is recommended before disabling the trace registers
> > > to prevent any start or stop points being speculative at the point
> > > of disabling the unit (section 7.3.77 of ARM IHI 0064D).
> > > 
> > > Synchronization is also recommended after programming the trace
> > > registers to ensure all updates are committed prior to normal code
> > > resuming (section 4.3.7 of ARM IHI 0064D).
> > > 
> > > Let's ensure these syncronization points are present in the code
> > > and clearly commented.
> > > 
> > > Note that we could rely on the barriers in CS_LOCK and
> > > coresight_disclaim_device_unlocked or the context switch to user
> > > space - however coresight may be of use in the kernel.
> > > 
> > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > ---
> > >   drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
> > >   1 file changed, 6 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > index da7cf74d612b..ae623415c431 100644
> > > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > > @@ -187,6 +187,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
> > >   		dev_err(drvdata->dev,
> > >   			"timeout while waiting for Idle Trace Status\n");
> > > +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> > > +	dsb(sy);
> > > +	isb();
> > > +
> 
> I think this should go to stable. Please Cc stable in the next version. or
> alternately you may add a "fixes" tag.

Sure I'll CC stable.

> 
> > >   done:
> > >   	CS_LOCK(drvdata->base);
> > > @@ -453,7 +457,8 @@ static void etm4_disable_hw(void *info)
> > >   	control &= ~0x1;
> > >   	/* make sure everything completes before disabling */
> > > -	mb();
> > > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > > +	dsb(sy);
> > 
> > As far as I can tell mb() is equal to dsb(sy).
> 
> Yes, however, given that etm4x is for armv8 cores, having the explicit dsb()
> make sense to avoid someone looking up again to see what mb() translates to.
> I suggested the dsb() over mb(), so that it is evident to someone who is trying
> to correlate the TRM vs the code.

As the TRM explictly mentions dsb, I'd prefer to explictly do this in the code
rather than rely on whatever mb will be in the future.

Thanks,

Andrew Murray

> 
> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
