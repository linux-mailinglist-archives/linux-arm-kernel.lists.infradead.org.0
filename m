Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A40CEE8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyZX5bD89uiDFPzB5+19itGBcNLd5SfI7O/NClmTcRM=; b=gt/NdPbS2Vrw+1
	tL6/6rnB8O9t1Y86PvgoxzyR0cDLIXsEE4z7sNV/iOQgLzwY2w2agzF3EjwvStQ7Xvo4iSeFO1dZJ
	em9bxBfODizYlmgWHFZtpPVKBhtZ3U5hd8ZtZT8ui2ULxLgFhcUGxon46lTIq1BL1zp8+nGQdejiZ
	O1gI/aIqzfJMDK9VWlhE+2NY9vh5CWOyE/MzvptYwYW9STqBh4UC0tYrmh8+GnbNubynnZx74cMdN
	O4Uwo/P8b7G2ICZfPiZRDGst7REaZ0f0ik2IS4hlz4+btYY9AS6cqng7wbUFQ04Eyhv33edj+BmeU
	sxpiiB0wBwvwnoctwE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaqF-0000pv-Fe; Mon, 07 Oct 2019 21:46:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaq9-0000pV-74
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:46:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id p1so7233452pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 14:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QXb17KO+aaTb9iSIuGo/6wibZdR0MZ0rDkPqukvilAM=;
 b=Uu+pR4K3lVtvbqUe+qBy2kwwSW987fMlpT86iMKCGuTNzumfkGvgSvaLPbgBoURd+z
 eo/xS9U8Vkqx9YrbIGg7WvZoz5oVBhp/PyaAD3k/883nlYImUXWcnznvUgR61KS1qQMS
 Uf1P6HBgtlmlEUf5fuNWT6GnbzUwQqyKNruL/lpESCRcwmD4NKfjTCWqiNO71ZJTklvr
 HbDvsa0R7yzCPAPsJkE5n0HTFCZCA2KTbnnEmZqzy7hvxhQbNSRSDwxi9f+dtZbBrOAZ
 IWS02u65LnOicJtK2m73IiGbl1vIahncmXXHtLAMp38/Fk9dypnSq6N9qR0LHloHOjcH
 7KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QXb17KO+aaTb9iSIuGo/6wibZdR0MZ0rDkPqukvilAM=;
 b=hKvLs+uf6wZzWfymWPSukAJLRDNSEm7Tv/2bX5OPNUGCNmb9nL6xT4v0PeuSlZUG4+
 kvVEYg0XFt423pBy/u4IdcjQ+3UafzPQgLHfpr0yanUJqUn2h7yCdRQGSIGfypRMw639
 wVq0kaO664Z9iQrWaPInYH0+aWHw35beYcP86bmUUvtNiHi34+1xOdlHl1JTHnmBJAvo
 ZrDssCt8Fn72qs+c42rGn+KCZbUcdTp9DW+4cueBs+2UXbuDGe3ZcDx5MIyFxpvTfyzo
 LSsc49vfEOSeY2Y+C3MB9kK7J1O8FkCZ/ZHOxUNUsQvFWUfG1HvQ+CX0HC0973yo7n9w
 c+4Q==
X-Gm-Message-State: APjAAAWPJ0vYLunwXVLatJ2pSSH9N5znWlbF2rtzAhafllpz5aolkoNL
 MpkpGddjXnMDG5PKZsRwnpiXqXJVW9lbnFXj8qr1Tg==
X-Google-Smtp-Source: APXvYqw+0il7qlP4A2/lUfKoYuXJsc5yiAMjSSfJLRuXEdwLXtGPjG1nzT2ac7ISvwG4aa3gbooME1RCU4UO8GVgTYY=
X-Received: by 2002:a62:798e:: with SMTP id u136mr35718450pfc.3.1570484808071; 
 Mon, 07 Oct 2019 14:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
In-Reply-To: <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 7 Oct 2019 14:46:36 -0700
Message-ID: <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_144649_279745_798C9620 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 2:24 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Oct 7, 2019 at 1:28 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> > https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
>
> Yes, I had a similar patch earlier. I feel like using a command line
> parameter here is cleaner, but I'm fine with either solution.
>
> > One thing to be careful about is that blankets the entire kernel in
> > `+lse`, allowing LSE atomics to be selected at any point.
>
> Is that a problem? The current code allows LSE instructions with gcc
> in any file that includes <asm/lse.h>, which turns out to be quite a
> few places.

I may be mistaken, but I don't think inline asm directives allow the C
compiler to change what instructions it selects for C code, but
command line arguments to the C compiler do.

Grepping the kernel for some of the functions and memory orderings
turns up a few hits:
https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html

I'm worried that one of these might lower to LSE atomics without
ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
But I did just boot test this patch but using GAS in QEMU (on a -cpu
cortex-a72 which I suspect should not have lse instructions by default
IIUC), FWIW.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Maybe the maintainers have more thoughts?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
