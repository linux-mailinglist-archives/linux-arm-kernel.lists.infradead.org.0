Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C921C955C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHPi+BAOn9c2MfzO7SaE5EXV5WhNLayA8NYH/6oTRX0=; b=P6Fn35QRQU+A4Y
	w47KtVcRW1XDxE78xGP6yvaQXQEINwrDunxy2o3vGQ/f47nEpdg1FATaesjryEgivv7j8A9zPo+gI
	2mIiEGkkgrkEFRm8L3FtQPo3mrtELt9n724XXhzG1dDHH9UCXz7PzZliZvz23rO7OQ/zB2Qczk1Ed
	YrffPi3xLpIoRzl5NlaUptlC68J3ewHb7UsE9k5clk2REd01zE8so4oek1q9Kv1sZBsdGfZL3rFwa
	Lf5kHjhETGpV15T8uI/wjuufiB5QA9RihL+3kAei7/xJrag7Pt9HSrYbhXVGVDy+Y4kGSq6KEK2ek
	5g95M0rAfAJwFjRG6wQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiiy-0002Tv-Kr; Thu, 07 May 2020 15:46:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiiq-0002Rf-I1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:46:05 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A94A0207DD;
 Thu,  7 May 2020 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588866364;
 bh=MtT1K1QhdR93RnKXEINbJSy9JalbcJDWOmF/snclf4U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ImqSVH0/sYKWxb69Pox8SY+3RRS3M0o9prJxmrXYt8yg5zRTmmeBZywK3+SkqtrL6
 E/vnxRTB860fUDJ2IjcmXxXHAZtW7XsQ6S5pE/G3KhhSWAPa9YAoxBy66VhyVAX51N
 bX1AZ3994AOUMkgIZt+6mf9rmrCoRDcawwBU0ZGQ=
Date: Fri, 8 May 2020 00:45:56 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [RFC PATCH 1/3] x86/kprobes: Support nested kprobes
Message-Id: <20200508004556.d968ee87b91dc7940ac161f2@kernel.org>
In-Reply-To: <158884559505.12656.1357851132314046716.stgit@devnote2>
References: <158884558272.12656.7654266361809594662.stgit@devnote2>
 <158884559505.12656.1357851132314046716.stgit@devnote2>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_084604_618322_9DB57481 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Russell King <linux@armlinux.org.uk>,
 Network Development <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Will Deacon <will@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 May 2020 18:59:55 +0900
Masami Hiramatsu <mhiramat@kernel.org> wrote:

> Make kprobes to accept 1-level nesting instead of
> diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
> index 681a4b36e9bb..b695c2e118f8 100644
> --- a/arch/x86/kernel/kprobes/ftrace.c
> +++ b/arch/x86/kernel/kprobes/ftrace.c
> @@ -25,13 +25,15 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
>  		return;
>  
>  	kcb = get_kprobe_ctlblk();
> -	if (kprobe_running()) {
> +	if (!kprobe_can_nest()) {

Oops, something wrong. this kprobe_can_nest() requires kcb for
the parameter. I'll fix this.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
