Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0111295AF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7x3pEmxvsOIcYOaLl69KaHsiesif+RX23MUDrNIGxY=; b=QMFDeRK8ovp/tt
	F98XxNfxw3t/zvToX+6LqgXqxTRqfERbSINmyp5pof+tVpF7ZcA+8gMBxYbZz1nd3Notj+5pVJeVi
	+OlVpWuNQDKd25jORvPnKmr4Z6JVaQP5ii8IPtrA2ThQ9Az0H5P8covRXVv0+2UVbGeGTrun5Oal4
	NGiPr75HKWm9YxTvH0mamD/fi+7ad4JMlW5MGTl/6Fsk50vFIO743D2TNnPl3f0gyIYvXoj1DIqeM
	CIzIdBvviV7bxzzXVMoIH0G9nIdW5OVqxqTL4CbUmVyaWmaDZhe2y8QwY03NN1ihC7PIX/AOeUYIL
	Mpe05m5OMmA3iqUqe8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00Qs-0002Sg-10; Tue, 20 Aug 2019 09:28:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00Qf-0002Rt-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:27:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3195DADD9;
 Tue, 20 Aug 2019 09:27:46 +0000 (UTC)
Date: Tue, 20 Aug 2019 11:27:38 +0200 (CEST)
From: Miroslav Benes <mbenes@suse.cz>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 1/3] ftrace: introdue ftrace_call_init
In-Reply-To: <20190819191622.57050fdf@xhacker.debian>
Message-ID: <alpine.LSU.2.21.1908201118190.9536@pobox.suse.cz>
References: <20190819191530.0f47b9b1@xhacker.debian>
 <20190819191622.57050fdf@xhacker.debian>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_022749_775461_1DA32306 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Torsten Duwe <duwe@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 19 Aug 2019, Jisheng Zhang wrote:

> On some arch, the FTRACE_WITH_REGS is implemented with gcc's
>  -fpatchable-function-entry (=2), gcc adds 2 NOPs at the beginning
> of each function, so this makes the MCOUNT_ADDR useless. In ftrace
> common framework, MCOUNT_ADDR is mostly used to "init" the nop, so
> let's introcude ftrace_call_init().
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  include/linux/ftrace.h | 1 +
>  kernel/trace/ftrace.c  | 4 ++++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> index 8a8cb3c401b2..8175ffb671f0 100644
> --- a/include/linux/ftrace.h
> +++ b/include/linux/ftrace.h
> @@ -458,6 +458,7 @@ extern void ftrace_regs_caller(void);
>  extern void ftrace_call(void);
>  extern void ftrace_regs_call(void);
>  extern void mcount_call(void);
> +extern int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec);
>  
>  void ftrace_modify_all_code(int command);
>  
> diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> index eca34503f178..9df5a66a6811 100644
> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -2500,7 +2500,11 @@ ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
>  	if (unlikely(ftrace_disabled))
>  		return 0;
>  
> +#ifdef MCOUNT_ADDR
>  	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> +#else
> +	ret = ftrace_call_init(mod, rec);
> +#endif
>  	if (ret) {
>  		ftrace_bug_type = FTRACE_BUG_INIT;
>  		ftrace_bug(ret, rec);

I may be missing something, but the patch does not seem to be complete. 
There is no ftrace_call_init() implemented. MCOUNT_ADDR is still defined, 
so it does not change much. I don't think it is what Mark had in his mind.

Miroslav

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
