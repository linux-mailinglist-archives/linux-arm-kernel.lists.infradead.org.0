Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703F3581CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnFzeqxFNwmqMYTjmhZuvvs3l437CNg7vi0oDNj+TQo=; b=llyuzd1Qvtn/HQ
	sCmM64Qd7aR8Ms+efYi/2a9ibwAPHWuzcJ67jpw2ZAA7s7Iv1KbOJEWUiLflS1h3rYnIGQTMjV+Tj
	tZD1kJDwZLj3lEYzv5/xLxqY+eaWffDghQ0hPEtETK8xm+LUoClODTBj75gB+QPD3/zMyJvrHVX99
	+8ToeebkUpzqee9HJqeVD+uh1x+QRxb33825PzpC3NNngCWYHGACtEk2wH3nRd2X6BDraucghYAfK
	kWAfteSTTg9unqEFLREZ27Y4/gyNqjP1s65+bEpkKddyimlKfEHqS1bQ/ujUJQ0tvzcEb9ZuTIMHM
	rYtVfJv9vM83ikR1nqqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSmq-0001ms-RX; Thu, 27 Jun 2019 11:41:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSma-0001mK-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:41:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9AB62B;
 Thu, 27 Jun 2019 04:41:39 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B3C63F718;
 Thu, 27 Jun 2019 04:41:39 -0700 (PDT)
Date: Thu, 27 Jun 2019 12:41:37 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190627114137.GD34530@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <adf74525-faa7-0fd6-7ea9-6377e782b4b6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adf74525-faa7-0fd6-7ea9-6377e782b4b6@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_044140_710847_26005544 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, stable@vger.kernel.org, Sudeep.Holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 10:16:17AM +0100, Suzuki K Poulose wrote:
> Hi Andrew,
> 
> On 27/06/2019 09:35, Andrew Murray wrote:
> > Synchronization is recommended before disabling the trace registers
> > to prevent any start or stop points being speculative at the point
> > of disabling the unit (section 7.3.77 of ARM IHI 0064D).
> > 
> > Synchronization is also recommended after programming the trace
> > registers to ensure all updates are committed prior to normal code
> > resuming (section 4.3.7 of ARM IHI 0064D).
> > 
> > Let's ensure these syncronization points are present in the code
> > and clearly commented.
> 
> Please could you also mention why we switched from mb() ?

No problem.

> 
> > 
> > Note that we could rely on the barriers in CS_LOCK and
> > coresight_disclaim_device_unlocked or the context switch to user
> > space - however coresight may be of use in the kernel.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > CC: stable@vger.kernel.org
> 
> 
> 
> > ---
> >   drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
> >   1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index c89190d464ab..68e8e3954cef 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -188,6 +188,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
> >   		dev_err(etm_dev,
> >   			"timeout while waiting for Idle Trace Status\n");
> > +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> 
> nit: It would be good to mention the "section name" to help the reader
> find the same on a different version of the document. Also within the same
> version, this is listed in the subsection:
> "Synchronization when using the memory-mapped interface"
> 
> Please could you update the comment to reflect the same ?
> 

Yes sure.


> > +	dsb(sy);
> > +	isb();
> > +
> >   done:
> >   	CS_LOCK(drvdata->base);
> > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> >   	control &= ~0x1;
> >   	/* make sure everything completes before disabling */
> > -	mb();
> > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> 
> Nit: This refers to completely unrelated section. Shouldn't this be the same
> as above ?

Actually 4.3.7 relates to using dsb/isb after programming the trace unit
registers and indicates this is to 'ensure that all updates are committed to
the trace unit before normal code execution resumes'.

Whereas 7.3.77 (hidden awawy in the SSTATUS description) relates to using
dsb/isb before disabling the trace unit to 'prevent any start or stop points
being specualtive at the point of disabling the trace unit'.

Both sections suggest the same course of action - however I felt that the
description in 7.3.77 better related to the context of etm4_disable_hw.

Perhaps if I also add the section name, readers are more likely to find this
text?


> 
> With the above fixed:
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks,

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
