Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D42710449B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 20:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2bdSIoHCbCDPLeB4s3RRMN41infrs7/BYP5nZZ4qtc=; b=Aofl6h+42u7Ahj
	+FCYLfPAH3ubmX2MFpqjJ0mYYT+5H+nLqDvHmrQSTWX9i8NUebrBxVVSYGwkdm8tQQNcAyEbhBAIp
	Dy2xs+FxIt/F/K/mTxPOIBbuCyYwPSCL0qmvHthvPfl1fkNBilPPApasakSI+MTnrxfqvfkHbmO6q
	/RlgNzZdMiB0eD1StltUQY+8WPQxbgu0PxJ/JPeJThFDpK48wjX4p4J6Iz0MhGQ3e6UDxXss6J01g
	TwDqVf6KEPqZ9rcPxn6VAg7cr+Yf94EhQ3J6gpVUBWz4w8YaTw9DGoOdpP3HpLIXBCOO0T6Y9FE3G
	GSyYy/V9OBwcrDdt1/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXW1b-0005Fr-Us; Wed, 20 Nov 2019 19:52:27 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXW1S-0005FT-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 19:52:20 +0000
Received: by mail-ed1-x543.google.com with SMTP id t11so528386eds.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 11:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EiMbJh8v38zaJv5chquKKWl+LfhgsUJpIvrC2X204xU=;
 b=Ia+IJ1yC/SGCZZT73YW5QN5sOik0SZUaNc5bt6W6XLdtaP9OTSbaXvykZlnoLKCERs
 9LWJWZs/BDypHB+qnhDLnFKj0PxrZ7ysEn/lDFCFbGY2ph/kCaQyn0XCed5qFd/thhJ2
 AVmyetS8PbGcfMDzvrJSZ37PuBNAiZOPjzEj8RCG8+nNA+s2fr63DO1Hooja2YsOrhVD
 TJfh8LhK8mNKTg0NqIaMWSU/SxBW/I37ylNsNmA6kL8zKt/KyfHlsFquoK27DAPftldp
 IEoKkHEFYwqFBKrH4tMmN5l/CAdkk/FYO4EdCfBO2QhhQ30QSkJlboRW6+YrsD6JXc29
 zdQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EiMbJh8v38zaJv5chquKKWl+LfhgsUJpIvrC2X204xU=;
 b=qTk7Co3SD5oyYEJuOa79JV7+kJy2lhvb62vat/tt04ufzSSz3tf/FNIV9WUcW/58Z0
 /lUBucZrKR8KLhPiw5M9ei/eqjPf7uDGRpGTuH2c8Sosg8zzTEsn4UcQcGA75Zjk0tzZ
 Q3GgVtc0OCRMxZ4tSjpNlO+eoGod0Vo9Qas2aj9ze1IPj/BppGolKws4uprjC7ugUvLp
 5c6d7LIxE54ApJryo3an/HcNgBFKMiG94h8FZu7j1wTVSM99nPlfsoUCpTgmkqMR0eOJ
 AfIQcL9SDwUj3d6749ufJn8a3g8EjsPXxWWxVvHK/QsSdPNs5MYfx+PxXqKKlKAu9UrI
 Nk8A==
X-Gm-Message-State: APjAAAV6QeyMlpEWOz4JBvndG7xTGUEp0ZceTa6ockzc3cJmovq+V94f
 Pe0wLaQFMvdLpg8+AdkiZa7e+qyGgUUevnNFJYBiAo+SRQc=
X-Google-Smtp-Source: APXvYqxORrW8OJgoNu0IuYlIZ28DHLYRRWsXEk6WNCu7CI3C804tS+sUUWzYWiHSQMX7c5wXXsnpF3BEROW8rY42lLQ=
X-Received: by 2002:a17:906:90b:: with SMTP id
 i11mr7638851ejd.109.1574279537192; 
 Wed, 20 Nov 2019 11:52:17 -0800 (PST)
MIME-Version: 1.0
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
 <20191120164307.GA19681@lakrids.cambridge.arm.com>
 <CA+CK2bAkb7zg6ne=PzA7UrQF49J2Sa7rmyWM3Bqugfe00-36ng@mail.gmail.com>
 <CA+CK2bCX+QGMPzhjj-UmVNb1jG8Z6WNW=L0GiVsTpGrhyqb9tA@mail.gmail.com>
In-Reply-To: <CA+CK2bCX+QGMPzhjj-UmVNb1jG8Z6WNW=L0GiVsTpGrhyqb9tA@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 20 Nov 2019 14:52:06 -0500
Message-ID: <CA+CK2bDvp=RR7A5J097W3tr2QG_cOZgDMno388EXGAYW6+Q1Mg@mail.gmail.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_115218_834165_77201DC7 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, info@metux.net,
 Vladimir Murzin <vladimir.murzin@arm.com>, steve.capper@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 alexios.zavras@intel.com, James Morse <james.morse@arm.com>,
 allison@lohutok.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 2:46 PM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> > > I see that with CONFIG_ARM64_SW_TTBR0_PAN=y, this means that we may
> > > leave the stale TTBR0 value installed across a context-switch (and have
> > > reproduced that locally), but I'm having some difficulty reproducing the
> > > corruption that you see.
> >
> > I will send the full test shortly. Note, I was never able to reproduce
> > it in QEMU, only on real hardware. Also, for some unknown reason after
> > kexec I could not reproduce it only during first boot, so it is
> > somewhat fragile, but I am sure it can be reproduced in other cases as
> > well, it is just my reproducer is not tunes for that.
> >
>
> Attached is the test program that I used to reproduce memory corruption.
> Test on board with Broadcom's Stingray SoC.

I forgot to remove from repro.c some of the stuff that I used for debugging:
get_pa() and sched_setaffinity() stuff are not needed.

>
> Without fix:
> # time /tmp/repro
> Corruption: pid 1474 map[0] 1488 cpu 3
> Terminated
>
> real    0m0.088s
> user    0m0.004s
> sys     0m0.071s
>
> With the fix:
>
> # time /tmp/repro
> Test passed, all good
> Terminated
>
> real    1m1.286s
> user    0m0.004s
> sys     0m0.970s
>
>
>
> Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
