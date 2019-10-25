Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88170E410F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 03:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46z/6Qocm++KWE85YY/NtlCYZluIP7o8+yF4+WFTq4U=; b=Rk35k3XywS8dM/
	B4Bry1BAjGlmNfoU0gH1wQg8tz67gC/XYj8bvwvQePGbLpW28Uj2XQGd8+Sphlf/tWwyuSdYbLoir
	mxGC0ggrzP3fj6Hub1SD6ZrJuLowwFnSt6W/69xjqhGIBoE90El9ihbZVygvsSEge64M9faBkswxg
	Lpn1HozPz0RIycOSO4S5kZCC0NrsvbcuALUbWiT3kMzFX2rSBTxlOtrKx10YFRqk+kAMQ/L146x55
	isfgg25G8JVhgnZOyRt/KuQv7krgeLaQSN9NG1teX0DhOU7p3TCazkRsDoITvKFsu6Afv+aJmRI9/
	+pmAjRkWeOY6E6gXTdlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNoRg-0006QK-RM; Fri, 25 Oct 2019 01:31:16 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNoRR-0006Ps-Un
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 01:31:04 +0000
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x9P1UOmP005930
 for <linux-arm-kernel@lists.infradead.org>; Fri, 25 Oct 2019 10:30:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x9P1UOmP005930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571967025;
 bh=L3Fa2XZ1rR+ziFoIK9l+QqKH+QTJz16N605WBJKiQ08=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0SIQXQwQhh1nG3Yqd6tmVflYOaoOlqAekjd0xdn6Zi07vZyEXkPxfO9g1uiACQUA+
 BWBLUbGASk+gLmcvxQmbg9ZOVrucrOq7z2aS832+D/lzsVhfY9bNUcbdi6ltYVFh0G
 xBK7golhkiOOugp5PYL5Ie3sVQ9XKa3hWicNYIKq44MJ/1fjvp2SqvffEg3ek0R0g9
 JLS7VdsGskxwNX99/NJ9oWk/5p7NjGUq8uFUfVVqrJSzmnsnLUcda4W0Of7E/56M4G
 ptlyiiZxGvQBBn3j3jtdjyVcqz004L45L6aeHV05k5/Hp/6DQYBi0xrWQjuI5e/nTZ
 733+qVQVymwLg==
X-Nifty-SrcIP: [209.85.221.179]
Received: by mail-vk1-f179.google.com with SMTP id 70so105158vkz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 18:30:25 -0700 (PDT)
X-Gm-Message-State: APjAAAWh7EOCVaspjQenDT82YHGTykdui1X1IuYSkRiemg5rYjbJHYxK
 gmhhDQK8k2b9X+NLI49ej49y4alUVsvatdwSoTw=
X-Google-Smtp-Source: APXvYqwjXYQwp/yhTV3LIZTGMXzTyh2zYajp4PvTFqLtiYYGsakd4IU2B4U96c7jAzih1Ho+3+Qk2o5Gu0wN5fG4gLo=
X-Received: by 2002:a1f:18ca:: with SMTP id 193mr828852vky.66.1571967024170;
 Thu, 24 Oct 2019 18:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-17-samitolvanen@google.com>
In-Reply-To: <20191024225132.13410-17-samitolvanen@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 25 Oct 2019 10:29:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
Message-ID: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_183102_202219_6C755BB4 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 7:52 AM <samitolvanen@google.com> wrote:
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..8289ea086e5e 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE  := n
>  KASAN_SANITIZE := n
>  UBSAN_SANITIZE := n
>  KCOV_INSTRUMENT        := n
> +
> +ORIG_CFLAGS := $(KBUILD_CFLAGS)
> +KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))


$(subst ... ) is not the correct use here.

It works like sed,   s/$(CC_CFLAGS_SCS)//
instead of matching by word.




KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

is more correct, and simpler.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
