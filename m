Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6BB1E2F76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZQ5KX+9HmQDHGkdmRBX7liMf7/IOTt/6C3s0b6CuqQ=; b=iWvvC/vA7gwu8R
	O62dNfqaVWqa91eMco2tS9HqhxBv6WsYGQbsCqSiJaxXDy7T9B3LcYIFWo5l/EQAZr0nNX0FQmuBg
	ram27s/AGJE+DiDnFPnPjNzZfQZm1cz4PJlRbdjSZi9lZt31CH1uWPLGklf5e/XjVdQpAxb6U4JtD
	OfdxtUyRxHYWZjKIcKN/FkFkLXd6tsU+J6Rt/lkaswk7OF61uEgwna8aca9zmlpublIguV/cCMClW
	+vDWyB90aUGzjqXKLJ09X7zQZAo8DwEwXWDBCYv12nmxYVo2DTSqBndunOpq+Ts4eKQmEqncB8crZ
	z4v+aMR3A22pQHC88g3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfem-00042h-57; Tue, 26 May 2020 19:54:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfea-00041x-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:54:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBC37207CB;
 Tue, 26 May 2020 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590522864;
 bh=O7cesvgSXf5oQ4fsUxRGrM5IceW++SEodbszIMRcYp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yCRCJqZz1tS/Y0lnOFa/VijoyCHziu5CacMPkJVBM5D5dUWOaIqlU17z11e9MivSR
 QigvKWbzk/C9pvNt3Wp59L2KU46UlCFGPwzf3tU3R32OMASlwFbvEiNKc7lZsDAKxF
 3T6gXLbRJUSoBBkE5daxWb0C6X9bzyaUkYrL9C4E=
Date: Tue, 26 May 2020 20:54:19 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH][V3] arm64: perf: Get the wrong PC value in REGS_ABI_32
 mode
Message-ID: <20200526195419.GB2206@willie-the-truck>
References: <1589165527-188401-1-git-send-email-jiping.ma2@windriver.com>
 <20200526102611.GA1363@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526102611.GA1363@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125424_985251_B8D4D4EC 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, May 26, 2020 at 11:26:11AM +0100, Mark Rutland wrote:
> On Mon, May 11, 2020 at 10:52:07AM +0800, Jiping Ma wrote:
> > Modified the patch subject and the change description.
> > 
> > PC value is get from regs[15] in REGS_ABI_32 mode, but correct PC
> > is regs->pc(regs[PERF_REG_ARM64_PC]) in arm64 kernel, which caused
> > that perf can not parser the backtrace of app with dwarf mode in the 
> > 32bit system and 64bit kernel.
> > 
> > Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> 
> Thanks for this.
> 
> 
> > ---
> >  arch/arm64/kernel/perf_regs.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> > index 0bbac61..0ef2880 100644
> > --- a/arch/arm64/kernel/perf_regs.c
> > +++ b/arch/arm64/kernel/perf_regs.c
> > @@ -32,6 +32,10 @@ u64 perf_reg_value(struct pt_regs *regs, int idx)
> >  	if ((u32)idx == PERF_REG_ARM64_PC)
> >  		return regs->pc;
> >  
> > +	if (perf_reg_abi(current) == PERF_SAMPLE_REGS_ABI_32
> > +		&& idx == 15)
> > +		return regs->pc;
> 
> I think there are some more issues here, and we may need a more
> substantial rework. For a compat thread, we always expose
> PERF_SAMPLE_REGS_ABI_32 via per_reg_abi(), but for some reason
> perf_reg_value() also munges the compat SP/LR into their ARM64
> equivalents, which don't exist in the 32-bit sample ABI. We also don't
> zero the regs that don't exist in 32-bit (including the aliasing PC).

I think this was for the case where you have a 64-bit perf profiling a
32-bit task, and it was passing the registers off to libunwind. Won't that
break if we follow your suggestion?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
