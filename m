Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0FA129CB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhpSyF6XUbTyEnH6iRPJ8UkyrauWPURgMr9j2UGZV+A=; b=O/dNgugQzVDinJ
	ZhhZGaUbaSLlch7iPcpmGSwYh14TQVlgRCK+XLAFv/ZQceSotTiKZk7UbiIyeRC6wYjNygLfaxsNv
	+xbAX25JJ4qWxhbJ4dTzb9fYsTj4663JNCQ0y/Y44l8GGlhKfBjiEyTGPKWU7bT/PBmc9t93qo8ws
	+gYHzrn3RppGwj76cdnawRSpAbeX5RsezYU9oj2M4ZC6rzwknohfQCGNpCKgUU2u+u97KzT1s/6xE
	c9mGTwx9A1AtgzxN/21m8y/vBovNuGINnPmL/4cJDxxzoKln+dvtjxHo2EAPcs/rGUuQq3lHRFYPt
	HDe5BDoCOtEha6ZAmCTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZs5-0000On-RE; Tue, 24 Dec 2019 02:24:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZrx-0000OT-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:24:22 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BB5821775
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577154260;
 bh=SPQ7Bj4a4eNp21OAcqYrY8SxuFJJaC2a6yGdIeeRS1o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oPvK6VPzi1k2yyEjQny+BqytBOGY+Pvm5TAIa+d74eS8hvsJFnqaOLMcPbR1MVHcg
 TJAbv69cwFBjDUU1LcTUwFGC1sdBHfjcRbhYXPuD/8fDpRJfQhxnnenWDdYNTNMhtK
 WQtdttyNyw+EIZ8phdY7Uk7eLt21kAD5fLV0wvro=
Received: by mail-wr1-f44.google.com with SMTP id b6so18666313wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 18:24:20 -0800 (PST)
X-Gm-Message-State: APjAAAUue2CyMbwNQ/kTIaNtA+vqqY4T0idbqBCM07wdqG6ZJ6+E5bKv
 s45KOWAFQThHRNLOAU6JGc4yCLxP82eJPROanp86wQ==
X-Google-Smtp-Source: APXvYqxjzD58lmej1/f4cJSP7HhlmKnh8jXfi6lwDjHJL4b+9GZQPe+XjiFw3YmwCo3ewdHy4fkwT46pqN+EiY2Rfws=
X-Received: by 2002:adf:f491:: with SMTP id l17mr32117348wro.149.1577154258620; 
 Mon, 23 Dec 2019 18:24:18 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <de073962c1a5911343e13c183fbbdef0fe95449e.1577111365.git.christophe.leroy@c-s.fr>
In-Reply-To: <de073962c1a5911343e13c183fbbdef0fe95449e.1577111365.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 18:24:05 -0800
X-Gmail-Original-Message-ID: <CALCETrXWHk9J-pYm+eopMuW3x7Jr_LnzRjr94gq8g66xOO6SBg@mail.gmail.com>
Message-ID: <CALCETrXWHk9J-pYm+eopMuW3x7Jr_LnzRjr94gq8g66xOO6SBg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 02/10] lib: vdso: move call to fallback out of
 common code.
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_182421_083474_FFA1578B 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> On powerpc, VDSO functions and syscalls cannot be implemented in C
> because the Linux kernel ABI requires that CR[SO] bit is set in case
> of error and cleared when no error.
>
> As this cannot be done in C, C VDSO functions and syscall'based
> fallback need a trampoline in ASM.
>
> By moving the fallback calls out of the common code, arches like
> powerpc can implement both the call to C VDSO and the fallback call
> in a single trampoline function.

Maybe the issue is that I'm not a powerpc person, but I don't
understand this.  The common vDSO code is in C.  Presumably this means
that you need an asm trampoline no matter what to call the C code.  Is
the improvement that, with this change, you can have the asm
trampoline do a single branch, so it's logically:

ret = [call the C code];
if (ret == 0) {
 set success bit;
} else {
 ret = fallback;
 if (ret == 0)
  set success bit;
else
  set failure bit;
}

return ret;

instead of:

ret = [call the C code, which includes the fallback];
if (ret == 0)
  set success bit;
else
  set failure bit;

It's not obvious to me that the former ought to be faster.

>
> The two advantages are:
> - No need play back and forth with CR[SO] and negative return value.
> - No stack frame is required in VDSO C functions for the fallbacks.

How is no stack frame required?  Do you mean that the presence of the
fallback causes worse code generation?  Can you improve the fallback
instead?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
