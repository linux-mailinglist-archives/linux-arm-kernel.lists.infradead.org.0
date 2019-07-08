Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB3862098
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjzIJFqiLbXT1lKNqABLmFz8iCUQtLEAnEl8Go49+6I=; b=WqpoUXtK5+gdaH
	JmbUIX9Q6Lsx+VyeDJTYyUWaNPVZIqvG0e1jLJv8fblTvpwmOdrs/yRiDF6sqWDQVFyYa8oIWkq5f
	bTBwUnU1T2ffsu1VlQznRSx+s6iJz2hUE6e2ZK7h/D7FsfblAu2WA3pUe9wvupTGYRrMpklHeYEml
	tMGv3G5ihBLimad63gA8oXTkIBL60OXB1/YbTezY0iYIq+W8Gb3GevUXBjeWF89+l/Bw3+vJhVXfS
	u8bTYfzwp8c/7HlsqK9XXI5l4ihnjtXriJifjvg3Yiu25q+MrbmgdeMfIuDmp6ZXwoyD8KvdyBfYQ
	TYHzhBGrgCuGJT6XYWCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUkv-0004qz-5A; Mon, 08 Jul 2019 14:36:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUjW-0003RD-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:35:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A49AA2B;
 Mon,  8 Jul 2019 07:35:07 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257DF3F59C;
 Mon,  8 Jul 2019 07:35:07 -0700 (PDT)
Date: Mon, 8 Jul 2019 15:35:05 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190708143504.GM7227@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <CAJ9a7Vjd9TLOwhiTx5zwuYHV0Mzxo4URpynLTvZtiKXNqk=W0A@mail.gmail.com>
 <20190627145538.GF34530@e119886-lin.cambridge.arm.com>
 <cbfae9bb-36ed-a2fc-09dc-8d1a7ad2d62a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbfae9bb-36ed-a2fc-09dc-8d1a7ad2d62a@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073510_569623_D83A8A57 
X-CRM114-Status: GOOD (  30.52  )
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 05:01:28PM +0100, Suzuki K Poulose wrote:
> On 06/27/2019 03:55 PM, Andrew Murray wrote:
> > On Thu, Jun 27, 2019 at 03:25:44PM +0100, Mike Leach wrote:
> > > Hi Andrew,
> > > 
> > > On Thu, 27 Jun 2019 at 09:35, Andrew Murray <andrew.murray@arm.com> wrote:
> > > > 
> > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > to hardware that power should not be removed from the trace unit.
> > > > Let's mitigate against this by conditionally saving and restoring
> > > > the trace unit state when the CPU enters low power states.
> > > > 
> > > > This patchset introduces a firmware property named
> > > > 'arm,coresight-needs-save-restore' - when this is present the
> > > > hardware state will be conditionally saved and restored.
> > > > 
> > > > A module parameter 'pm_save_enable' is also introduced which can
> > > > be configured to override the firmware property. This can be set
> > > > to never allow save/restore, to conditionally allow it, or to
> > > > do as the firmware indicates (default).
> > > > 
> > > > The hardware state is only ever saved and restored when the claim
> > > > tags indicate that coresight is in use.
> > > > 
> > > > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> 
> ...
> 
> > > > +       state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR0);
> > > > +       state->trcvmidcctlr0 = readl(drvdata->base + TRCVMIDCCTLR1);
> > > > +
> > > > +       state->trcclaimset = readl(drvdata->base + TRCCLAIMCLR);
> > > > +
> > > > +       /* wait for TRCSTATR.IDLE to go up */
> > > > +       if (coresight_timeout(drvdata->base, TRCSTATR, TRCSTATR_IDLE_BIT, 1)) {
> > > > +               dev_err(etm_dev,
> > > > +                       "timeout while waiting for Idle Trace Status\n");
> > > > +               etm4_os_unlock(drvdata);
> > > > +               ret = -EBUSY;
> > > > +               goto out;
> > > > +       }
> > > > +
> > > > +       drvdata->state_needs_restore = true;
> > > > +
> > > > +       /* power can be removed from the trace unit now */
> > > > +       control = readl_relaxed(drvdata->base + TRCPDCR);
> > > > +       control &= ~TRCPDCR_PU;
> > > > +       writel_relaxed(control, drvdata->base + TRCPDCR);
> > > > +
> > > 
> > > Do we need to manipulate PU here? The premise of this set is PU is ignored.
> > > That said, there might be a scenario where PU is honoured but we are
> > > forcing this anyway, in which case, why is PU not manipulated in the
> > > _restore() function?
> > 
> > I don't think this should be here. The TRM doesn't suggest this so I'm not
> > sure how I ended up with this.
> > 
> > As you suggest, if we are using this save/restore code then we really don't
> > care if the unit remains powered or not.
> 
> I personally think keeping the code is a good idea. Its just 1 read and
> 1 write. If it serves to reduce the power consumption on "compliant"
> systems (where this option could be passed on by default), then why not
> ?

OK, in that case I'll also take Mike's suggestion to set the PU bit on
restore. There is only a single use-case where this is useful - this is
where a user, at run-time, switches off saving/restoring on a system that
respects the PU bit (following on from a wake-up where we restore the state).
On the next CPU power down the PU bit will be respected and the associated
power domain kept up.

Thanks,

Andrew Murray

> 
> 
> > 
> > I'll remove this.
> > 
> 
> As I said above, I am in favor of keeping this.
> 
> > > > +       u64     trcacvr[ETM_MAX_SINGLE_ADDR_CMP];
> > > > +       u64     trcacatr[ETM_MAX_SINGLE_ADDR_CMP];
> > > > +       u64     trcdvcvr[ETM_MAX_DATA_VAL_CMP];
> > > > +       u64     trcdvcmr[ETM_MAX_DATA_VAL_CMP];
> > > 
> > > These two sets of DATA registers - never used in the main code. Either
> > > use them or lose them.
> > > I recommend that we lose them - data trace is architecturally
> > > prohibited for A class cores in ETMv4.
> > 
> > The trcdvcvr and trcdvcmr registers are here because the TRM (ARM IHI 0064D,
> > section 3.4.3 "Guidelines for trace unit registers to be saved and restored")
> > lists these are registers that must be saved.
> > 
> > I'm happy to drop them, however can you point me in the direction of some
> > documentation that specifies this? I'll add a comment.
> 
> Section  "1.3.4 Possible functional configurations of an ETMv4 trace unit"
> 
> "Table 1-2 A summary of the features of an ETMv4 trace unit"
> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
