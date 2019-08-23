Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6235C9B275
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifdyPlszaoAkL0xRwfrm2tlQWgBu9ZcvRNnkyPXCcjY=; b=BIYt1E4zDUANM7
	TLy+nZ4qq61dHBJ89PA6PBf9AL6x4hvq//TrixyjDPiaPwQkKd2yPjs4ducexKHCFQQ3V99VDVeWi
	VxbP/ZOIqNpOpTaOFHuVSaJK3jvWt4hvDQRdvd7F1xHixVvhAVZ0JyonpUFVIsj+b8tvJvXZfPVpy
	HkCQpNi4TuKOfYgH40Wk0QT8YRv/ZoA6RHNvPSyVn2Tax07gJ9aB3OFhC9Odp2VNplcFwK+xjEqI+
	Ne30ZysKIzYEO6gkhvda8UJgY6Q6dQWZMQ6XByF+w+jLy8hP4AqkSujNzOKIu/hJ0hJ9JMP08OlPG
	1srlg81S7W6a2aNE5NGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Auj-0000nV-VR; Fri, 23 Aug 2019 14:51:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Aud-0000n2-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:51:36 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97BFE2166E;
 Fri, 23 Aug 2019 14:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566571894;
 bh=aVchjuHWTXOaTDZuWT4rE8xKpWB6QsFxLg6BDqrPMBU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lOhadIdBCMKhZZkWRsZKTsc0dnSKABUI8r7IDxP9auoTwL6cq9VHHquL4sgCddJ6+
 i1Jq9+dVh+hxyozPx0IO9InPMe2+rO8hPvYEdx76EdJfBrs/UVH85CpxjJtTRN9YbF
 4CjkRdbiWquBWBZNXw5KcjOc4pDLb86Dt8FmvwSE=
Date: Fri, 23 Aug 2019 23:51:27 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Message-Id: <20190823235127.6b1ab6bdb3a280b64ca8585e@kernel.org>
In-Reply-To: <20190821095527.729b2b0d@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114109.4624d56b@xhacker.debian>
 <alpine.DEB.2.21.1908201050370.2223@nanos.tec.linutronix.de>
 <20190820165152.20275268@xhacker.debian>
 <20190821105247.f0236d2c04b2c0c4d4e1847e@kernel.org>
 <20190821095527.729b2b0d@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075135_309983_BE0CE9FB 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Wed, 21 Aug 2019 02:09:10 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> > > In v2, actually, the arm64 version's kprobe_ftrace_handler() is the same
> > > as x86's, the only difference is comment, e.g
> > >
> > > /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> > >
> > > while in arm64
> > >
> > > /* Kprobe handler expects regs->pc = ip + 1 as breakpoint hit */  
> > 
> > As Peter pointed, on arm64, is that really 1 or 4 bytes?
> > This part is heavily depends on the processor software-breakpoint
> > implementation.
> 
> Per my understanding, the "+1" here means "+ one kprobe_opcode_t".

No, that is the size of INT3. It just emulates the software trap on x86.

Thank you,
-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
