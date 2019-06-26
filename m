Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57B156EF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPlmi3i4czxNj6pybOYk5fRXW5sa+zF4g7XJpblSPvo=; b=JyIFIFzGWnJMqY
	T19ykVt0XMlXHhNI4i8fPMMev/lTtTbOs7WZ4gSRC15D07r04MFC4K+30bEkFyc04ILnz+Lrf69oy
	rByyRwIJypVApUoAwfg2cx5PSuHqIXOtX5zcg5ZUgE4fdeejplYEhdGbmEPexQUdkpicpUZgtr7C/
	eOTQL7jb1T+OEvgoemrko2tl8KXD7ULOlu6zO3QrPFcg6PZTCMSZJAH4c2FDLoXq2F552A+1Tza2k
	fYKs8wcUIQvyZH+Bp0+TOzJXCEAXYAj/XLMOPdfIbtXiX513cpM4mJpE1xONoWoMBwoV/JkR7nass
	n1qVvHCY4JpaHPXGnXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAwd-00076U-VF; Wed, 26 Jun 2019 16:38:52 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAwP-000754-TT
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:38:39 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hgAw8-0007Ue-U0; Wed, 26 Jun 2019 18:38:21 +0200
Date: Wed, 26 Jun 2019 18:38:19 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [tip:timers/vdso] MAINTAINERS: Add entry for the generic VDSO
 library
In-Reply-To: <CALCETrWaUEnnTiyh-xDoywji1GdfoeoSmy635MYcXMe9CgYkCA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1906261837170.32342@nanos.tec.linutronix.de>
References: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <tip-e70980312a946a56173843cbc0104b3b0e57a0c7@git.kernel.org>
 <CALCETrWaUEnnTiyh-xDoywji1GdfoeoSmy635MYcXMe9CgYkCA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_093838_091145_D7545508 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Michael Kelley <mikelley@microsoft.com>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Sasha Levin <sashal@kernel.org>,
 Dmitry Safonov <dima@arista.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Andre Przywara <andre.przywara@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Andrey Vagin <avagin@openvz.org>, Huw Davies <huw@codeweavers.com>,
 linux-tip-commits@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019, Andy Lutomirski wrote:
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d0ed735994a5..13ece5479167 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -6664,6 +6664,18 @@ L:       kvm@vger.kernel.org
> >  S:     Supported
> >  F:     drivers/uio/uio_pci_generic.c
> >
> > +GENERIC VDSO LIBRARY:
> > +M:     Andy Lutomirksi <luto@kernel.org>
> 
> s/ksi/ski :)
> 
> Yes, it's a mouthful.

/me blushes some more

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
