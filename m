Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDB928473
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 19:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSCWhceJ2Wmu8ID/GRvdacSGsDCwIYF8TDSCACsJTpw=; b=vCsN2qPPX8Ocva
	8APkXdB0RaaazCtBECap2wfbu5juPam5WuIkr3P40iDrttm1ibYqShCFy+4rqwIosxHB7O6zrcE+N
	S/ssXVGHtpXGoQxNSG4sNMFr6oXnbEtbpnoKLgBovFWh0fC3pERmbOvlVUsdGWI3ljmb1KyqjrzCS
	86O+qUCt+sWPpU/aCTRC/u6kNUdOTRW7ZRtECPZbQoqiqBiX8MnlW3yiXuIJ2CRQ0i0wFKNckIzh3
	EWPCW6YsEwTdfB/krfUMtebdxgdvgsvoArabQm6XAUBhnGSymD+5Bseki9zWFSC+fyPAJEhzVwt1o
	9LloLKTaItAOP3ASVdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTr5B-0004bK-Aq; Thu, 23 May 2019 17:00:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTr52-0004Zv-Ug
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 17:00:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B21C374;
 Thu, 23 May 2019 10:00:36 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF1633F5AF;
 Thu, 23 May 2019 10:00:29 -0700 (PDT)
Date: Thu, 23 May 2019 18:00:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: enh <enh@google.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523170026.nso2me5qnrrjbrdr@mbp>
References: <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
 <CAJgzZoqX--Kd9=Kjpnfz-5cjVJ=TdsXM5dJM_EjLFKniVbny2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJgzZoqX--Kd9=Kjpnfz-5cjVJ=TdsXM5dJM_EjLFKniVbny2w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_100037_000902_1AEFDF29 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 08:44:12AM -0700, enh wrote:
> On Thu, May 23, 2019 at 7:45 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Wed, May 22, 2019 at 01:47:36PM -0700, Kees Cook wrote:
> > > For userspace, how would a future binary choose TBI over MTE? If it's
> > > a library issue, we can't use an ELF bit, since the choice may be
> > > "late" after ELF load (this implies the need for a prctl().) If it's
> > > binary-only ("built with HWKASan") then an ELF bit seems sufficient.
> > > And without the marking, I'd expect the kernel to enforce MTE when
> > > there are high bits.
> >
> > The current plan is that a future binary issues a prctl(), after
> > checking the HWCAP_MTE bit (as I replied to Elliot, the MTE instructions
> > are not in the current NOP space). I'd expect this to be done by the
> > libc or dynamic loader under the assumption that the binaries it loads
> > do _not_ use the top pointer byte for anything else.
> 
> yeah, it sounds like to support hwasan and MTE, the dynamic linker
> will need to not use either itself.
> 
> > With hwasan compiled objects this gets more confusing (any ELF note
> > to identify them?).
> 
> no, at the moment code that wants to know checks for the presence of
> __hwasan_init. (and bionic doesn't actually look at any ELF notes
> right now.) but we can always add something if we need to.

It's a userspace decision to make. In the kernel, we are proposing that
bionic calls a prctl() to enable MTE explicitly. It could first check
for the presence of __hwasan_init.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
