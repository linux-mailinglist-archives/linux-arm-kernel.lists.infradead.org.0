Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52FB404F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=5bzuZm6X2tcqQdqfbGYLSDaSM0oths9y7Z7YiauOiis=; b=ZHBM3yDX9FX0/tHcAYHcL2u/b
	auEs51UChGLM713ow1RPE5cYOJKxK/csitnQ3CAzjj1gpOfjwjcsLPlGfMu+LS10aBDeYC3f6o+ab
	WaHQg9wJRejdBcDh5DiGfzdMyv7CUax0O9OsTKmhlCp9o9gHADwtaaHQtaf0Ddo0Q+iOOQEbWVDT9
	MRzQb0mMCnMNqYdNwFNb5Wx9iym4SIbYcdAnQuYQfMMhkPbaQsEvpdwdPGHoq4MJrMplImdbTlce1
	0dVIkEVn5C2Y9khQayeH5JxahuqdiT4nSMHqMP5ye3WZv2PJbVPPoMfQO5ab93Tz8YVUpFZLmQxvj
	V7Q2LSQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vkc-0000zZ-Rm; Mon, 16 Sep 2019 18:29:27 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vkE-0000we-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:29:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id t10so266788plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 11:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Jp6I/WhdjgXBrLm8XFTV/W2CbBlPUTPrifY9W91dfHI=;
 b=SgPNHmHUI3s6Y5U+Q0BVqT7wuZAahYN9Sp7bvK/WkhmSDCYSm5A+2HKPWAwtkqtGXp
 9J3gPqcUCHFjkPsRUuU3/KOZR1hYBqyd/MNpI1ipdxi9pUvmGf4l8CrTHsTBzP2tIBQ8
 hFmy5Ft2frUue4ny34BBNvYMvx8XYRjMj04QJzEGKwueGRY2SpndnAROT9qoBFdw5EJm
 pmSgIzCOb60ekhNb5wLkLoTTOYA6xXYpqBLK5btuPldjQ2T2RWcShbymrS2g+P20jTDk
 J+EEppal95vaxj+HdoxekXNZMooOdG9AHCiBegMOADmYTE4Cj6LN4ZjAIM8hUT2YUY+H
 p7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Jp6I/WhdjgXBrLm8XFTV/W2CbBlPUTPrifY9W91dfHI=;
 b=pmTCQg0dSfk32DOzORzyb/DLatjpQsurVmbIx20L+zjniJtb3hSqMX+f9ZCRj8iGB0
 80cdiGTzYrk6uzT0aVNf494ij+9bu/QRlv5tUTiIWxHYZeIbcwl9K+k4qWb3z384LZkc
 bphaPTeBw56VeFtVxK+NG1Mshy06PBpD0908H8zBTHzD/3hd/VzPr0o0nL8Lku/O4Wj5
 nHM/KQ8zlVecByUeHAOYE378vRXz7In5tsk0z/lSwFnpV2ClBfkVz72BK0IkhJMgps31
 uOT2Zg3ztIh+jie6Ra/Z8To24ID/ke+6TVROe7zZAPCk0IdTf36OX0nxZKH/spS8iAo0
 14Sw==
X-Gm-Message-State: APjAAAVUKymc9eiYkOUq3+FNmA3doTD4uEgfhXHuCtaKE3XWnR83OVLn
 N+SXvoMWGhXGjGDpQTdEipFwIA==
X-Google-Smtp-Source: APXvYqyPLzCNMj7vNHvNiodpwn0FVuHbfPgpqBsoZRBBK2pBoeehbEWH1qRowZP5cnYDV+iwsY1UPQ==
X-Received: by 2002:a17:902:5a44:: with SMTP id
 f4mr1093510plm.31.1568658539014; 
 Mon, 16 Sep 2019 11:28:59 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id a4sm12595350pfn.110.2019.09.16.11.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 11:28:58 -0700 (PDT)
Date: Mon, 16 Sep 2019 11:28:58 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 11:28:52 PDT (-0700)
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
In-Reply-To: <20190916181800.7lfpt3t627byoomt@willie-the-truck>
From: Palmer Dabbelt <palmer@sifive.com>
To: will@kernel.org
Message-ID: <mhng-11e0cc7f-264b-4412-9424-2357bc27dcb3@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_112902_888841_8B47E90B 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: julien.thierry@arm.com, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>, christoffer.dall@arm.com,
 Atish Patra <Atish.Patra@wdc.com>, julien.grall@arm.com, guoren@kernel.org,
 gary@garyguo.net, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, rppt@linux.ibm.com,
 Christoph Hellwig <hch@infradead.org>, aou@eecs.berkeley.edu,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com, marc.zyngier@arm.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-arm-kernel@lists.infradead.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, james.morse@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 11:18:00 PDT (-0700), will@kernel.org wrote:
> On Sun, Sep 15, 2019 at 05:03:38AM +0000, Anup Patel wrote:
>>
>>
>> > -----Original Message-----
>> > From: linux-kernel-owner@vger.kernel.org <linux-kernel-
>> > owner@vger.kernel.org> On Behalf Of Palmer Dabbelt
>> > Sent: Saturday, September 14, 2019 7:31 PM
>> > To: will@kernel.org
>> > Cc: guoren@kernel.org; Will Deacon <will.deacon@arm.com>;
>> > julien.thierry@arm.com; aou@eecs.berkeley.edu; james.morse@arm.com;
>> > Arnd Bergmann <arnd@arndb.de>; suzuki.poulose@arm.com;
>> > marc.zyngier@arm.com; catalin.marinas@arm.com; Anup Patel
>> > <Anup.Patel@wdc.com>; linux-kernel@vger.kernel.org;
>> > rppt@linux.ibm.com; Christoph Hellwig <hch@infradead.org>; Atish Patra
>> > <Atish.Patra@wdc.com>; julien.grall@arm.com; gary@garyguo.net; Paul
>> > Walmsley <paul.walmsley@sifive.com>; christoffer.dall@arm.com; linux-
>> > riscv@lists.infradead.org; kvmarm@lists.cs.columbia.edu; linux-arm-
>> > kernel@lists.infradead.org; iommu@lists.linux-foundation.org
>> > Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
>> > separate file
>> >
>> > On Thu, 12 Sep 2019 07:02:56 PDT (-0700), will@kernel.org wrote:
>> > > On Sun, Sep 08, 2019 at 07:52:55AM +0800, Guo Ren wrote:
>> > >> On Mon, Jun 24, 2019 at 6:40 PM Will Deacon <will@kernel.org> wrote:
>> > >> > > I'll keep my system use the same ASID for SMP + IOMMU :P
>> > >> >
>> > >> > You will want a separate allocator for that:
>> > >> >
>> > >> > https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.bruck
>> > >> > er@arm.com
>> > >>
>> > >> Yes, it is hard to maintain ASID between IOMMU and CPUMMU or
>> > >> different system, because it's difficult to synchronize the IO_ASID
>> > >> when the CPU ASID is rollover.
>> > >> But we could still use hardware broadcast TLB invalidation
>> > >> instruction to uniformly manage the ASID and IO_ASID, or OTHER_ASID in
>> > our IOMMU.
>> > >
>> > > That's probably a bad idea, because you'll likely stall execution on
>> > > the CPU until the IOTLB has completed invalidation. In the case of
>> > > ATS, I think an endpoint ATC is permitted to take over a minute to
>> > > respond. In reality, I suspect the worst you'll ever see would be in
>> > > the msec range, but that's still an unacceptable period of time to hold a
>> > CPU.
>> > >
>> > >> Welcome to join our disscusion:
>> > >> "Introduce an implementation of IOMMU in linux-riscv"
>> > >> 9 Sep 2019, 10:45 Jade-room-I&II (Corinthia Hotel Lisbon) RISC-V MC
>> > >
>> > > I attended this session, but it unfortunately raised many more
>> > > questions than it answered.
>> >
>> > Ya, we're a long way from figuring this out.
>>
>> For everyone's reference, here is our first attempt at RISC-V ASID allocator:
>> http://archive.lwn.net:8080/linux-kernel/20190329045111.14040-1-anup.patel@wdc.com/T/#u
>
> With a reply stating that the patch "absolutely does not work" ;)
>
> What exactly do you want people to do with that? It's an awful lot of effort
> to review this sort of stuff and given that Guo Ren is talking about sharing
> page tables between the CPU and an accelerator, maybe you're better off
> stabilising Linux for the platforms that you can actually test rather than
> getting so far ahead of yourselves that you end up with a bunch of wasted
> work on patches that probably won't get merged any time soon.
>
> Seriously, they say "walk before you can run", but this is more "crawl
> before you can fly". What's the rush?

I agree, and I think I've been pretty clear here: we're not merging this ASID 
stuff until we have a platform we can test on, particularly as the platforms we 
have now already need some wacky hacks around TLB flushing that we haven't 
gotten to the bottom of.

> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
