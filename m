Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABC420EE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAPI93Xk89Sab/Z9XHwFHMgf9RS44QQKK+f5w0fF6Ik=; b=r3ChEwIDhpA/D0
	IkUdglQN6pzQJhokhi8K2NuSkf3Glj/FkC4D+O1yn/N/cThRjhP6BcG/6lCFqZ1ORX44D4Da0Ghvv
	lXTOCLR8rB1keV88YqY7+GEd+XkFWs6cl5qVpJSuK3H1im6h/lV3AsOfalrE8eFkJ0msJNw7exqa9
	EcvZ7/lj0uoYLRjqjsPMk0dyKUXoVPty36Xjx+c/0cyeQreDOyMOTbZsEMGtV18/ALk/pbc/ynlKF
	U8r5GjzTZSFMSv8+X7opMtfDzhdV6q1iU03J3Vor/m8ebByIukE0L5KULPyhCQ9QBRhdaWrQhTbOQ
	uDirMfIYr4MyJKvn1VRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLNK-0002Cx-Rh; Thu, 16 May 2019 18:45:06 +0000
Received: from emh04.mail.saunalahti.fi ([62.142.5.110])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLNA-0002Ca-On
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:44:58 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-51-100-nat.elisa-mobile.fi
 [85.76.51.100])
 by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 8FC4530036;
 Thu, 16 May 2019 21:44:53 +0300 (EEST)
Date: Thu, 16 May 2019 21:44:53 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Jayachandran C <jnair@caviumnetworks.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, jnair@marvell.com
Subject: Re: [PATCH] arm64: Improve parking of stopped CPUs
Message-ID: <20190516184452.GE10985@darkstar.musicnaut.iki.fi>
References: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485942532-2643-1-git-send-email-jnair@caviumnetworks.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_114456_972916_A88EB2A1 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.142.5.110 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Feb 01, 2017 at 09:48:52AM +0000, Jayachandran C wrote:
> The current code puts the stopped cpus in an 'yield' instruction loop.
> Using a busy loop here is unnecessary, we can use the cpu_park_loop()
> function here to do a wfi/wfe.
> 
> Signed-off-by: Jayachandran C <jnair@caviumnetworks.com>

Looks like this patch has been forgotten?

I have a system where CPUs need to be put in wfi/wfe for the warm reset
to work, and using cpu_park_loop() would solve this.

A.

>  arch/arm64/kernel/smp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index cbaab44..0691d2f 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -829,8 +829,7 @@ static void ipi_cpu_stop(unsigned int cpu)
>  
>  	local_irq_disable();
>  
> -	while (1)
> -		cpu_relax();
> +	cpu_park_loop();
>  }
>  
>  /*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
