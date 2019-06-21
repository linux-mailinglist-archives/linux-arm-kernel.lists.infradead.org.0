Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4C54E17B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 09:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMg0KHQ3RXmktbEvzNgd5mK1YdcM+qU73eWbFIjhpGU=; b=I0P8TLZ0/qPvWf
	lJjvghQt3FVykJC5U2rU1bhoysN72w8KZxctjHIBRcGMV3JsJ8jgIs5fLpOkp8joOP0RePkmCDViH
	Gd1A7qOHrfXsarMo+K2qmIfK17/4nRIsgAVUE5Xm35avt9eMwxYucQPcprIvXsevCWI5zZRvsTQW+
	GFunijyBxDIaVs1mC9KnILkIW4y2uo0Gum12V7dEB6WWk8PvjjUFqVdJa87X+WEoihaR9a0f/GEXD
	k8vwOVIN+HK/XmjxXfCkd83cNCqBXp9es0rd9wbkMaitrlbN77vfj8HUqrsS+05DvWFQ6nzWVcznU
	jgPQ1+3fLEflN5WHYQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heERJ-0000C5-WB; Fri, 21 Jun 2019 07:58:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEQe-00009I-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 07:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1c5gL1nvNHdHQ5BkpLdgJdzuOwoAU/kbh+UdoysTyXM=; b=pAu/wPwQ/la+CpsmO0Um0wwWL
 MEJh1NFiNDmqiSzyVJWg9d305xmNqaHFsPj4UswwuyIGxOBO89gneWJeATAM6I3vDLzJPJi6i9pfM
 ZDuSssM/NtoWzXqBEcFkSzqYACyj4rl6nRXfQrvBEI/YP7fcVgyp9cNIiwlo2jHpwKddkFlplNe+N
 /jSnVzNV75x3KIrljhpMGmfAx9P29U3UlH1pElOvJkLEw1PK2Is3/IzXk0AZq4WeHaBNFLEu8Ehxq
 v4myVYpdpQZ3uENoFIlpUUzDr9CjnWvWu+nPa/VQ9wDC8oU2VQesEnJjTCTk+iX9K26D1bMoAcDeB
 g8AXpfLaw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58940)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1heEQQ-0003oX-Eh; Fri, 21 Jun 2019 08:57:34 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1heEQN-00035c-5P; Fri, 21 Jun 2019 08:57:31 +0100
Date: Fri, 21 Jun 2019 08:57:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: smp: Moved cpu_logical_map[] to smp.h
Message-ID: <20190621075730.nubg7657nwlkmmmk@shell.armlinux.org.uk>
References: <20190603231830.24129-1-f.fainelli@gmail.com>
 <20190603231830.24129-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603231830.24129-3-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_005748_160111_D660BDEB 
X-CRM114-Status: GOOD (  18.33  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:18:30PM -0700, Florian Fainelli wrote:
> asm/smp.h is included by linux/smp.h and some drivers, in particular
> irqchip drivers can access cpu_logical_map[] in order to perform SMP
> affinity tasks. Make arm64 consistent with other architectures here.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

I merged this last night, and it causes ojn's builder to fail 98
defconfigs with errors like:

arch/arm/include/asm/smp_plat.h:79:7: error: implicit declaration of function 'cpu_logical_map' [-Werror=implicit-function-declaration]
arch/arm/kernel/setup.c:594:21: error: lvalue required as left operand of assignment
arch/arm/kernel/setup.c:596:22: error: lvalue required as left operand of assignment

Dropping this patch.

Also, you may wish to make the patch description refer to the correct
architecture.

> ---
>  arch/arm/include/asm/smp.h      | 6 ++++++
>  arch/arm/include/asm/smp_plat.h | 5 -----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/include/asm/smp.h b/arch/arm/include/asm/smp.h
> index 451ae684aaf4..112d78e82f35 100644
> --- a/arch/arm/include/asm/smp.h
> +++ b/arch/arm/include/asm/smp.h
> @@ -20,6 +20,12 @@
>  
>  #define raw_smp_processor_id() (current_thread_info()->cpu)
>  
> +/*
> + * Logical CPU mapping.
> + */
> +extern u32 __cpu_logical_map[];
> +#define cpu_logical_map(cpu)	__cpu_logical_map[cpu]
> +
>  struct seq_file;
>  
>  /*
> diff --git a/arch/arm/include/asm/smp_plat.h b/arch/arm/include/asm/smp_plat.h
> index f2c36acf9886..ca6b91d400cf 100644
> --- a/arch/arm/include/asm/smp_plat.h
> +++ b/arch/arm/include/asm/smp_plat.h
> @@ -66,11 +66,6 @@ static inline int cache_ops_need_broadcast(void)
>  }
>  #endif
>  
> -/*
> - * Logical CPU mapping.
> - */
> -extern u32 __cpu_logical_map[];
> -#define cpu_logical_map(cpu)	__cpu_logical_map[cpu]
>  /*
>   * Retrieve logical cpu index corresponding to a given MPIDR[23:0]
>   *  - mpidr: MPIDR[23:0] to be used for the look-up
> -- 
> 2.17.1
> 
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
