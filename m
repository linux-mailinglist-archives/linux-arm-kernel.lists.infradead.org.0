Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A892DE0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbQwnN45ZgN9FcYaesCuktlrOEWX/anceeeYlr1845k=; b=D7aj/JiFhzzdww
	5XaUOAQhuZ415XK4iPWltVmmglAkSt7PtZV/uB0R2eTWSiTseCfi5hHwvPHtI8JZnzFsDxYUEG0RO
	q2NSVFZxgI79oK58bEvnKBPdjVtxwmBbSRkSGe1iVZc9kah3hdisxV8gRUKyj8sY7Yrd0Hdo9jkpL
	esRFji03pft+HwITE2OTmyg8zGck7hEbSum5Kg9XZzBg7QXerP3M0ieS9sjoSiUNXAjieOQjDLGOD
	MYiAmFtFwcp2TBtG8Y9t2vKhYSjMpNR/WsgjsAbTA06vocyEJW/y+OWHLEAh0CUk6KQJOf8DdN+Ll
	P/aMEhO2Bnk1xr+rIqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyYh-0002QY-7d; Wed, 29 May 2019 13:23:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyYa-0002Pr-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:23:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0EF180D;
 Wed, 29 May 2019 06:23:50 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5BC23F59C;
 Wed, 29 May 2019 06:23:44 -0700 (PDT)
Date: Wed, 29 May 2019 14:23:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190529132341.27t3knoxpb7t7y3g@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190527143719.GA59948@MBP.local>
 <20190528145411.GA709@e119886-lin.cambridge.arm.com>
 <20190528154057.GD32006@arrakis.emea.arm.com>
 <20190528155644.GD28398@e103592.cambridge.arm.com>
 <20190528163400.GE32006@arrakis.emea.arm.com>
 <20190529124224.GE28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529124224.GE28398@e103592.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_062352_214239_B573E4F7 
X-CRM114-Status: GOOD (  24.13  )
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
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 01:42:25PM +0100, Dave P Martin wrote:
> On Tue, May 28, 2019 at 05:34:00PM +0100, Catalin Marinas wrote:
> > On Tue, May 28, 2019 at 04:56:45PM +0100, Dave P Martin wrote:
> > > On Tue, May 28, 2019 at 04:40:58PM +0100, Catalin Marinas wrote:
> > > 
> > > [...]
> > > 
> > > > My thoughts on allowing tags (quick look):
> > > >
> > > > brk - no
> > > 
> > > [...]
> > > 
> > > > mlock, mlock2, munlock - yes
> > > > mmap - no (we may change this with MTE but not for TBI)
> > > 
> > > [...]
> > > 
> > > > mprotect - yes
> > > 
> > > I haven't following this discussion closely... what's the rationale for
> > > the inconsistencies here (feel free to refer me back to the discussion
> > > if it's elsewhere).
> > 
> > _My_ rationale (feel free to disagree) is that mmap() by default would
> > not return a tagged address (ignoring MTE for now). If it gets passed a
> > tagged address or a "tagged NULL" (for lack of a better name) we don't
> > have clear semantics of whether the returned address should be tagged in
> > this ABI relaxation. I'd rather reserve this specific behaviour if we
> > overload the non-zero tag meaning of mmap() for MTE. Similar reasoning
> > for mremap(), at least on the new_address argument (not entirely sure
> > about old_address).
> > 
> > munmap() should probably follow the mmap() rules.
> > 
> > As for brk(), I don't see why the user would need to pass a tagged
> > address, we can't associate any meaning to this tag.
> > 
> > For the rest, since it's likely such addresses would have been tagged by
> > malloc() in user space, we should allow tagged pointers.
> 
> Those arguments seem reasonable.  We should try to capture this
> somewhere when documenting the ABI.
> 
> To be clear, I'm not sure that we should guarantee anywhere that a
> tagged pointer is rejected: rather the behaviour should probably be
> left unspecified.  Then we can tidy it up incrementally.
> 
> (The behaviour is unspecified today, in any case.)

What is specified (or rather de-facto ABI) today is that passing a user
address above TASK_SIZE (e.g. non-zero top byte) would fail in most
cases. If we relax this with the TBI we may end up with some de-facto
ABI before we actually get MTE hardware. Tightening it afterwards may be
slightly more problematic, although MTE needs to be an explicit opt-in.

IOW, I wouldn't want to unnecessarily relax the ABI if we don't need to.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
