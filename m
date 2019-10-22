Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5227E0DDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 23:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMKv4VWKlGfuGUht/vnQ3AGrR0c2pBrMrz1ZSmqlxAM=; b=dzCw0kXWLb5dEI
	V0LLxiN3WPQBtaTyraD7Rfb3zE9+9jSTaH7UGr7Q/1OSRWEjEaZSmRPMyAT8BhfCgAZQPPUTSrcYU
	0nuJbYMh56UNiXCn02vNlBo2cULwnzlvCt3mw64aHSGwsKatRahiAS+7XV/5rC1TrIdio1YaeYIOd
	1CgPNjDONvBlUlXFXIfue8lDsmaq28gPa/UkSEYYV91hYhCx7YEGYNU/dWmEA7h4xGfzqbrC3yY43
	8dvPRft/QoTHIxgh9CQ67uiSq5nbpN4FWv4VJE0jVmpn8dLEAYCBK4uqfR2kgE0H+MlpL+n6A2kT9
	Wh9wkCr9pZ3QQ+E3JsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN1yi-0004Iw-GM; Tue, 22 Oct 2019 21:46:08 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN1yb-0004Hc-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 21:46:02 +0000
Received: by mail-vk1-xa44.google.com with SMTP id v78so3964127vke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 14:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aMrKTryhNXEL/B3UTp309ZugYMIYjNFJ3JCQDb7MpUg=;
 b=e7GEnWKdbrItjF4U3+0nKF/lx06Wuk/tgdQ9ljPjtYqFQxUxKdNDAzX4a3J6VJRTNe
 fvZtiXWCwgTHkznQdje8cmtubTkLp7iAWQx8JQFReAwrsWNXsaolV9s3JWeGTMMfUgSg
 /repYwQIO6djr64TXfPZeXSpbh0xxoZWJHDJcfD+y+CBwuzbqN5LUnqOWUTiGUf9R0Qr
 mx9Cap4UGrAAnISWvG3FD7dZFNO0uJ247ZJQzIRI+2iGU4ea2aaoSxUg8M9zDlq777fS
 qDyNrdBaDb9pA7+swtiQSKBEfo7e0BGKpeLpbQo3G6PYa3kXJxBuLrIskMILqlTGUpAh
 147A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aMrKTryhNXEL/B3UTp309ZugYMIYjNFJ3JCQDb7MpUg=;
 b=AUWn0AEe+dP77lVOxyckKy8gZFfNreDoVLN9nS7zQTgPLbbH8Zb8ssCP56gJNyYVNU
 oXjVsLMqdFc/YXryxzCL8R94N7Vzj3cPUYPECXjPKiSUx4MOqCUi8wDLeg8GVROnAcsz
 j/J0TmfBs4hc/8cMuLlzKGAoX9zFt9cgcAPn3Ww9NGBnURpy0R7eRfJZeaY0YLMSI38D
 /KYJIhEJuNTECKHAZG2FnpZrt/fqvtDpE5fLBiu/y1skLN0lXDFFJTS2DPy9sKDgVFgk
 /niYr54yFXK3aEZ9CXQXkatYTCOv1m7YMs7waHkXj5FdfTE+ibme+v5V/UJh3frFsksR
 n3jw==
X-Gm-Message-State: APjAAAU88wlC1p6ln4YuYlZildkk714MGx+8L6zTQaTN7B14lGE6TbMK
 r/seAbhxQqIl00lt8Els21Be+z9T5PihnSL3PAWI2Q==
X-Google-Smtp-Source: APXvYqzBN7l8ISCANHOSmoQVZ7BSwt3ADui9uc+L7MwmUC/V+3k+jtXG0/+Q6ONVrUpOvA8D2yYjNueSFsMjPD9iN3Q=
X-Received: by 2002:a1f:a5d8:: with SMTP id o207mr3327674vke.81.1571780756763; 
 Tue, 22 Oct 2019 14:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-4-samitolvanen@google.com>
 <20191022182206.0d8b2301@why>
In-Reply-To: <20191022182206.0d8b2301@why>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 22 Oct 2019 14:45:45 -0700
Message-ID: <CABCJKudSBjOkPFZ-DBFRNqQ=kx5u1Q8W6MY0VGoo=5BTakP2dg@mail.gmail.com>
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller
 save
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_144601_143371_0C20BED9 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 10:22 AM Marc Zyngier <maz@kernel.org> wrote:
> >  .macro save_callee_saved_regs ctxt
> > +     str     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
> >       stp     x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
> >       stp     x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
> >       stp     x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> > @@ -38,6 +39,7 @@
> >       ldp     x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
> >       ldp     x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
> >       ldp     x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> > +     ldr     x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>
> There is now an assumption that ctxt is x18 (otherwise why would it be
> out of order?). Please add a comment to that effect.

> > -     // Restore guest regs x19-x29, lr
> > +     // Restore guest regs x18-x29, lr
> >       restore_callee_saved_regs x18
>
> Or you could elect another register such as x29 as the base, and keep
> the above in a reasonable order.

I'm fine with either option. Ard, any thoughts?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
