Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1756A37FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8TBvAfejUNHLSXNFrgnikKb1bXhQGvrHC3jJIoJILM=; b=p34YSY4qBgImGb
	BX27OQJ4Jq+kLXALsxmtLZ0NoTJKWNrKXtax62dQ7/UYiqb6ESzxRXIcIcgUI2UyYVlY/ZOJJjODh
	mzRlMwjm8xjrIt9H9R0AEtjLRtRChxe7bqjBm6wbMxLmVl8Is7bo+aTgOsQTII9LRaBuIbrGlsTp3
	gkd8RcoTzRRSDW+lpnhVmwnQC69I8tg+bto6uUad+hrumFYswjAyrO6zlmfZ23fj5Oe3PR/6sKeIb
	Tk0YzA6MiaIOPZVo2Ne/3v7z02xJR/cTlmhApJC1jujLMYmzC6aqbejQlxDl6pFIXblw3WugQgVEe
	EcS4FxBmJE0tDxlmJnnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hHH-0000p2-R6; Fri, 30 Aug 2019 13:49:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hH5-0000of-Rd
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3eifwY/5zE6nCnZ1a23bExwsvLi8xvyrQfUlmgCq+N4=; b=SWf/M74KjJGQ+0qWoqQqqcu/w
 FdcY9GuJkV90qZPrxiZiQbScX4eNkPxI/XUimR/iQAEKiTTRHRyftu5Aw4GEeang1af1Gjr63bPv3
 VCTseUldgs7tZ8IQM+7kHxg0HCnZhfEq4mLuZpFfVo9fcDQIQBj1vDGa8ZEQoJWP6PR5AqO7Vmy6k
 0RHCdl4ZYHq+GAcpvpCywSCYWwwamwfooWieT9BSAJB3CtIvcZWh9IQgfeDuy50iRy/atY/PMg4Cf
 TsdL2hglDBsMbYD7IeIyHnsvTyYLIa+l8Sf2QW01GvtTHwh4jw4S4Y2HLnArfOD4hwy/LCIroRIZT
 cNA3Kv3ng==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:35310)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3hGR-00079z-DU; Fri, 30 Aug 2019 14:48:31 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3hGP-0000BO-2I; Fri, 30 Aug 2019 14:48:29 +0100
Date: Fri, 30 Aug 2019 14:48:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
Subject: Re: [PATCH] arm: fix page faults in do_alignment
Message-ID: <20190830134828.GC13294@shell.armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830133522.GZ13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_064911_899256_2EE2A716 
X-CRM114-Status: GOOD (  22.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ebiederm@xmission.com, sakari.ailus@linux.intel.com, bhelgaas@google.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please fix your email.

  jingxiangfeng@huawei.com
      host mx7.huawei.com [168.195.93.46]
      SMTP error from remote mail server after pipelined DATA:
      554 5.7.1 spf check result is none

SPF is *not* required for email.

If you wish to impose such restrictions on email, then I reserve the
right to ignore your patches until this issue is resolved! ;)

On Fri, Aug 30, 2019 at 02:35:22PM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
> > The function do_alignment can handle misaligned address for user and
> > kernel space. If it is a userspace access, do_alignment may fail on
> > a low-memory situation, because page faults are disabled in
> > probe_kernel_address.
> > 
> > Fix this by using __copy_from_user stead of probe_kernel_address.
> > 
> > Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
> > Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> 
> NAK.
> 
> The "scheduling while atomic warning in alignment handling code" is
> caused by fixing up the page fault while trying to handle the
> mis-alignment fault generated from an instruction in atomic context.
> 
> Your patch re-introduces that bug.
> 
> > ---
> >  arch/arm/mm/alignment.c | 16 +++++++++++++---
> >  1 file changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
> > index 04b3643..2ccabd3 100644
> > --- a/arch/arm/mm/alignment.c
> > +++ b/arch/arm/mm/alignment.c
> > @@ -774,6 +774,7 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
> >  	unsigned long instr = 0, instrptr;
> >  	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
> >  	unsigned int type;
> > +	mm_segment_t fs;
> >  	unsigned int fault;
> >  	u16 tinstr = 0;
> >  	int isize = 4;
> > @@ -784,16 +785,22 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
> >  
> >  	instrptr = instruction_pointer(regs);
> >  
> > +	fs = get_fs();
> > +	set_fs(KERNEL_DS);
> >  	if (thumb_mode(regs)) {
> >  		u16 *ptr = (u16 *)(instrptr & ~1);
> > -		fault = probe_kernel_address(ptr, tinstr);
> > +		fault = __copy_from_user(tinstr,
> > +				(__force const void __user *)ptr,
> > +				sizeof(tinstr));
> >  		tinstr = __mem_to_opcode_thumb16(tinstr);
> >  		if (!fault) {
> >  			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
> >  			    IS_T32(tinstr)) {
> >  				/* Thumb-2 32-bit */
> >  				u16 tinst2 = 0;
> > -				fault = probe_kernel_address(ptr + 1, tinst2);
> > +				fault = __copy_from_user(tinst2,
> > +						(__force const void __user *)(ptr+1),
> > +						sizeof(tinst2));
> >  				tinst2 = __mem_to_opcode_thumb16(tinst2);
> >  				instr = __opcode_thumb32_compose(tinstr, tinst2);
> >  				thumb2_32b = 1;
> > @@ -803,10 +810,13 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
> >  			}
> >  		}
> >  	} else {
> > -		fault = probe_kernel_address((void *)instrptr, instr);
> > +		fault = __copy_from_user(instr,
> > +				(__force const void __user *)instrptr,
> > +				sizeof(instr));
> >  		instr = __mem_to_opcode_arm(instr);
> >  	}
> >  
> > +	set_fs(fs);
> >  	if (fault) {
> >  		type = TYPE_FAULT;
> >  		goto bad_or_fault;
> > -- 
> > 1.8.3.1
> > 
> > 
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
