Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367471F163B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 12:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5+9ciWxIx4+BBxC/9622RWbSDPEEo0mqIvOKeph1H8=; b=Ff6DPt2EFgHPL5
	rJ+4z2gzmQpgTX59b1BQGmQFbymrdzsE2/SaSYJBZoJ/Y3L/DEqTfI4P1LA17YCs95S+iNyL/Yh3k
	4pJzMHq2p3YdgKTVAO4GCID6eNM+nohkwUEpoKBCOSDxa5QytyVZeM9CsRPO9CY/Rqdgw4e0ZL8VQ
	VzTSb/67a3ggvpn7OrUn5BXRlPX6TuhlpHktfeK3iLxm1cZdM5oNTYWyrrbSLPIOXILwqw3Tnpfdb
	O7xMlLRr4E0XUmgPwjSSHdvEH4V1Wv98LdzeTDwVo4kNx3pHsEkRLbaVo6soCUbz/LZZSOV93aYj3
	rYXuvJnetZUpQmbcLM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEcY-0007k7-1h; Mon, 08 Jun 2020 10:03:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEcO-0007jD-MV
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 10:03:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5DEA91FB;
 Mon,  8 Jun 2020 03:02:58 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.6.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1137B3F73D;
 Mon,  8 Jun 2020 03:02:56 -0700 (PDT)
Date: Mon, 8 Jun 2020 11:02:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [Possible PATCH]arm64: ftrace: Change CONFIG_FTRACE_WITH_REGS to
 CONFIG_DYNAMIC_FTRACE_WITH_REGS
Message-ID: <20200608100233.GA8866@C02TD0UTHF1T.local>
References: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_030300_775452_FCDDCE8E 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 06, 2020 at 12:25:50PM -0700, Joe Perches wrote:
> CONFIG_FTRACE_WITH_REGS does not exist as a Kconfig symbol.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> 
> I don't have the hardware, so I can't tell if this is a
> correct change, but it is a logical one.
> 
> Found by a test script that looks for IS_ENABLED(FOO)
> where FOO must also exist in Kconfig files.
> 
>  arch/arm64/kernel/ftrace.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
> index 8618faa82e6d..86a5cf9bc19a 100644
> --- a/arch/arm64/kernel/ftrace.c
> +++ b/arch/arm64/kernel/ftrace.c
> @@ -69,7 +69,8 @@ static struct plt_entry *get_ftrace_plt(struct module *mod, unsigned long addr)
>  
>  	if (addr == FTRACE_ADDR)
>  		return &plt[FTRACE_PLT_IDX];
> -	if (addr == FTRACE_REGS_ADDR && IS_ENABLED(CONFIG_FTRACE_WITH_REGS))
> +	if (addr == FTRACE_REGS_ADDR &&
> +	    IS_ENABLED(CONFIG_DYNAMIC_FTRACE_WITH_REGS))
>  		return &plt[FTRACE_REGS_PLT_IDX];

This was my bad; I broke this among some cleanup, and evidently I did
not test that as well as I thought I had.

This should be backported, so we should add:

Fixes: 3b23e4991fb66f6d ("arm64: implement ftrace with regs")

Looks good to me, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
