Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302FAA37D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 15:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmBL9TCK7OyvqOHzUY8ewhqkfOSOVU3gfTXCuS+/UGE=; b=s78hG4xhLkVfGp
	KZKPdHLFsHu4zeTy2CFGTgFagv+kg9jaIyXuIXRx66dkJmuIlEU9+3Cum8bpYWRQS2kqZ42W1D0kU
	ActmgrnfHB5JjVW/ZT08K9sypzaWGyrARbylZvuUAVSgw2fhg6kmAun8F5N7BU5bEB7JrzyXDtEYp
	T9KB7zjpaXo/h/WZdClpL56hufsnwvWC00r1IzaJAgTV7BM3kN7yCDs6q7F1HDVG1V0j95/dO/5rW
	i1j6B2/zjiKns6A5N/NZ7HmImrt+pxelZhtyZ25BooWdZ2fRDwvkdZFDb2l1whchBnBsXqEBp1Ozr
	G8UPI05aTOBrm0h6Yh0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3h4m-0005K9-3J; Fri, 30 Aug 2019 13:36:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3h4D-0005Cw-5u
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cX5HAPQ/pGMAWfMOWWax1diaBYat5jfFHPLeFudRYV0=; b=X4PXDlxJk6XPR03/tA1Mmat89
 OfVyp7FrasZ+Qk7+5Z8u6qXX2PI2/X1pZpstwrBjdGaTixrEdRhSvmtsd+zwZ0BYoXFpLbCUXQQNv
 aW3KWuf6Ep+uGE61r17wYLEA2GrUAlPt8vznDSF7SVgWYOjmU5KZyXoW//REk0/AeCtY6pg2JnZ0U
 Xfs38hH9Gx3tH9Hs6YEVHq9vfaTBmNsFlh1xt6WBe81h1ku1XiTorCAbuIMRiyNdWQ5swTqFTUAyh
 0wi0BAai94HjcnaoOBcfliJLqodqytm6S2nvn0jckR12gFgD8UW2rfsQS/WR4h9Eah/yKtnJCCGyD
 X579Lc9Jg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:56022)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3h3m-00075L-CF; Fri, 30 Aug 2019 14:35:26 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3h3i-0000A4-59; Fri, 30 Aug 2019 14:35:22 +0100
Date: Fri, 30 Aug 2019 14:35:22 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
Subject: Re: [PATCH] arm: fix page faults in do_alignment
Message-ID: <20190830133522.GZ13294@shell.armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_063553_369279_78576170 
X-CRM114-Status: GOOD (  17.28  )
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

On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
> The function do_alignment can handle misaligned address for user and
> kernel space. If it is a userspace access, do_alignment may fail on
> a low-memory situation, because page faults are disabled in
> probe_kernel_address.
> 
> Fix this by using __copy_from_user stead of probe_kernel_address.
> 
> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>

NAK.

The "scheduling while atomic warning in alignment handling code" is
caused by fixing up the page fault while trying to handle the
mis-alignment fault generated from an instruction in atomic context.

Your patch re-introduces that bug.

> ---
>  arch/arm/mm/alignment.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
> index 04b3643..2ccabd3 100644
> --- a/arch/arm/mm/alignment.c
> +++ b/arch/arm/mm/alignment.c
> @@ -774,6 +774,7 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>  	unsigned long instr = 0, instrptr;
>  	int (*handler)(unsigned long addr, unsigned long instr, struct pt_regs *regs);
>  	unsigned int type;
> +	mm_segment_t fs;
>  	unsigned int fault;
>  	u16 tinstr = 0;
>  	int isize = 4;
> @@ -784,16 +785,22 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>  
>  	instrptr = instruction_pointer(regs);
>  
> +	fs = get_fs();
> +	set_fs(KERNEL_DS);
>  	if (thumb_mode(regs)) {
>  		u16 *ptr = (u16 *)(instrptr & ~1);
> -		fault = probe_kernel_address(ptr, tinstr);
> +		fault = __copy_from_user(tinstr,
> +				(__force const void __user *)ptr,
> +				sizeof(tinstr));
>  		tinstr = __mem_to_opcode_thumb16(tinstr);
>  		if (!fault) {
>  			if (cpu_architecture() >= CPU_ARCH_ARMv7 &&
>  			    IS_T32(tinstr)) {
>  				/* Thumb-2 32-bit */
>  				u16 tinst2 = 0;
> -				fault = probe_kernel_address(ptr + 1, tinst2);
> +				fault = __copy_from_user(tinst2,
> +						(__force const void __user *)(ptr+1),
> +						sizeof(tinst2));
>  				tinst2 = __mem_to_opcode_thumb16(tinst2);
>  				instr = __opcode_thumb32_compose(tinstr, tinst2);
>  				thumb2_32b = 1;
> @@ -803,10 +810,13 @@ static ssize_t alignment_proc_write(struct file *file, const char __user *buffer
>  			}
>  		}
>  	} else {
> -		fault = probe_kernel_address((void *)instrptr, instr);
> +		fault = __copy_from_user(instr,
> +				(__force const void __user *)instrptr,
> +				sizeof(instr));
>  		instr = __mem_to_opcode_arm(instr);
>  	}
>  
> +	set_fs(fs);
>  	if (fault) {
>  		type = TYPE_FAULT;
>  		goto bad_or_fault;
> -- 
> 1.8.3.1
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
