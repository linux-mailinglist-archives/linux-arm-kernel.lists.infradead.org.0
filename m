Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2F66FF45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 14:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxk7epdUQhEXIWq668uIU/C3hdgUo6LuNc5qEXp7i2g=; b=Gt30TSmXWQToQp
	hHzY8lrNz8Rc7JAOfAcPPeZ1zBLxD2L06pZcD8kCA+4xOCcmNBoF5e0hXmcrJfQX2v9XJfCaNKC4A
	6ONvE+U8om72QEpGkqckpUGTf8JWReuyRySudEIXOAmwSOQkUX6ZhFon5nQsenfhL8o1HwIgCUAjQ
	5NwdIDV/1ZruZGTOrZgDrEvESREB5Rg05j8TW3A976YUPkSRvcfFa79a7Y7+dJ4ELbUHB0ceIhQSa
	JffTlj2P7pULowd6fFHCsNoHFhS2wYZBwhnFaf8Vev/pwQuWoTX+v3UJdwrl/o6qyJuJswry05CcS
	RQpVIStQJ2B2s4UsiywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpX8E-0008Kt-98; Mon, 22 Jul 2019 12:09:30 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpX6p-0007sg-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 12:08:05 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MC6fB3068161; Mon, 22 Jul 2019 08:07:59 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
 [169.53.41.122])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2tw9qu8u7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jul 2019 08:07:59 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
 by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x6MC4jnC006189;
 Mon, 22 Jul 2019 12:07:57 GMT
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com
 [9.57.198.23]) by ppma04dal.us.ibm.com with ESMTP id 2tutk6puhx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jul 2019 12:07:57 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6MC7vws41484688
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 12:07:57 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E2032B2066;
 Mon, 22 Jul 2019 12:07:56 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C0831B2065;
 Mon, 22 Jul 2019 12:07:56 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.189.166])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jul 2019 12:07:56 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 125E516C0D7D; Mon, 22 Jul 2019 05:07:58 -0700 (PDT)
Date: Mon, 22 Jul 2019 05:07:58 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 4/4] arm64: Remove unneeded rcu_read_lock from debug
 handlers
Message-ID: <20190722120758.GB14271@linux.ibm.com>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378175027.12011.5591853683946780785.stgit@devnote2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156378175027.12011.5591853683946780785.stgit@devnote2>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_050804_265941_9CCD3341 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, Jul 22, 2019 at 04:49:11PM +0900, Masami Hiramatsu wrote:
> Remove rcu_read_lock()/rcu_read_unlock() from debug exception
> handlers since we are sure those are not preemptible and
> interrupts are off.
> 
> Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
> Cc: Paul E. McKenney <paulmck@linux.ibm.com>

From an RCU viewpoint:

Acked-by: Paul E. McKenney <paulmck@linux.ibm.com>

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
