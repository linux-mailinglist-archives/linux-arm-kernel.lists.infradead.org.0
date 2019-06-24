Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C48503D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wePJcdfxqoN2WGjMp3k6kPijrtUH8cxI96oPj0qCdEo=; b=Obhb1Jv6n2MaJR
	lUFrSZTnCr+9KnaCjMBCg1L4yWyJgkkFHXa411KvByGBtdDSNAyhRCZ2ay0ApkbK7fuAm4Sh0Cf0L
	8aNuWzBYHNFlbPLZJSDlnUHAhGim0iKeVuzBu4YbcT0G9nk748RT+l4IfqV0y8fI5XjQhDHgozKW9
	5aAPTKoslRT4hNyGv4OG4irq5+RY8cVqOgo4y5rAlloiEV704xFPkZAmp8E7DLeu5VLC8jn5G0HEl
	pFejPTn1+oC8T3HOdlh5uyJoZEkp/qxdbap/Q9TR/PR8a8ILJ91Vzr0VakHuiYc4ssu/TNkR4LWIx
	BivdlFBjo3r4a3tcUs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJcy-0002o5-GY; Mon, 24 Jun 2019 07:43:00 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJcR-0002by-3P
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:42:29 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfJcL-0001F8-3S; Mon, 24 Jun 2019 09:42:21 +0200
Date: Mon, 24 Jun 2019 09:42:19 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
In-Reply-To: <CALCETrV-suRS5=JqDjbouXciN_OPsguERjux7fQVFOKGmdrspA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1906240935430.32342@nanos.tec.linutronix.de>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <CALCETrV-suRS5=JqDjbouXciN_OPsguERjux7fQVFOKGmdrspA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_004227_679991_22AD5FCD 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Dmitry Safonov <dima@arista.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Jun 2019, Andy Lutomirski wrote:

> On Sun, Jun 23, 2019 at 5:34 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > +GENERIC VDSO LIBRARY:
> > +M:     Andy Lutomirksy <luto@kernel.org>
> 
> Lutomirski, perhaps?

Ooops. Where did I copy that from?

> Although I do appreciate the opportunity to say "not me!" :)

You just gave me the perfect exit plan. I'll change my surname to Gleyxner
and head off to the goat farm :)

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
