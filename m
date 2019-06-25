Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D2C52454
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=LH0u5y9nWO2Pqc+XtzoDm0swb0WjMzwQG7kzQzGAC74=; b=gGJHGPtjNVAVbAcghVSoMZaKQ
	ZNItLQChKFcxsIdC+hgOCoPgU5RaxMKaOso4ocfn2dIHamMWpYAh7T2mD9wiwd440eeMcNnOz4oAk
	814NFymnzX6Gyu3RvzCVxXYbJIBtuoqHu8GUvboxoBtotLeWRKv40OK/ozh5YMoEHmqjov/pyP3AB
	vLfnl32x+sayonHxfmvcxa6VLP3SFM/7CXFf91c+9z0vZYXvLJIZxDUyy4+87rgkKkKfJo7Z2O9/Q
	ot4glmbHi4ohnNKADoZ2tYuGxAsmkpsQjXY9qg2E8IZ9xNnUHs7qxhYScRwtftwxBOox+cFI/QjW3
	dDJWfH8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffq9-0003xl-G7; Tue, 25 Jun 2019 07:26:05 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffpk-0003u5-T2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:25:42 +0000
Received: by mail-pl1-f193.google.com with SMTP id m7so8329111pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:25:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Z3WWGekE9WOmOiZaVOcy0eK3dDuIi2y2iQU5uOWyNfM=;
 b=qzJWsoy6A5HK6/NaYMITiIODD3fGLJWFeJT6kPhLvhuqWjw9f90vFSsNSyxQYnRL0B
 EXsciU8vHW5YJiecb+WdeRguuZ0SUJs6RwmAXs2MVexbEy04NigMLeJP44BNQ9caZ44l
 aaGtSueDAvZhn5yd86mtP1o+JMbCJava3wAJtaBSqMHFrym3fvoImRUUJr5o2jznRQ/T
 AB/VpLumfvRYZyZu3xnA5joJmGLHFg7GMBd7Aen8sC1R96XxhPHDdFY+Ubdua25wll0a
 BFo/U3Tmn8dwW0xs4dww9F3Bg2Euoz+YDStTMepqx4+oTny6jOrntZ98lcd7KdJzYX1S
 8RAg==
X-Gm-Message-State: APjAAAUP+2oZX/OELLgAgeQ3xf02Lo8gHRE/aJclCvHvCsc5e730/6gy
 i7ho+NJDgHAQfy5P+2ehbTYpPA==
X-Google-Smtp-Source: APXvYqyyNFqs8lEkqeWGIhFL1bL0p1mZU4/eLR8SPEZ1IWEPKLjr4nvS7kG+gigCSnFaxi9vTjiBWQ==
X-Received: by 2002:a17:902:b187:: with SMTP id
 s7mr61161997plr.309.1561447536395; 
 Tue, 25 Jun 2019 00:25:36 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id k6sm15713401pfi.12.2019.06.25.00.25.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 00:25:35 -0700 (PDT)
Date: Tue, 25 Jun 2019 00:25:35 -0700 (PDT)
X-Google-Original-Date: Mon, 24 Jun 2019 23:55:16 PDT (-0700)
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
In-Reply-To: <20190624104006.lvm32nahemaqklxc@willie-the-truck>
From: Palmer Dabbelt <palmer@sifive.com>
To: will@kernel.org
Message-ID: <mhng-9933e914-263f-4bb9-9bc5-3a75957e7da0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_002540_963727_5FC1090C 
X-CRM114-Status: GOOD (  33.66  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: julien.grall@arm.com, aou@eecs.berkeley.edu, Arnd Bergmann <arnd@arndb.de>,
 julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, guoren@kernel.org, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, christoffer.dall@arm.com,
 james.morse@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 03:40:07 PDT (-0700), will@kernel.org wrote:
> On Thu, Jun 20, 2019 at 05:33:03PM +0800, Guo Ren wrote:
>> On Wed, Jun 19, 2019 at 8:39 PM Will Deacon <will.deacon@arm.com> wrote:
>> >
>> > On Wed, Jun 19, 2019 at 08:18:04PM +0800, Guo Ren wrote:
>> > > On Wed, Jun 19, 2019 at 5:12 PM Will Deacon <will.deacon@arm.com> wrote:
>> > > > This is one place where I'd actually prefer not to go down the route of
>> > > > making the code generic. Context-switching and low-level TLB management
>> > > > is deeply architecture-specific and I worry that by trying to make this
>> > > > code common, we run the real risk of introducing subtle bugs on some
>> > > > architecture every time it is changed.
>> > > "Add generic asid code" and "move arm's into generic" are two things.
>> > > We could do
>> > > first and let architecture's maintainer to choose.
>> >
>> > If I understand the proposal being discussed, it involves basing that
>> > generic ASID allocation code around the arm64 implementation which I don't
>> > necessarily think is a good starting point.
>> ...
>> >
>> > > > Furthermore, the algorithm we use
>> > > > on arm64 is designed to scale to large systems using DVM and may well be
>> > > > too complex and/or sub-optimal for architectures with different system
>> > > > topologies or TLB invalidation mechanisms.
>> > > It's just a asid algorithm not very complex and there is a callback
>> > > for architecture to define their
>> > > own local hart tlb flush. Seems it has nothing with DVM or tlb
>> > > broadcast mechanism.
>> >
>> > I'm pleased that you think the algorithm is not very complex, but I'm also
>> > worried that you might not have fully understood some of its finer details.
>> I understand your concern about my less understanding of asid
>> technology. Here is
>> my short-description of arm64 asid allocator: (If you find anything
>> wrong, please
>> correct me directly, thx :)
>
> The complexity mainly comes from the fact that this thing runs concurrently
> with itself without synchronization on the fast-path. Coupled with the
> need to use the same ASID for all threads of a task, you end up in fiddly
> situations where rollover can occur on one CPU whilst another CPU is trying
> to schedule a thread of a task that already has threads running in
> userspace.
>
> However, it's architecture-specific whether or not you care about that
> scenario.
>
>> > The reason I mention DVM and TLB broadcasting is because, depending on
>> > the mechanisms in your architecture relating to those, it may be strictly
>> > required that all concurrently running threads of a process have the same
>> > ASID at any given point in time, or it may be that you really don't care.
>> >
>> > If you don't care, then the arm64 allocator is over-engineered and likely
>> > inefficient for your system. If you do care, then it's worth considering
>> > whether a lock is sufficient around the allocator if you don't expect high
>> > core counts. Another possibility is that you end up using only one ASID and
>> > invalidating the local TLB on every context switch. Yet another design
>> > would be to manage per-cpu ASID pools.

FWIW: right now we don't have any implementations that support ASIDs, so we're
really not ready to make these sort of decisions because we just don't know
what systems are going to look like.  While it's a fun intellectual exercise to
try to design an allocator that would work acceptably on systems of various
shapes, there's no way to test this for performance or correctness right now so
I wouldn't be comfortable taking anything.  If you're really interested, the
right place to start is the RTL

    https://github.com/chipsalliance/rocket-chip/blob/master/src/main/scala/rocket/TLB.scala#L19

This is essentially the same problem we have for our spinlocks -- maybe start
with the TLB before doing a whole new pipeline, though :)

>> I'll keep my system use the same ASID for SMP + IOMMU :P
>
> You will want a separate allocator for that:
>
> https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.brucker@arm.com
>
>> Yes, there are two styles of asid allocator: per-cpu ASID (MIPS) or
>> same ASID (ARM).
>> If the CPU couldn't support cache/tlb coherency maintian in hardware,
>> it should use
>> per-cpu ASID style because IPI is expensive and per-cpu ASID style
>> need more software
>> mechanism to improve performance (eg: delay cache flush). From software view the
>> same ASID is clearer and easier to build bigger system with more TLB caches.
>>
>> I think the same ASID style is a more sensible choice for modern
>> processor and let it be
>> one of generic is reasonable.
>
> I'm not sure I agree. x86, for example, is better off using a different
> algorithm for allocating its PCIDs.
>
>> > So rather than blindly copying the arm64 code, I suggest sitting down and
>> > designing something that fits to your architecture instead. You may end up
>> > with something that is both simpler and more efficient.
>> In fact, riscv folks have discussed a lot about arm's asid allocator
>> and I learned
>> a lot from the discussion:
>> https://lore.kernel.org/linux-riscv/20190327100201.32220-1-anup.patel@wdc.com/
>
> If you require all threads of the same process to have the same ASID, then
> that patch looks broken to me.
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
