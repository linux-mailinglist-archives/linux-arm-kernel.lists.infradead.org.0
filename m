Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC784E3287
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edyY13aPfvDiQRjE4gsBaJXcizUDMCV3n3a/c4seK2I=; b=Oa49v7rOhuXXwh
	mfne6V4lWWMRgtBKENF/ddmQD1m0r9li58EDiWtAtYMQcuR7ONOmKLpTNRgypOd3ILMpdEGD4wyJY
	sFXtuDee0NWzz4XC8ULSgvUx+l462YlfbH+7lvKYWff6QKiLmAHp+qtW3mNk5YROwDI5JaM55/7KB
	+LJzhTPyO6xU/y+RVtAS68s2nhjxomirOmXTy24CpV7ntdBCDfre7ul46nCej9AKC6a9OIPaj0W4J
	eqwUfCItLpj8ZougZ/b+lTeVSuYh/cMB78iFt8ocaGqVVTOPQKI3CHBmWtbkb61O9eK5z22MagQwq
	q/2KJnojKZmr8/Z5bMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcOQ-0006H5-UB; Thu, 24 Oct 2019 12:39:06 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcOH-0006Gl-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:38:58 +0000
Received: by mail-ua1-x944.google.com with SMTP id m21so7079348ual.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 05:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IDVS1e9hyUEZF9b7Qqy5YnFhITXSjbGZRVGhTJdweek=;
 b=MQcij3HnHK2jhBapvsLcbnyU0UuOTDO6+/fUMv5+ZYQ/svdkPAO8dOlLI2ab0GyqA6
 GqIb8QkWf/FqsUv056i6jSnyug9+WZpSaobr+itNAD+MqNDC0GrkJG0JIe9Tu8aAqAk9
 f69ncKQj0R770e8Yk05r/N2CrcHO+53N5G1GYIuczrAPdprJcw6CiPhT4Wgv19i/JmMj
 EJ2p/5saMFxfIE969G4ZVxgqXpRFa0ngLa2TufQoF7wp96n4YSl0+PjF6BhnBE716ntb
 cfeUAjX2Es4kJDzUnWsv9m3FlSga+JZAA3Pyxcwbkl0pJtKh8LW54atUoyEaxC6BL8YG
 wP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IDVS1e9hyUEZF9b7Qqy5YnFhITXSjbGZRVGhTJdweek=;
 b=mm0ZFeK1bqRmfAi5ZRw/tZwihWXZKh3AntZlNMpXq4EkJL8SECsMQaT3++bXu6ngyK
 Gx1iD1qzTGXICAYVUVVwR/4dXMRCW1QhYSGGSqAcmZFZvJW9uo2Ty0xJjzJ8m6DuIUGB
 isfaSefYJCbpy1OqOpl50P+zv0DnXT/r020Bn+QtBMSG2VivJBcpT+6yRav2gajGmXjE
 d4figsAF1VaHc2l0zTwIhpUwbsWvg94RqLw8/Vx22RUVoWCKDeVq9c3SxtzPMksLcuhx
 MLF+r0Z7bol0e64u3CLGsn2Ocp7l7VavaqwZyjCb6k5VSixNVgvQMeqLiPHwx77qVAJ+
 uUEA==
X-Gm-Message-State: APjAAAXeuiteyHaxGFgp7oOKuTA0Yz2nA3Ui2OJuYyzbNXG53kn2slRJ
 M68JwRdEsMCdqN317+4EQHBeaXxtCc+sp3ffsOUClQ==
X-Google-Smtp-Source: APXvYqwo8ZVYy1z4w8Ftf+vlrIbhLNjEfvmZbL6Vl641yfUdccFTWMVPTA1f71j/g5PFUaHJ/qO5AgczNDm07gUNphs=
X-Received: by 2002:ab0:30a1:: with SMTP id b1mr8030843uam.40.1571920736115;
 Thu, 24 Oct 2019 05:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
 <20191017120310.GD25745@shell.armlinux.org.uk>
 <c4b6805b-67fe-6bce-1777-2d81e96b4ac9@rasmusvillemoes.dk>
In-Reply-To: <c4b6805b-67fe-6bce-1777-2d81e96b4ac9@rasmusvillemoes.dk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Oct 2019 14:38:44 +0200
Message-ID: <CACRpkdZJpJj7FVv25enweO3_cEdGLrJib3nzgCSDn8jY888AWQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] watchdog servicing during decompression
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_053857_534217_B839B7EB 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 2:34 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
> On 17/10/2019 14.03, Russell King - ARM Linux admin wrote:
> > We used to have this on ARM - it was called from the decompressor
> > code via an arch_decomp_wdog() hook.
> >
> > That code got removed because it is entirely unsuitable for a multi-
> > platform kernel.  This looks like it takes an address for the watchdog
> > from the Kconfig, and builds that into the decompressor, making the
> > decompressor specific to that board or platform.
> >
> > I'm not sure distros are going to like that given where we are with
> > multiplatform kernels.

That's a very good point.

What we have for debug UART etc is explicitly just for
debugging on one specific platform and not for production
code.

But as pointed out there is code like this already.

> This is definitely not for multiplatform kernels or general distros,
> it's for kernels that are built as part of a BSP for a specific board -
> hence the "Say N unless you know you need this.".

Not much to do about that, we need to support it already and
adding another usecase just makes it more reasonable to
support I think.

What we need to think about is whether we can imagine some
solution that would work with multiplatform.

At one point we discussed putting some easily accessible
values in the device tree for the "decompressing...." message,
so easy to get at that the decompressor could access them
easily, or even providing a small binary code snippet in the
DTB file to write to the UART. None of this worked out
IIUC.

I think nothing really materialized from this and the problem
is swept under the carpet: no decompress messages for
multiplatform. I tried to think about something and just feel
I would be reinventing mach-types.

Do we have an idea of whether it is possible to dig into
a DTB in early boot and find the node for the UART and
watchdog and use the physical address from there?
Is it really hard or is it just that no-one tried?
(Sorry if this is a naive question...)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
