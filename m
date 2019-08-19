Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E5092466
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10OCPMOA2o3W2wx/b1xYZ5pzCJdf4EMIB3d/n0E+9oM=; b=UNrAJdf+BMz8Qp
	asHnONvoqDWNJodLRX/+Xvte6xDG6tZAgAwrMCuzVq3h0f4fJkZ5R8fjsXTVTUvSqagic2PlTK1hU
	g84NMGLVeNkNipAzD6DF8pRV+hzVU8dDiysq1tZYxDJpqmLUBcZ3mqpCu0S7HHKGVrK26/dhXRyEW
	W9LCiaXZBWtolS4NM9MVxo3VQEm8uiRgKn0QDc2rjcCy8TsmpY74P9oFxvcNqKZU/FoRcZlVz+qUp
	WYdIy6wMgEWSIVLTNut3xJ9q3lX5Rr7AQYqKeI+OzVbXiLiXxTFJ8tOVL6UN8FvjOM3UVY85SXcs5
	ftQAJhXrW98axRmUbntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhQn-0006HN-HH; Mon, 19 Aug 2019 13:10:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhQg-0006H0-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:10:35 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4C0720843;
 Mon, 19 Aug 2019 13:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566220233;
 bh=PJHIGkjFrjMv2g1mzBGACXVcW/F4cLU5JiDCgRCUXCo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UkQSMChYpShwjEp4bEaTD1kbTW5hoXNhrQj46VtSTrE5YdDfAGS3Km6LZy/tDZ5B1
 jRBpK6HghPF9YU0BlKsLvr7a3SNfeKNsGQuQB6GNzQsvivc7NmifG3PIcTPmJKgHFe
 7xsR0jUALLR9fLOBFycO7K9i5zn5dFCsGiclYMZg=
Date: Mon, 19 Aug 2019 22:10:27 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 0/4] arm64: KPROBES_ON_FTRACE
Message-Id: <20190819221027.80cb13a596c5c21fdbee79ff@kernel.org>
In-Reply-To: <20190819192422.5ed79702@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_061034_083590_BD66AD56 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Steven Rostedt <rostedt@goodmis.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Mon, 19 Aug 2019 11:35:27 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> Implement KPROBES_ON_FTRACE for arm64.
> 
> Applied after FTRACE_WITH_REGS:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html

Looks interesting! thanks for working on it.
I'll check it.

Thanks,

> 
> Jisheng Zhang (4):
>   kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
>   kprobes/x86: use instruction_pointer and instruction_pointer_set
>   kprobes: move kprobe_ftrace_handler() from x86 and make it weak
>   arm64: implement KPROBES_ON_FTRACE
> 
>  arch/arm64/Kconfig                |  1 +
>  arch/arm64/kernel/probes/Makefile |  1 +
>  arch/arm64/kernel/probes/ftrace.c | 16 +++++++++++
>  arch/x86/kernel/kprobes/ftrace.c  | 43 ----------------------------
>  kernel/kprobes.c                  | 47 +++++++++++++++++++++++++++++++
>  5 files changed, 65 insertions(+), 43 deletions(-)
>  create mode 100644 arch/arm64/kernel/probes/ftrace.c
> 
> -- 
> 2.23.0.rc1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
