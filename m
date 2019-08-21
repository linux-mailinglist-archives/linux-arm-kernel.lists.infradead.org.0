Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ABE96F0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 03:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgR7AUhMtADhXtIEIyzIULg667FfA8HnmhprQnNDVNo=; b=B8aHHKqXAaQvA6
	LnVnxy7GCoKmhq848WA5kGxiFKptweh5K6eWq0ZfctMDaOasdrSuhA8hbjbcM0wGt9psnkIL3AOFk
	LkvpNRairS+zWkk94HClN6Uc/Ak/JKVtUIjKXRAXYwu+stBmC5e4C0CZhexg8Ib7WeQ+1OaByJWRd
	90S7mGX+sAZ0p1j/a0tOGWQbcBVR0dAyIAaO/yHc5Os3e2oYuJIdiMhLOFFzhVoHnBY06Kkd1yn8O
	MU95hPqcDrMNDOZWx+UB97MuNKcudQcAfFdWjcBb22VCMmycLMZe14Qc/5r3pEMPtGH/F2FHgL08Y
	EOs6n+ng4rnoizKptMJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Fo7-0005lf-TF; Wed, 21 Aug 2019 01:53:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Fo0-0005kh-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 01:52:57 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFADC22DD3;
 Wed, 21 Aug 2019 01:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566352374;
 bh=Fk4BuAJQ/UfY9FS0/yq7nmtZd1hFBjcyaLZT6Qsj3rQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=k4TG6qwivdIYF+iiueoI0OgTmUJAFVF88b4Py7H64RPYZqf4RhvPKeCawLZ2wpM1r
 mMb3j5D0cEZm0+cLYXJ8ZcxeoV2G6H3MiJ5foTHnoGmWyIRNDTdujFYW/2KQsb9v0+
 O5CPI4WDm44Zd1wOt/HIKUhDpSEy/rbt0NfRv/cs=
Date: Wed, 21 Aug 2019 10:52:47 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Message-Id: <20190821105247.f0236d2c04b2c0c4d4e1847e@kernel.org>
In-Reply-To: <20190820165152.20275268@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114109.4624d56b@xhacker.debian>
 <alpine.DEB.2.21.1908201050370.2223@nanos.tec.linutronix.de>
 <20190820165152.20275268@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_185256_390888_7F737599 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Tue, 20 Aug 2019 09:02:59 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> Hi Thomas,
> 
> On Tue, 20 Aug 2019 10:53:58 +0200 (CEST) Thomas Gleixner wrote:
> 
> > 
> > 
> > On Tue, 20 Aug 2019, Jisheng Zhang wrote:
> > 
> > > This is to make the x86 kprobe_ftrace_handler() more common so that
> > > the code could be reused in future.  
> > 
> > While I agree with the change in general, I can't find anything which
> > reuses that code. So the change log is pretty useless and I have no idea
> > how this is related to the rest of the series.
> 
> In v1, this code is moved from x86 to common kprobes.c [1]
> But I agree with Masami, consolidation could be done when arm64 kprobes
> on ftrace is stable.

We'll revisit to consolidate the code after we got 3rd or 4th clones.

> 
> In v2, actually, the arm64 version's kprobe_ftrace_handler() is the same
> as x86's, the only difference is comment, e.g
> 
> /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> 
> while in arm64
> 
> /* Kprobe handler expects regs->pc = ip + 1 as breakpoint hit */

As Peter pointed, on arm64, is that really 1 or 4 bytes?
This part is heavily depends on the processor software-breakpoint
implementation.

> 
> 
> W/ above, any suggestion about the suitable change log?

I think you just need to keep the first half of the description.
Since this patch itself is not related to the series, could you update
the description and resend it as a single cleanup patch out of the series?

Thank you!

> 
> Thanks
> 
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674417.html


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
