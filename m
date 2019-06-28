Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58C35963B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNHwLxCdxTHPBQ6lrTr/uj5MUWqsyXW7QFo7+KdWU78=; b=apjJvTF7jQrKBq
	OxPHC2hkAg1rPgucZfWs3qp3cp7H+WhnUVBiMFhfjIGpcLDhI7Xwi8PG7rnRVEHUX7aePrOIlCOg5
	8RDt4U2UPCWbI8yUJnqWk+3oD4GI5gMXfefqDBkbWuMfDsFtHVMCJI3GXNWyBx/ZSh7PxFA1LwT52
	SFhMnzzWnzrfizsJnbDUB8/90j28Hdp6gzzjg+c5RE500N99jSKk0PthdnjYcKDymOaN94W8JNy5z
	DXI5zkUCh9Ez7GrNVrmTnpdVMqs3d40tb57hx7BZWEtTo9LEtUchVQP2Ra57PwIk9y6lf5PWmPqeK
	4jgchSZXu8QCYBVEE+ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmME-0002B0-Ur; Fri, 28 Jun 2019 08:35:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmLx-00029m-My
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:35:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 318102B;
 Fri, 28 Jun 2019 01:35:26 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBB233F706;
 Fri, 28 Jun 2019 01:35:25 -0700 (PDT)
Date: Fri, 28 Jun 2019 09:35:24 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190628083523.GG34530@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
 <20190628024529.GC20296@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628024529.GC20296@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_013529_839306_A355EC24 
X-CRM114-Status: GOOD (  27.83  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, stable@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 10:45:29AM +0800, Leo Yan wrote:
> Hi Andrew,
> 
> On Thu, Jun 27, 2019 at 09:35:22AM +0100, Andrew Murray wrote:
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
> > 
> > Note that we could rely on the barriers in CS_LOCK and
> > coresight_disclaim_device_unlocked or the context switch to user
> > space - however coresight may be of use in the kernel.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > CC: stable@vger.kernel.org
> > ---
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index c89190d464ab..68e8e3954cef 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -188,6 +188,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
> >  		dev_err(etm_dev,
> >  			"timeout while waiting for Idle Trace Status\n");
> >  
> > +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> > +	dsb(sy);
> > +	isb();
> > +
> 
> I read the spec, it recommends to use dsb/isb after accessing trace
> unit, so here I think dsb(sy) is the most safe way.
> 
> arm64 defines barrier in arch/arm64/include/asm/barrier.h:
> 
>   #define mb()            dsb(sy)
> 
> so here I suggest to use barriers:
> 
>   mb();
>   isb();
> 
> I wrongly assumed that mb() is for dmb operations, but actually it's
> defined for dsb operation.  So we should use it and this is a common
> function between arm64 and arm.
> 
> >  done:
> >  	CS_LOCK(drvdata->base);
> >  
> > @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
> >  	control &= ~0x1;
> >  
> >  	/* make sure everything completes before disabling */
> > -	mb();
> > +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> > +	dsb(sy);
> 
> Here the old code should be right, mb() is the same thing with
> dsb(sy).
> 
> So we don't need to change at here?

Correct - on arm64 there is no difference between mb and dsb(sy) so no
functional change on this hunk.

In repsonse to Suzuki's feedback on this patch, I've updated the commit
message to describe why I've made this change, as follows:
     
"On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
only used on armv8 let's directly use dsb(sy) instead of mb(). This
removes some ambiguity and makes it easier to correlate the code with
the TRM."

Does that make sense?

Thanks,

Andrew Murray

> 
> Thanks,
> Leo Yan
> 
> >  	isb();
> >  	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
> >  
> > -- 
> > 2.21.0
> > 
> > _______________________________________________
> > CoreSight mailing list
> > CoreSight@lists.linaro.org
> > https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
