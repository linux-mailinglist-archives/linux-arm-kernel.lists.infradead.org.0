Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096521E6C9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOX/vsmN85T2B1HsDcIxPMprBQOJ65+ru83oy58mMIc=; b=Vftc9CHm2YVdqm
	ECWUDiE9eeccUK6GVp8XgRLJcdrp877FPj9GNOrxAczy6jZ/g13P/XCZleGUBBwoSZ0ZtCGvtp2IM
	fSYa5vlosCdaEoMOC+Pe0syIxzfk/N5T5FdZDvNw4lpK9x1iKtGYnvFDgoUuJeDuCtfpXqnRD+oms
	MXs6HDrTI0cO5NPEgF9e6i2d/EA/2vLzEzty17bXiEQ9N8+BydAVSLXIHoD5tNmRuj618NEwCOUtJ
	At1Xvpetre9gXbSb0enp83QH/JN4Ibpp36ALXhppSKsqmlJt64xHL8j8acp7pIvch/em54nL78Dzm
	gmIqbTgMdWx0aLc52aCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePEP-0004Xv-VT; Thu, 28 May 2020 20:34:25 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePEC-0004Hr-4A
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:34:14 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MJEMt-1jPucE31ch-00Kevh for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 22:34:09 +0200
Received: by mail-qk1-f178.google.com with SMTP id w3so231374qkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:34:08 -0700 (PDT)
X-Gm-Message-State: AOAM531MeGjbDhYmoQVg95j0RlA9Ek1tlRDgt0LtLK50rR6H6zq3i6Vs
 emD5IwUSrMz/WzcLnfVI/RKagAyE1UhsTPnERto=
X-Google-Smtp-Source: ABdhPJw35+vBI63bF7SfK+zLRpe/uowGSJPEFF3GisVzMhFz/CLIpy+Xs9Ye1mQuxA5jYglGf/r9jzeY5QW4ONbtd8k=
X-Received: by 2002:ae9:de85:: with SMTP id s127mr3586078qkf.352.1590698047221; 
 Thu, 28 May 2020 13:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200528091923.2951100-1-arnd@arndb.de>
 <20200528134621.GN37466@atomide.com>
 <20200528135057.GO37466@atomide.com> <20200528155759.GP37466@atomide.com>
 <34e8fb61-b452-529b-b2c6-3849b2395096@oracle.com>
In-Reply-To: <34e8fb61-b452-529b-b2c6-3849b2395096@oracle.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 22:33:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0AaH+pAdhu7jzEAGC-bECgmz7w=D8PN6NOUjj2kxevkg@mail.gmail.com>
Message-ID: <CAK8P3a0AaH+pAdhu7jzEAGC-bECgmz7w=D8PN6NOUjj2kxevkg@mail.gmail.com>
Subject: Re: [PATCH] ARM: omap2: drop broken broadcast timer hack
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-Provags-ID: V03:K1:TLIvXITr8EVaDi6iHe/ABGzouirraRnDdSG0GHJvk4U+g+o2fXM
 10+lPeePfQdbjQHMXkNS1/9r07WqsSFvYwGT7IrJ3wrPI4OaLC+gvpR3hvzaB74QCnAzlhQ
 5mSTn+JxkjDZNQJI0BKvgzPdQMZlPeeedVj/46k2vzjjkLwSttxoHmTTjv5YAhnAWrxNdn9
 SHzohanbyb2suFBIGlCvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1ma3F0/4dIY=:Rq/X52Q8IQamCsw9KsQnJW
 VbX1MDKk2Pdz3Ejw8Xm2vX2+ePGd8Cro0e2MRCjLImZOOhzQQdf3e3oQPyZaLKGouZdxH16Gb
 is/aM5vDw5Pb36eIWDvbHbmV+QdnTMPK17oTUUjAW/N5mbRinF+iGbbAaIKxaBLgQ94DpsOId
 79J8p0GnEX014pOCJzrPi0UUR4FOowQ2Vm7JvdBwcjAke2FvuTdkRRiPlTny2c88cFEwN2U6S
 k6YsPVQylalAtjZ9mkTH7W4zuM7hcstYi+RovT+uYpXGQiOfjiajVZs8XI3PTh19bmHYsjd/H
 WrUkgGS4rMo3ctFH2SDFPS2UjHCjdBJMUrVOV86RdDuqfnZJd01Z4CN1jr2eL/UdQX4xCjGN1
 E7joYLcs1nuKMhQVcDp/4fMSVnSuDt7bQ0UVn/DG3DuABhgT6fBvCwxj+Y4UQyAJXRFTterpZ
 5wmMZHV4wBSqjJcjXBGLQ07Gl8i/CMYWqX33b0U+/eXxS5a7bpoqZpz21QuVPORnE7IWEHm+2
 gVg+ZEv+XTspMXui1GtRKd5EZOQRhbwxv3/1pGRcUf2pWt74KApLR9TKG/fjC4tcKenJ7+3gN
 s9MnZPTsXgZH/o3Nbu4ApTKvNmCIhDPnkKxr1E1z2wShYyYUGnVzebKqVbSg3Fvu7wu6hNEJS
 DBXUuxNSWkkIF6tCy14vXdxcNMZUHYZxjYWCLkbV5AbJX/l5/7l+fOGZ056Jx0019WJN82JWe
 8ChY0fy0WNO3XLUd2n6l9E5o50/VVOBCCPREFyylsWCerYPjOAQCGEaMEfpu2v7d5/dqZJh5F
 Jiltra9qGdtyjRZvXAHP+o3rfsQKQGuArKog6r4T59906zWVeA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_133412_458361_2BC56A8D 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 linux-omap <linux-omap@vger.kernel.org>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 6:18 PM <santosh.shilimkar@oracle.com> wrote:
> On 5/28/20 8:57 AM, Tony Lindgren wrote:
> > * Tony Lindgren <tony@atomide.com> [200528 13:51]:
> >> * Tony Lindgren <tony@atomide.com> [200528 13:47]:
> >>> * Arnd Bergmann <arnd@arndb.de> [200528 09:20]:
> >>>> The OMAP4 timer code had a special hack for using the broadcast timer
> >>>> without SMP. Since the dmtimer is now gone, this also needs to be dropped
> >>>> to avoid a link failure for non-SMP AM43xx configurations:
> >>>>
> >>>> kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
> >>>> tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'
> >>>
> >>> Hmm this sounds like a regression though. Isn't this needed for using
> >>> the ARM local timers on non-SMP SoC, so a separate timer from dmtimer?
> >>>
> >>> I've probably removed something accidentally to cause this.
> >>
> >> Sounds like arch/arm/mach-omap2/Makefile change needs to be removed
> >> to always still build in timer.o. And probably timer.c needs back
> >> the ifdef for CONFIG_SOC_HAS_REALTIME_COUNTER.
> >>
> >> I'll take a look today.
> >
> > I've sent a patch along those lines as:
> >
> > [PATCH] ARM: OMAP2+: Fix regression for using local timer on non-SMP SoCs
> >
> > A link for the patch at [0] below.
> >
> CPU local timers not being in always ON power domain use to be the
> reason on early version of the SOCs but later SOC moved the CPU local
> timer also in always on domain. Probably AM43xx does loose local timer
> on CPU PD in low power so yes broadcast would be needed with dmtimer
> help.
>
> >
> > [0] https://lore.kernel.org/linux-omap/20200528155453.8585-1-tony@atomide.com/T/#u
> >
> This should restore it.

Should I apply the fix directly to the arm/soc branch that has the
other changes then?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
