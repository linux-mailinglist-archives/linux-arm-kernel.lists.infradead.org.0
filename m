Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A914D49C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGvIKE3tzfrAXCLTjJ48WPoFgXB6ICKclMhbCuX7RiM=; b=kXqf8ue3xp073h
	4UMI1NBGSM1WloYd27z3HwGIXuSuYMUhD3exGBX9/PxTyrxe9GDkXms+PotSU13sVHDpDzS67ZZxS
	8jQOtcMlDgRBiCSYFmyFeFhkuz4qCy2jfrpheBxlfFdQ6aWaOL1QPqorXCCvWS7/rmIGVWBvuQjfv
	l4fubsFaLvWITHbZNUn4MsE9Xbyi7N0LjRB/xJShvw6nfHXJWEvzkMfbOYozDqlgmSmLa9KJcSrrT
	dfVMi1tJWJkBuwaFPXY8zYWiieXC3bajmHrUkqGBaJxXtqJ4HufXtWb1aOn8iE/1BoJzNjKcw/5K/
	H+p+TSJA42MPzfahKlAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0ap-0003QJ-46; Thu, 20 Jun 2019 17:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0aZ-0003PK-0F
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:11:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEAEC2B;
 Thu, 20 Jun 2019 10:11:05 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB3393F246;
 Thu, 20 Jun 2019 10:11:04 -0700 (PDT)
Date: Thu, 20 Jun 2019 18:11:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620171102.GF25273@e107155-lin>
References: <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
 <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_101107_093162_632B2969 
X-CRM114-Status: GOOD (  13.74  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 06:00:48PM +0100, Suzuki K Poulose wrote:
>
>
> On 20/06/2019 17:54, Andrew Murray wrote:
> > On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> > > On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > > > > On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> ...
>
> > > Then all we have to do is make the ACPI/DT property that indicate the
> > > method used to deal with tracer idling mandatory.  That way people are
> > > conscious of the choice they are making.  To be backward compatible
> > > with current systems we default to the TRCPDCR.PU method but print a
> > > warning message, just like we do for obsolete DT bindings.
> >
> > I'll respin the series based on this approach. I'll also flip the
> > 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> > one to use software save/restore if they wish.
>
> If you are going to add a firmware property, please get a consensus on the
> name here, before respinning to avoid another churn :-). How about one of :
>
> "arm,coresight-etm-looses-state"
> "arm,coresight-etm-needs-save-restore"
>

Just to be more clear, I am fine with just kernel command/module parameter
approach and DT bindings may not be required. If at all it is decided to
take DT approach, then you really don't need command/module parameter IMO.
I will leave that to you and Mathieu, wanted to make sure I am not
contributing to the confusion yet again.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
