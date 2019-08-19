Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C123A923DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IelGOIEwGdPlgyKcjJvhmu/f9LAvjKVAlPEH2QgCT0=; b=kyOZ3vlWD1mLUX
	6iHOj4nDVicgkmKg3mMIXGSYrnP3nAQWNW3jNzr0DzKvoxcKHdsNn+zRyxKb9qP9Yj6nfnHGgCN1D
	jedc+069KROJw9axelxwVKW60gTNIuxTkFoC/PU/nut5awAPeNRu5gJsrSFimGA+ggRjjklh5kGpy
	7rkc6KrqV/QSD6GfTG0S6NPh6IwPNlavGFv2OYk8foE3cbl5zL+DZ/SBznkJ5ve3VLQ8u1YFgluRQ
	7CiaEuyKs6EyIs2dZ+tHMR+fcnQZ5KRHjuBghG6F2wB6CjB7HFZ5Db7F9YltV7+qDotiRwOeGPBro
	/o7IO9CPMG9HKW9p74rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhAG-0004JT-Jc; Mon, 19 Aug 2019 12:53:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhA9-0004Iw-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:53:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60A9A28;
 Mon, 19 Aug 2019 05:53:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 791583F246;
 Mon, 19 Aug 2019 05:53:26 -0700 (PDT)
Date: Mon, 19 Aug 2019 13:53:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 0/4] arm64: KPROBES_ON_FTRACE
Message-ID: <20190819125321.GA9927@lakrids.cambridge.arm.com>
References: <20190819192422.5ed79702@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819192422.5ed79702@xhacker.debian>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055330_035543_74182FCF 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Aug 19, 2019 at 11:35:27AM +0000, Jisheng Zhang wrote:
> Implement KPROBES_ON_FTRACE for arm64.

It would be very helpful if the cover letter could explain what
KPROBES_ON_FTRACE is, and why it is wanted.

It's not clear to me whether this is enabling new functionality for
kprobes via ftrace, or whether this is an optimization for kprobes using
ftrace under the hood.

Thanks,
Mark.

> 
> Applied after FTRACE_WITH_REGS:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
