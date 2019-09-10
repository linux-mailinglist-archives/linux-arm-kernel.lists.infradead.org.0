Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8732AE515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 10:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6lN/Ck/3Xh8H+vP7TjVht7we8S6Tyys1WbNxn0RLxw=; b=uIAh64NwSrzKc3
	3Q4+qg6MbNtO+2sBnv8bGTeEUDv3b95rp949jFtQt6ycy4CTq3p72hR9Bfh3bbtUZNI4t7c6tDOtJ
	ikl/OlCUkVWKoM96iutaAW1NLSJFq0CeFUZ82CYABkBTCN+caBvoyhNCMsVczf7fcm3oDKhh7cTVY
	edKMznurYeXXv7Da+7nz/9/zmWurkoT3MPSeiNF1BDlUqRuEX7qdYF0KCpt6i3vPO8kq5NsoGohLy
	qKXf3+NjvrzYjG5DSLzepttZrldNHUxStEJB31C+6+y6pzKXIRGHd6F73kQFm/qBFbUioWsvOwGoV
	W05dJXEDZV8zfkkbHhRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7b92-0006RE-Cr; Tue, 10 Sep 2019 08:05:00 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7b8l-0006QS-Cc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 08:04:48 +0000
Received: by mail-qk1-f194.google.com with SMTP id u184so13159344qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 01:04:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GzXrmlpC/CWlmBBx+Mfgp2MIVT6wc9VgoKmM//l5WEM=;
 b=Emnkd63o4LqHr3KsfF+MBcUqkuvGlm9KD8cjTzKofpAmrYFqdBJieeIqXqFFUZ6VV7
 ii5O2AoDi2bwy5RJtUyaN35EHbk8WqCbjv0PYDBCZfqfLFVWiTNSTpaWEAgDIfVrCAY4
 yY7FIqXhKyp7scabKYLYc7bmBZZLdSb36Fklm0oYyyAFZG8R1xHCKA2veBtHkb2GDZQX
 R0Jq2NFI3EznaEpfFOrg6zHExLWCrkdF/Ozz2VLHduZLbhOE2Vgox8YBD5CHp2V9ko4k
 z+aqyje6doT0CmdylR4Ff8MueGKu/2xwSEgPyy2E/49NCVmvbt1IPZtdOeAg3aYrDoLP
 gBww==
X-Gm-Message-State: APjAAAUhWPKIJFtCLvfnfVPHypkKywx68cr2HsKaN2rbb6n8EbRT/VjY
 cnSqpFw/YKdE1QNhO1no+pHhQqX6wEBavXvskGY=
X-Google-Smtp-Source: APXvYqzLSplLdFdiODSY9yfTz5qDH60T9Dn0ECnz457Q0uMaGHUSG4gHXgLO3t+KJLd8e+iWL8VsXDYM+nFt7bigh6A=
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr7346717qkg.3.1568102680809;
 Tue, 10 Sep 2019 01:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
In-Reply-To: <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 10:04:24 +0200
Message-ID: <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_010447_102775_082982E4 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Andrew Murray <andrew.murray@arm.com>,
 Borislav Petkov <bp@suse.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
>
> Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> assignment of local 'register' variables on GCC, perhaps we should just
> disable that option for arm64 (at least) since we don't have any toolchains
> that seem to like it very much! I'd certainly prefer that over playing
> whack-a-mole with __always_inline.

Right, but I can also see good reasons to keep going:

- In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
  also make some particularly bad decisions around inlining when each inline
  turns into an __always_inline, as has been the case in Linux for a long time.
  I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
  and in the cases where this is worse, it may be better to fix the compiler.
  The new "asm_inline"  macro should also help with that.

- The x86 folks have apparently whacked most of the moles already, see this
  commit from 2008

   commit 3f9b5cc018566ad9562df0648395649aebdbc5e0
   Author: Ingo Molnar <mingo@elte.hu>
   Date:   Fri Jul 18 16:30:05 2008 +0200

    x86: re-enable OPTIMIZE_INLINING

    re-enable OPTIMIZE_INLINING more widely. Jeff Dike fixed the remaining
    outstanding issue in this commit:

    | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
    | Author: Jeff Dike <jdike@addtoit.com>
    | Date:   Mon Jul 7 13:36:56 2008 -0400
    |
    |     [UML] fix gcc ICEs and unresolved externs
    [...]
    |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
bringing back the
    |    possibility of Uli's crash.  If that happens, we'll debug it.

    it's still default-off and thus opt-in.

- The inlining decisions of gcc and clang are already very different, and
   the bugs we are finding around that are much more common than
   the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
   given compiler.

             Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
