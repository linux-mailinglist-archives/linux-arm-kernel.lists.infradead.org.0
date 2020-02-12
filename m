Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7AA15AED5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 18:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MboXMBvvsTqTBHBMFNMG8xFoA3bArsPrSsGISEjWRg0=; b=lo1AFWp1OrQi7a
	gwnwtrEBz/BYhWYn123Cwzjm7cTBl68wD7lrTe8SyZmgSOWoRO3tTC89oGIoiEwOvstCCuvq+XfDK
	iYpvXlYmhyAojJP0ce8Wxa3VbrmNb8XJlvKiK/bSDF53nkqQcCj9aprXr88rwWEUitzGh1GMbMzz0
	FTbr7zo6XA7uCC73TKoN7kemEg/NvPftPoi5pc6zkCpwNlc3c2frgvSDcixPw9fxmKiS+3Tbh1dOr
	QF/H5ZQwvw4a60hS7xLlhD/fXfDqSiPNoFhzMbtJAlDH5PXgsZMuwyIQ50AAgl9CcNvDnj2jbhI+5
	v2fZEooWvE35d9lKyTjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vwK-0005QD-4j; Wed, 12 Feb 2020 17:36:44 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vwC-0005Pd-4h
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 17:36:37 +0000
Received: by mail-ua1-x941.google.com with SMTP id c7so1183836uaf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 09:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oXC2J3nEK5SwOdFoK4ULqW0570rBTdySIYo3+gIlo9M=;
 b=WTUFnbqwYf+rL57s/FGxM1+vxE9Jz5IK7E+OqB1D8Yag+QT+LdUeuoco6oTC4zgy7L
 TKipBuXtB2O8hn6XUjmdUpdrUfke0F8SCdmbLI53UNP2BplyGiw6vXFuWmFYFzZtLQeN
 5wpar/5ILukP9S05BShLrDSCKEPCKcsSH/oAGyElM1PsKMhn2zidyE008XJx5PD7dUMg
 n4j6E1083epW+BkViMtDeuVftqlXVyhEyjY2m1kZGGBAfrXmhWXYSRy7y6cbm8taKOCJ
 y3l8mKYES7s2h2SOYn+hKiFfdkCBn2+SUUTjhfBmJGbvU+drkZVcb4Ou3zqNKzp4BpKd
 nG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oXC2J3nEK5SwOdFoK4ULqW0570rBTdySIYo3+gIlo9M=;
 b=P1zCMoXasMce51Xq/iLG01/j+hF1E0ICbftfvNisGYspRWr+aPEhhH37uyKhHAMgMh
 AZKAUr5b4AM7cJaA5fzra/vgGyeVYSCiGSxS4mtdSoMls81TOv4p/qgJG+lAVrR1E2h4
 zp1vq4QOFfw1YLSloQIEENxG+eIcBcLZD5KIIp0YbUPuQQ7JiwksKPo9FF5B+E9VwPb7
 tmEnQmoUR+VL4rqMP8mSXmsaH72X1PBsH+abOowQI98j0/RHN38ekqRaoTF5ruyqUr4f
 O9ITTn6FOJ0Ztx8Ylww915augDGKj1LmsqSq3XrVMwQ8Fooxi5tKLSKsH0v0QrB96w7i
 Y2bQ==
X-Gm-Message-State: APjAAAVTzlHIxJ7S05ZD09mPbNryqGiwu4cN6qoZfYtt8IhFL3zmRUqG
 oe3R13JzEC3QyQARZY5owSSlKytBrEBTO3sqO+3qDg==
X-Google-Smtp-Source: APXvYqySnCPpjBgnelV684/U07lYpWTQs3A+aOrC5t4BnyXhAn03wUz7JH8o/EDUYvzcfRllMDnDJ3B306fqXtaeZDQ=
X-Received: by 2002:ab0:422:: with SMTP id 31mr5283734uav.98.1581528994562;
 Wed, 12 Feb 2020 09:36:34 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <63517cff-4bd6-bb6c-9a54-23de4f5fbb4a@arm.com>
In-Reply-To: <63517cff-4bd6-bb6c-9a54-23de4f5fbb4a@arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 12 Feb 2020 09:36:23 -0800
Message-ID: <CABCJKuff08oGqg-2WO-J=SkGHcX+2KCrqhmgVnQT7ujKGUcvag@mail.gmail.com>
Subject: Re: [PATCH v7 00/11] add support for Clang's Shadow Call Stack
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_093636_207327_94EEFBA1 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
> I found I had to add:
> | KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> to drivers/firmware/efi/libstub/Makefile, to get this going.

Ah, good catch!

> I don't think there is much point supporting SCS for the EFIstub, its already isolated
> from the rest of the kernel's C code by the __efistub symbol prefix machinery, and trying
> to use it would expose us to buggy firmware at a point we can't handle it!

Yes, fully agreed.

> I can send a patch if its easier for you,

It's not a problem, I will include a patch for this in v8.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
