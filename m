Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E331DA29E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXUgFyyFe1DSPXiT+PgLN5TV8YffNUeLF7Qk1zW2S3U=; b=czDEr3qF8m6Q9x
	qhBef/jn85Kghx9/QPnxRYCUQ10mC0xOH3PapWE3u9L5IBaQhUqJYCYsdDWJ/9udZZzVMIzdB4An5
	NxDPP8+te3yONGC3o+bVcPdOXF2FY1n2yU7SC0Zs/CzC1D+u9q+5UMqn+0lF3yNs4REfp1W4qLUjG
	zi5dbID5oR8Pw2HulMfwL98oHPYJKOCFv27sXq9Xf49MX7FXIQLKWQqvM/cRQW9M0xirMOH9cmcys
	gy4vCdUoKsWP/6QksmRgt0Cx+hcq1dduwMwkwtuBujxpBazZK1xoSGZ0zNidIvXCk5sW7c6JO4CW5
	CYUPktbLDHtBx7ySJRKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8u1-0007FR-Jj; Tue, 19 May 2020 20:31:53 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8ts-0007Ee-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:31:46 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MLRDv-1jKIbW2jND-00IWI0 for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 22:31:41 +0200
Received: by mail-qt1-f178.google.com with SMTP id c24so766594qtw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:31:41 -0700 (PDT)
X-Gm-Message-State: AOAM533gR2MprAfzVtxuTX8pz2UtZUc4Joz5RByRpeTBmPmPciCzkb0W
 iyiAnbShraWZ3uLcIX4WhoPSRTM+RxiNgJrAkbE=
X-Google-Smtp-Source: ABdhPJwnFPtRSDJVnDnHL5c/dqE67Ig3qeBa0DrpfVygpw767tSMU+pDkvKG7qSXMmmSfY8tCzkK5UyIjTK6Dw2jmGk=
X-Received: by 2002:aed:2441:: with SMTP id s1mr1854319qtc.304.1589920300436; 
 Tue, 19 May 2020 13:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com>
 <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
In-Reply-To: <0c2abcd1-7da8-2559-1e93-4c3bdd38dec1@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 22:31:23 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3fxs+14ZdCRmt_GwJGv3Aipm1r9sAHH6aVj2UrWBNuQQ@mail.gmail.com>
Message-ID: <CAK8P3a3fxs+14ZdCRmt_GwJGv3Aipm1r9sAHH6aVj2UrWBNuQQ@mail.gmail.com>
Subject: Re: clock_gettime64 vdso bug on 32-bit arm, rpi-4
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
X-Provags-ID: V03:K1:b461xunjkpq5fa4vMQ7dGpWQQHS4sEeI1yHssQyOcZm97VaD8At
 YgiT8bo5k8aXCbjk11UaflAOFhRPAYsMjT5eq5lVnpHsjyuEB2h2vtbj9DaQsaWqhDFDqw0
 CFD8lilEZ5qK7Q9539Mg48mmYUCszcIe18O5LPFzBBQYdt22L7eBkHUAZclGD8K5xXr0qxC
 WFzzC9nOvHxU4VZARGgCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2kBEjfYyOoU=:7vQ5GDxU9a7P08ASAvFO24
 pHdWKB6pz9uagTEKx+rbUZmR5MAykEh4dmWSccTZMrmGPg5Fwxg6kmUrYZijWJYWn046hWYUc
 S46cew78mb2r8lFbz69AG9OMuFhQxoltEsNkaODG49Fi2hYKBznDpnbgX9ENRrzzZJZ7OgUKf
 G2UWceMojyBPwsza3jhlRUy0z+mNdn3/gkzemhHmaWXDxRBZlEFuSbrEO8kHdPEC4oFV5T1Vq
 +75/bF7o6eHoZrVLKIjtd565aA1i51UUBlNf/7bq8iz3c66vzp/o6BsRVshMJKK9/dV/XldX4
 AbaYTaMgehraIVi+TsKiYnj1tNBXcNXFJ6YfnzkL390uYVLD6550KKiHBHQi1L9VE1CmFGex+
 nOv0PqjVPOpgn89e7a3VmExAStiErgNDNTlhfkAcDObkrcdoHMPgqE4P/7C2goi34mqRDpXSt
 fklDOd/A7+1Q0g8pcJ+w0kP49YhwBb+wVX3ubHSsqPXE9RkEZSZLXYiCdP0qkYPupxHRkYpWw
 Fl+AX34cYcslMGwe0Zdi0aqvcksnQcKoInGx4grFUBwQebeLHk6A0xDo82L5KoFR2STn384B+
 F2Exd5nN+31dzsRzU+efM/Z10PSAz51p8vm5lM4dgFEdapSzpX+eMv6c/2KF1FB2HjOHcltxb
 L713iXR85f4V6iYB476xRveM+Lf4kuuIOxomR31Ko4czAFaHAw4I7HI5C/xReZc/zUUqS20/f
 rGNITBCS5EmrGYMebiYEGTGPeKuSfWQsTHiwylfG916OEb0EwM+GzNmTaw33tEkyzliEVtwwc
 UWu9T/oseN/F+eV6/gh8+X9ihbdSh/XaqTULbdz3RjHlYdXCDk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133144_482120_32A02CFB 
X-CRM114-Status: GOOD (  31.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Rich Felker <dalias@libc.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jack Schmidt <jack.schmidt@uky.edu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 10:24 PM Adhemerval Zanella
<adhemerval.zanella@linaro.org> wrote:
> On 19/05/2020 16:54, Arnd Bergmann wrote:
> > Jack Schmidt reported a bug for the arm32 clock_gettimeofday64 vdso call last
> > month: https://github.com/richfelker/musl-cross-make/issues/96 and
> > https://github.com/raspberrypi/linux/issues/3579
> >
> > As Will Deacon pointed out, this was never reported on the mailing list,
> > so I'll try to summarize what we know, so this can hopefully be resolved soon.
> >
> > - This happened reproducibly on Linux-5.6 on a 32-bit Raspberry Pi patched
> >    kernel running on a 64-bit Raspberry Pi 4b (bcm2711) when calling
> >    clock_gettime64(CLOCK_REALTIME)
>
> Does it happen with other clocks as well?

Unclear.

> > - The kernel tree is at https://github.com/raspberrypi/linux/, but I could
> >   see no relevant changes compared to a mainline kernel.
>
> Is this bug reproducible with mainline kernel or mainline kernel can't be
> booted on bcm2711?

Mainline linux-5.6 should boot on that machine but might not have
all the other features, so I think users tend to use the raspberry pi
kernel sources for now.

> > - From the report, I see that the returned time value is larger than the
> >   expected time, by 3.4 to 14.5 million seconds in four samples, my
> >   guess is that a random number gets added in at some point.
>
> What kind code are you using to reproduce it? It is threaded or issue
> clock_gettime from signal handlers?

The reproducer is very simple without threads or signals,
see the start of https://github.com/richfelker/musl-cross-make/issues/96

It does rely on calling into the musl wrapper, not the direct vdso
call.

> > - From other sources, I found that the Raspberry Pi clocksource runs
> >   at 54 MHz, with a mask value of 0xffffffffffffff. From these numbers
> >   I would expect that reading a completely random hardware register
> >   value would result in an offset up to 1.33 billion seconds, which is
> >   around factor 100 more than the error we see, though similar.
> >
> > - The test case calls the musl clock_gettime() function, which falls back to
> >   the clock_gettime64() syscall on kernels prior to 5.5, or to the 32-bit
> >   clock_gettime() prior to Linux-5.1. As reported in the bug, Linux-4.19 does
> >   not show the bug.
> >
> > - The behavior was not reproduced on the same user space in qemu,
> >   though I cannot tell whether the exact same kernel binary was used.
> >
> > - glibc-2.31 calls the same clock_gettime64() vdso function on arm to
> >   implement clock_gettime(), but earlier versions did not. I have not
> >   seen any reports of this bug, which could be explained by users
> >   generally being on older versions.
> >
> > - As far as I can tell, there are no reports of this bug from other users,
> >   and so far nobody could reproduce it.
> >
> > - The current musl git tree has been patched to not call clock_gettime64
> >    on ARM because of this problem, so it cannot be used for reproducing it.
>
> So should glibc follow musl and remove arm clock_gettime6y4 vDSO support
> or this bug is localized to an specific kernel version running on an
> specific hardware?

I hope we can figure out what is actually going on soon, there is probably
no need to change glibc before we have.

          Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
