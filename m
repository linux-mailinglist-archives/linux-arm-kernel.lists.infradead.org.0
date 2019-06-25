Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624CF55838
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 21:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmFdL1l4hqQyloDlxPDid7qVw6YE4XOdcjEuKMYfpOA=; b=pjKKBL8Gh7KZ9q
	YpuKfhFxT/FfLy+yBFa/Ii2Y43ONcHrfVlyTeOsCQkD4YeWfufQPfqkWVMV3A8cqsaDW2pdyGLSGI
	BVmpOt0u7Z74Jf/q446wbZeZnKjMdev9MtSPvS4Y/FtdKZEUkYSZsMN2o0N42QE+VzbSYndPuYACA
	EzeMQGjnYcxf6RKzwCdGeydDcrkPahu45tMyt0baogKMXCTHIoUCH+mxGD9SdAEIrmxewqqz3Egee
	yCxIE9tC+7e1WahOWEIMs8pBep4LsR0D8zKTM6iTCX7bqDUv95mnReeWrXcjt7CbOeXLtCGe8IOwB
	ixZlo6z0Z0vIIe55rNcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrZP-0006ac-Ut; Tue, 25 Jun 2019 19:57:36 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrZ6-0006Zy-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 19:57:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so1718519iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 12:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/iOG/8idvGV2NlEr48d1+co4D3okfF9K+FjhNANBHaU=;
 b=tl8ZAnxTUvbZCoznEzNO+Sdicy4EXyPjmyhiKPTnC27uZfohsr6DZqQfKbhBFxkWzL
 3m3tJzzkoXhH4iWAiFc9XCAJfgYVPd36MBK5WJo0qao/jbwiioWvXVADf+KJq2x4+6Q/
 h39qaJ1YTPymULhg5hTfw7L97GRna9/2gTM2wveDQHWngE6ovxuUB/dYgOY2hH2Lbqjx
 odPvNHlyDkh9cxkvi2wpC/OGrhiTtc1xp7ZGWa3D+vQWppXJyXbiqcAfX35DCvVdCbWQ
 cFPxn7+n4IoVl6gBRsJHa6TsivAkx/dCy+omTFUdXsVPASuOfn7E0XhH9aH0scHE5wJn
 bdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/iOG/8idvGV2NlEr48d1+co4D3okfF9K+FjhNANBHaU=;
 b=SljnK5WQWasSQfaetOxOFSRqUPkXgmIr6vRJ27Afh07lzyqIavZyu/wfmUM+pvwNnZ
 ASATfnTOXJ1rnUFKDE9MdLkfQjIoaJrLIACmNpAUW6dIbuhVKeGTrgKrPC45KLNAS+d3
 Kv/RJVGWfqt5e8XXs6TG+n6BVQ6ifO+pgxAHExT8hk+BRjCr2Ebc9KrW0FfmEkwnimT+
 Z6UoWrBKjdw7Pin4njsP4ZqWnje3J48kZhUToXKk0bE88oA3j7JXtj8esd4QhEX35GfS
 0shBgwE3viAa7tBJuPXxowzSUHxFuv9W6zrXxz40l1WN6uBEjD0sG++aRcQuUnO4cvfw
 ydPA==
X-Gm-Message-State: APjAAAVC9P7OwjtTGOLVQ32DGSIPY9fp6psypWZ8FEEBXOUUifY2RcFX
 2svyztg9HGEToK+zu7Rc7ZogVpmeVNehKPMwolb5oA==
X-Google-Smtp-Source: APXvYqxrvreJvJT5vGrBDNdDC5Sh1oJkWqcYopAwcjvFuFViXljI4yUgpB8+BoCFeuHES/RnGSXygSarGsdgXlviJ8Q=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr487076ioq.50.1561492635672;
 Tue, 25 Jun 2019 12:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618225549.GB24894@xps15> <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
In-Reply-To: <494e131a-0fcf-a4b0-6112-cb5861756004@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 25 Jun 2019 13:57:04 -0600
Message-ID: <CANLsYkwnCMNnMM+H4+iXJv3AJADvW7V09fi+s1nVbYvvOLpuwg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_125716_917642_4762CB32 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 25 Jun 2019 at 04:07, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mathieu,
>
> On 18/06/2019 23:55, Mathieu Poirier wrote:
> > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> >> Some hardware will ignore bit TRCPDCR.PU which is used to signal
> >> to hardware that power should not be removed from the trace unit.
> >> Let's mitigate against this by saving and restoring the trace
> >> unit state when the CPU enters low power states.
> >>
> >> To provide the benefit to both self-hosted and external debuggers
> >> we save/restore the entire state which includes etmv4_config data
> >> and dynamic data such as inflight counter values, sequencer
> >> states, etc.
> >>
> >> To reduce CPU suspend/resume latency the state is only saved or
> >> restored if coresight is in use as determined by the claimset
> >> registers.
> >>
> >> To aid debug of CPU suspend/resume a disable_pm_save parameter
> >> is provided to disable this feature.
> >>
> >> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>
>
> >> +static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> >> +                          void *v)
> >> +{
> >> +    struct etmv4_drvdata *drvdata = container_of(nb,
> >> +                                    struct etmv4_drvdata, nb);
> >> +
> >> +    if (disable_pm_save)
> >> +            return NOTIFY_OK;
> >> +
> >> +    switch (cmd) {
> >> +    case CPU_PM_ENTER:
> >> +            /* save the state if coresight is in use */
> >> +            if (coresight_is_claimed_any(drvdata->base))
> >
> > claimed_any()? At this point if coresight_is_claimed_self_hosted() == false an
> > external agent is competing with the framework and we should abdicate.
>
> I think claimed_any() is correct check. As per PSCI, ARM DEN 0022D, section
> 6.8.1 Debug and Trace save and restore,  the OS software is
> in charge of save/restoring the context of Debug/Trace. The claim tags
> are a mechanism to indicate who is consuming the components. Also, given
> the OS software doesn't have a reliable way to communicate back to the
> the External debugger about its decision to power down the CPU, that
> makes sense to save/restore it.

What I understand from section 6.8.1 is that supervisory and OS power
management SW are responsible to save the debug context when operating
in their respective mode, which reflects my comment above.

I also see that two options are available to an external agent, i.e
either use the DBGNOPWRDWN and DBGPWRUPREQ bits to request powerdown
emulation or use the "OS Unlock Catch" debug event (which probably
relates to the lost of context bit) to restore the debug context.
From where I stand there is no provision for OS power management code
to take care of the debug context of an external agent.  Am I missing
something here?

>
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
