Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769A8BE6FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 23:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzluVvrDxc6nDOQyd8MNZzc+qZCZYzPEhJR9aN7W4Lg=; b=QZMlxcelguhIPK
	9J34+wc7u/IcCy8J8Ugf6qTbUqjXNpJ0bw/35fquKq/EtbnQcuchLIeLx4GuCloJR5mA/yiTbu66B
	XBrN0JodpdEqlE+azgo2tcMnWZqpkYyqTtC+LfLflMHrzBrpix1aG6bDICUYk0NQ2+3Nk4YUa5zZ/
	RjORqAXWya7iByqL0TXTDriHe9qpj34xUlShyEZZEnYa/b62gvJsebOBeZd6OVYFrrOTB0hA3aJL6
	29+i0npZDVH95JOs4KALfj5uAa2iwwzLM5LfisiVGWzzz0nJPzhflaIID4mTUAWg5Ax76icz20g7L
	+k32FD6josgSgRdPM9GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEhV-0002Ck-Q6; Wed, 25 Sep 2019 21:19:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEhI-0002BE-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 21:19:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id v17so258828wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 14:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V7YzOVzGpdhxsAdmwy0xS3DmtYyZj7aWsqnxFjthGFc=;
 b=IqaKJoMO5a38/jY9fU9cblH8HPi6GO9JpL0xjFCfIEhxR/LsbfLENFFYitNEVTiJ0p
 oH84clwPp8CYMies3vcW680s28VrIYdBXYSdySTp5S+c1yOxAbGUWhbEAecfpVZgs8r+
 3/3W6IEKHNuVei/kaJ15XKZjVqHJq4ZqiTZ5G63GWhhmcx5Pdh8B7Gqj23UnjdMWxt5f
 CWWObwM5dlWcWFKhkKhY40P248B/6/erylQo2oHEOSZ723m8ldTlz+vMxcnSCR7ZpoVR
 XjXUsR6Em/jLUMuYPsbogDZ5bX4TQrcTkQra1YppWFCQKgyxJgZ35cL4raMTUrvrUq0M
 4mjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V7YzOVzGpdhxsAdmwy0xS3DmtYyZj7aWsqnxFjthGFc=;
 b=GenqdoHKsI2uKdXkVzP9gwRNAt9LeJj1+7qIaGCX0xdJJTFRwT11mvMLBUWN74i0o+
 ejv6uU8WlaGpmwFX/K+LRzpzZwkCuEZ16FqR+GU5EYhj3gAZOT2r4MI6mXUwt4l3GxME
 s70/YpnQfp6KWJMV5iXrISddn38+vBwFA/e3Cs5IBYBuG88IUG2TosTuhdTYzw7Csi0T
 kKirm1A0Xzt7XY0zVf5LFOZBB7e1iFHkRjzkNyZKCWZhbS0rvavIgtG3G/QOvNalQ977
 kBl0ma6FnP7trZSbyamA/WPEC76JNarEvCRPnF+CXCpV8QSKuKQIZSHAWMuW6nqFXa9D
 4tXA==
X-Gm-Message-State: APjAAAUAi/e+XmKEw8Uuf+KfM02AmKutDyD8262ETL+XowHGch0V76Rv
 eAO1WA9tXf3K77v2hYqMGMSVMOw+9UclzUHh9h+xwA==
X-Google-Smtp-Source: APXvYqwEXSfo+dCqw9kJmJKNqePzh1WBkwd8uth3KdgMMgR2+4y3WBpZOyuvPIGTdnR0xQnzmZcXLYPjemGrRtJOlU4=
X-Received: by 2002:a1c:3cc3:: with SMTP id j186mr156255wma.119.1569446375423; 
 Wed, 25 Sep 2019 14:19:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-12-ard.biesheuvel@linaro.org>
 <CAHk-=wi8+MHz8xGtx_mUZPBsRT6qkptGW7a_pOrK=SnTRAiecA@mail.gmail.com>
In-Reply-To: <CAHk-=wi8+MHz8xGtx_mUZPBsRT6qkptGW7a_pOrK=SnTRAiecA@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 25 Sep 2019 23:19:22 +0200
Message-ID: <CAKv+Gu9299nphaf88-SdF843w0ZbY0WD8MisAx+JMw5=GVVN9g@mail.gmail.com>
Subject: Re: [RFC PATCH 11/18] int128: move __uint128_t compiler test to
 Kconfig
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_141940_812653_E70F8BFA 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 at 23:01, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Wed, Sep 25, 2019 at 9:14 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> >  config ARCH_SUPPORTS_INT128
> >         bool
> > +       depends on !$(cc-option,-D__SIZEOF_INT128__=0)
>
> Hmm. Does this actually work?
>
> If that "depends on" now ends up being 'n', afaik the people who
> _enable_ it just do a
>
>        select ARCH_SUPPORTS_INT128
>
> and now you'll end up with the Kconfig erroring out with
>
>    WARNING: unmet direct dependencies detected for ARCH_SUPPORTS_INT128
>
> and then you end up with CONFIG_ARCH_SUPPORTS_INT128 anyway, instead
> of the behavior you _want_ to get, which is to not get that CONFIG
> defined at all.
>
> So I heartily agree with your intent, but I don't think that model
> works. I think you need to change the cases that currently do
>
>        select ARCH_SUPPORTS_INT128
>
> to instead have that cc-option test.
>
> And take all the above with a pinch of salt. Maybe what you are doing
> works, and I am just missing some piece of the puzzle. But I _think_
> it's broken, and you didn't test with a compiler that doesn't support
> that thing properly.
>

I think you may be right.

Instead, I'll add a separate CC_HAS_INT128 symbol with the
$(cc-option) test, and replace occurrences of

select ARCH_SUPPORTS_INT128

with

select ARCH_SUPPORTS_INT128 if CC_HAS_INT128

which is a slightly cleaner approach in any case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
