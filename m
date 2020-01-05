Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63234130859
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 15:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5q2+k0Rd2FEs5p/MIOEQ++d7kBVPfHC3G64R8XVqLd4=; b=OZkHYrC76Td9re
	6kgZKMqTXHoJ+9pu80uzX4agZ9iKWfOA8Agjs3E+w3wdfaZ0vr1ydkpJ30EgJpMMVvlXtnu2GlZNw
	rGX7ZPaYvt1qRAZBHGGmL0t2ZLS7sx7Vh4mZaRNeh/DiyQmFSNXQXGyZy7eFXNuAeH3RNeJQ2ZUtm
	bjC2CMVfFHsroKJyruZAAVFy7wyaSSmC/WwLIWjmKyHJQ81eHbqUEHRIPcyH/SuEFmaEn17w0QuwR
	72VQGIw8hbyXBR/wecpMby9Q0cdy10wOmbznkXmFj/ZcyQvoTZLA2Hd7bCbg5gznzqsdky4u++FSq
	VCiFNEguJ2qupiSH7Sag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io6SU-0008Sj-Hr; Sun, 05 Jan 2020 14:00:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io6SO-0008Rv-K1
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 14:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9/Ss68klY4YyT5Edf8xRawChy/z8+Io+mzqZfbggB1g=; b=Jz8gXJFXGS0RRZWop5wytUHcw
 7F6A18F+QElbmdVrpPFeigxyFdEV43ijJy7hJnZuuVekyWiqwIlSJueWrL4lCHVbGtflxKLJSGWU/
 YtrTNhh0lN5kFcYUFUz5+kcA65GxIGqtHR5RC2WYF6wwzfrMdwj25mk7cIOUx80YE6BlFwuk9RYQu
 MrK/rZsIJv5mywui6rvvWA2nGBE0LT5SSklmVGH5Uwveu1HnXR82bGtXQKB4TywwUCaGeXBc2K5nJ
 e/ZYMLcn09ejAqAdNPh1apAtRuzVd20kKwNoZLz/AgdwGAXL0zOzrsCuYSV8s2MuTIrn0vW2yyCWq
 MOAaJRRpQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58440)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1io6S7-00069d-EX; Sun, 05 Jan 2020 14:00:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1io6Ry-00057m-AP; Sun, 05 Jan 2020 14:00:14 +0000
Date: Sun, 5 Jan 2020 14:00:14 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: hanterliu@gmail.com
Subject: Re: [PATCH] ARM:alignment:correct variable type of nr_regs
Message-ID: <20200105140014.GJ25745@shell.armlinux.org.uk>
References: <1578190656-19270-1-git-send-email-hanterliu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578190656-19270-1-git-send-email-hanterliu@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_060040_806624_D85812D1 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hanter Liu <hanterliu@gamil.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 05, 2020 at 10:17:36AM +0800, hanterliu@gmail.com wrote:
> From: hanter Liu <hanterliu@gamil.com>
> 
> if ldmstm instruction U bit is unset, nr_regs
> should be negative value, so change variable
> type of nr_regs from unsigned int to int.
> 
> Signed-off-by: hanter Liu <hanterliu@gamil.com>

Hi,

What observable bug is this fixing, or is this just a clean up? Please
clarify.

Thanks.

> ---
>  arch/arm/mm/alignment.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
> index 788c5cf..d8e3bd9 100644
> --- a/arch/arm/mm/alignment.c
> +++ b/arch/arm/mm/alignment.c
> @@ -499,7 +499,8 @@ do_alignment_ldrstr(unsigned long addr, u32 instr, struct pt_regs *regs)
>  static int
>  do_alignment_ldmstm(unsigned long addr, u32 instr, struct pt_regs *regs)
>  {
> -	unsigned int rd, rn, correction, nr_regs, regbits;
> +	int nr_regs;
> +	unsigned int rd, rn, correction, regbits;
>  	unsigned long eaddr, newaddr;
>  
>  	if (LDM_S_BIT(instr))
> -- 
> 2.7.4
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
