Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673CAFBC69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 00:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6th5COxWsX3jZzqu4KgePgKWPtbE53ejmTUYTRao+Lg=; b=L3gPDwUE15V9ui
	KZF1iOtyYSAQL3OAAF80KlH8Zl+ZjQAci00BkqpwWqk2wPLyPALbr7DJqr2fwjP8G3lruhq+7LBug
	mHjXat++E+gj1w4Imv2SobPn+wAYz3DnFBHT6P18q4m3Or7bC2Ufuv4mB+ihcD2KXlFHdDySrGtjB
	Zwv+wGJeLElNMLfXwHTaNdkBbHdPuDMQy15OJPyFXKXk59Fsl0J8T6SEshi7/g161tokUOsi3RqmA
	z5QcHYRLu1iKTS8EnhE1um4z0QYUgYqJ7IaiAQbXHaaB087YlNsNzTHOrPTJ72wxuzri3pZYDkv2F
	6/1+5A5TmbZrmS3Gj3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV1w3-0006pd-Ez; Wed, 13 Nov 2019 23:20:27 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV1vr-0006ox-Dw
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 23:20:17 +0000
Received: by mail-oi1-x241.google.com with SMTP id 14so3461756oir.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 15:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tfyEwlU+VvNRdOM/oDbXBUf1HGmvkzLPvjj5pUrQLAE=;
 b=sttT2gjj+gOj67ZOnLkuOaCL+Gcyo5KONzMyZj+hA+jhfRTQkgvXo+PhkzBBidy8nx
 /NYiIi9sbuwNlJeZkFs4/oSuiWL9ZR5Q38ucg0TjPMHUSAgtLGs7b93TrOAHCpY3QhlT
 yhhsj8heJeUBUuTvGI/FVANn8dKq1DQbOt/6dPJmnUkC8uI4R52yZdlR4QrFaMf5DMP7
 T3cnaH4CH+woKpV8mw6a+XU0Sb/RJKY2vvxpVIaiHRtsT8u66Qlx+kXlQ06/Xpw7rvgx
 3kFCIpjcbARuVvjBvfIbvYf5waB8HBKsqNY8dZcxlJ0K1nrzf4Hc8X5yv2AsJJ8BfaA/
 +0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tfyEwlU+VvNRdOM/oDbXBUf1HGmvkzLPvjj5pUrQLAE=;
 b=SD9ioEQCxygDj6Vf3YJU6UmHmW3KLSkqPfYYExJCmbT/OIxvGPoFrnrM2y0u0EtgO2
 LfpNJFE7XvUPtA9ICtaJVSDCGr0PbqwMmlZ9Mc+Vp5iGaw7lRic4aKEVsP7qX+ydGvQQ
 67gsRcyU7/j+9r7C2SyTS0FNJWqQgngXwibyZ2BRHqbpZPMo5EuVSXxKpSlHEApFJ1Lo
 6aebafGwEFkVaSYZqgd7PgAzGnvrBPJUym10dJyNz/xBoMYt9mgB/y0seBlZ++KHbnK8
 Hu+VDrSSJ4zBCcwS0vsIn5wPAsengfhXfjCgC1d4/lkYNyBW59yaBQDpnYAW9xnj4AGJ
 aHaA==
X-Gm-Message-State: APjAAAUf+iv3bd+62/NVJasvjZr5PLrSIW6sdHYHTcrfk2dMT0ybSESa
 6332ozolRpLH/PXMXsZGwnGLSH5odlbP338pPi30HA==
X-Google-Smtp-Source: APXvYqw+U7neVE4pYQaEupIc1QGaDNwOynUXxTtzv+qcJWwWVCJZBwcAkg9oe+BGgBTftGVL/abqlDMkbFAi867u+0o=
X-Received: by 2002:aca:55c1:: with SMTP id j184mr1036454oib.105.1573687212995; 
 Wed, 13 Nov 2019 15:20:12 -0800 (PST)
MIME-Version: 1.0
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
 <20191113174845.000009d3@huawei.com>
In-Reply-To: <20191113174845.000009d3@huawei.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 13 Nov 2019 15:20:01 -0800
Message-ID: <CAPcyv4g5xUBp871+T26+se8WH9154g7V81qsToYAbXAALMuhKQ@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Jonathan Cameron <jonathan.cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_152015_473896_CB8F21B3 
X-CRM114-Status: GOOD (  38.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, Tao Xu <tao3.xu@intel.com>,
 X86 ML <x86@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith Busch <keith.busch@intel.com>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 9:49 AM Jonathan Cameron
<jonathan.cameron@huawei.com> wrote:
>
> On Wed, 13 Nov 2019 21:57:24 +0800
> Tao Xu <tao3.xu@intel.com> wrote:
>
> > On 11/13/2019 5:47 PM, Jonathan Cameron wrote:
> > > On Tue, 12 Nov 2019 09:55:17 -0800
> > > Dan Williams <dan.j.williams@intel.com> wrote:
> > >
> > >> [ add Tao Xu ]
> > >>
> > >> On Fri, Oct 4, 2019 at 4:45 AM Jonathan Cameron
> > >> <Jonathan.Cameron@huawei.com> wrote:
> > >>>
> > >>> Generic Initiators are a new ACPI concept that allows for the
> > >>> description of proximity domains that contain a device which
> > >>> performs memory access (such as a network card) but neither
> > >>> host CPU nor Memory.
> > >>>
> > >>> This patch has the parsing code and provides the infrastructure
> > >>> for an architecture to associate these new domains with their
> > >>> nearest memory processing node.
> > >>
> > >> Thanks for this Jonathan. May I ask how this was tested? Tao has been
> > >> working on qemu support for HMAT [1]. I have not checked if it already
> > >> supports generic initiator entries, but it would be helpful to include
> > >> an example of how the kernel sees these configurations in practice.
> > >>
> > >> [1]: http://patchwork.ozlabs.org/cover/1096737/
> > >
> > > Tested against qemu with SRAT and SLIT table overrides from an
> > > initrd to actually create the node and give it distances
> > > (those all turn up correctly in the normal places).  DSDT override
> > > used to move an emulated network card into the GI numa node.  That
> > > currently requires the PCI patch referred to in the cover letter.
> > > On arm64 tested both on qemu and real hardware (overrides on tables
> > > even for real hardware as I can't persuade our BIOS team to implement
> > > Generic Initiators until an OS is actually using them.)
> > >
> > > Main real requirement is memory allocations then occur from one of
> > > the nodes at the minimal distance when you are do a devm_ allocation
> > > from a device assigned. Also need to be able to query the distances
> > > to allow load balancing etc.  All that works as expected.
> > >
> > > It only has a fairly tangential connection to HMAT in that HMAT
> > > can provide information on GI nodes.  Given HMAT code is quite happy
> > > with memoryless nodes anyway it should work.  QEMU doesn't currently
> > > have support to create GI SRAT entries let alone HMAT using them.
> > >
> > > Whilst I could look at adding such support to QEMU, it's not
> > > exactly high priority to emulate something we can test easily
> > > by overriding the tables before the kernel reads them.
> > >
> > > I'll look at how hard it is to build an HMAT tables for my test
> > > configs based on the ones I used to test your HMAT patches a while
> > > back.  Should be easy if tedious.
> > >
> > > Jonathan
> > >
> > Indeed, HMAT can support Generic Initiator, but as far as I know, QEMU
> > only can emulate a node with cpu and memory, or memory-only. Even if we
> > assign a node with cpu only, qemu will raise error. Considering
> > compatibility, there are lots of work to do for QEMU if we change NUMA
> > or SRAT table.
> >
>
> I faked up a quick HMAT table.
>
> Used a configuration with 3x CPU and memory nodes, 1x memory only node
> and 1x GI node.  Two test cases, one where the GI initiator is further than
> the CPU containing nodes from the memory only node (realistic case for
> existing hardware). That behaves as expected and there are no
> /sys/node/bus/nodeX/access0 entries for the GI node
> + appropriate ones for the memory only node as normal.
>
> The other case is more interesting we have the memory only node nearer
> to the GI node than to any of the CPUs.  In that case for x86 at least
> the HMAT code is happy to put an access0 directory GI in the GI node
> with empty access0/initiators and the memory node under access0/targets
>
> The memory only node is node4 and the GI node node3.
>
> So relevant dirs under /sys/bus/nodes/devices
>
> node3/access0/initators/ Empty
> node3/access0/targets/node4

This makes sense node3 is an initiator, no other nodes can initiate to it.

> node4/access0/initators/[node3 read_bandwidth write_bandwith etc]
> node4/access0/targets/ Empty
>
> So the result current (I think - the HMAT interface still confuses
> me :) is that a GI node is treated like a CPU node.  This might mean
> there is no useful information available if you want to figure out
> which CPU containing node is nearest to Memory when the GI node is
> nearer still.
>
> Is this a problem?  I'm not sure...
>
> If we don't want to include GI nodes then we can possibly
> use the node_state(N_CPU, x) method to check before considering
> them, or I guess parse SRAT to extract that info directly.
>
> I tried this and it seems to work so can add patch doing this
> next version if we think this is the 'right' thing to do.
>
> So what do you think 'should' happen?

I think this might be our first case for adding an "access1" instance
by default. I.e. in the case when access0 is not a cpu, then access1
is there to at least show the "local" cpu and let userspace see the
performance difference of cpu vs a specific-initiator access.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
