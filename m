Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E62C1F146A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTEQHe/IoOZOxCEEW25LxSpM4ufnCS04uDelbQLFToU=; b=RnZehd4gJteJA+
	y8LvUR6PwmfGCx1lb/2DmenXMFeqLL03KgyhazRpRJzKxvGXnEnBtGHdo0rVjanXrysudpce2hDtz
	ufLRCXwRpkxeDcvMdmz0OzCHL0X8QosBEsNsBoAjSzyWGdCC4FEiKIU+ZALzu01ev3xl7HfPMjlcH
	YWTxX8xr/Y2kO/8WAOkiywxcbJWVfQ5rstygBdQkxjhjgSp8+sV/FyFE/VResiOtmKph8ir8k2C5U
	MD5Ug/Vq4rKw9bZGgSj3IL94IQuhnsfJBDTMH47nsNN6hXrXdZHL0Rxym2CAtOwAs6W1l+aGqUq8l
	BVzGmL+Z6Hr8cVqWZjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiD2h-0005xx-7Y; Mon, 08 Jun 2020 08:22:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiD2Z-0005xW-K0
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:21:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29EB7206A4;
 Mon,  8 Jun 2020 08:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591604515;
 bh=ukk9VRIP+NjAOTVBv02xmYFvysWUmJ7wdix9Sz1YUBI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=przoaiwQeAzLSZk7wk1fXs7LbXR2q1ElpNm4y4G4hry5jp8BG3bmFL4W7pvFh+nMY
 S+XH4vrnwcNbV7M5QamQrf/gsc1k0nNmXnlyWjlmU4/04j56h2zuZF3/+Kbks36fue
 PI6l3TokD7x551whAvn2qViDrcSEepnoFN6GrnK4=
Date: Mon, 8 Jun 2020 09:21:51 +0100
From: Will Deacon <will@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [Possible PATCH]arm64: ftrace: Change CONFIG_FTRACE_WITH_REGS to
 CONFIG_DYNAMIC_FTRACE_WITH_REGS
Message-ID: <20200608082150.GB1542@willie-the-truck>
References: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9b27f2233bd1fa31d72ff937beefdae0e2104e5.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_012155_674143_AECCA948 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
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

Ha! So much for 100-char lines ;)

(fix looks good to me, I'll queue it for -rc1)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
