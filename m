Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD452C6CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OO/L/ZmCPP1Riy0vAMpOod5/HwaPac1Ek7PV2US/caA=; b=DW4wf9RIM421O3
	rx3n5ZG45Naa4LIjIdulD3wxb8K3BO06TcPUJv8inkZozUr3qYXksXj1HNzYOfHTX7UEme1mluxxd
	45W/aD7doty0zZRMqbTyGfkxtfyjUNe1+9JB3PKwmWDDZ+ZfKv9NN6gokDoko5hf25cUmh/mWIjPZ
	6sh1tIhJ0qRQu33sUUtY3i8Rg3pB7NfyBDJGG09yIx6ptKY7MppcrgdjKK884jPc4Syqw5WLY7sg7
	FFWa+hMFFDHW4w6DG7VeAymPrH0z0vaOCAeEvgsoQfzaGlv76lO8/PbcYB9QMzHumVIQnetR46R8J
	m/V7BydjDRxq5kcWagAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbQy-0007qn-F9; Tue, 28 May 2019 12:42:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbQp-0007qK-Qm
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2vArhK5ONSzG4f61utNPX6iuQEVIA/xkviTlXVlEb4=; b=HPRJ9AXdPxXH93KtZWMlngs4d
 oLca7XsLgMK+6r6FdA4ZxY5y/aTFakuSI1ts6DG7/vtK92LYzhXJvGTVO1RTDATctncupVy4biIGM
 c14v4cUXQ9R9xaGfMz+wXoROvs7/teJ1apRU5hP1s+MEKHvIMeNVduA7NPxAlFKijYKStRXmdRUaB
 HycwgL/lBtOVl4LbgU7XZx0Kwp/EDpL0I5l+TXVTmZz85KEH+rDWSJTfWxOr+4hX19oY0ABEq0P54
 XthKetauAq/9eWp9+emsOoOJ0Q8T2I03rK3gXz4jkv7PpgO8rwQeZ6OGYOHz8pYbzhnd70glyCVbU
 n/lH3o41A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56030)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hVbQS-0005lo-AK; Tue, 28 May 2019 13:41:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hVbQO-0003cr-Ip; Tue, 28 May 2019 13:41:52 +0100
Date: Tue, 28 May 2019 13:41:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Young Xiao <92siuyang@gmail.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190528124152.z76z7ar62hklz7tk@shell.armlinux.org.uk>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054220_028519_16EC969D 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, peterz@infradead.org, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> When a kthread calls call_usermodehelper() the steps are:
>   1. allocate current->mm
>   2. load_elf_binary()
>   3. populate current->thread.regs
> 
> While doing this, interrupts are not disabled. If there is a perf
> interrupt in the middle of this process (i.e. step 1 has completed
> but not yet reached to step 3) and if perf tries to read userspace
> regs, kernel oops.
> 
> Fix it by setting abi to PERF_SAMPLE_REGS_ABI_NONE when userspace
> pt_regs are not set.
> 
> See commit bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs
> user process") for details.
> 
> Signed-off-by: Young Xiao <92siuyang@gmail.com>
> ---
>  arch/arm/kernel/perf_regs.c   | 3 ++-
>  arch/arm64/kernel/perf_regs.c | 3 ++-
>  arch/x86/kernel/perf_regs.c   | 3 ++-
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/kernel/perf_regs.c b/arch/arm/kernel/perf_regs.c
> index 05fe92a..78ee29a 100644
> --- a/arch/arm/kernel/perf_regs.c
> +++ b/arch/arm/kernel/perf_regs.c
> @@ -36,5 +36,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
>  			struct pt_regs *regs_user_copy)
>  {
>  	regs_user->regs = task_pt_regs(current);
> -	regs_user->abi = perf_reg_abi(current);
> +	regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
> +			 PERF_SAMPLE_REGS_ABI_NONE;

I'd prefer it if we didn't introduce unnecessary parens - what function
do the parens around "regs_user->regs" serve?
-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
