Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C96CEE64
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSE2b4HsKKN8C2Klf9dnvNx6OZ0vxYFSvA5OXzHspFk=; b=EtG3zJnFuhtBrp
	55/dQo31oaNC86S9mCTGzqf7iBFUDU4z1j0RfShAeNp5XYy5B/u+rhSFZjvckKVJ5LqnPkV7EpUkj
	eYpzzSIStkE27/JOnMcyKyurUhayqJrNdMDnuIiH0zhtKuWdFGwHImn6zfbf5cKWxD/Y72Ks6U+NS
	OGHFLzUicNpquRZUiHyQ4s5xnD3H20oYpYRkFO4EeDN2Z7irP6wL7RYYOOWswjBRYIRGUbjXb2hZM
	5sPOG4Zya4m6iWmhsEmu6GFLNCT1H/tnbmKqEQd8AHr5LB6WDuPGl+6f0tczihpCx86qnCgEbUqXK
	d3molDGZYeFKR54wI1wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaUk-0007oL-9h; Mon, 07 Oct 2019 21:24:42 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaUc-0007nB-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:24:37 +0000
Received: by mail-ua1-x943.google.com with SMTP id r25so4547664uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 14:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qtdz6MVtYHywhBENAE676gRhNyUtv8gAoEkfWav5ZEE=;
 b=jda3vWTj0miv5Am77DVta9H3DhF8wa5FxKVgdI4uE3Hf3y5VolZNdaSZuMVFuSa8ND
 CCPsWw6RrkFA8ESPKSBAZTfBAIcrgIXPC/x2M830dN7PeJm3um62G+1lnr4CN2uDqd/y
 H01jkLXXB6MV8d3lkx6lhEYcl1WOMXIfZ9DPgu0ZQjGpsjeIhvZrx/VkFH0ZtdlkL7Ky
 vleIsngnbLNonANVIWsxTZr0YmPKOl5EciCZeoLHvehGpV8NkLn7Vk12Ox3bqdLHZJOe
 tNvFi+V0b0H9qkb3AesU7ku3TJxUpXizb3Cnx34xFg+AgVGURFUEaS6I55ROgfmWCA83
 2iSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qtdz6MVtYHywhBENAE676gRhNyUtv8gAoEkfWav5ZEE=;
 b=lMUk6kmBv39zEtfeLXgfQOvl6Xy+rin+RfN0X7Yh0ATuiX4N79m1/3U2t3sk+Ujvqe
 LNOwPLTSUmehlPSjN4eE0VTONDiGGLm65nbeNWFELOJ60DT4KAvk70qXLTe7eiZhZRPX
 ejxmOf+nDGXloV5cgKykwHcMB8aG5TW4/UblpZd1qHpT781dO1YH4as4KyKih1tuHlm8
 eBQSlAXrHMs2Kq0HnK3PoRafbpEOlwjmI7ky6enAE1LSwLZT3yQz11qrM8QWuUMTddlE
 VLW7TXi5jrnPRiBYefJFIaTNDtXYfwvEFos79shndJcobEtanFhUK/CN+jXo/Soeo7Mx
 LIfw==
X-Gm-Message-State: APjAAAWHeJsJ8EV8gqcCi9sGYzUMN7fRE+NGU8XFGVtjEU1CoBqEgPUw
 AkwA1fzOKjtM6L5huFT4aIGNWc4HwjhM72XHcCqvCA==
X-Google-Smtp-Source: APXvYqxpgwy0BoI9XN74BCjJ5c7Z7Gv6hOoSj196SzYRlfhhtl2bzG4e9xDKY8vt5g+W0Z3weotG80/1mMTbAVb2YBo=
X-Received: by 2002:ab0:77cc:: with SMTP id y12mr4639713uar.110.1570483469932; 
 Mon, 07 Oct 2019 14:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
In-Reply-To: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 7 Oct 2019 14:24:18 -0700
Message-ID: <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_142434_547579_F366D3ED 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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

On Mon, Oct 7, 2019 at 1:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996

Yes, I had a similar patch earlier. I feel like using a command line
parameter here is cleaner, but I'm fine with either solution.

> One thing to be careful about is that blankets the entire kernel in
> `+lse`, allowing LSE atomics to be selected at any point.

Is that a problem? The current code allows LSE instructions with gcc
in any file that includes <asm/lse.h>, which turns out to be quite a
few places.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
