Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6B3C1D88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEIk7Ov60QMHqtGspEPPZSZ290k3sSfFf7bxO4PBTJ8=; b=JHQMjgQsUv2gfi
	cXLozE+T/HL2b4iOgxQYhgIpy78ST3K2vV6YP7bgcctAnBB/pUnC/qThO/kk8RtbQURBNwoY0ZEzA
	M/U//O2a6wbCNxsiFNkZqQcx2Ihes4b8pnHjXoWWZUJ9XRZ+2/BqpDp+/moEY//5Eb0kWx7DwkDj2
	0ukd0A1J5qcL2vhZBdwkgiW64wffMT20CJB9ib9rgzms27ytVClMwJ3Bsblu03iAeu5xQ/ygBac5R
	aR1/bxXO6GGiwx2fruh2ddZWOdVCXaE86WusZpTNAKq0K44J1Z1jL01LVZj8KhKcVnAwc0qNNybPh
	dutC0i3Fzo/TM7SBXVWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iErVD-0006ls-3q; Mon, 30 Sep 2019 08:57:55 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iErV3-0006kz-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:57:47 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 5FC0020289;
 Mon, 30 Sep 2019 10:57:40 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id A431320274;
 Mon, 30 Sep 2019 10:57:39 +0200 (CEST)
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>, Dmitry Vyukov <dvyukov@google.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <a3a5e118-e6da-8d6d-5073-931653fa2808@free.fr>
Date: Mon, 30 Sep 2019 10:57:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1569818173.17361.19.camel@mtksdccf07>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Sep 30 10:57:40 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_015745_566301_FF78958E 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/09/2019 06:36, Walter Wu wrote:

>  bool check_memory_region(unsigned long addr, size_t size, bool write,
>                                 unsigned long ret_ip)
>  {
> +       if (long(size) < 0) {
> +               kasan_report_invalid_size(src, dest, len, _RET_IP_);
> +               return false;
> +       }
> +
>         return check_memory_region_inline(addr, size, write, ret_ip);
>  }

Is it expected that memcpy/memmove may sometimes (incorrectly) be passed
a negative value? (It would indeed turn up as a "large" size_t)

IMO, casting to long is suspicious.

There seem to be some two implicit assumptions.

1) size >= ULONG_MAX/2 is invalid input
2) casting a size >= ULONG_MAX/2 to long yields a negative value

1) seems reasonable because we can't copy more than half of memory to
the other half of memory. I suppose the constraint could be even tighter,
but it's not clear where to draw the line, especially when considering
32b vs 64b arches.

2) is implementation-defined, and gcc works "as expected" (clang too
probably) https://gcc.gnu.org/onlinedocs/gcc/Integers-implementation.html

A comment might be warranted to explain the rationale.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
