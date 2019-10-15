Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBC3D810B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSRpZ9mmf7/+5i/T+uOoj0eQ1Uk5iXfKyciSkt/S6As=; b=OYZHTrXutovX0K
	0sigUq1njMTCl7Yf6H610YmDyAnOkq0MCIG7WfCqjbrSVAvWvJNhX4UURsCqJ2raukMd9vOoTIZiJ
	7DAIDhGECiP4GP1MzZeAyRhDL4JEUlb3VRzM/Oitt0s6J71KMd42htKsnULlpb/H7EHrpT8V8LoSN
	DsZGjQs6nFBRR1fDm9CAP0t5CHoVVk6sYYWxG8ZpILzeE7yLxnylEp66EyjK/T740YP6AfMQU801j
	KNOT4vRj2+igDA5U6846BPqGYBRmZh0MZTkTswuXYs5seYExVO4hpLi293s3QAzqgJ6FuY014xyRw
	hmDoaOorzcMl4lAX81nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTTG-0007Qz-AK; Tue, 15 Oct 2019 20:31:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTT1-0007Pv-P3
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 20:30:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23so12847814pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 13:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hzk1qvTErm6MzlmjU++xwNdwuPNSLvMppNGGRMZH7Og=;
 b=IyN/hBPF4/R54V/cNKNajn6JQXuJDUT5ZPw8d82nxcT3NAgQxdXVCLbwH0kIFzY7Yd
 pa4M5ylWMOwB1wbttqvdKtJoI0hRcqdTb/MduON7u7TRwjPgJpRTPpEov8ettl67kdxR
 7aK7oKyd06USDYybsN8LkONIh31YHhEHRlBbfQg/06RhcvRGMWY8FJR1wxrHrZVMc/k1
 797M6Dt6sLOkoezNxRJRlFMPR4sWks1VtjC/pHNVd4Lym8iqF/HOWVKLr1mF8wszB/H9
 TpSznSzAiKdA3r/sscQjWQjskaeWORggI3HvaiKHe+9fBe8Wx0WbjgT3r7TDmnwo7wGW
 NjCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hzk1qvTErm6MzlmjU++xwNdwuPNSLvMppNGGRMZH7Og=;
 b=AGud8l+RBZ1eNI2vLc5x0VmGud2SLY/7mcepJ7oWRvmcbsjs/jWL27pMGDQwMd+E0O
 8a/Jtxfx11FD6x99ynOYt72xtj7MUltR2mg+/+M7q4/TEaPhWyTfqxkqfRdto1JevzMl
 T1sG00qRDZSiAFYPcPkyflAqXUSi1XXgkhKrxZ6Vv9Z11nbmCsEkjdp0soUVhA62Tdqm
 DpU+zdsVFZOpZlo7kHq6CfnJTYhab1XxBADlU6PrHeWhgCmogP0GJtiuPmNRk45Zi7qp
 Hp/IQXocwo48udNuLM7/CsmiS73bEcMaKSEP2wZDwPVjCNZWZ3nz9YHb+a64FKQb1zxt
 LQTw==
X-Gm-Message-State: APjAAAUbN0hWOU8DKeLfeBKextbXMh3DQu5iMu+KsZkws3kVwaWyKM4P
 MeEBN4THlMKaZl/vG/LN9Q/OEsre1YdXbQtXg76cHg==
X-Google-Smtp-Source: APXvYqx0eRPPuDDI1HBjXtrhJQx5x6xoVfeO7id3PzGSUww80+yZAp1Tw387MKgbeWgjXFnrJGGsMGf27GFJZ/mEOsc=
X-Received: by 2002:a62:ee01:: with SMTP id e1mr41183643pfi.3.1571171448200;
 Tue, 15 Oct 2019 13:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
 <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
In-Reply-To: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 15 Oct 2019 13:30:36 -0700
Message-ID: <CAKwvOdnAKNRH7NeOjCDN-ZayE2id_3=FtC5gh0UwoRNpQOaRDg@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_133051_841329_1A5B7F9B 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 5:00 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Oct 07, 2019 at 04:47:20PM -0700, Sami Tolvanen wrote:
> > On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > Should the definition of the ALTERNATIVE macro
> > > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > > patch to not pass `1` as the final parameter?
> >
> > No, that's the default value for cfg in case the caller omits the
> > parameter, and it's still needed.
> >
> > > I get one error on linux-next that looks related:
> > > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > > -j71 arch/arm64/kvm/
> > > ...
> >
> > This patch only touches the inline assembly version (i.e. when
> > compiling without -no-integrated-as), while with AS=clang you are
> > using clang also for stand-alone assembly code. I believe some
> > additional work is needed before we can do that.
>
> Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?

I don't think so.

> afaict, you have to hack the top-level Makefile for that.

That's right.

$ make CC=clang

sets `-no-integrated-as` in the top level Makefile, unless `AS=clang`
was specified.  So today it's either Clang for inline+out of line, or
GAS for both, but we don't support mixing and matching (ie. GAS for
inline, Clang for out of line, or vice versa).

But older LTS kernels probably don't have the patch that ties the two
together, so Sami's patch addresses the removal of `-no-integrated-as`
for inline assembly (IIUC).

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
