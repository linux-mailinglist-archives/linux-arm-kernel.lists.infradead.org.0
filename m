Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40509D048B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 02:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7+PF59WB+LI4CXXWZ27FKSSpcvIPp38bXDAQaeS7es=; b=eoPNs+X4JKscQV
	1ZFxbPv52qsBlg3JKLlawJ8di+ay5YyDyOLK3RI9wGhCPKYN57R2p2GQW9HiImazjr3mBRu1m5O01
	g5M0JGa3bHtUtOCZabDNy9zdF8L4I9LmRlq5cHmAwXkOKWGNXiZQoG0ChU7HyiR6F4ksAh1yewGdt
	Nq7BhcHeYtlbaC+Kxh0TmX7zdm4eXqOAJKOu0x2+lON9FRTPzzidT/egjEovNluTOtJl4FsflzlFe
	cXmIBLGhm8w5fRv7/NR3VxMfJhXW0lXJTtly0cAV1Pu5dz5CR8UUqFZNe3ruazj71TE0XJbwvwJpf
	2W/UZZ5FXAiSWu9N6oCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHzQj-0000RZ-S6; Wed, 09 Oct 2019 00:02:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHzQa-0000RD-BS
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 00:02:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so327605wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yehEEcVd/f4xRiuRlKn78OHX+x36IDjBEHFJBns9Tpw=;
 b=Wz/nfF+OyxMhmw7+mH5tRbpSAyS3HngUQkqNfFOYOcIImgowqT1Y3L1m/AnpLyeYYJ
 G2ilvcmyVY/CTrsrwx/2U07AurJ94sp/y+a8WfC1mZrr4WQ7RTtKnNRhEmAZQMQbzuMk
 LINHHv+ZI1c1KFgnSDHCXj8Kr9AQpVWoRgZ2RbSFtCSFjg/Qrw0Zziz+qUkmJgFIJ6qR
 RVJxB+jwmwTay3Gr0K974ipHR3h5mKd3lzG/JAOdtVDl6p5naf9QrFDZY3Q5wP6OFxOk
 qae4JUMkjrG5bUYlCMppUufl3JjlrU7LTZmtfqKamUuhqEoH06XPfF45hdcCO2gHoNKT
 BQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yehEEcVd/f4xRiuRlKn78OHX+x36IDjBEHFJBns9Tpw=;
 b=bC9RZ4z4Tr8KR7Q4V8VXSuS/zM5VAjGWTs3OwDfKVpD5tU3SU1/WF7byTd2BwiQ/9R
 XPMZSQ+O5qkgPy9tDARwjNseWaJ1JDoBsVXbx1SdqdQ0svzFSuAfgsFe6yE/w/5xreUg
 DbzsAH0GSh7dlBhyNIcnDTR1LFKF3VPkized/88CDEHjJeC6LuRqvRlLTbzogTqmPkn1
 V059U5WgfaEXY7WaILCK57qqW/pEuOi9lG52xCsZk6fSpcGoN6ZrmyPgSp6ZVFNyCoqx
 g8vt8PFv46VvItg2xzFPv+0tYP56zyHGJFZscBtkz6l0nM/HYbdp/TPgJtm2ukFx21FI
 Ob5Q==
X-Gm-Message-State: APjAAAWxYLcFcmC/NbhXqXrYahNFT23OYj+byPDEVLrralvQwFPDgQON
 2BCMsa/wrH7sH7JSSHZPh4E=
X-Google-Smtp-Source: APXvYqyagcPjtTrnCnvlKvfJLCLgYaYSN5e3If0TgegkwckEpCWlmuYFfijItVPdGlrHjTd3lRRAOg==
X-Received: by 2002:a05:6000:1202:: with SMTP id
 e2mr378763wrx.162.1570579321624; 
 Tue, 08 Oct 2019 17:02:01 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id g11sm300751wmh.45.2019.10.08.17.02.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 17:02:00 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:01:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191009000159.GA531859@archlinux-threadripper>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
 <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
 <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_170204_394217_2569ABDA 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 04:59:25PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > This looks good to me. I can build and boot in a model with both Clang
> > (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.
> 
> Great, thank you for testing this!
> 
> > Though when I build with AS=clang, e.g.
> >
> > make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image
> 
> Note that this patch only fixes issues with inline assembly, which
> should at some point allow us to drop -no-integrated-as from clang
> builds. I believe there are still other fixes needed before AS=clang
> works.
> 
> > I get errors like this:
> >
> >   CC      init/main.o
> > In file included from init/main.c:17:
> > In file included from ./include/linux/module.h:9:
> > In file included from ./include/linux/list.h:9:
> > In file included from ./include/linux/kernel.h:12:
> > In file included from ./include/linux/bitops.h:26:
> > In file included from ./arch/arm64/include/asm/bitops.h:26:
> > In file included from ./include/asm-generic/bitops/atomic.h:5:
> > In file included from ./include/linux/atomic.h:7:
> > In file included from ./arch/arm64/include/asm/atomic.h:16:
> > In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> > In file included from ./arch/arm64/include/asm/lse.h:13:
> > In file included from ./include/linux/jump_label.h:117:
> > ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
> >                  "      .align          3                       \n\t"
> >                                                                   ^
> > <inline asm>:4:21: note: instantiated into assembly here
> >                 .long           1b - ., "" - .
> >                                            ^
> >
> > I'm assuming that I'm doing something wrong?
> 
> No, this particular issue will be fixed in clang 10:
> https://github.com/ClangBuiltLinux/linux/issues/500
> 
> Sami

I believe that it should be fixed with AOSP's Clang 9.0.8 or upstream
Clang 9.0.0.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
