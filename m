Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ED86EF53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 14:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ufPOo34SYcmL3bpgmWJGeXaEb+t/HKUXR5GQUnZcVs=; b=GT8/KFO5NRZMNm
	96PSUi24VD597uL23SPnwyBflUoT5YP887t53jEV62OchRAWaC4PsbDweLbOsoPQBGxwD/QKzg9zO
	bxoDYoIs7rSIe7/NVSnMUWPvoGF1kZZiSX4owBqgUpilLgutAK+lebOxc+2LVy6efY1MOV/TVRnhd
	NbA/hp7UXPDLvPq5bk7E+JKjgcvavTGiv9bJ+AMCPVmKDEt5qfbkhQnUtcqJq3WaVnDJ+/TIHSxkA
	cShiqQunBkv/Du0/aka3xB1XltVfV0Tb6QJoTEaqCOUf0OITKpYywl2vubqOqVZgpdI/G1Rbk1GDj
	ogwX8Gcd/OSxcO0sQSzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hooY0-0002zu-Vq; Sat, 20 Jul 2019 12:33:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hooXi-0002tS-Dt
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 12:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jkXExdv2OgUgh2v85Up+9hbscBqdBooc8aMcR8qKW8A=; b=uu0kpaZ8Sts16zKoiPDagXPfc
 3buPdQLyI8khgjSZlmxZkZJ0Qkfn51HxQiKPFeeR6CoxnSf9MlNqOaHlrmB/t+pSi7uVVaPsjq6Ip
 GpfJxRpwBWObaMIj8mD4h5XkjKGFbnCQZW24eB0cnZHXAWKHnpJv50tpY3FvNiLWEiW3FNyVdvzKE
 Q+nvXGqTDGEajX6xecWNM8QqClpVfnH5t3lu6y2fs8IYGz5kJ5LtkWtBwEayfw00xh/ZiB1qDjfdT
 wlwDRqBa35sskhTd0ssSEzjgpJgjUj8cxaUHnk6qsLioTDc/YH9E4DB8LX/fvoy3F1lGJ2mUmaRad
 7yg0dhxRg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36768)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hooVP-00026T-HN; Sat, 20 Jul 2019 13:30:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hooVL-0001BJ-F1; Sat, 20 Jul 2019 13:30:23 +0100
Date: Sat, 20 Jul 2019 13:30:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190720123023.GA1330@shell.armlinux.org.uk>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_053250_472036_3A1038F2 
X-CRM114-Status: GOOD (  13.66  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Allison Randal <allison@lohutok.net>, open list <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> When an unhandled data or prefetch abort occurs, the die() string
> is empty resulting in backtrace messages similar to the following:
> 
> 	Internal error: : 1 [#1] PREEMPT SMP ARM
> 
> Replace the null string with the name of the abort handler in order
> to provide more meaningful hints as to the cause of the fault.

NAK.

We already print the cause of the abort earlier in the dump, and we've
also added a "cut here" marker to help people include all the necessary
information when reporting a problem.

It's unfortunate that we have the additional colon in the oops dump,
but repeating the information that we've printed on one of the previous
two lines is really not necessary.

> 
> Signed-off-by: George G. Davis <george_davis@mentor.com>
> ---
>  arch/arm/mm/fault.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
> index 0048eadd0681..dddea0a21220 100644
> --- a/arch/arm/mm/fault.c
> +++ b/arch/arm/mm/fault.c
> @@ -557,7 +557,7 @@ do_DataAbort(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
>  		inf->name, fsr, addr);
>  	show_pte(current->mm, addr);
>  
> -	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
> +	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
>  		       fsr, 0);
>  }
>  
> @@ -585,7 +585,7 @@ do_PrefetchAbort(unsigned long addr, unsigned int ifsr, struct pt_regs *regs)
>  	pr_alert("Unhandled prefetch abort: %s (0x%03x) at 0x%08lx\n",
>  		inf->name, ifsr, addr);
>  
> -	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
> +	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
>  		       ifsr, 0);
>  }
>  
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
