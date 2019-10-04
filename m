Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91922CBB07
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68axm4bZZn5KQEO+UqPDb7VdbhjtauPxplA5Ry37U6I=; b=Zh10BY9EBKXzNj
	VwTOSmrUqYtAzx+afogqbzsj++B8Uzl8BZkW63iv3tiEJ5ORstGJhmlub3VK1F5inWFVJidyh5WPf
	jSyCyuL/WiN3OxWK9neCLBPBj9i/68Z8Y6TOGXD59J6NEK6ZCeFR9o2yNdcncMJL2t9NdBIORXxAs
	IGOzRuWaq7c6RlgzDc17xeW0rBuU/a0Ocw6TlalApO6r3KmyuHClf5Z2fDnT9yn/7NPeaCMx/rYHE
	WCyfllJ2O0fwzPNbGDyv5FhelDQDFpURHGOSA+7899C0awwqL0FsQlET3R3rZk4h5RPneR2XyVjMn
	ljfCndexCPwD2T8XYhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGN9l-00076O-3T; Fri, 04 Oct 2019 12:58:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGN9d-000760-7w
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:57:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11BD015A1;
 Fri,  4 Oct 2019 05:57:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 287AC3F534;
 Fri,  4 Oct 2019 05:57:51 -0700 (PDT)
Date: Fri, 4 Oct 2019 13:57:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 6/8] arm64: entry: convert el0_sync to C
Message-ID: <20191004125746.GE34756@lakrids.cambridge.arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-7-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003171642.135652-7-james.morse@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_055753_327433_0F30576A 
X-CRM114-Status: GOOD (  17.45  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 06:16:40PM +0100, James Morse wrote:
> From: Mark Rutland <mark.rutland@arm.com>
> 
> This is largely a 1-1 conversion of asm to C, with a couple of caveats.
> 
> The el0_sync{_compat} switches explicitly handle all the EL0 debug
> cases, so el0_dbg doesn't have to try to bail out for unexpected EL1
> debug ESR values. This also means that an unexpected vector catch from
> AArch32 is routed to el0_inv.
> 
> We *could* merge the native and compat switches, which would make the
> diffstat negative, but I've tried to stay as close to the existing
> assembly as possible for the moment.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> [split out of a bigger series, added nokprobes. removed irq trace
>  calls as the C helpers do this. renamed el0_dbg's use of FAR]
> Signed-off-by: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> ---
>  arch/arm64/include/asm/asm-uaccess.h |  10 --
>  arch/arm64/kernel/entry-common.c     | 221 +++++++++++++++++++++++++++
>  arch/arm64/kernel/entry.S            | 206 +------------------------
>  3 files changed, 226 insertions(+), 211 deletions(-)

[...]

> +static void notrace el0_dbg(struct pt_regs *regs, unsigned long esr)
> +{
> +	unsigned long addr_if_watchpoint = read_sysreg(far_el1);
> +
> +	if (system_uses_irq_prio_masking())
> +		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
> +
> +	user_exit_irqoff();
> +	do_debug_exception(addr_if_watchpoint, esr, regs);
> +	local_daif_restore(DAIF_PROCCTX_NOIRQ);
> +}
> +NOKPROBE_SYMBOL(el0_dbg);

I think that it'd be best to stick with 'far' here, and only have the
'addr_if_watchpoint' name within do_debug_exception(), where it used to
be 'addr'. That way all of this code consistently uses 'far'.

Otherwise this all looks good to me:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks for all the rework and cleanup!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
