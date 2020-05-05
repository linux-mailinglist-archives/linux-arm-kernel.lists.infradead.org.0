Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3538B1C59DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlpLX9E18cnb5um50/u5/sMhCbAZwO0rHmZMDd5kvck=; b=dJsJ1H5gNvcHfo
	R0vZi3crev/fuBVw8eirO+gc+tbO1Qu7vxkB5xxF89/k1bf6E1c0tNigyuweLFh9MpaHMfh7zKotS
	l+9u10P5bMk1RRptpfagmWKXRtn+QPhNkhaH7eT2X7QTw4sTnZRbPoZDayjTJS41Gb/4s0hlt1lMt
	dDq8snifzwseruUE4Mq1po7C2kXWpOW8MxfSq4aIUJt+X7vpKjRxRuPNzxQxvFi8hhl0DqFDLHRhd
	jNbql1Z8ZSkqUAsrv+8+0dAXFb02u377pLBmg0TSyTBRWGaDlsAsjkCrs1fcJ9YB+pRHby+NxNbbe
	t0s0TkM9uvBRm13NNfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVymW-0004Xz-Ic; Tue, 05 May 2020 14:42:48 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVymP-0004X7-EH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:42:43 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mt7Ll-1jGMfX2Scr-00tUiS for <linux-arm-kernel@lists.infradead.org>; Tue,
 05 May 2020 16:42:38 +0200
Received: by mail-qt1-f175.google.com with SMTP id g26so2059064qtv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:42:38 -0700 (PDT)
X-Gm-Message-State: AGi0Pubni8zl6B3u410Je+0wRRn2YTf9YfEie+l8LC+AvfjWOucrJ1ev
 662DWzl+CoSOWQ3Vs+ad9+HNjhC46nWtdc8Tmqc=
X-Google-Smtp-Source: APiQypLlhYQf7fq/1v0dm90zwWA86A9C8KA52UCtn36b/qe56zBKDZqiifbmYW+Cab0gFL/AUmEbJBOD9oHp5/E1lrQ=
X-Received: by 2002:ac8:12c2:: with SMTP id b2mr3012949qtj.7.1588689757275;
 Tue, 05 May 2020 07:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141218.684079-1-arnd@arndb.de>
 <20200505141908.GH1551@shell.armlinux.org.uk>
In-Reply-To: <20200505141908.GH1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 16:42:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1c1+7GyAzocpWqUMo7=oN48WAdDfPZtnEBHQXpmd7pOw@mail.gmail.com>
Message-ID: <CAK8P3a1c1+7GyAzocpWqUMo7=oN48WAdDfPZtnEBHQXpmd7pOw@mail.gmail.com>
Subject: Re: [PATCH] ARM: use ARM unwinder for gcov
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:bkhsWnVXPdo+4ii9s/+zbMnPL7wPtZYmxbZIc8gsTDjYzgL0xMS
 e++g+1GJc/7bVpR2GeD+GPZP3hgA4UajajGvQkysT7T6zbj6l8Npc1Tve2+LDwS3wIjhekg
 sUZNR9XDs5UP4MaPhGaTPVz2rDrnd4aVRwJqZS6FojWi7Ku1IaOG8iLcYfFSCBriMpg0NqK
 fI7No5IwLlTY2Qnquiw3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:91kjf2BYzlQ=:gJbBMAhvZOkMqwRt9krSUM
 tWNnLyw0Qb+R4kN8PtB1ISORSWLceqsK/AwSN2Mzsw1bN1KFTbv+Lklr0t5HGs4TgHPtL2Zik
 V9RGdE3zink0aWRdWn1mTGRp5C0N6Z+T0p0OZdXvi6wbRC4O0B33iS/gEEBGrcRKyNIQrftB0
 PJfVy9PWLuj+fehlbRvqWbq0SqlpBIY/V4F/SqKnoV6IR+kHk912kFWtODya+8dXbR4+uutBw
 nSdNtqaf3l1MfiqX2+sWVvSI/MPsdXOOjzlPeQIBp0WOgAweOYjzlO0BEsVowvuSkCqq6oWNT
 yTsbIvFDYX9KxIiTOhRd0/R321cT6TK3i7IN7fIdVXccNVqjjO09Snb8spBdt0g73h1Vb2YRA
 lfb8Gp16wJhlVGNPDsH/PeaqnkFAKXIuCmqLvExzhnp61Z58x4tBLBP6HkbE7Ho8+tUD3rdyn
 CtfIO70QZLWV7ypYdMOGneiu0uUXRdPNceB9tFT38LZFQM4Sdh+j80pclx/DgpE8j7e/PQX9d
 ESeX6yK+PNcG42AzY6yerOp+gDWlrC9CnnDQFe9iu+UD2txPHCLwNkmP24p+KQrQ8e7GYdE6V
 BqBvmzC/5w4yq7KeRH9CkQ+NvuYa7G15e6FA/59TNIvrzEzw71hZ+XCsTHybPWDmIJTHDC5jd
 CfIHtI0WavVjnUdyAfuRB1YtjBheizSqG89QIwJFMuy613wL+M4gP/v43C5BmpAslYiM8eBSH
 VIarQc8Gzw8/2xsIFgj7idavJoN9w2nUKnrJRl4aDimtZIcZp7oJ+cRemaVTFfuNTXad+DCkF
 kJZehhIaaNL5d4ra2UJ1b5FMWG3wPTkMSpI+6Efxqt6Bjz5Nno=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_074241_775022_C59FA6CF 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Nathan Huckleberry <nhuck15@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 4:19 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, May 05, 2020 at 04:11:56PM +0200, Arnd Bergmann wrote:
> > Using gcov on ARM fails when the frame pointer unwinder is used:
> >
> > arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
> > arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow
> >
> > This is likely a bug in clang that should be fixed in the compiler.
> > Forcing the use of the ARM unwinder in this configuration however
> > works around the problem.
>
> Or should the stub functions in arch/arm/kernel/unwind.c be moved out?

I had not realized this is only a stub. Moving them out should fix the
link failure, I can
send a patch after testing if we are sure that calling them is not a
bug in clang
that would lead to runtime failures.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
