Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B4A2770B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/AdrU9S9TEJzVxdMBK7kWtmKqlUUKNfPZfM6EDFW+o=; b=eG6lwsdcOHf88s
	VEGZXYnxtzTn+SMW0Jlog5VB7KITSJR9iI/3R0otFtQTg6mtoKq/0nO8BrDwVdQGEl2skhFgUNGhm
	yUyc2i7L82sLOFgmtbvXDE637l/0BLST39xCYMAtqxixN1VZXYezjdgukE2J+iEXpRU/vjBsckGcZ
	KJRjawLvdyFgmKzzTbf0GB+GhacJX4YHbD1dkg8KMZodlCOEtQ/A0YX4CPtynK9xSzHhQlYgK2G91
	QfLIY+JpvEzdbb98hxRwJPj7p0bREXwvUTSn7xcwFL6n3z6UzO5iIqJHwdklGaPnqg5SQZz1qKqAK
	7I/w6+/W4h9iNWBcvfWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiFP-0004Xz-Iw; Thu, 23 May 2019 07:34:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiFJ-0004XK-3u
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 07:34:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF17480D;
 Thu, 23 May 2019 00:34:34 -0700 (PDT)
Received: from MBP.local (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89C463F575;
 Thu, 23 May 2019 00:34:28 -0700 (PDT)
Date: Thu, 23 May 2019 08:34:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: enh <enh@google.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190523073425.GA43379@MBP.local>
References: <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <CAFKCwrjOjdJAbcABp3qxwyYy+hgfyQirvmqGkDSJVJe5pSz0Uw@mail.gmail.com>
 <CAJgzZorUPzrXu0ysDdKwnqdvgWZJ9tqRjF-9_5CU_UV+c0bRCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJgzZorUPzrXu0ysDdKwnqdvgWZJ9tqRjF-9_5CU_UV+c0bRCA@mail.gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003437_169314_669C2251 
X-CRM114-Status: GOOD (  19.79  )
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

On Wed, May 22, 2019 at 04:09:31PM -0700, enh wrote:
> On Wed, May 22, 2019 at 4:03 PM Evgenii Stepanov <eugenis@google.com> wrote:
> > On Wed, May 22, 2019 at 1:47 PM Kees Cook <keescook@chromium.org> wrote:
> > > On Wed, May 22, 2019 at 05:35:27PM +0100, Catalin Marinas wrote:
> > > > I would also expect the C library or dynamic loader to check for the
> > > > presence of a HWCAP_MTE bit before starting to tag memory allocations,
> > > > otherwise it would get SIGILL on the first MTE instruction it tries to
> > > > execute.
> > >
> > > I've got the same question as Elliot: aren't MTE instructions just NOP
> > > to older CPUs? I.e. if the CPU (or kernel) don't support it, it just
> > > gets entirely ignored: checking is only needed to satisfy curiosity
> > > or behavioral expectations.
> >
> > MTE instructions are not NOP. Most of them have side effects (changing
> > register values, zeroing memory).
> 
> no, i meant "they're encoded in a space that was previously no-ops, so
> running on MTE code on old hardware doesn't cause SIGILL".

It does result in SIGILL, there wasn't enough encoding left in the NOP
space for old/current CPU implementations (in hindsight, we should have
reserved a bigger NOP space).

As Evgenii said, the libc needs to be careful when tagging the heap as
it would cause a SIGILL if the HWCAP_MTE is not set. The standard
application doesn't need to be recompiled as it would not issue MTE
colouring instructions, just standard LDR/STR.

Stack tagging is problematic if you want to colour each frame
individually, the function prologue would need the non-NOP MTE
instructions. The best we can do here is just having the (thread) stacks
of different colours.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
