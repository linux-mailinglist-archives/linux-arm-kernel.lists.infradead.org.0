Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117B71C9DDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YcOdv60/VI00gSWo8x7jWPzg8JorYdLPFbqZ3FyxgM=; b=IOpYg2ymxOPpEq
	JUgCJkJynIx+6JQmRmBZ+gMKwWVk3+OkW9uHXhOTCGwsOuzDavuQeqLTn/EkLx387PmmuE65Hc6ij
	CyxtH5E+VQL/CCnbh/LHsIt7fqHxqnpNcXaoqAA90XrnV4uxqg/NHAf9cjOtICbXV7uplm+cPKo0N
	98B8udFE6oKhyI8zA6jo7YHShSJpgoAgrwLXp58t+kc7l5lAARY8ll5mirYys1vMM3x4sB+n3eB2I
	i5fpWcfKLhwFS/SwBijJd0+mFIvySAEqrqKugFc1sc/wvVQh4ddK48dl2lp+1D1ExCO4Mk8s4LgZO
	iybgyzRYMw7X2EWnWM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoNY-0003IV-O8; Thu, 07 May 2020 21:48:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoNQ-0003FB-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 21:48:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so8537573wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 14:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3VucMel2VcMPBSW+yTXmQNjNtFkFkvQaIgxnkoAD4f8=;
 b=XTFfyL0XjPY7WSY1nM9GnAVxhp50hPvP6sxaihKi3WiXOAuDH3DX4mdLzFm4TnCmEU
 wNlVTgcnpgvZ9uMAvSogigH38BM16GIeef3g71BVQGlch6SiBNo9/Tl+EcV/Jchxbqt8
 tYRdXaXzY0+ewSiDtKZpt0mbfGs37IJWEmcSutt4xCJ11cA0sXQMR6qqmqQUzhAcMd7M
 R0AUmbnjP/TbbJ6i4lmJElqstbx+E3124Vbo+GpGHh3RIq+UgjYxuXENF46mC0Hc43Vj
 eCR6GnZp5L6fu273XIOX68PBA4gnjAN/krX0Rjp6LEloMSuXuNM5cWpgUn45n6E6+yfw
 i7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3VucMel2VcMPBSW+yTXmQNjNtFkFkvQaIgxnkoAD4f8=;
 b=fF/JlZCmVpsRbJVAWZ3SGjF6doWQF5oIfkD+kEmm/FrZTIqWqmWz5PxIK8r6tMpsmv
 /ugnvTphEJ0yovICF5i8MqvCkHr3Ou6HCWEeU80IxM9rAnQT8JiZsjcy0c3+/ouzHm23
 3+I0BsD4K+rfN6Dnp+N6v5bcb0t8Wn/z+RFmGkKk3S6M0zARJ/ViH0ke33l5ZdrJ4O6Y
 Mbau9lgo6//mDDNs72lExyzJEFnJ07vN+9vVheOZWHcFJHV8nYOPkH6PEu9XBqR78dQ7
 ZRJvZmNHMjsZdN0vVmEOhVmbaXI/TH4Orp8cg2hzYkfJiCl50ClSxpf9qhj+FLIHJFNE
 L+iA==
X-Gm-Message-State: AGi0PuanBo7hn5NNNghwCBh8LmKHYGeONYftlaRMCBvPH20sLzrvArx0
 +TwVMGn0fZBM3TtG6hGd9KBgGgteuzS7uQlDqoE=
X-Google-Smtp-Source: APiQypINamJQOY2oV75ue3+82pSJ4u2LSA3OnQvIdaIqkuTVDtYRYPW3plUx8czr0GGQwzQAwytf98uAG9THrTKORH0=
X-Received: by 2002:a05:600c:24cf:: with SMTP id
 15mr12017512wmu.94.1588888098625; 
 Thu, 07 May 2020 14:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck> <20200507101224.33a44d71@why>
In-Reply-To: <20200507101224.33a44d71@why>
From: Luke Nelson <luke.r.nels@gmail.com>
Date: Thu, 7 May 2020 14:48:07 -0700
Message-ID: <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_144820_792725_49E7B391 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luke.r.nels[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Luke Nelson <lukenels@cs.washington.edu>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Zi Shen Lim <zlim.lnx@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

Thanks for the comments! Responses below:

> It's a bit grotty spreading the checks out now. How about we tweak things
> slightly along the lines of:
>
>
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..60ec788eaf33 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> [...]

Agreed; this new version looks much cleaner. I re-ran all the tests /
verification and everything seems good. Would you like me to submit a
v2 of this series with this new code?


>> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
>> logical immediates and all 5,334 encodable 64-bit logical immediates.
>
> That, on its own, is awesome information. Do you have any pointer on
> how to set this up?

Sure! The process of running the tests is pretty involved, but I'll
describe it below and give some links here.

We found the bugs in insn.c while adding support for logical immediates
to the BPF JIT and verifying the changes with our tool, Serval:
https://github.com/uw-unsat/serval-bpf. The basic idea for how we tested /
verified logical immediates is the following:

First, we have a Python script [1] for generating every encodable
logical immediate and the corresponding instruction fields that encode
that immediate. The script validates the list by checking that llvm-mc
decodes each instruction back to the expected immediate.

Next, we use the list [2] from the first step to check a Racket
translation [3] of the logical immediate encoding function in insn.c.
We found the second mask bug by noticing that some (encodable) 32-bit
immediates were being rejected by the encoding function.

Last, we use the Racket translation of the encoding function to verify
the correctness of the BPF JIT implementation [4], i.e., the JIT
correctly compiles BPF_{AND,OR,XOR,JSET} BPF_K instructions to arm64
instructions with equivalent semantics. We found the first bug as the
verifier complained that the function was producing invalid encodings
for 32-bit -1 immediates, and we were able to reproduce a kernel crash
using the BPF tests.

We manually translated the C code to Racket because our verifier, Serval,
currently only works on Racket code.

Thanks again,
- Luke

[1]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/test/arm64/gen-logic-imm.py
[2]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/test/arm64/logic-imm.rkt
[3]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/arm64/insn.rkt#L66
[4]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/arm64/bpf_jit_comp.rkt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
