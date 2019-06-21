Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589E34E4BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl00HY3IvBsFxk1wicEvMckgbwRwLmqi//8h/ed2WwI=; b=rRGkj/xo1kQNUB
	eapBt9DeOAW92xgSL9lgNBdtTF2/V7GZGxTubyZsrjaoVkeHNezBUxhdBnnDowJpZRsO1DT5ot87b
	5KwZ/JwQmFE5AB5uJxjb+XD2wOgDsz7ZanCoIXwQ20tpFH3IcF45RTcP4FNPoBfjkwHBSSB7fthH8
	ZwTmXEr5lMnIbn9v1beV0bEN2naic0Z2zuidgFXaMxxhBQUqRmZC1fW0NSybGSNM6bshBvh3OeOPD
	VD2t3pwzupBjKjCSHYIKoQeHdWV4egYfpmCcltErlYvFn7llgrJ6vBjoQGaltNNWUqfaVWwQW6LBb
	7Ruw5/4UVbQqSMPGLO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGEd-0003iG-Mw; Fri, 21 Jun 2019 09:53:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFrk-0006Ga-Jr
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:29:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3604A142F;
 Fri, 21 Jun 2019 02:29:51 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB3DB3F246;
 Fri, 21 Jun 2019 02:29:50 -0700 (PDT)
Date: Fri, 21 Jun 2019 10:29:49 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190621092948.GJ20984@e119886-lin.cambridge.arm.com>
References: <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
 <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
 <CANLsYkzdyMczBHfRJtVxR90kMCJW-aHVEFZ0EVUN657g0PV=Rg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkzdyMczBHfRJtVxR90kMCJW-aHVEFZ0EVUN657g0PV=Rg@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_022953_003704_67C5FA34 
X-CRM114-Status: GOOD (  14.65  )
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
 Sudeep Holla <Sudeep.Holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 11:10:26AM -0600, Mathieu Poirier wrote:
> On Thu, 20 Jun 2019 at 11:00, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> >
> >
> >
> > On 20/06/2019 17:54, Andrew Murray wrote:
> > > On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> > >> On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >>>
> > >>> On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > >>>> On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > ...
> >
> > >> Then all we have to do is make the ACPI/DT property that indicate the
> > >> method used to deal with tracer idling mandatory.  That way people are
> > >> conscious of the choice they are making.  To be backward compatible
> > >> with current systems we default to the TRCPDCR.PU method but print a
> > >> warning message, just like we do for obsolete DT bindings.
> > >
> > > I'll respin the series based on this approach. I'll also flip the
> > > 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> > > one to use software save/restore if they wish.
> >
> > If you are going to add a firmware property, please get a consensus on the
> > name here, before respinning to avoid another churn :-). How about one of :
> >
> > "arm,coresight-etm-looses-state"
> > "arm,coresight-etm-needs-save-restore"
> 
> "arm,coresight-needs-save-restore"
> 
> That way we can also use it for CTI.

I have no objections with "arm,coresight-needs-save-restore", however in
trying to come up with a name that describes the hardware rather than
something software needs to do, I came up with:

 "arm,coresight-broken-pu"
 "arm,coresight-no-pu"
 "arm,coresight-pu-ignored"

Are any of these prefered?

Thanks,

Andrew Murray

> 
> >
> > or something better long the line.
> >
> > Cheers
> > Suzuki
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
