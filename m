Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6175063B40
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K76hQetO2jOJwkO6SW7jLTz+Thu9sz/HChgWtjuLPLc=; b=ty06o5Kkiu973/
	0RWHY/2Fkg1HxodOtNbTieDmPRUzD3HfgYgGIxDGvnxoc/ocxwDSIW5yYuplDil369ITGovu4xHMh
	SZ/ejx4neIPQbWmW1zomxqqBXrWLrYHQ441xahqlTsM4vIpf2xb4cUeLf2NDQG8wW/LJwz5XjgiNG
	Md+VkpUzSzPC3blY0J3v+k1sRXOMHHWAnLYDRGkeN8BRllM1NNFgWf6UD8epMhoKYMf6r7fTJumCG
	+6KnhCcV7oQUrAsM1IPnHPChIuqnSxhZEqF1krfz4wFEkmHYQv/XYpUs0qqr+Eq54AYL2+6bDvFfw
	nlU0J1zhGU/2Wc9C0f2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv3O-00041f-1r; Tue, 09 Jul 2019 18:41:26 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv3B-0003za-Qc
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:41:16 +0000
Received: by mail-qt1-f193.google.com with SMTP id 44so18820165qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:41:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SnD9hig+YDiQUOjEh5f12Pw4vUpoB+PptfAofP6OBZM=;
 b=ObMQaoLSwlqIjkNnvVZo53E9PYq/H6jPYApDvmqdtT4ndBEVnLDes939G2VZ0xkivM
 3ELmMuiRO379tfp7GcWz5MkV1+E4alqfqEZO3mCf2JfnuBBvz9ZGWwiJ8Iw2Xh1mBiua
 enWxd8g4XrZMjqhve4hkJklRxQoS6VKvzIsyBxDy09PcS2EytQlnS914AgP+59NpPl+v
 CkEjQsNe3i8azkZLexg9w2g26+NrVtyAGcgj2g1cxSK1p/mPpGrN70HpRj/NlIoPetD6
 L0ihIdQbPmYnuHZS5Cqnve73I97AX2U9KSBTlC+6Na3NwfZXwg/okr5f85vIpz6pjKx4
 +IKw==
X-Gm-Message-State: APjAAAXrdcGntUjZFiooP5vWDcn+w+A3pAq8GZTzVAZ6oix9CF06ew/E
 lxZ17SPBP3Et3fO1J1dEZo4xp6ITjFvalpwnLkA=
X-Google-Smtp-Source: APXvYqxcwL5fgnA8xgT1zFYzj8t5e8uj2UEeYX5+R3isFLDPp9S69KVXmBT+Gtg1wIb5IXLc6Pllc5FughrwCH+y1iI=
X-Received: by 2002:ac8:5311:: with SMTP id t17mr19607025qtn.304.1562697670085; 
 Tue, 09 Jul 2019 11:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
 <CAKwvOdnm6rd4pOJvRbAghLxfd2QL5VJ+ODiMyRh1ri3pmmz0yg@mail.gmail.com>
In-Reply-To: <CAKwvOdnm6rd4pOJvRbAghLxfd2QL5VJ+ODiMyRh1ri3pmmz0yg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 9 Jul 2019 20:40:51 +0200
Message-ID: <CAK8P3a2anB0hD5J0JfPpJ_Gjc=NjoNC4k9nJ=t9H5AOBbdnfqg@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114115_557838_9E955B76 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 8:08 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Tue, Jul 9, 2019 at 1:41 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > I guess this brings up the old question whether the compiler should
> > be worked around or just considered immature, but as it happens this
>
> Definitely a balancing act; we prioritize work based on what's
> feasible to work around vs must be implemented.  A lot of my time is
> going into validation of asm goto right now, but others are ramping up
> on the integrated assembler (clang itself can be invoked as a
> substitute for GNU AS; but there's not enough support to do `make
> AS=clang` for the kernel just yet).

Note that this bug is the same with both gas and AS=clang, which also
indicates that clang implemented the undocumented .rep directive
for compatibility.

Overall I think we are at the point where building the kernel with clang-8
is mature enough that we should work around bugs like this where it is
easy enough rather than waiting for clang-9.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
