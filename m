Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E8C1D68BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHzEtLXIC37TjO8R391FHrW9Ar+nU1f2t7ErggCW6Jk=; b=WL6cXr5I9pWbEI
	qzz2cu85+t6vp+22vGTSLNLRHo9xYZOIyETzzsmaY2EE5upyBww36cCa/f/qB0o5a/fuW/SoWC4nf
	C1NqWTusK1YKwL5EJmRY1rAb9D0f/CGS0NObRuHQPPuGgzfmk4vR84NhIk8Ryl50jzE0OJTlFiEUp
	AZ5kKiCtdiBx0olNWPt9w1ElogTiozJBBnKDGX7gvIShy0ysvMyDGlDkLWiCQ00EBodHzjrzuESTT
	NRvM7oJAI3C7ckCa4EvXp9N+Xq3eyIzRZeRfkIpllsc0mTvu8oc2Cu6xhSOBhM+LehpEpG6DdFKD5
	ezkw64Rgg67L29Y/Mg6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLkZ-0005sJ-Mo; Sun, 17 May 2020 16:02:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLkQ-0005re-Mq
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E9G0K1xzYmVUjRPXAZZB5OxYfrHyxpKU/RdYiB/52Ug=; b=KOFm0Jp32Y0Oe1wtaukenFyRr
 8d18iO22LgaBq+Z18aOew3tkghELlKKJhz1ZWvhcmxgrZFHhyT5yAWQV0UWCoUZLUGmgNYfvYjriP
 auzEDF8wBhKu54qfoF8SvhpjKDBSl2NedyViOcjdtZdV41iCDNgmihaQXnPdTKrzVl7vlz8OMkP7F
 /RylV8Aif2uC3YUVP7Ui/eJZTJldYMsD5KbMwGXQnWUVzposGv2mxf/7SAXEtWVIO/2HHtspPo1j9
 9jKd3HFspWywYMbZ50T8JQIKEHJ2WknacGWPjxnKuvi+ev/ysfDOEnRGZlcx5IKyob5BPtFz47ach
 +VBphNApw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59208)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jaLkE-0005iI-86; Sun, 17 May 2020 17:02:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jaLkB-0003oG-6i; Sun, 17 May 2020 17:02:27 +0100
Date: Sun, 17 May 2020 17:02:27 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH] ARM: kprobes: Avoid fortify_panic() when copying
 optprobe template
Message-ID: <20200517160227.GU1551@shell.armlinux.org.uk>
References: <20200517153959.293224-1-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517153959.293224-1-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_090242_745154_1A98BEC3 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: keescook@chromium.org, linux-kernel@vger.kernel.org,
 mathieu.desnoyers@efficios.com, mhiramat@kernel.org, labbott@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 01:09:59AM +0930, Andrew Jeffery wrote:
> Setting both CONFIG_KPROBES=y and CONFIG_FORTIFY_SOURCE=y on ARM leads
> to a panic in memcpy() when injecting a kprobe despite the fixes found
> in commit e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with
> FORTIFY_SOURCE") and commit 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes:
> optimized kprobes illegal instruction").
> 
> arch/arm/include/asm/kprobes.h effectively declares
> the target type of the optprobe_template_entry assembly label as a u32,
> which leads memcpy()'s __builtin_object_size() call to determine that
> the pointed-to object is of size four. In practical terms the symbol is
> used as a handle for the optimised probe assembly template that is at
> least 96 bytes in size. The symbol's use despite its type blows up the
> memcpy() in ARM's arch_prepare_optimized_kprobe() with a false-positive
> fortify_panic() when it should instead copy the optimised probe template
> into place.
> 
> As mentioned, a couple of attempts have been made to address the issue
> by casting a pointer to optprobe_template_entry before providing it to
> memcpy(), however gccs such as Ubuntu 20.04's arm-linux-gnueabi-gcc
> 9.3.0 (Ubuntu 9.3.0-10ubuntu1) see through these efforts.
> 
> Squash the false-positive by aliasing the template assembly with a new
> symbol 'arm_optprobe_template'; declare it as a function object and
> pass the function object as the argument to memcpy() such that
> __builtin_object_size() cannot immediately determine the object size.
> 
> Fixes: e46daee53bb5 ("ARM: 8806/1: kprobes: Fix false positive with FORTIFY_SOURCE")
> Fixes: 0ac569bf6a79 ("ARM: 8834/1: Fix: kprobes: optimized kprobes illegal instruction")
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  arch/arm/include/asm/kprobes.h    | 7 +++++++
>  arch/arm/probes/kprobes/opt-arm.c | 4 +++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
> index 213607a1f45c..94db8bf25f9c 100644
> --- a/arch/arm/include/asm/kprobes.h
> +++ b/arch/arm/include/asm/kprobes.h
> @@ -43,6 +43,13 @@ int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
>  int kprobe_exceptions_notify(struct notifier_block *self,
>  			     unsigned long val, void *data);
>  
> +/*
> + * The optprobe template buffer is not anything that should be called directly,
> + * however describe it as a function to give ourselves a handle to it that
> + * bypasses CONFIG_FORTIFY_SOURCE=y sanity checks in memcpy().
> + */
> +extern __visible void arm_optprobe_template(void);

Does this really need to be globally visible to anything that happens
to include this header?

While we may abhor "extern" declarations and prototypes in .c files, it
seems to me to be entirely reasonable for this to live in opt-arm.c and
remove the .global for this symbol, thereby making this symbol local to
opt-arm.c

> +
>  /* optinsn template addresses */
>  extern __visible kprobe_opcode_t optprobe_template_entry;
>  extern __visible kprobe_opcode_t optprobe_template_val;
> diff --git a/arch/arm/probes/kprobes/opt-arm.c b/arch/arm/probes/kprobes/opt-arm.c
> index 7a449df0b359..59133d59616a 100644
> --- a/arch/arm/probes/kprobes/opt-arm.c
> +++ b/arch/arm/probes/kprobes/opt-arm.c
> @@ -31,6 +31,8 @@
>   * to the stack cost of the instruction.
>   */
>  asm (
> +			".global arm_optprobe_template\n"
> +			"arm_optprobe_template:\n"
>  			".global optprobe_template_entry\n"
>  			"optprobe_template_entry:\n"
>  			".global optprobe_template_sub_sp\n"
> @@ -234,7 +236,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *or
>  	}
>  
>  	/* Copy arch-dep-instance from template. */
> -	memcpy(code, (unsigned long *)&optprobe_template_entry,
> +	memcpy(code, arm_optprobe_template,
>  			TMPL_END_IDX * sizeof(kprobe_opcode_t));
>  
>  	/* Adjust buffer according to instruction. */
> -- 
> 2.25.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
