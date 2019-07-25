Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76522759C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AflZ3TiSS0j3c65IGuMOo/hOn/zW2lx+rFBvTswvTGE=; b=W6xTBgnkEzFHw2
	8Ld+nSlyEfj1PM15APZM1FK3lNCXVkNtUVaANp+lobMSHj+dVsLMV50agD3bxOiCIaOLcY6PFZsDr
	O35qyHyzJL+TR1obyZoaszw6CltqPrRUTYJxdninPErffj62WgCguD7fwvqE7czcLDpLmkOoWmX4L
	HXo1I4gZrU2kyxz+Y6qyY0oWw0XZ+OKWlxpeXCwxrlStZKZI1cQnR5ttLqcXnArkb2FKWJUdkQyM2
	yEF+dTNKRFZ4JwLW5EcIDr64rZvd98ZJvZ/MJlvBHhJHxLLqyOel1aLRTh37ok2qjUSiDGTmve/wj
	IRW7Clg8bmfaO3NqFHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlRP-0002Qx-66; Thu, 25 Jul 2019 21:38:23 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlRA-0002QU-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:38:10 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hqlR0-00033d-8J from George_Davis@mentor.com ;
 Thu, 25 Jul 2019 14:37:58 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Thu, 25 Jul
 2019 14:37:56 -0700
Date: Thu, 25 Jul 2019 17:37:54 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190725213754.GA29898@mam-gdavis-lt>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
 <20190720123023.GA1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720123023.GA1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-03.mgc.mentorg.com (147.34.90.203) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_143808_774471_2318128E 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Allison Randal <allison@lohutok.net>, open list <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, "moderated
 list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

Thanks for your prompt reply!

On Sat, Jul 20, 2019 at 01:30:23PM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> > When an unhandled data or prefetch abort occurs, the die() string
> > is empty resulting in backtrace messages similar to the following:
> > 
> > 	Internal error: : 1 [#1] PREEMPT SMP ARM
> > 
> > Replace the null string with the name of the abort handler in order
> > to provide more meaningful hints as to the cause of the fault.
> 
> NAK.
> 
> We already print the cause of the abort earlier in the dump, and we've
> also added a "cut here" marker to help people include all the necessary
> information when reporting a problem.

For what it's worth, I often receive crash dumps which lack the pr_alert
messages and only include the pr_emerg messages which this change would at
least provide extra hints, since the "Internal error" as at EMERG level
wereas the initial messages are only at ALERT level. It's subtle but for
cases where the end user has set loglevel such that they only see EMERG
messages, the change is helpful, to me at least.

> It's unfortunate that we have the additional colon in the oops dump,

Agreed, it's rather unfortunate that the string is NULL in these cases.

> but repeating the information that we've printed on one of the previous
> two lines is really not necessary.

It depends on the loglevel the user has set. So perhaps it's not such a
bad thing to repeat the information?

Thanks!

> > 
> > Signed-off-by: George G. Davis <george_davis@mentor.com>
> > ---
> >  arch/arm/mm/fault.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
> > index 0048eadd0681..dddea0a21220 100644
> > --- a/arch/arm/mm/fault.c
> > +++ b/arch/arm/mm/fault.c
> > @@ -557,7 +557,7 @@ do_DataAbort(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
> >  		inf->name, fsr, addr);
> >  	show_pte(current->mm, addr);
> >  
> > -	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
> > +	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
> >  		       fsr, 0);
> >  }
> >  
> > @@ -585,7 +585,7 @@ do_PrefetchAbort(unsigned long addr, unsigned int ifsr, struct pt_regs *regs)
> >  	pr_alert("Unhandled prefetch abort: %s (0x%03x) at 0x%08lx\n",
> >  		inf->name, ifsr, addr);
> >  
> > -	arm_notify_die("", regs, inf->sig, inf->code, (void __user *)addr,
> > +	arm_notify_die(inf->name, regs, inf->sig, inf->code, (void __user *)addr,
> >  		       ifsr, 0);
> >  }
> >  
> > -- 
> > 2.7.4
> > 
> > 
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
