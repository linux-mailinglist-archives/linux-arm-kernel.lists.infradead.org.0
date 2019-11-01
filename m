Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC68EC6B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMBdn9c5wYJgRf3Du03tUueeKtlG0EfT8gsfYkvgUPM=; b=pbnwUen9PLGxy9
	GKdKfRNS/TlOoQnbyv5ZWqni0AkiNcYQOY10eCVZt/oieCAHmiCeBB3erGCjERHTdEwWm4z4UyesS
	f0Ovcpp+dMTk5sB+Aq0WFMTMnwCIauQIUl2KOs2SDhOJ89m0+IrlmoyYnk1jbkVDcImD5TI2YVjXi
	WONqvUTU2BZOalzYY45seyes2b+Q3jZWhumbel2sHms7pl3Glm5KOeSBwZRy1Bm+lEwFYvEWGEXIm
	IRi95AWbI+w5i8VF2bF+KsPUcArEWmM0h3rsfeqX7dDwUL+DOAxt9e3kCQFBsdtJPvYYWll6B5C1Z
	cGad2Xaqw21boucn5w1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZn8-00022o-5c; Fri, 01 Nov 2019 16:28:50 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZmt-0001vW-Bd
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:28:36 +0000
Received: by mail-ua1-x941.google.com with SMTP id l38so3080061uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 09:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cugJW9F3kTAr1l84/vLpT5yr86XijpMcBnCXxXWK4UA=;
 b=ai3N6Ic4RRGuSAsXlls5IzMaslA5Wbr/HVntf4UgHRgBb1znSgpSqTQDhgWkXAk5oM
 H0TMkU5NqeJqmaviuucs+F/wv2mYGbxw4p/TlWjmTA7nxtnYoIewy1UZepA7s1zvqFi+
 J0gxVuzM5VGToU0Rd8Mze3tyCLh7RZ7qRdkeI4u+x2bACiJuZjdPOS6PF5wclT402Cyl
 E4V47Z+G3JNyTOeTMcNM9nltwL7iNcdGY46YKNmZkjxzRh51T0x1vup1917ckL2zPFgG
 WhafP3q/o/Aolmq4VvLO1/E0Za4fVCa/z+d1jFfQQJXZNS7+zE2mjM1J0A4RaF2Z5bp3
 En0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cugJW9F3kTAr1l84/vLpT5yr86XijpMcBnCXxXWK4UA=;
 b=QTZ1zI29TNfNorsx9mPhT+elGcRVkLEcDoDN0DxZ2ayrfMdlFMHRnICrXEMpWQYRJ1
 R36jPkjiFIJjxrWTWAmMXEf+7PTtW9ASM1hh8WURCDVC2ZcLpJ1qWZaD6cbqqF6gBlfG
 /oYMmGA4xdWp6dHdRYSBT06knT8pVrAS71GRnExeCp68O42A4NUAorKIfGjWyD/TVLTv
 yQlvlX34bhJ2yzBlbXJTwAJTGQvYrXb7Um3cRQ0gI6paiqH5J9+pt/YdcOgbxiC3aYTl
 ZkWFzzhF9ALzTsmcdd9kBB3EJmxfZtkN+84/QCvNReUjlpBl+8zAYbrzWJA9//w3KOfQ
 Dxjw==
X-Gm-Message-State: APjAAAVXDa2KrXRbHnVgULjAzEYgaPxOUqQnT/XoipkYPOzeU2J66dhC
 KvvJ5gnPOotbTed76BP+VumHhDiqqWeQdawxGiuRPg==
X-Google-Smtp-Source: APXvYqz0PMfInUZYTnVA7QuGr/acGPXLqC8RP/nrNkyeFglf9nt3ZmPDMS4W5mUNYn60Yk/KFVXZFpuxRp6NFZg7Kqc=
X-Received: by 2002:ab0:2381:: with SMTP id b1mr5975220uan.106.1572625713398; 
 Fri, 01 Nov 2019 09:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-6-samitolvanen@google.com>
 <201910312050.C538F8F3@keescook>
In-Reply-To: <201910312050.C538F8F3@keescook>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 1 Nov 2019 09:28:21 -0700
Message-ID: <CABCJKueLtOJsq+k-ywyUCOU+QCqxjKN2bO76Te4U43g0Xp9g-A@mail.gmail.com>
Subject: Re: [PATCH v3 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_092835_446100_F05C8013 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 8:51 PM Kees Cook <keescook@chromium.org> wrote:
> > +/* A random number to mark the end of the shadow stack. */
> > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
>
> Is 0xaf.... non-canonical for arm64? While "random", it should also
> likely be an "impossible" value to find on the call stack.

Agreed, and yes, this is non-canonical for arm64 and AFAIK all 64-bit
architectures the kernel supports. I'll add a note about it.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
