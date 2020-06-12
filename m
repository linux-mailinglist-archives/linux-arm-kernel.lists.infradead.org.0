Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4551F7DF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 22:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4CO/lGeS5kT+WuMjPolE5PbRxqctsz9X2ZeQHEjges=; b=kB5M0bCCWtPcr4
	NhbA8sKjsUca0zTtn6acDVIF6Dk5HMatVl/LYyn6qN/oTc8z1lp4C9lj7Qd+XJw3EFKQNU6BDh2Fv
	iopyKwUJUye7uff60NFD3czYflVC3StNLEPnbX6HfdMiqcyGqvsz0ArM2OxYw3yIZvE8RN91mxWyh
	Ybbch2JOk1f2BGTzSRj6rO9e2TOCNjmKSAY4ADDAtrUFWohnV7sLS4VmOXkaLh8PVBMqC2DnvuJka
	6PSzMqc2LHy9MBmm7+X9nKBUzIYgcuR4GAVqAHz9mN83lidq6UF90fFUWoBGdRbixHEq3HLVsizMt
	6X/CojlpGgum/X9VKeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjpy2-00089Y-PT; Fri, 12 Jun 2020 20:07:58 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjpxv-00088O-85
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 20:07:52 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MysBI-1iwheK02Nu-00vyUP for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 22:07:46 +0200
Received: by mail-qk1-f171.google.com with SMTP id g28so10242125qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 13:07:45 -0700 (PDT)
X-Gm-Message-State: AOAM530sv7h5JFSFbeDGt3jxr8h+h4r+9/M4NwOTMuxm6coKNpVv8KhN
 rOwThvMYg2oRETOJnZTSOjSz7k/n7vx6+HsE0Jg=
X-Google-Smtp-Source: ABdhPJxZJreofZ36189crpVnTyu17fqhOg6nCgeQSutwsT65QiKE0mUuYvNz0bxVS7IwDeSIM7UEmHDrtH4eO16x54Y=
X-Received: by 2002:ae9:de85:: with SMTP id s127mr5067153qkf.352.1591992464544; 
 Fri, 12 Jun 2020 13:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
In-Reply-To: <20200612135538.GA13399@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 22:07:28 +0200
X-Gmail-Original-Message-ID: <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
Message-ID: <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:xW8yFwwrFBEa9JoZbUVuZFK60hzpaq2Gi2aInooxcfAcddvuhc8
 HSkjVHECKS+KdPeUNKBM8+ssYwQz+ku4y62Mkr7C8SqnKYSQMxpgoGyPCXlqh7CpaYUUl66
 y8C4KNMwrVLxglDtLmObbDpQug4vjVDMF6Xfe4TJbL3MZxOMEdgLttg7rVQu9zjBRwzn/iz
 m5cKcfIQf9z4ElfvXZAYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gf1B4h4Rqrc=:1vTEWvM1EJjluSUMmGWJ/c
 Xgb9JjmRDqyTrxqhqEAk8z2geD5uSIamYOgTAgNO5/cOg+7ZSLbN6y5pqIx4gCm3h3S0ybPEW
 Ap9HWGIAKYh4Xy2u0uwgeKliMxrietyhFG18no2MoXDsUy6SHDFdCIv2PBBkzhIkLXQHe09De
 Y/TzXBgKm13yFnCGnMwUJVXiROpYxycxXE2gPHgl5yzxhlTwH/U5ZQl3vh1BAoBY+PdLWvdwU
 VtrOQ/LRKpANBXpy2ba/tVYYH7+y6JIb9JL1ZXBgbuZ5WGi6Wg1D9E378aGwDuiEniML0MpKg
 hn3ONlrVBjZlZ7TzRZBW3yjzlEf3gBw9kfCMvzXD+g6zDAXiGAQNiRM/qg3xZIDxbMvoe2cOi
 2IOF9PyggDtpt9Fo/X+6Wpaw3bUHGcec5Kg03gE2I3+FYBrxxchPOE8nko1C2lr0WcNMkzo8n
 aIZw7FFcH3UJU3LlC/DUOGzWbP71pYR7aYfrhh3oI7vUl6SFPTXxZIdtSdIqB03XG8gjJ2G1+
 VHhAD3xfMnFwTpNfcaA00jdE68Yc0TUpJxGNbZt9T+r7d6FtYvPV+ST60SKf80mPnt9ptL/uy
 xTNFMnHfAbafOWkpbQ2pib6rsMDKCuI+cwZKVwL6b9uuJCUuNo1G20+6rUj4kU7pggXM9yKPJ
 8PT+RoAMCHPXAsKSvkt+mRsK8/1BxffA0Wxz35C5Qg5lGwWbnFOUWtIVQz/QJQlOFa5HZJqQP
 lfKvDN3c59cstVlxjl/vWyIdlDpaK5iUSad1v0PpcW0ku9q6nbdT7ZPgqkrV2/4hV73RaB0ql
 g/dy6iiFxe7jQaXZFNhNwmJSAvRMLQRjvnHXqGc3qsAB4FFvog=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_130751_579856_B6235E53 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 3:55 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Fri, Jun 12, 2020 at 02:02:13PM +0200, Arnd Bergmann wrote:
> > On Fri, Jun 12, 2020 at 12:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> > > Roughly a one-third drop in performance. Disabling highmem improves
> > > performance only slightly.
>
> > There are probably some things that can be done to optimize it,
> > but I guess most of the overhead is from the page table operations
> > and cannot be avoided.
>
> Ingo's series did a follow_page() first, then as a fallback did it
> invoke get_user_pages(), i will try that way as well.

Right, that could help, in particular for the small copies. I think a lot
of usercopy calls are only for a few bytes, though this is of course
highly workload dependent and you might only care about the large
ones.

> Yes, i too feel get_user_pages_fast() path is the most time consuming,
> will instrument & check.
>
> > What was the exact 'dd' command you used, in particular the block size?
> > Note that by default, 'dd' will request 512 bytes at a time, so you usually
> > only access a single page. It would be interesting to see the overhead with
> > other typical or extreme block sizes, e.g. '1', '64', '4K', '64K' or '1M'.
>
> It was the default(512), more test results follows (in MB/s),
>
>                 512     1K      4K      16K     32K     64K     1M
>
> w/o series      30      46      89      95      90      85      65
>
> w/ series       22      36      72      79      78      75      61
>
> perf drop       26%     21%     19%     16%     13%     12%    6%
>
> Hmm, results ain't that bad :)

There is also still hope of optimizing small aligned copies like

set_ttbr0(user_ttbr);
ldm();
set_ttbr0(kernel_ttbr);
stm();

which could do e.g. 32 bytes at a time, but with more overhead
if you have to loop around it.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
