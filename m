Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCBD161D73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 23:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSkbelMKXC40Tk6gDErYdus1heMdqbl31cc1DsbPiqQ=; b=JCciEXJkeBRHmn
	qOWeMznweVv68jQQ+soRhib6C60GZjxdLB8tVA5ROSxm76aGlofzwQ4Q6/bTqbSvfkpgsUpUWasnG
	z5WTCiNBS3ioe2Q8L9NMF/xV8Jz7PgyZQbJMKeU7HgY34r4ncF6LFXjh16zjJpHV4GtRVvrtRr/FA
	bCo4GD7PQRGk2RZlWwzmo2XHTjraFd4pd2FhwJHPVPj65orGokhYCgy96WJeA+O+nuyhslAwgsUoq
	p/F/wz5Osew9y2wvqVxoqoycj+m9uD3QApTA/i0qPUjBUfYm4u4t3sRrRV6ORitU8uj3zdZI6iSg5
	zFC0s81uTHINVZCEvFrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3p3o-0002pn-PS; Mon, 17 Feb 2020 22:40:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3p3f-000265-BT
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 22:40:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so21605346wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 14:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=76Z6CK20GgcJDSbhtaVsIFc+JofKd4d7bU36INZrWq8=;
 b=kxzPl+66GzU0tsmDlLsFrMwRER4GjmMjrCsQ8WBsJpK7WvBK66WgF+Za2d5YquYg0F
 56RJP+B7UnTuynnPArjOIS1mmcoVxNYTlc14JckbL5FQk3LgaTbIghYssIHIN6EAxt+U
 t8iJ5dQuIFhTYJQhYFKFKc0tUg1isJ4xiyna6ZbcvPum0pst/kjre1zEdMQWE4DGB6Qx
 ywSlGjIKeXfeyfQuvaTNBYECdGcYQGdrc6GKo7gxv7XmTTW/Vv6OhAGMH8kp9Z+ytHGc
 86TWTERacFcFKshU+EVa4AX9mCL/p8VC4HwrbpCPGflRZljZRLqzoRQLprmBJyPhQaMl
 9QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=76Z6CK20GgcJDSbhtaVsIFc+JofKd4d7bU36INZrWq8=;
 b=qYcJ/cqr5u/7MdBsFP+zZvG6wuPK3Z4MXRGzTyEsV2HjBF9sg2gmKnyi+3zzebmD9W
 6c/0Rz+D0awlXhrqMtQlMTQp6CJ4ulIPHhes2QXHQtNdbONzkNziu1W3Ef8cRx7pvMAj
 uyKR68pYQmjewItVyvwOkDITRRTiv+3C7yyF5MowT1fsHJIPREifrCVznyBATVfF65PE
 8jsGZ8ej8ihZhBnzSrG6pmOrjOAqcBXdg8JGxclWHEuL/fCYXbhhIwHchCwKOR9+D6hJ
 /+Byb6LK+gPEKRH5Nrg6gJgP852rcuVGrmwZmOuKk0lujauq26IrT9GIwsvIMlsqg6NH
 ZaaQ==
X-Gm-Message-State: APjAAAXzESw16lDmynzIbLC0snWWy8YQJyWyPhg3oJapQH2Qv+Szvxon
 V0Ib9eb1QFVZZ1jZ4vv1UNHnBY/QZ2wrzsQMaBu1ZA==
X-Google-Smtp-Source: APXvYqwNZrDDXyuSSAFRXCKsy/wiMe0qfoB8DAfRSRnoO8OLRY0g8yoVJOVwgE7xeIdVzjRpZGxBZ5gLv8/0K5cJ2j4=
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr24090235wrw.262.1581979204034; 
 Mon, 17 Feb 2020 14:40:04 -0800 (PST)
MIME-Version: 1.0
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com>
 <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
 <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com>
 <20200217164608.GA2708@willie-the-truck>
In-Reply-To: <20200217164608.GA2708@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 17 Feb 2020 23:39:53 +0100
Message-ID: <CAKv+Gu8Qh495twz-3UQrFiKfPq-Kt_o+JrCNwEcdMedV2DqPEA@mail.gmail.com>
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_144007_440872_CA9D4A58 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, 0x7f454c46@gmail.com,
 linux-mips@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 pcc@google.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 avagin@openvz.org, Stephen Boyd <sboyd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, salyzyn@android.com,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 at 17:46, Will Deacon <will@kernel.org> wrote:
>
> On Mon, Feb 17, 2020 at 12:26:16PM +0000, Vincenzo Frascino wrote:
> > On 13/02/2020 18:44, Nathan Chancellor wrote:
> > > On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> > >> Enable Clang Compilation for the vdso32 library.
> >
> > [...]
> >
> > >> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> > >
> > > Well this is unfortunate :/
> > >
> > > It looks like adding the --target flag to VDSO_LDFLAGS allows
> > > clang to link the vDSO just fine although it does warn that -nostdinc
> > > is unused:
> > >
> > > clang-11: warning: argument unused during compilation: '-nostdinc'
> > > [-Wunused-command-line-argument]
> > >
> >
> > This is why ended up in this "unfortunate" situation :) I wanted to avoid the
> > warning.
> >
> > > It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
> > > vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
> > > but I get that this Makefile is its own beast :) at the very least, I
> > > think that the --target flag should be added to VDSO_LDFLAGS so that gcc
> > > is not a requirement for this but I am curious if you tried that already
> > > and noticed any issues with it.
> > >
> >
> > --target is my preferred way as well, I can try to play another little bit with
> > the flags and see what I can come up with in the next version.
>
> Yes, please. I'd even prefer the warning rather than silently assuming that
> a cross gcc is kicking around on the path.
>

Doesn't Clang have -Qunused-arguments for that?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
