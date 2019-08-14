Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5958D035
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXfhSXC491m2/f/oDRkfOuSt7GD1HoWPsaAEVa/LTcU=; b=hgPrJ617l/K9WQ
	LhDDgy2rN404Zl1YYPk6NxuDjdyQjC+8/EuXPFv9xBIklTJ5TrMfdzTKhsombyq1ESi99maR/lDzu
	7pCPUgP/ajc/Jlp7SRRTxfLrX+l1B+T1N3K+TmACOx/gHalKlmlLjyXqfXOGDzWWmtceXQ3jU7uoE
	Rtg/T8527UfGno3caK+VJgVWSV6AJnUiRuZBztF0gxJqpbtvZk2RjXyCzl2PFMGzX94vOJSIfqOTr
	xORKyssybmToyIeN1XJ23B8+Eh70VEDFei3mAmvUM6cd3UqWDZw/prcuO2rr2Bsk54ge1D+GcNkY9
	6uEKZh2l1n48IN1qkrwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxq79-0001dE-P9; Wed, 14 Aug 2019 10:02:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxq6O-0001cp-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:01:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 992A2344;
 Wed, 14 Aug 2019 03:01:55 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1690F3F694;
 Wed, 14 Aug 2019 03:01:54 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:01:53 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
Message-ID: <20190814100152.GB43882@e119886-lin.cambridge.arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
 <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
 <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030156_355993_DC7CDF8A 
X-CRM114-Status: GOOD (  30.72  )
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 04, 2019 at 07:13:45AM -0600, Mathieu Poirier wrote:
> On Fri, 2 Aug 2019 at 08:37, Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
> > > Hi Andrew,
> > >
> > > On 30/07/2019 13:51, Andrew Murray wrote:
> > > > Some coresight components, because of choices made during hardware
> > > > integration, require their state to be saved and restored across CPU low
> > > > power states.
> > > >
> > > > The software has no reliable method of detecting when save/restore is
> > > > required thus let's add a binding to inform the kernel.
> > > >
> > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > > > ---
> > > >   Documentation/devicetree/bindings/arm/coresight.txt | 3 +++
> > > >   1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > > > index fcc3bacfd8bc..7cbdb7893af8 100644
> > > > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > > > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > > > @@ -92,6 +92,9 @@ its hardware characteristcs.
> > > >     * arm,cp14: must be present if the system accesses ETM/PTM management
> > > >       registers via co-processor 14.
> > > > +   * arm,coresight-needs-save-restore: boolean. Indicates that software
> > > > +     should save/restore state across power down.
> > > > +
> > >
> > > Do you think we could be a bit more descriptive here about when people could add
> > > it to the DT ? Here we don't mention when someone should use this property and
> > > it may be added to platforms where it may be absolutely unnecessary. How about :
> > >
> > > "Indicates that the hardware implementation may not honor the Powerup request
> > > from the software and thus might loose the register context on CPU power
> > > down (e.g, during CPUIdle). Software must save/restore the context during a
> > > CPU power transition cycle."
> >
> > How about the following:
> >
> > "Indicates that the hardware will loose register context on CPU power down (e.g.
> > CPUIdle), despite the TRCPDCR.PU bit being set."
> >
> > I'm keen to avoid making suggestions about what the kernel will do when it sees
> > this flag and thus prefer to focus on describing what the hardware does. So I
> > dropped your last sentence. However the name of the flag still implies policy
> > which I don't like.
> >
> > I also changed the 'may not honor' wording, I'm not sure if this is really the
> > case or if the spec is open to interpretation.
> >
> > It would great for this wording to also apply to other CS components though I
> > haven't investigated if these have a PU bit or something different.
> 
> Exactly - the definition needs to be broad enough to apply to other CS
> components.  Mike what do you think would be appropriate for CTIs?

How about we keep this short and simple:

* arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
  will lose register context on CPU power down (e.g. CPUIdle).

I could have added something like "... despite TRCPDCR.PU being set", or to
apply more generically: "... despite available register controls being set to
prevent such context loss". However whilst these are more informative - they
elude to some of reasons as to why context is lost and as we cannot be
exhaustive I'd rather not give a limited example.

However if a longer explaination is required:

* arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
  will lose register context on CPU power down (e.g. CPUIdle). An example of
  where this may be needed are systems which contain a coresight component and
  CPU in the same power domain. When the CPU powers down the coresight
  component also powers down and loses its context.

Any objections/preference? :)

Thanks,

Andrew Murray

> 
> >
> > Thanks,
> >
> > Andrew Murray
> >
> > >
> > > Cheers
> > > Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
