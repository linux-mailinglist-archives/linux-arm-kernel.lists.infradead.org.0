Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD46439B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4a9wNha7VUcv+mgqHg0DWPBj/7hAGlqB5CtpxvclLME=; b=krLmkprD0YuryZ
	w8r40vrFctrgWIm1PrsAEyGBtLOuETu48TVqU5ll0KgYpESEboowRTUz4OKRWlHqj+9N6PyOrvcgx
	7mjABgyPHPWeZe1Hl5n/tw9H97Iyq3aZ9Kb4xYqFuyew4Gy23vQM1bgR4aRdAWg3x0MECnnjHDT9J
	J11Aw9f1nOD2kX/Vk+5xBXQlyJIJR1hRAuW09oGoOpMA+gD4Y4JQnGzK3Sdga7vZNRLL9AL4gNjZm
	w4YktrEBvdobgns9u6uVeJm2cO4ZYYogUwEE8k33N8ZV2IVLq3Rj5EAkjwRtxrorZMZeuIOHybnmJ
	bTJ5VGkrvHMMjXKFuYUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl838-0003BJ-3y; Wed, 10 Jul 2019 08:34:02 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl82v-0003Ar-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:33:51 +0000
Received: by mail-qk1-f194.google.com with SMTP id t8so1264816qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 01:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FvPTF3a8/fdtxlBIjNYrf4YZbuOxeSd33JZmNhvjGmk=;
 b=pfEsEuXA6mX+BKBc4NSPdYSy5TA/B0qDdox50BJadoD9x36n2VnoU+dDUJcsNH4JqZ
 9UMje6qLV9nQP/KmVyUwnTg7OsiRnxThZSZ5bKiKL30yrLBGQhp23wCoEBzSNwVTXsmM
 mT2b0sH/DdcKMnOh7VEk6HWOrHfJuurOd4/wymoTv1p2onKyM4LsIvv3jD4jnrsWRFyc
 Z4QnLMspbk2nUW0E5ZfXgF7QPkdqYzUvCo6IaChUWlprl9z2pf+3fljLPO2Y4wy9GUeG
 Xmd9KkTKpOXbm+fLQeZw6qf+l7MKb4JnaPZzLwSLwUV0m1VzO3RgS294FzJDAGsn6iWx
 QvZA==
X-Gm-Message-State: APjAAAVFlKZ4ZUWRuR3i2GVp2Z6j8D86xkJY/Wye2ox6mDEDyXpLwecr
 rpYOzjZ6l1w8rtbV2+/2d2PyxwYaZk0InwyGPpcog4QYlQI=
X-Google-Smtp-Source: APXvYqxWm5A70n0ozg7wKfRZOgg4AmBN8Ck25NGVCj8JwPJ6khfrPXouqBoRbIFkorgLi3JErvqBgs1mTp1bKUxmuVw=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr21567171qka.138.1562747628305; 
 Wed, 10 Jul 2019 01:33:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
 <CAKwvOdnm6rd4pOJvRbAghLxfd2QL5VJ+ODiMyRh1ri3pmmz0yg@mail.gmail.com>
 <CAK8P3a2anB0hD5J0JfPpJ_Gjc=NjoNC4k9nJ=t9H5AOBbdnfqg@mail.gmail.com>
 <20190709222517.c3nn6fgrz2eost3s@shell.armlinux.org.uk>
In-Reply-To: <20190709222517.c3nn6fgrz2eost3s@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 10 Jul 2019 10:33:31 +0200
Message-ID: <CAK8P3a3Sv1dfSC3W4_Hfj8TSKaiJKS+fW1woLeLhGw97jHgT6g@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_013349_681262_F6F0B187 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 12:25 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Jul 09, 2019 at 08:40:51PM +0200, Arnd Bergmann wrote:
> > On Tue, Jul 9, 2019 at 8:08 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > On Tue, Jul 9, 2019 at 1:41 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > >
> > > > I guess this brings up the old question whether the compiler should
> > > > be worked around or just considered immature, but as it happens this
> > >
> > > Definitely a balancing act; we prioritize work based on what's
> > > feasible to work around vs must be implemented.  A lot of my time is
> > > going into validation of asm goto right now, but others are ramping up
> > > on the integrated assembler (clang itself can be invoked as a
> > > substitute for GNU AS; but there's not enough support to do `make
> > > AS=clang` for the kernel just yet).
> >
> > Note that this bug is the same with both gas and AS=clang, which also
> > indicates that clang implemented the undocumented .rep directive
> > for compatibility.
> >
> > Overall I think we are at the point where building the kernel with clang-8
> > is mature enough that we should work around bugs like this where it is
> > easy enough rather than waiting for clang-9.
>
> While both assemblers seem to support both .rept and .rep, might it
> be an idea to check what the clang-8 situation is with .rept ?

Good idea. I tried this patch now:

--- a/arch/arm/include/asm/mtd-xip.h
+++ b/arch/arm/include/asm/mtd-xip.h
@@ -15,6 +15,6 @@
 #include <mach/mtd-xip.h>

 /* fill instruction prefetch */
-#define xip_iprefetch()        do { asm volatile (".rep 8; nop;
.endr"); } while (0)
+#define xip_iprefetch()        do { asm volatile (".rept 8; nop;
.endr"); } while (0)

 #endif /* __ARM_MTD_XIP_H__ */

Unfortunately that has no effect, clang treats them both the same way.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
