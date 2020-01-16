Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1CE13F9C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+7rf7bDn51WlVCO+b5UaubJMnByBFK9lOspc0JLL6k=; b=CkxibIeY0QuFhP
	9S5Wcq6BHt0vLxozB+hOHi0p/DkDJcPMkm3qKczzkBdpzmOizUY+aWGSJXP0yoDRps55fjRjzj7Tx
	UklX9Ihn6Jrezt+pQ04Eyj3WJnfRq42eaULxNa1kHn5jkFXulbJSDvS0ZpYz22c1xLJyauhTE6A9h
	yBVj6c7LzsqwQvD8T1CDeoS+jTstNDKsI4zn4QmSyD1Nr56KsUg1iCirx65Cdnpjh3GCgCf6OAS2Z
	rBOVgZXdCZGONTnbKnLHjmg7jTDqzcjcoUbmveeGTCszGfEh8UVQEBVTfkjwCPjMDK2cNb1JSZVJx
	27iXvCBGfGTqNnrAPheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isB7V-0008GE-Uu; Thu, 16 Jan 2020 19:47:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isB7P-0008Fj-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:47:52 +0000
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07A872077B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579204070;
 bh=iWPOEPrLhN/0dUzUlwpw4/5CopjoSgUDgsorKgvcJmw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZBNmytBWuC0U8dtoZhF+ykaCrw12X24OzwI/4jlMPsTBRD4Skon1q/5BmRHCR7j36
 U0SG46PBe9dZfmajYfQMP3/t6SsA/c/cTCxLI/yJ5fRxBdrzdYEx5a5LO34zOO6yIp
 MHsX6faaZ9XilvurLWm/Gziak4DDpI+m16cZOi68=
Received: by mail-wr1-f41.google.com with SMTP id j42so20381609wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 11:47:49 -0800 (PST)
X-Gm-Message-State: APjAAAVu5YdAtY2veek4zcZeusUQKI5Sc5f7q8PnnvWy4kIwFi3W8pm3
 K8YqTj9kw+W7vZOtjwqXAZPizFs8c8etoI0HeEFgQw==
X-Google-Smtp-Source: APXvYqz0S0n0mRf01AI9EVOJj9fh0guO9GsXoYIoeeHWqI3bcsdwUWPoJm22gBkYEqJCyt4y4xlERS5rQnr9jvHcuRE=
X-Received: by 2002:adf:ebc6:: with SMTP id v6mr4976488wrn.75.1579204068445;
 Thu, 16 Jan 2020 11:47:48 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
In-Reply-To: <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 16 Jan 2020 11:47:36 -0800
X-Gmail-Original-Message-ID: <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
Message-ID: <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
Subject: Re: [RFC PATCH v4 10/11] lib: vdso: Allow arches to override the ns
 shift operation
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_114751_077725_6665E8AB 
X-CRM114-Status: GOOD (  12.85  )
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
Cc: nathanl@linux.ibm.com, Arnd Bergmann <arnd@arndb.de>,
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

On Thu, Jan 16, 2020 at 9:58 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> On powerpc/32, GCC (8.1) generates pretty bad code for the
> ns >>= vd->shift operation taking into account that the
> shift is always < 32 and the upper part of the result is
> likely to be nul. GCC makes reversed assumptions considering
> the shift to be likely >= 32 and the upper part to be like not nul.
>
> unsigned long long shift(unsigned long long x, unsigned char s)
> {
>         return x >> s;
> }
>
> results in:
>
> 00000018 <shift>:
>   18:   35 25 ff e0     addic.  r9,r5,-32
>   1c:   41 80 00 10     blt     2c <shift+0x14>
>   20:   7c 64 4c 30     srw     r4,r3,r9
>   24:   38 60 00 00     li      r3,0
>   28:   4e 80 00 20     blr
>   2c:   54 69 08 3c     rlwinm  r9,r3,1,0,30
>   30:   21 45 00 1f     subfic  r10,r5,31
>   34:   7c 84 2c 30     srw     r4,r4,r5
>   38:   7d 29 50 30     slw     r9,r9,r10
>   3c:   7c 63 2c 30     srw     r3,r3,r5
>   40:   7d 24 23 78     or      r4,r9,r4
>   44:   4e 80 00 20     blr
>
> Even when forcing the shift with an &= 31, it still considers
> the shift as likely >= 32.
>
> Define a vdso_shift_ns() macro that can be overriden by
> arches.

Would mul_u64_u64_shr() be a good alternative?  Could we adjust it to
assume the shift is less than 32?  That function exists to benefit
32-bit arches.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
