Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5C86C937
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZjqw1IEIDiWtUK3tRGXOPg3HzSTCrugPuZn7ePftwQ=; b=OmiBnUswd47Jnx
	wo/Hkbtvaw/YjhGvuYiwpV6SipwMgUGCigziScYuXbjshyhrAzcfC3mSuq5Fh8kVeEgDxCV5y0dcF
	3Xjrx25MbgXHiDnWgdjm0nQNyP4umREw0ga2cjBg6sV35WzBmVTIesuolhLhrjFgsgo+E+b6aG85Q
	9p7cSeaXfGGaBxQUq/5zZHGWqr6tKuOudYXWR8YN55kPZwd+aLV7y4PUjm2nIrHFqDrBqWqGParh2
	M9zWOsNRKQWgGIIHqEUqeaFzTeHZXQnMOMyiplgLU3gSvVfHjr60LtiP5VxszESyhkT1m8t/k2NDj
	yQG2gGM7f35UAAxR09ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzov-0004rM-Mm; Thu, 18 Jul 2019 06:23:13 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzoW-0004qd-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:22:50 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6I6Mend041227; Thu, 18 Jul 2019 02:22:40 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tthu4418h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jul 2019 02:22:39 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x6I6B77g003381;
 Thu, 18 Jul 2019 06:22:16 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
 [9.57.198.26]) by ppma01wdc.us.ibm.com with ESMTP id 2tq6x6dfft-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jul 2019 06:22:16 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6I6MFNg11600468
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jul 2019 06:22:16 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D8CA7B2065;
 Thu, 18 Jul 2019 06:22:15 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B70A6B2064;
 Thu, 18 Jul 2019 06:22:15 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.167.28])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Thu, 18 Jul 2019 06:22:15 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id BC45B16C998C; Wed, 17 Jul 2019 23:22:15 -0700 (PDT)
Date: Wed, 17 Jul 2019 23:22:15 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug
 exception
Message-ID: <20190718062215.GG14271@linux.ibm.com>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342863822.8565.7624877983728871995.stgit@devnote2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156342863822.8565.7624877983728871995.stgit@devnote2>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-18_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907180072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_232248_637781_AFC278C6 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: paulmck@linux.ibm.com
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 02:43:58PM +0900, Masami Hiramatsu wrote:
> Remove rcu_read_lock()/rcu_read_unlock() from debug exception
> handlers since the software breakpoint can be hit on idle task.

The exception entry and exit use irq_enter() and irq_exit(), in this
case, correct?  Otherwise RCU will be ignoring this CPU.

							Thanx, Paul

> Actually, we don't need it because those handlers run in exception
> context where the interrupts are disabled. This means those are never
> preempted.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Cc: Paul E. McKenney <paulmck@linux.ibm.com>
> Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  arch/arm64/kernel/debug-monitors.c |   14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index f8719bd30850..48222a4760c2 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -207,16 +207,16 @@ static int call_step_hook(struct pt_regs *regs, unsigned int esr)
>  
>  	list = user_mode(regs) ? &user_step_hook : &kernel_step_hook;
>  
> -	rcu_read_lock();
> -
> +	/*
> +	 * Since single-step exception disables interrupt, this function is
> +	 * entirely not preemptible, and we can use rcu list safely here.
> +	 */
>  	list_for_each_entry_rcu(hook, list, node)	{
>  		retval = hook->fn(regs, esr);
>  		if (retval == DBG_HOOK_HANDLED)
>  			break;
>  	}
>  
> -	rcu_read_unlock();
> -
>  	return retval;
>  }
>  NOKPROBE_SYMBOL(call_step_hook);
> @@ -305,14 +305,16 @@ static int call_break_hook(struct pt_regs *regs, unsigned int esr)
>  
>  	list = user_mode(regs) ? &user_break_hook : &kernel_break_hook;
>  
> -	rcu_read_lock();
> +	/*
> +	 * Since brk exception disables interrupt, this function is
> +	 * entirely not preemptible, and we can use rcu list safely here.
> +	 */
>  	list_for_each_entry_rcu(hook, list, node) {
>  		unsigned int comment = esr & ESR_ELx_BRK64_ISS_COMMENT_MASK;
>  
>  		if ((comment & ~hook->mask) == hook->imm)
>  			fn = hook->fn;
>  	}
> -	rcu_read_unlock();
>  
>  	return fn ? fn(regs, esr) : DBG_HOOK_ERROR;
>  }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
