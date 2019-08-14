Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE7B8D5D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqBBq4rLdLv5UG+SX5plfKbTRGqLE6Okw6R2tUo8KEs=; b=DJXfRv1hxvSp3e
	AhbvWOvhdmlK0GypRXE+KVxRgTr3W9D5e0woOPLhmv0E380p5AysyLIA2+EHBEFTREans0QE4nZ88
	aYsWKblAoeuK0gEVa7Ob5V46cnxdHiL0LDtSw4KmqKtGXnKE9saDyTQkaUpsoNY/Tap/dH3Vx/r/B
	DU+h4vZ1+v2yCk7EGtNLtHj9dL3evztE3ow7tkuV7gZ4ibrA8JBjYWn598WEkZdvaZbZF2m4if4kt
	bt0PuVxHQwRW0B+OpwtPjKZTlb2iGJlJDfn3uhL7C2V7vz5PwZJJ2UVq0OcaFEft3ITeOeWOrwrEN
	o5b4T1WuA+9MJ6R3cYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxu93-0007kw-Qk; Wed, 14 Aug 2019 14:20:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxu8o-0007ka-9a
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:20:47 +0000
Received: by mail-qt1-x843.google.com with SMTP id i4so1798590qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WBo/HAvgLVR+GuvcFL8AWtBEXFxc73hq5wxQvMS0iWE=;
 b=o4NX1cbFwDRO/wW30mOBpfdaHXM48xAs9xDhQzeGC872DrQNUo0TydPWnYYZT0sNeg
 AaHSVBN6ZKMph6g6VDMu4Rhkm+VWCxYUPW0teMnbWR0E8zXYAHz7LBlJL6Ug1+oO9z/R
 Q+YXCc9n7UafUB9nJntiLWU1vUWRrQa7UB/ah4Iv8Q8QNCv1k+o7mgKL0kEuBBO8Ph+F
 kR6Q53NCrqfBi2SxKzoqOMTM/wBIh/qXNVVT+8B4BoIgUOSqVmpMUPRlcuKBkrsNLQIN
 rjIW1Rta9VQPX/swFKnlX+oiN/QKfPb0bT1fSmwYiBVzTux0DztYG19IQDXlCkeOtNEQ
 cLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WBo/HAvgLVR+GuvcFL8AWtBEXFxc73hq5wxQvMS0iWE=;
 b=lFLKkyjvulobezDvjSqlGjoAXppgkjhD7q6AqgpW0ez1pbF3iLEBWeBBD+APxeiOZq
 IlUYaMUAQm+FD7ra9NuBo6t8prm1pzyod8qAh2oCzXvQEYgEKd9f8ZKZqVjJfCUXj8mB
 cUQomZIWHkI4OO4HxPxe0kSm2g/lKoZ5zVn2+lUzjW6PbLDI7mikdFJN/RtHdOMXgEvF
 YWtK5WHlyO+WvwbdY90L7eR5J7JwhKUQQaQ/X9SAVZWjT69d0gdVXOEoPqAeVjjDuZty
 MVCSWtydz8Ij6o5VWSGWlsziavUNiNhwhdn7GzxEuXMY2loJ3gd1HVPe7GiVvBico/1D
 +8uA==
X-Gm-Message-State: APjAAAXjvV2E7E8/FMYDhQ6zu5reVX6M7dXj+w73B0g4GoIJzYKycYDA
 5oJjQIpeBMWQmWwRsFxntkRO+eAfTkxymhUfnxgSKtjt
X-Google-Smtp-Source: APXvYqx3w/U13E2Bzz04tJn8vVTFDiPURbjJ8ktSKZxkIe8a+7h3Zp1peVQV3tj2aSOaui750oKinobpFd8BZJIpsdI=
X-Received: by 2002:ac8:4794:: with SMTP id k20mr30925344qtq.2.1565792437862; 
 Wed, 14 Aug 2019 07:20:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
 <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
 <CANLsYkyVMRh_L5BfwWk=s-obh+xiZfjwqXUJkwgaZYWmc6Kuww@mail.gmail.com>
 <20190814100152.GB43882@e119886-lin.cambridge.arm.com>
 <CAJ9a7Vj+bo2PMnh2fbMJnaHRwJm9jU689P+iZ4q8_Vg7-3SnDg@mail.gmail.com>
 <718b5bdf-9828-f215-9a81-637308be3b49@arm.com>
In-Reply-To: <718b5bdf-9828-f215-9a81-637308be3b49@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 14 Aug 2019 15:20:27 +0100
Message-ID: <CAJ9a7ViVAsYnCyr4unE3OjGwxLSfnbcpAHUQ+FNSg7BEMdMxgg@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072045_862777_CBDDF649 
X-CRM114-Status: GOOD (  36.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Al Grant <Al.Grant@arm.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, 14 Aug 2019 at 13:35, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mike,
>
> On 14/08/2019 12:06, Mike Leach wrote:
> > Hi,
> >
> > On Wed, 14 Aug 2019 at 11:01, Andrew Murray <andrew.murray@arm.com> wrote:
> >>
> >> On Sun, Aug 04, 2019 at 07:13:45AM -0600, Mathieu Poirier wrote:
> >>> On Fri, 2 Aug 2019 at 08:37, Andrew Murray <andrew.murray@arm.com> wrote:
> >>>>
> >>>> On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
> >>>>> Hi Andrew,
> >>>>>
> >>>>> On 30/07/2019 13:51, Andrew Murray wrote:
> >>>>>> Some coresight components, because of choices made during hardware
> >>>>>> integration, require their state to be saved and restored across CPU low
> >>>>>> power states.
>
> ...
>
> >>>>>> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> >>>>>> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> >>>>>> @@ -92,6 +92,9 @@ its hardware characteristcs.
> >>>>>>      * arm,cp14: must be present if the system accesses ETM/PTM management
> >>>>>>        registers via co-processor 14.
> >>>>>> +   * arm,coresight-needs-save-restore: boolean. Indicates that software
> >>>>>> +     should save/restore state across power down.
> >>>>>> +
> >>>>>
> >>>>> Do you think we could be a bit more descriptive here about when people could add
> >>>>> it to the DT ? Here we don't mention when someone should use this property and
> >>>>> it may be added to platforms where it may be absolutely unnecessary. How about :
> >>>>>
> >>>>> "Indicates that the hardware implementation may not honor the Powerup request
> >>>>> from the software and thus might loose the register context on CPU power
> >>>>> down (e.g, during CPUIdle). Software must save/restore the context during a
> >>>>> CPU power transition cycle."
> >>>>
> >>>> How about the following:
> >>>>
> >>>> "Indicates that the hardware will loose register context on CPU power down (e.g.
> >>>> CPUIdle), despite the TRCPDCR.PU bit being set."
> >>>>
> >>>> I'm keen to avoid making suggestions about what the kernel will do when it sees
> >>>> this flag and thus prefer to focus on describing what the hardware does. So I
> >>>> dropped your last sentence. However the name of the flag still implies policy
> >>>> which I don't like.
> >>>>
> >>>> I also changed the 'may not honor' wording, I'm not sure if this is really the
> >>>> case or if the spec is open to interpretation.
> >>>>
> >>>> It would great for this wording to also apply to other CS components though I
> >>>> haven't investigated if these have a PU bit or something different.
> >>>
> >>> Exactly - the definition needs to be broad enough to apply to other CS
> >>> components.  Mike what do you think would be appropriate for CTIs?
> >>
> > CTIs have no power control at all - i.e. no PU bit to request we stay
> > up - and reside in the debug power domain. So they are coupled to the
> > CS/CPU/ETM/ power domains and reliant on outside forces to request
> > power.
> > The expectation is that for a PE bound CTI, if debug is powered then
> > it will be fully powered - so an ETM with PU respected, or the
> > external debug logic with DBGNOPWRDWN respected should be sufficient
> > for CTI to stay alive.
>
> I am trying to understand why we need this property for CTI.
> Don't we always need to save-restore the CTI controls on a CPU_DOWN for the
> associated CTI ? Since it may not be really tied to an ETM (e.g, if the CTI is
> purely used to handle CPU triggers, PMU etc,). If that is the case, do we need
> this property for CTI at all ?
>

CTI will be in use for one of two reasons:-
1) External Debug - in which case the DBGNOPOWERDOWN bit should be set
and the debug domain remains powered.
2) Trace (self hosted or external) - so we have an ETM and PU is set
and the debug power domain remains powered.

In these ideal cases we never need to save and restore as the debug
power domain remains powered.

Now in this phase of development we are disregarding external debug
and trace. So we are only in self hosted trace mode - which is
probably the most common use case for a linux system.

Therefore the CTI will only be in use if there is an ETM tracing self
hosted. If PU is not working and the parameter is set then we know we
need to hook  CPUIdle notifications and save and restore (thought in
the case of CTI it is really restore only for self hosted as there are
no dynamic registers.). If we are not saving and restoring then we do
not need to register for CPUIdle notifiers (which like hotplug need to
be centralised, not re-implemented in each and every driver), saving
some latency.

The architecture specifically precludes using the CTI PMU trigger to
the generic CTI PE interrupt - so the PMU overflow trigger will only
ever be used to activate some debug event (e.g. debug halt, trace halt
etc).

Regards

Mike

> >
> >> How about we keep this short and simple:
> >>
> >> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
>
> nit: s/loses/looses ?
>
> >>    will lose register context on CPU power down (e.g. CPUIdle).
> >>
> >
> > So the above name is generic enough to encompass the CTI as well.
> >
> >> I could have added something like "... despite TRCPDCR.PU being set", or to
> >> apply more generically: "... despite available register controls being set to
> >> prevent such context loss". However whilst these are more informative - they
> >> elude to some of reasons as to why context is lost and as we cannot be
> >> exhaustive I'd rather not give a limited example.
> >>
> >> However if a longer explaination is required:
> >>
> >> * arm,coresight-loses-context-with-cpu : boolean. Indicates that the hardware
> >>    will lose register context on CPU power down (e.g. CPUIdle). An example of
> >>    where this may be needed are systems which contain a coresight component and
> >>    CPU in the same power domain. When the CPU powers down the coresight
> >>    component also powers down and loses its context.
>
> This looks fine for me. But I am trying to understand the rationale behind
> using this for CTI
>
> Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
