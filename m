Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B364A1E46DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cgb2DCmQcO6xbcJYh0EkjEZvoaWMahT3Ue2SJGgj5C0=; b=eAxaV/prPwL6n2
	/FO78qH5K3vLOlEnW7pkOjoM2Oo8S7+aQngMY+JbfqGoPiJ9116NfAPq/rfwfGwcFMZ+0RpY4+yd6
	H8rHmvxMfenzbgI5OxXQRQbZPtAkWU0qkMNoBF4BYO0WLBAgaQERFHCU7SHZUnupy434DH+I7nCB0
	4SI8/yuZvu0PNWPUzSLpCVkRz+wPrjYe0Nq8MtQqNP6wSvsNLvxT8JEZPoMSF4oDprvffd33buMkP
	ngs9dMJdsXAyMwARfSk8qBX9/AaxPnRS/NqE7Hgz/d0W2Br6NE/l6NMlJnSRYUUWv7xa3FZR0aQk9
	bIpraTwJ4L5yFQ4oNgVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxbK-0008Iy-4x; Wed, 27 May 2020 15:04:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxb9-0008HW-5H
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:04:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5650D30E;
 Wed, 27 May 2020 08:04:02 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F37C13F52E;
 Wed, 27 May 2020 08:03:59 -0700 (PDT)
Date: Wed, 27 May 2020 16:03:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200527150357.GB59947@C02TD0UTHF1T.local>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
 <20200526195419.GB2206@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526195419.GB2206@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_080403_241650_8FC191D9 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, zhe.he@windriver.com,
 bruce.ashfield@gmail.com, yue.tao@windriver.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, paul.gortmaker@windriver.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 08:54:19PM +0100, Will Deacon wrote:
> On Tue, May 26, 2020 at 11:26:11AM +0100, Mark Rutland wrote:
> > On Mon, May 11, 2020 at 10:52:07AM +0800, Jiping Ma wrote:
> > > Modified the patch subject and the change description.
> > > 
> > > PC value is get from regs[15] in REGS_ABI_32 mode, but correct PC
> > > is regs->pc(regs[PERF_REG_ARM64_PC]) in arm64 kernel, which caused
> > > that perf can not parser the backtrace of app with dwarf mode in the 
> > > 32bit system and 64bit kernel.
> > > 
> > > Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> > 
> > Thanks for this.
> > 
> > 
> > > ---
> > >  arch/arm64/kernel/perf_regs.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> > > index 0bbac61..0ef2880 100644
> > > --- a/arch/arm64/kernel/perf_regs.c
> > > +++ b/arch/arm64/kernel/perf_regs.c
> > > @@ -32,6 +32,10 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
> > >  	if ((u32)idx == PERF_REG_ARM64_PC)
> > >  		return regs->pc;
> > >  
> > > +	if (perf_reg_abi(current) == PERF_SAMPLE_REGS_ABI_32
> > > +		&& idx == 15)
> > > +		return regs->pc;
> > 
> > I think there are some more issues here, and we may need a more
> > substantial rework. For a compat thread, we always expose
> > PERF_SAMPLE_REGS_ABI_32 via per_reg_abi(), but for some reason
> > perf_reg_value() also munges the compat SP/LR into their ARM64
> > equivalents, which don't exist in the 32-bit sample ABI. We also don't
> > zero the regs that don't exist in 32-bit (including the aliasing PC).
> 
> I think this was for the case where you have a 64-bit perf profiling a
> 32-bit task, and it was passing the registers off to libunwind. Won't that
> break if we follow your suggestion?

Oh yuck; have we messed up the ABI here, or have I misunderstood?

Is arm64's PERF_SAMPLE_REGS_ABI_32 supposed to be the same as the 32-bit
arm's PERF_SAMPLE_REGS_ABI_32?

If yes, and the differences are being relied upon by 64-bit consumers,
that's a nasty ABI issue we've introduced for compat tasks, and I don't
think this patch alone is quite right.

If no, then I don't see that any change is necessary, as we already
expose the information, and it's a userspace bug to expect the PC in a
place where the kernel has never exposed it.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
