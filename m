Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D5DC3D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVRNiP5csGzmSIhzJUvHVLSkcPKHgAMK+20jIXIOeIA=; b=DZO0BM7ydl9ikd
	lWfmJ0NGKg8Y59RfBOjoyhcHYwQDDP99IEOe6Mb5EEO7Mc3KTU5RHGVy54TU082MIx4NpOU2SoFwd
	0qU+DR2jFwdCkbzcBKoc5IypGbtGfL9lD9OnKMoOQZ7ZuYffonD+XHiw0DA6XjJAnFXHeiQrlBhlL
	LcZxecgWHCfUvxM3PO2YOTBWgyLcBRs4qbRRqpeGvIKc0gccOEmLgoiCr3Fre6pKe78KDfy/SuI5m
	rJ62PGWsynNjmY05LGr4Jbzh3OybKQh3R5WL9mjkJ2pDqewcXU/6GyWRV0AYiW/zlc7FF+dBIahnn
	gjVjHpGWg4j+mW5zDk4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQGw-0000UE-3K; Fri, 18 Oct 2019 11:18:18 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQGk-0000Tc-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Or/pYlus75O+eYd+lobeaArHyUHBvsFbi7vAAIDl74g=; b=DolqX52ASjDjm5+X6DUQovRxQ
 0wkWzFC0X03R6cRu5etQV4bUewnuuCoKrCnTtNpqQDvHtyCSQMpYxB9fkodUYtQZCjykDR794RBxH
 uu5vN/O5tZeE4eNKxq4NoC+VrLqc9DfiG0aIP8mtv7uDhEY8mM9b5jT3gu9qOfjp0vQA7LWz3QsJh
 c6+Ng4DEKCEaZM9dPgZqE4eAtbXiJOlVBVdCY3+b5v3Uhn7YY7tJEHPx6GRiAeXzrV54upgup3nbr
 0PFjosBQ6kmDzpY0JJ1a5DFWHMWaavTTJNosRxFDTnnmQQVvuLvdwGksSm2t2isPv8WAHGRhfHVMm
 HVexkbh5A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44272)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iLQGd-0007AS-0n; Fri, 18 Oct 2019 12:17:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iLQGc-0000gS-1I; Fri, 18 Oct 2019 12:17:58 +0100
Date: Fri, 18 Oct 2019 12:17:58 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] do not export show_fiq_list
Message-ID: <20191018111757.GH25745@shell.armlinux.org.uk>
References: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_041806_744813_862FB4AA 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@lists.codethink.co.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 11:35:13AM +0100, Ben Dooks (Codethink) wrote:
> The show_fiq_list() is not used outside the file it is
> defined in, so make it static and remove the header
> file declaration (which it did not include) to remove
> the following sparse warning:
> 
> arch/arm/kernel/fiq.c:85:5: warning: symbol 'show_fiq_list' was not declared. Should it be static?

NAK.  This is called from arch/arm/kernel/irq.c; making it static will
create a link failure.

Please don't take sparse "suggestions" as the correct solution, always
research the warning thoroughly before coming up with a solution.  In
this case:

$ grep -r show_fiq_list arch/arm

would have shown why this change is wrong.

Thanks.

> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
> ---
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/include/asm/mach/irq.h | 1 -
>  arch/arm/kernel/fiq.c           | 2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm/include/asm/mach/irq.h b/arch/arm/include/asm/mach/irq.h
> index dfe832a3bfc7..fcc5667c7cea 100644
> --- a/arch/arm/include/asm/mach/irq.h
> +++ b/arch/arm/include/asm/mach/irq.h
> @@ -15,7 +15,6 @@ struct seq_file;
>   * This is internal.  Do not use it.
>   */
>  extern void init_FIQ(int);
> -extern int show_fiq_list(struct seq_file *, int);
>  
>  /*
>   * This is for easy migration, but should be changed in the source
> diff --git a/arch/arm/kernel/fiq.c b/arch/arm/kernel/fiq.c
> index cd1234c103fc..693d0b35acc4 100644
> --- a/arch/arm/kernel/fiq.c
> +++ b/arch/arm/kernel/fiq.c
> @@ -82,7 +82,7 @@ static struct fiq_handler default_owner = {
>  
>  static struct fiq_handler *current_fiq = &default_owner;
>  
> -int show_fiq_list(struct seq_file *p, int prec)
> +static int show_fiq_list(struct seq_file *p, int prec)
>  {
>  	if (current_fiq != &default_owner)
>  		seq_printf(p, "%*s:              %s\n", prec, "FIQ",
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
