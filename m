Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992EE49CEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDODwRewHtY2pJzn58oi46hdc6FWh4+KGE+2Vv3wbos=; b=n8m2kSzN2atlYJ
	aAEVGH5sNRy6SkW2C3sjdbKmhKBJgWbc1umozbbNVvK2bAJ+4kroenQFc8mVcS5MdF2UyNQHleYY7
	Jix9g0IVZnAJpHSswg9wDAmbV35CJ3DHqZVud6ykMU8QdirounIS9fdnL6AXwKWRG8v6ngdvn3zFL
	2BCqSBjnr7jcgzVE51AgJg6WcfsNFM8DolpuDJZIgJtpDJ+4OL2xiqjD7/SHIlh4HLh9DHuD6+Btk
	tIfXyr/jXuohA/P7xixff6PTPtbpi5sLcxMHaKr+UCorfwYbALESdJGkpzmKTeymA+QkJhlKgFn3t
	daQF6LFnPW7B0qLZi3bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAGF-0008HM-5K; Tue, 18 Jun 2019 09:18:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAFx-0008Dc-5o
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:18:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D19DC344;
 Tue, 18 Jun 2019 02:18:18 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BBBB3F246;
 Tue, 18 Jun 2019 02:18:14 -0700 (PDT)
Date: Tue, 18 Jun 2019 10:18:12 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190618091811.GC2790@e103592.cambridge.arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190613110235.GW28398@e103592.cambridge.arm.com>
 <20190613152632.GT28951@C02TF0J2HF1T.local>
 <201906132209.FC65A3C771@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906132209.FC65A3C771@keescook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021821_300025_AD6BE098 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-arm-kernel@lists.infradead.org,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 10:13:54PM -0700, Kees Cook wrote:
> On Thu, Jun 13, 2019 at 04:26:32PM +0100, Catalin Marinas wrote:
> > On Thu, Jun 13, 2019 at 12:02:35PM +0100, Dave P Martin wrote:
> > > On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> > > > +static int zero;
> > > > +static int one = 1;
> > > 
> > > !!!
> > > 
> > > And these can't even be const without a cast.  Yuk.
> > > 
> > > (Not your fault though, but it would be nice to have a proc_dobool() to
> > > avoid this.)
> > 
> > I had the same reaction. Maybe for another patch sanitising this pattern
> > across the kernel.
> 
> That's actually already happening (via -mm tree last I looked). tl;dr:
> it ends up using a cast hidden in a macro. It's in linux-next already
> along with a checkpatch.pl addition to yell about doing what's being
> done here. ;)
> 
> https://lore.kernel.org/lkml/20190430180111.10688-1-mcroce@redhat.com/#r

Hmmm, that is marginally less bad.

Ideally we'd have a union in there, not just a bunch of void *.  I may
look at that someday...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
