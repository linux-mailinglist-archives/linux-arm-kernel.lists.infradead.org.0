Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8900660F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 22:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSoXRm8iOc4w65V9KLiMMc+0mDcCY1moVCt3eWiUB/M=; b=EAOE7xPNCW5r77
	vNjo+6Rob5uXlC1LhakoYuC9WCJMFWmaEj2rLl2i95mRhvvFf644OP2euG7L2LmbhV81ZrtbmBaM0
	FpjnUUnvEIDAtCnq8+uWDYuMcJX0SzjiWyKGNN2bhTsBjcPgMGUXeKQhjNUBJ1CgkD/dCBVM93CY2
	FevGLH9JCCuZOhWRYrXTd+CH8xQ+t1War2bgKLBIbGfcKnG8J3YFVFWiMx2re1kU1WhhZWg1BFntU
	GkNT0SVgRT32pChvD0nG7O9q8hiAZoQzzMAup+1ZHF6dBpmv0bxWmjIUIPB1UUotSNQ9wVLsy7lO8
	CQv/LexQ7bnrB5P0nyGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlg6W-0002vW-NA; Thu, 11 Jul 2019 20:55:48 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlg6J-0002u2-Q1
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 20:55:37 +0000
Received: by mail-qk1-f196.google.com with SMTP id r4so4747066qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 13:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bkUbgSgUpCwj2ldYWoCFso4Iwo3JgBB3YyrLSeP+omU=;
 b=WYwtS/GKmjpzsuHADSGO3pnk+QtJ1agM9cgLCF/AbnXwuP+RbgYgo1lpmXcl/nXpWm
 jSD+TY1xu3E9fbd24owb5ukYXNmVCCgHlam0wJqrM8cGac8CFOi/p/7Vvsxg1RdYiIJh
 tdJ2H45rNfwOWvetDSauqwWsTy5twUIbdscM7RMJC+VItvdvdOvu8suf8xNdbUUQQ7DJ
 lncKpBAuCHqP58A2RQqQiJcGuRIxu2+AD2Y7ubtiK+jOPrZCE3diHOs5SNDwLRbk3Bli
 uKsmYaNWuQ8d0magxeGjFy94MBXzFDSmsO2GoOkNMtPUTNjiUxs0HBZr95kU+Doua4Bz
 plUw==
X-Gm-Message-State: APjAAAX2O+EeuZ4wIz7f5dFv8ZFKNmW3RiF4Nn6mn1Cz4uAkrWs/0KuE
 qY267S1Q87wCNqK8rtuQ1cmRrPnU1ISL1bh7IBU=
X-Google-Smtp-Source: APXvYqwQU5LP7lDrmvENc8aGoi4MJ9DUgGa6g4gLLDo+V/u6iJpXHHHv1e+jDggnBJ3vpelagEiDSMznJ+7Vli7iWvE=
X-Received: by 2002:a37:5f45:: with SMTP id t66mr3532512qkb.286.1562878533166; 
 Thu, 11 Jul 2019 13:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190710130206.1670830-1-arnd@arndb.de>
 <33511b0e-6d7b-c156-c415-7a609b049567@arm.com>
 <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
 <CAKwvOdkubvsRCnJKCaesB=PF=DgXfsBzwzR8kyE9NzWPU8Gehg@mail.gmail.com>
In-Reply-To: <CAKwvOdkubvsRCnJKCaesB=PF=DgXfsBzwzR8kyE9NzWPU8Gehg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 11 Jul 2019 22:55:16 +0200
Message-ID: <CAK8P3a3TfQnQsXzmktedsKaY7Tihue_PbLhLoD1z1jZBMTxWMg@mail.gmail.com>
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_135535_852873_B7DCA0CA 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Mark Salyzyn <salyzyn@android.com>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 7:14 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Jul 11, 2019 at 5:28 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > clang does not like an inline assembly with a "=q" contraint for
> > a 64-bit output:
>
> Seems like starting in GCC 7, GCC may not like it either:
> https://godbolt.org/z/UyBUfh
> it simply warns then proceeds with code gen.  Another difference may
> come from when GCC vs Clang perform dead code elimination (DCE) vs
> semantic analysis.

Right, I also had the idea to work around it with a set of
__builtin_choos_expr()
instead of the switch()/case but did not complete that patch as the percpu
code is rather complex and this would touch lots of code.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
