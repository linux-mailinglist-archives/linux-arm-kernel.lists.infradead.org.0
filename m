Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8813DE46E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk2A0K0lXY72wxhOcdtaLzApJIrLBPBALslJYD+GnSc=; b=fWFBzV9bAefIUK
	Xw6MibgmNWE9lMFdr2q6mINo6/7qFoRupPCwY889weqxj+o/oOhGNiR4Mf9yMRTTaZpINk4W8zEEJ
	qJGEZ+a7957A20pAfcb2NM6dzsvZYRdHmDYtq8rV6k3FYMHwu6jNIbdS4mtheHOX0UJDpTn3tD/MC
	f5Xbd6ImGu66SNCkq4OeGIMnD7G864ot8R78LfiO1kSzoZxHZIUtlIPvKkKBfgeN8hsZob5B/PyXj
	K50QcU03n2+dGfvfNJLFVJl2VdaaERoxTYp+RcRKrgTkilgrPmvoJuiqW5zganBmQgOQMZ/+/lP2U
	4O6u6w1d7zARLOKy+R4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR2t-0001Qs-KA; Mon, 21 Oct 2019 06:19:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR2Y-0001F2-4I
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:19:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id q13so1719485wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMdLEV+CTaW2gmBLhEBpHxDKc063E21l+ayq5nzIrFw=;
 b=WOzYqE+LWe+E/HVhSozCNdcMsHavUK6DUIItAaXEkClsKdQaQfB42QALzHNS2WWwYS
 7/nd0om4bK/hNaghrCrAxwLmdR73Z4tXnnuwroc0+54D/uEAdDUy0U3x7XFfcuNcacaM
 G2t2PVl0OEsWAs+ON0q7SJAm80g0Gockqb5V9TwDq9CgrsLxWwFINCmx8t7mDomvn163
 au+GtLS99ib8TAWDJ1J+jgd/h16JcLxkcT/O5E+tFPIrOxgasAcAQUkydYejvXgehJGR
 CJoWn+myZwethBoe0UOOL2ixvKeT7IQpefZS3Izts0s0MnBwR25h089ZPQbW0zpPnsFy
 R5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMdLEV+CTaW2gmBLhEBpHxDKc063E21l+ayq5nzIrFw=;
 b=GTbhKmRoKrIQX9aIVJohdoaVgFzdbkNP3J3v7OcbJaBnLsW1o+g6T4r2N5nDYjmiA8
 0dPp2YI6wKa5ecMwuizBdICwT7ofaG+RLd7+vd7G9nUIc/omCwMDXjFJPU7zCQzaS23J
 vaxb/1v+BZXscZ1rQ/bszUSFOwvpJNawxG5qxRLbcbC9zc2B/e3UBgTaMHuMboGjkp4b
 g/6ovGUorWnrQpopISEVNzg63sjHTl1rFX3UaECn7yJpJ5OBhJziBEMquLJeLn8nXZY0
 iB93b1K0VN+dAw7D+xFHneyHBpqvYTODBKmwiZqUSVbyMtKeiTmnKIJNr2HPx7yVpP/w
 b3bA==
X-Gm-Message-State: APjAAAX1pPyYPrjae5Sb9nfXLvM47Y1LWKsXtQIbhzHRibWQIjVezNwU
 UoXygJvxhqrj3gKpPCPRt1CmI+SRWt5HU9+iMGyxOQ==
X-Google-Smtp-Source: APXvYqwtVZTOqZaaU9Te8Vy1PYbGo0mpgYTxtO/oPglrkIr329wlVgskZ9sxWEpAm2PexwLH+zbd9/RN3RL88+vlV/U=
X-Received: by 2002:a1c:64d6:: with SMTP id y205mr1400556wmb.136.1571638773936; 
 Sun, 20 Oct 2019 23:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-4-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-4-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:19:23 +0200
Message-ID: <CAKv+Gu9u-yO1SRTaT4TfdtckmPT0+JnHR6R=RPYRGfm9AACvCw@mail.gmail.com>
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller
 save
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231938_176549_CD1482C0 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 18:10, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> In preparation of using x18 as a task struct pointer register when
> running in the kernel, stop treating it as caller save in the KVM
> guest entry/exit code. Currently, the code assumes there is no need
> to preserve it for the host, given that it would have been assumed
> clobbered anyway by the function call to __guest_enter(). Instead,
> preserve its value and restore it upon return.
>
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

You might want to update the commit log to drop the reference to the
task struct pointer.

> ---
>  arch/arm64/kvm/hyp/entry.S | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index e5cc8d66bf53..20bd9a20ea27 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -23,6 +23,7 @@
>         .pushsection    .hyp.text, "ax"
>
>  .macro save_callee_saved_regs ctxt
> +       str     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>         stp     x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>         stp     x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>         stp     x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -38,6 +39,7 @@
>         ldp     x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
>         ldp     x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
>         ldp     x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> +       ldr     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  .endm
>
>  /*
> @@ -87,12 +89,9 @@ alternative_else_nop_endif
>         ldp     x14, x15, [x18, #CPU_XREG_OFFSET(14)]
>         ldp     x16, x17, [x18, #CPU_XREG_OFFSET(16)]
>
> -       // Restore guest regs x19-x29, lr
> +       // Restore guest regs x18-x29, lr
>         restore_callee_saved_regs x18
>
> -       // Restore guest reg x18
> -       ldr     x18,      [x18, #CPU_XREG_OFFSET(18)]
> -
>         // Do not touch any register after this!
>         eret
>         sb
> @@ -114,7 +113,7 @@ ENTRY(__guest_exit)
>         // Retrieve the guest regs x0-x1 from the stack
>         ldp     x2, x3, [sp], #16       // x0, x1
>
> -       // Store the guest regs x0-x1 and x4-x18
> +       // Store the guest regs x0-x1 and x4-x17
>         stp     x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
>         stp     x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
>         stp     x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
> @@ -123,9 +122,8 @@ ENTRY(__guest_exit)
>         stp     x12, x13, [x1, #CPU_XREG_OFFSET(12)]
>         stp     x14, x15, [x1, #CPU_XREG_OFFSET(14)]
>         stp     x16, x17, [x1, #CPU_XREG_OFFSET(16)]
> -       str     x18,      [x1, #CPU_XREG_OFFSET(18)]
>
> -       // Store the guest regs x19-x29, lr
> +       // Store the guest regs x18-x29, lr
>         save_callee_saved_regs x1
>
>         get_host_ctxt   x2, x3
> --
> 2.23.0.866.gb869b98d4c-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
