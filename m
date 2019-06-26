Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C3C56693
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vNSugS89k6Nw1yVr4TH6r6hiaLvOEfWD+FzRAkzVNY=; b=SvwgtXmVq9uDsE
	ffCjSVtKySl6LLiaqQZhXKt2LyjKU7I59wN8s1o0f2tofa0W1fiCvOtoUC0JY0Z1N0ScmBR+f7KVU
	ZZMfJwV/cVDX6+hfy+EfDCUfTKb2havhSEmbxWMuvR0N2BIBL0VPzk75QvOVXQQ/MT/M5cVx7iJSF
	W18wKLWoymteOfWzxxfCOcxEQj3PD3sWgbjlB+hI7pcGymwlaq4hB7cqdiUMUvI1mcrGQFNH8MxRw
	YWXHbvUAet7+YMUbxmzs8COXsA7T2eO9+4lE6yveBZr8EHYw1aabnSbxId31ErIC0YA7eoQuhVBiW
	bV0masnAkdI6pST24uhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg543-0003i3-PA; Wed, 26 Jun 2019 10:22:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg53k-0003fK-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:21:50 +0000
Received: by mail-qt1-x844.google.com with SMTP id w17so1704456qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9zN3KPB1EE+ooOPoQLwdz8K8UYbtwZPUPJZxmLXvCMk=;
 b=F1tw/AdXo+K6TKjCnu1pThgpLW9eGCZ14UB9xwm5XzZhNdF+8rFdD3PN5eqrXw8L9W
 A5xmQA9c1wkx7CvPhQc3XPfifbATjiKyO8K6sAZ5DOjdEtmmJ9UiPPPGjAf6WCqA7CpY
 lpaU02HN7iHu2c6t+rQvk+YcdeB1a5nUaiUQr9uZ2ZQP0G6LRLQR42ZakGeGW3pFwVsn
 F89kA+ViYflZu40GwjjxFFMJTCv+qtDEXa6N6jjIC79cbIpb3QveF9S+ofBMYL1mZZkm
 zDh/2R35vdq5QyuEh6KIASuU15E/+U06CF4PDWvJBsXx86hPsImUDn8eZXKV9PcSn4ww
 j2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9zN3KPB1EE+ooOPoQLwdz8K8UYbtwZPUPJZxmLXvCMk=;
 b=biRDf1aXL/M61SHNs2x+y2gCntZAmfyclFEee1gcpdomsqEECue8ExB9aSYsF45wTO
 BCjHCXIsduQB4w0nCgM4TyZ0UYsfY8f6dxLB9OM2gUHo2lF2Y/neAGKkXh6nZiHOrSdF
 8az0pyiYGLEPrLjl15EpXkT10C5C7gBZpBQHq/aMTnUKiN4RZ1pEI0y18gDXdiTh2tM8
 4BxhGLx6Vb8/UOVEn/ji7ZYIE1B+vWXbsTnqYQa/YxHLtRXufYfTIyNgIYga838mK4bV
 I/IsyQy65e4wropRFgQktJULHZFx8QtJOIDK6wB1iX6jtAa41PRwl7jlw/BwEE5OR5OH
 iz9Q==
X-Gm-Message-State: APjAAAU/0OkrMDJnPIJJS+78KwlwekRdHWIE0KiJTScGtwkSg52NF6+e
 OUoGHOmEHiyIYbeS0Z76blMBFi9RVHGeIAzISagXhg==
X-Google-Smtp-Source: APXvYqxU2ga6L7D1HKOr1UtHhuSDivTpB/YVtYYMMS/Aa0d2bS99KNi5TQFpQuchtotwxpicy3hcASRle7zQYijKfVQ=
X-Received: by 2002:a0c:add1:: with SMTP id x17mr2781076qvc.81.1561544506617; 
 Wed, 26 Jun 2019 03:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618225549.GB24894@xps15> <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
 <CANLsYkwnCMNnMM+H4+iXJv3AJADvW7V09fi+s1nVbYvvOLpuwg@mail.gmail.com>
In-Reply-To: <CANLsYkwnCMNnMM+H4+iXJv3AJADvW7V09fi+s1nVbYvvOLpuwg@mail.gmail.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 26 Jun 2019 11:21:35 +0100
Message-ID: <CAJ9a7VjaXqx2moWB8JGyfHxzPEdvpuKcDXwobER9PN2GdrgfQA@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_032148_653683_9B310BFB 
X-CRM114-Status: GOOD (  27.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Sorry, a bit late on this set as it didn't appear in the Coresight
mailing list as expected per suzukis suggestion.

On Tue, 25 Jun 2019 at 20:57, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Hi,
>
> On Tue, 25 Jun 2019 at 04:07, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> >
> > Hi Mathieu,
> >
> > On 18/06/2019 23:55, Mathieu Poirier wrote:
> > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > >> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > >> to hardware that power should not be removed from the trace unit.
> > >> Let's mitigate against this by saving and restoring the trace
> > >> unit state when the CPU enters low power states.
> > >>
> > >> To provide the benefit to both self-hosted and external debuggers
> > >> we save/restore the entire state which includes etmv4_config data
> > >> and dynamic data such as inflight counter values, sequencer
> > >> states, etc.
> > >>
> > >> To reduce CPU suspend/resume latency the state is only saved or
> > >> restored if coresight is in use as determined by the claimset
> > >> registers.
> > >>
> > >> To aid debug of CPU suspend/resume a disable_pm_save parameter
> > >> is provided to disable this feature.
> > >>
> > >> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> >
> >
> > >> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > >> +                          void *v)
> > >> +{
> > >> +    struct etmv4_drvdata *drvdata = container_of(nb,
> > >> +                                    struct etmv4_drvdata, nb);
> > >> +
> > >> +    if (disable_pm_save)
> > >> +            return NOTIFY_OK;
> > >> +
> > >> +    switch (cmd) {
> > >> +    case CPU_PM_ENTER:
> > >> +            /* save the state if coresight is in use */
> > >> +            if (coresight_is_claimed_any(drvdata->base))
> > >
> > > claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> > > external agent is competing with the framework and we should abdicate.
> >
> > I think claimed_any() is correct check. As per PSCI, ARM DEN 0022D, section
> > 6.8.1 Debug and Trace save and restore,  the OS software is
> > in charge of save/restoring the context of Debug/Trace. The claim tags
> > are a mechanism to indicate who is consuming the components. Also, given
> > the OS software doesn't have a reliable way to communicate back to the
> > the External debugger about its decision to power down the CPU, that
> > makes sense to save/restore it.
>
> What I understand from section 6.8.1 is that supervisory and OS power
> management SW are responsible to save the debug context when operating
> in their respective mode, which reflects my comment above.
>
> I also see that two options are available to an external agent, i.e
> either use the DBGNOPWRDWN and DBGPWRUPREQ bits to request powerdown
> emulation or use the "OS Unlock Catch" debug event (which probably
> relates to the lost of context bit) to restore the debug context.
> From where I stand there is no provision for OS power management code
> to take care of the debug context of an external agent.  Am I missing
> something here?
>

OS lock is precisely the provision designed for an OS to handle
save/restore on behalf of an external debug agent. OS lock blocks the
external debugger from accessing the coresight when it is powered but
being updated by the OS

A scenario may be:-
a) external debug halts core(s) & programs Coresight subsystem -
likely extracting trace via TPIU.
b) external debug agent restarts cores - linux (continues) running /
booting - collecting the trace we want.
c) Some event happens and the external debug agent regains control.
(breakpoint / halt request).

During b) cores may be powering up and down. When this happens we need
the state to be saved and restored so that trace continues. (assuming
that the various debug power requests above are either not supported
in the fw/hardware or not asserted by the external agent).
The external debug agent cannot safely manipulate coresight during
this period - it can never know if a register is going to be available
- a classic race condition.

Irrespective of whoever "owns" the ETM programming - if the CPUidle
notification is required due to implementation issues, then in both
cases the save and restore is required.

For the external agent owner I agree that everything needs to be saved
 - but for self hosted, just the dynamic values should be read back,
much of the remainder of the information is already held in the driver
in etmv4_config. This should help reduce at least the power down
latency.




Regards

Mike


> >
> > Cheers
> > Suzuki
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
