Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A54D1D9E37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 19:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZHNgBA7YFER2SdxT8LvLi/9nlV6jmz8H75o1Y8n/k4=; b=HqSSf+dtgPaQ6d
	f+1j3xAKN1icwoypWdlkT/HQgcxTxc+6Fz2fZsz5uXClSplrDFrAYSBeF0ezFEeMPzdZ6OEg1HqNg
	oHHBlwUpiQrAPxcwKnJ3AkmgZfyRycNMTmIc/9GPj3RIrL/3ck5HOrW9wqsbT5IGnNmI+EFn58S8s
	nc3C9pzpCA5C1HQClJhcr85Ni9F2rUzsLu7HhVaOfwAaD8gJeKf4xgaOHWxY+dx0mzqbGAxZ0YEIB
	4I/OVOQdFNDOjq2LBzbdQmLbUlYyPM/8LzenUB5s735MpVzMVN8nMSHl9vTo5yN84TspzZsf4j/7b
	gSjmSwRTOHC9ChSfXD5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6OK-0006Lm-Jv; Tue, 19 May 2020 17:51:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6OB-0006KG-Id
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 17:50:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id j5so397832wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 10:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PbPg6e3tpwQoLhlHES85OSbrJPFtIH1dskfrL5pZa0g=;
 b=gsvMz+El9W8nBMj9LNZ/yIaRn8k5v2h8C5y2xVUx9mublrH6HS607efXt4E7hz8wai
 votGfGXIhb9XxP5R6+fE6v1My39B9J4Gggj+sLOtpd8dHzK6ybh98IHWDDKNRrYv2Rb1
 j5+5o6h9+HeTYT+dR7g5xHrxrM1MlBHfI1hKBZi8T2FIh5v1fcfbJLBJ9dff8EQcKIMq
 BCHzcAGioBkgnxJJt1ABHlhCE7SgUb27IXqsl1vKnMQUdWAoqllDJtdD1agDT7vG4dJk
 KNjQXKsXWfCWepZnrFby/mOfz6Qv9D2kJz2r4t9QSEJ+gJ+kwwDL6+by7WqQ5+/NfaKA
 K1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PbPg6e3tpwQoLhlHES85OSbrJPFtIH1dskfrL5pZa0g=;
 b=EvD+IvS9gIJsOolSSDkoS/3FxjODyHf475H4zn8BGXHQCX6X3dc7RaqTxYgneqKmu/
 egqIsjajH0vJdpXBl+goPR5VIjoJQ8NYnaXwZrJwhJxxkwxcU/d8cvo9e4YF6DX/V0uZ
 wZ+7MwjrjwdTG8oVhugJVJfrDB5PFYd9pTmafjqpZnTKSX5X1CS/LMpInsV5wRA28HJD
 kfZOZp5kpJoBJRYX50WLN8eYScYuzjSCIIutM93DsmjPQjnEwII6VdHZ4bnAc4TsbDaa
 Bm4ODf9ju6ftXqHFso5qim53+HR39lTnK+Ow/f44iLD8aWCQ93CXjBDZFUkyuNaQeEM6
 HwZQ==
X-Gm-Message-State: AOAM531KXpEjcwV9oEogXYijIZ3TsIIZZkpKi97ybKgGs5gLQJwb8OaW
 1hYbKFcJ3y8imKDg1qYWFZfAWuTM
X-Google-Smtp-Source: ABdhPJyrG40EGugT2m+AdghxNUP6ys8Qt7gvRmotVcHZ5t309c/cAyW4dYJt81ruzXFmcLhCIv0XkQ==
X-Received: by 2002:a5d:5588:: with SMTP id i8mr41638wrv.223.1589910649108;
 Tue, 19 May 2020 10:50:49 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z132sm519806wmc.29.2020.05.19.10.50.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 10:50:48 -0700 (PDT)
Subject: Re: [PATCH 00/11] arm/arm64: Turning IPIs into normal interrupts
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200519161755.209565-1-maz@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d1ac7873-0f02-dbe0-dd3c-4fd14a87cf03@gmail.com>
Date: Tue, 19 May 2020 10:50:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_105051_634052_A0D510A9 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Russell King <linux@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/19/2020 9:17 AM, Marc Zyngier wrote:
> For as long as SMP ARM has existed, IPIs have been handled as
> something special. The arch code and the interrupt controller exchange
> a couple of hooks (one to generate an IPI, another to handle it).
> 
> Although this is perfectly manageable, it prevents the use of features
> that we could use if IPIs were Linux IRQs (such as pseudo-NMIs). It
> also means that each interrupt controller driver has to follow an
> architecture-specific interface instead of just implementing the base
> irqchip functionnalities. The arch code also duplicates a number of
> things that the core irq code already does (such as calling
> set_irq_regs(), irq_enter()...).
> 
> This series tries to remedy this on arm/arm64 by offering a new
> registration interface where the irqchip gives the arch code a range
> of interrupts to use for IPIs. The arch code requests these as normal
> interrupts.
> 
> The bulk of the work is at the interrupt controller level, where all 3
> irqchips used on arm64 get converted.
> 
> Finally, the arm64 code drops the legacy registration interface. The
> same thing could be done on 32bit as well once the two remaining
> irqchips using that interface get converted.
> 
> There is probably more that could be done: statistics are still
> architecture-private code, for example, and no attempt is made to
> solve that (apart from hidding the IRQs from /proc/interrupt).
> 
> This has been tested on a bunch of 32 and 64bit guests.

Does this patch series change your position on this patch series

https://lore.kernel.org/linux-arm-kernel/20191023000547.7831-3-f.fainelli@gmail.com/T/

or is this still a no-no?

> 
> Marc Zyngier (11):
>   genirq: Add fasteoi IPI flow
>   genirq: Allow interrupts to be excluded from /proc/interrupts
>   arm64: Allow IPIs to be handled as normal interrupts
>   ARM: Allow IPIs to be handled as normal interrupts
>   irqchip/gic-v3: Describe the SGI range
>   irqchip/gic-v3: Configure SGIs as standard interrupts
>   irqchip/gic: Refactor SMP configuration
>   irqchip/gic: Configure SGIs as standard interrupts
>   irqchip/gic-common: Don't enable SGIs by default
>   irqchip/bcm2836: Configure mailbox interrupts as standard interrupts
>   arm64: Kill __smp_cross_call and co
> 
>  arch/arm/Kconfig                  |   1 +
>  arch/arm/include/asm/smp.h        |   5 +
>  arch/arm/kernel/smp.c             |  97 +++++++++++---
>  arch/arm64/Kconfig                |   1 +
>  arch/arm64/include/asm/irq_work.h |   4 +-
>  arch/arm64/include/asm/smp.h      |   6 +-
>  arch/arm64/kernel/smp.c           |  98 +++++++++++----
>  drivers/irqchip/irq-bcm2836.c     | 151 ++++++++++++++++++----
>  drivers/irqchip/irq-gic-common.c  |   3 -
>  drivers/irqchip/irq-gic-v3.c      | 109 ++++++++++------
>  drivers/irqchip/irq-gic.c         | 203 ++++++++++++++++++------------
>  include/linux/irq.h               |   4 +-
>  kernel/irq/chip.c                 |  26 ++++
>  kernel/irq/debugfs.c              |   1 +
>  kernel/irq/proc.c                 |   2 +-
>  kernel/irq/settings.h             |   7 ++
>  16 files changed, 515 insertions(+), 203 deletions(-)
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
