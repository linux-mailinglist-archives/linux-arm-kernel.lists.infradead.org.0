Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B15AD810F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IDUnN4WydWO86Jk9AvxA3p+ak0xgvwUW67ijY4gAjY=; b=V1Ekcm59pnCjLm
	m393tC8oDnZxv42ypQ4aTY4W9EzzUKVkJb6oreQ+w7MVGvT+oS+kQfHn8vGoL47mZbEnS8fAv+1cS
	tFVyaGR0sx5Zj7yCQBWocJpjimujULN8BP7t1tIxClrHj3TFhmey4LUixRsR9GpgkCRi3YZqlMIlD
	hMaHZXN6+wuIBq8OzA17V0QhCa3txICvsNLbSJOjvOaM3uK0faeC2+xGlESSKTWT3epSiWzcSLOvq
	1KVdsOWUVvdIzyzLtwg69c3A+bRwkGLIcYIlMX/u3lvKC8pxCjbRvX/ypFn70fglEkaTKEgGc2a5R
	IojN1j7mY0Ay4Gkf33uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTU5-0007i0-LS; Tue, 15 Oct 2019 20:31:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTTp-0007hD-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 20:31:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so13216905pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b1Wx7T8Y9ZqViOXmHCItw7Yhq2PJK0YZHH8H14s5lUc=;
 b=QbwZlkJlaa8RwKN2caJSszEFkoIlQfSLAn3vpYi4uG5YF4q4ptdLfRBW41FJmoMy8Z
 mTkDVOXiYk50JsrhH8PcYLTUsoOlKu0EcXayZ3waVLGqK5F26uKE4MACIxoP5PxNqmk2
 HfdFqX7I1cnLRwTtT2STvs/RBIf2Igt2jHymbz7rrKPeelouM01EVgPQCNUPJF2HKKhB
 Zd2nO9p14A0ZRnHKzo3YLkcNq0WY2MpYgYtstXUueZMixAe7Be1nKMIJlUFUD3JMnmCT
 yqqA8ZR9fuUUAA56sbBTjXw25EwrbXB4mrVdNY4OAGmvr20Bp2hotqQKCNf80m/AfWYq
 kg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b1Wx7T8Y9ZqViOXmHCItw7Yhq2PJK0YZHH8H14s5lUc=;
 b=tatBRD1LPIY868o6yZu3YLuUj8EfMc6KxI7LgJinkrgm9RTRJ/wWEq7RSJF76kV+hW
 UxtDXCh7lqqnemwJvaaVurgjvqPx4dJcSvLs+DWS1wPlW73vzSTOz062HtiD/svOlCcr
 ofn01Ay6PWHn40Br0KEQ/BFhxL+yvDDkok2xCghjZclthVUjoHeij7wmpA1NMYaODkTm
 YO/HuJ3zR16zMOIQqPQSN9C2ZVm6hUPFHF82w3zFnIPLOOm2lOTQfAR5Oju0bPhhnYWl
 rykZnIQEjIz63Z8nLbNMJCuYufC5AM4qIv+B9ZXIYxdni3ZEuOi4d6ldzIPkuN8IFZ6y
 JHMg==
X-Gm-Message-State: APjAAAWMk6WE24d7coESP4Mcf/ZRUNtoJ5J6oVEn+o4WgLloRJm/tv5v
 s4kEGtJXNGSmhTWgcJBTjet6C0JbjyFXz3uYbdy5Xdus
X-Google-Smtp-Source: APXvYqwyx6WvfGAXztJykPND1tjjNggAgNgl6ULQGcJJLh9GTlWdRYROpSxLFbDW9zbbRAdLxGcLKmtO0CqJqMcgfMo=
X-Received: by 2002:a63:5a03:: with SMTP id o3mr3628128pgb.381.1571171500038; 
 Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
In-Reply-To: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 15 Oct 2019 13:31:28 -0700
Message-ID: <CAKwvOdk_BJob16HkuKazfpX43mXnhEzBwfM21Tebf_vcbxoPoA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_133144_740396_7F800A5D 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 4:47 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Should the definition of the ALTERNATIVE macro
> > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > patch to not pass `1` as the final parameter?
>
> No, that's the default value for cfg in case the caller omits the
> parameter, and it's still needed.
>
> > I get one error on linux-next that looks related:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > -j71 arch/arm64/kvm/
> > ...
>
> This patch only touches the inline assembly version (i.e. when
> compiling without -no-integrated-as), while with AS=clang you are
> using clang also for stand-alone assembly code. I believe some
> additional work is needed before we can do that.

Got it, thanks.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
> >  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> > ((!!1) << 8)), 4, 1
> >
> >                ^
> >
> > Since __ALTERNATIVE_CFG now takes one less arg, with your patch?
>
> __ALTERNATIVE_CFG (with two underscores) is only defined for C code,
> and this patch doesn't change the definition of _ALTERNATIVE_CFG (with
> one underscore) that's used for stand-alone assembly.
>
> Sami



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
