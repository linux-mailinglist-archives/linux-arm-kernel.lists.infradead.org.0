Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7C246D86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 03:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7ZsazirV/ozuxdE445QGDIwF8HN0UHdfGfbBbfrg1M=; b=sU94adbXj9h3OG
	BP+y1mSk7jW/h1GZOfRGpV7CPuGv/8oEMVCE/v3Ew3R5XqB/QkOJhk/YOFVYwdeoCkyBFAuvi4b5i
	MSZhVduRS5w/bTPFhK+Vty6SFYV0Zrqm6/7J/caEmFmxK/7zxOC8RrprZGAmamat4lobjimo4IkuB
	WfhNGzvcpoegd5ncOkxAomOHnGuFUFNhqMbdS0MrbuLfUy46FyT4Q022nwpVf262PXd9pET/y2Wxb
	af9/GaewVCiqaeZrTCJo+C/Ad1B8vh4uWawnRuWFJfnOR3E0Ep+Z/XfCX/c+kXHks/27u7xm6EF8b
	e2/b2eKZR5ZzNeMYpmHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbxWZ-0007Ro-Vz; Sat, 15 Jun 2019 01:30:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbxWR-0007RV-MZ
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 01:30:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id b11so2899706lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 18:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jhXaXfPHsuikNWasyzKXz0OqNXyjMi6Ezr2AgMsWHQs=;
 b=NS9MlD3R5svs5s75KxD3ghJDb0sd5ay6dkFHCdDXXvPag4n3UyYdkxrl15zWReDUxp
 qbkCOMcJNhWXHtKjBXrnjnaBwTcRwDbbtpVOG5zP/B9dtFcErBth+QcPwR+oTA9CbLXi
 /TXfiKSzI6R0mpTTVqWvxESFh6bli4iVzzlWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jhXaXfPHsuikNWasyzKXz0OqNXyjMi6Ezr2AgMsWHQs=;
 b=K4bqxwCVuvQISuP1R5vRNv/snbw2UpyHEnr1T/IYXy/lwcH4h8W+AvbcwH6eSLgu96
 xYp+MeFv3Qx+7Ioo658UudelEfFSKKouKs9WNe0whMVHSglunl+R1zsc05PWUgn5QRcd
 5E6cZIz2Uitx3Vyi4oCJOgJaEM/2sYLmxULEBYfvi4HHBiUGGNUAEqz2sz4rS06OvFAs
 D0P1kGGegypI3S4jirohlEZcXlJcrV2QKJcJxBQWA1oo2QRcOYbJTrWbcWVoAqt+XJHT
 kmso1WHilHnPxnmgKUOOqpADS2SQvpR/d29Th0lVmIk+ShgrUMKd9ccTZ8JLHJ4oUFtk
 Hxqg==
X-Gm-Message-State: APjAAAWxxKqOnmje+z62ZNtsSB+7jRIyk856U1I90XOJu21YNKXB2BQf
 8ywCvU/jefKAkqK7/4aMjNPfIq/dnUQ=
X-Google-Smtp-Source: APXvYqxqoeF5qIc9zdu1cOS2GebU+DDiuJbyPQLC+S4xtmdGnY/lv1T0u6rPSv8f/wOM7GfmoOwZxg==
X-Received: by 2002:ac2:4466:: with SMTP id y6mr8311329lfl.0.1560562220917;
 Fri, 14 Jun 2019 18:30:20 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169])
 by smtp.gmail.com with ESMTPSA id a70sm646258ljf.57.2019.06.14.18.30.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 18:30:20 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id a21so4107343ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 18:30:20 -0700 (PDT)
X-Received: by 2002:a2e:9ec9:: with SMTP id h9mr14664531ljk.90.1560561909767; 
 Fri, 14 Jun 2019 18:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190614161707.24380-1-will.deacon@arm.com>
In-Reply-To: <20190614161707.24380-1-will.deacon@arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 14 Jun 2019 15:24:53 -1000
X-Gmail-Original-Message-ID: <CAHk-=whnnZu=Ed88Cs4=K4d1O2_=ppdkhayDOwJJSSmecPu1xA@mail.gmail.com>
Message-ID: <CAHk-=whnnZu=Ed88Cs4=K4d1O2_=ppdkhayDOwJJSSmecPu1xA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update my email address to use @kernel.org
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_183023_749652_BB43649E 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Peter Zijlstra <peterz@infradead.org>,
 arm-soc <arm@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 6:21 AM Will Deacon <will.deacon@arm.com> wrote:
>
> When I say "stop working" I really mean "will go to my line manager", so
> send patches there at your peril because they may reply with roadmaps
> and spreadsheets. You have been warned.

Oh we'd better avoid _that_.

> Unless Linus wants to pick this up directly, I can include it in the
> arm64 pull request next week. Just thought I'd send it out now as an
> 'FYI' for the people on CC.

I'll wait for the real pull request, it doesn't look like this is
timing crtitical yet. And at worst, I'm sure I can handle a
spreadsheet or two.

But now I'm replying to your arm.com email anyway, because that's what
the Reply-to was set for.

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
