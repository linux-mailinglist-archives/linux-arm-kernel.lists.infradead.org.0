Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D747E2135
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r25ES4F6CsyDd3QUil7ar9fC/yOmh6ElQhu2z0f27U8=; b=sdYtSKpja2qWuh
	5nN8nv0IF169g5NjpqSdjVzSSlrIMCeH53OcW2JP3sZynTPBmlde++8GkG0DuRaeTBcG8Aoe9HFmJ
	jE2emK1wwDIVRaF+GTY8rvk+ipEErIW/mwz4TqopH4TS1leowKodm8etJegjJ/o4I/1hPy3KGE2Xd
	Q50oM3Pg9Qz1oawwWKyGVyofi0UPWkhZ7oJDgALldmIrLbpfJyPske5NM8DPnFG4f9gvEvtKGeiMk
	A7i+To2Dbd0oyrs3wyWFWgsMpwAMBZtYYDNVicFYg+RZcPL/bwHL5SSWc+g2tRYJt4Z5IWhEMtiao
	Fcg7cTkE6MSMozRFfNyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJyy-0003Wl-Kz; Wed, 23 Oct 2019 16:59:36 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJym-0003Ux-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:59:26 +0000
Received: by mail-vk1-xa43.google.com with SMTP id n81so2999659vke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 09:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oiXTugK+glDXdJjZWJtXYSMgUR2uLVi/MAVMaB3F35U=;
 b=NQgD49Nz1FMbQT18HMLMCXz8AgV0WCkf006/YUznJf+3Ipz7NMjqeC2D/k5EAlN0/t
 nJVzfXQMkmOEB0gib3vBf8erowFTJOm5qjJaOs1Eb/RW6pzbK2BDP79mM6rksf9Y8+aj
 BJ0DPjReMffW5qFqvs/6b+ugvel1yOtCyIGIh/ClbZONxGCVxVbdNSXeTSCweh3hL9cu
 Vz0voRu/R6+IY98n6jLUZeKwAjG1FEibO0VIHstd/fmjmeYU0EmyWqWiyBvrGV7Tdguu
 n+UiY/XMLvkLH23E9uESUscCmkQ47unt7KrZbMWIK40hjbUz+Z7oCm/X+x38XKXz8RBw
 +LyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oiXTugK+glDXdJjZWJtXYSMgUR2uLVi/MAVMaB3F35U=;
 b=QX5XtsaxS9xlX2YyRu3GQEGRCERz2NX830nyrGUtvmIKp3qXOwh4wXxWmehXXxi0wV
 SU5JTB8AMYcVWXp1rk0/1oHurtIwh2lU+lyiWr8/Zc5YHf0tot0i5ytg2J/yk083hZXr
 Lxbo2b+Q1TnlbInNyXYLvU8Hw9qjpoCk0kn35dBAJPwK8zMjDkQ7vOdGiY3QGCbHxfWn
 JNzgsmYOO+rTRiJrR+MweZ/O8qZRWjm9rOMBZ3pMqSVf5vsiI7lmhyptTJ0qKbaBMjkO
 HTw4cMSVcRhh1Rvqu7R3VbXb9nq6W6KZg6AxEoRAK+VqbfIf3v7qstCAxWn/9R0SwztT
 Hfyg==
X-Gm-Message-State: APjAAAXtqTXdXND3n1iFumcrsHrBWAl3DncokuaG+NWGSBe/k9fwqro7
 kWkHzJcHd0mD3BJ34h1hsCVvdGyVxNQIksp0x06z0g==
X-Google-Smtp-Source: APXvYqwpR9GdHU5UA4nzyjfo+qvuhnpsktbqKSujsET0zjiSwqQ8iK3jjEiXPXLcBxBc59n7vUzXDYX4PbBLe56acZ4=
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6005570vkf.59.1571849961694;
 Wed, 23 Oct 2019 09:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
In-Reply-To: <20191022162826.GC699@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 23 Oct 2019 09:59:09 -0700
Message-ID: <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095924_186007_E9392E60 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
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

On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> so that this can be filtered out, e.g.
>
> ifdef CONFIG_SHADOW_CALL_STACK
> CFLAGS_SCS := -fsanitize=shadow-call-stack
> KBUILD_CFLAGS += $(CFLAGS_SCS)
> export CC_FLAGS_SCS
> endif
>
> ... with removal being:
>
> CFLAGS_REMOVE := $(CC_FLAGS_SCS)
>
> ... or:
>
> CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
>
> That way you only need to define the flags once, so the enable and
> disable falgs remain in sync by construction.

CFLAGS_REMOVE appears to be only implemented for objects, which means
there's no convenient way to filter out flags for everything in
arch/arm64/kvm/hyp, for example. I could add a CFLAGS_REMOVE
separately for each object file, or we could add something like
ccflags-remove-y to complement ccflags-y, which should be relatively
simple. Masahiro, do you have any suggestions?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
