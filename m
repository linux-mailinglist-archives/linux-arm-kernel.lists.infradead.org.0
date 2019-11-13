Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEFFB5B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DN0W9FL83UmDqooHjGni6AYpBFjaiX470EOaEcHXlk=; b=VFjQJjvtU8fIZz
	enOiJeGze4w8rrsdWLO/zQ7vZ2pB0XjUXFzHhtG/l9FPzBq3SPN5Yq1EIKX17Z+hDMee6td3GkruQ
	R+C1Dlxayl5kHaKCkoF4IZ+K9K5gG8gDRp+GOi/c822myduxCDskk0QEg5p3dXmhf5plWfpmZbFJW
	cnzTEepZ4hSgcCh2p3rcYQzyo0cswT/eSZTqNSBU5axnddIqgb4E8/MaWPpxGO1WMYawdO6UPOxVS
	iYl8sV8WwlFPpiCiK1/mk5/PZIKd/mxRpkssIsuVphWYLsXlgYcsrkPlAQWr30SyZDhdGKl0W0qNt
	5d8B4AYNZukRyW/Bwj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvtC-0005UE-WD; Wed, 13 Nov 2019 16:53:07 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvt4-0005T9-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:53:00 +0000
Received: by mail-ot1-x343.google.com with SMTP id z6so2225018otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 08:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bVs75VZBcY9S0Y5srgopU4beZRbRSaSe1fH2IBEEzVk=;
 b=ssIxIeeIslCiIJXffnM/puPFNeNmqyOWWUWtDbvqe4d/BOtTR/zgDVzI5AzNkOXmek
 d5nc5yKCwdpjNhJbj9X5bsPU3H+lpjXv+S41FpkAjafu/1ILKgYSNIw2YJGDDibDOGDm
 iTXa5j1XEcQEaGqtyExlnhGu7ZABwiMrrBp/NEh42TS5RELZjjcY2rG8aq+EO8xPu0/7
 YjBvENhMkWS/hqSYnuOJuNFQgWDohADDi8v8UzWFS7ovBAkCbFzxXr5d9EYLgL/55pis
 97SdNjAs5pm7As0sJuK/MBKxP83CWf52Z8Zcsl/4mp4LBamQZO7kYC3mpyycgVGUjrX5
 B1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bVs75VZBcY9S0Y5srgopU4beZRbRSaSe1fH2IBEEzVk=;
 b=QibakDBm96Qbop51v1gYH3EAUeCUPIqp0F5w7UMkcWOSX0QqiNf+EjIeClrw3CDTwe
 MXr0iz05LsXFjNUF5WVhfrqZnLA/u4kmsjT7Ha4hR6B+dQnvnv+qMN4adMl7RTbnUAj+
 dEOiqyx+35K11YX64PAly3xDjr/xV77lI70ZDwSL/rDqzF8fiyUsaSCwnYeEkZN/HIuN
 fvG3jK8Ov9W2tnOztgP7klWkm1TmztbhHPly3cvXihB1CbT83vqsmqGYb5J4Ie5Rwd31
 AUJoBBNojGoSrxAgwZJP1ynxI+FqoDArwUdteznEcymQh5+DJrEsruRIhnoQcnHpe7Uk
 XU9w==
X-Gm-Message-State: APjAAAUjdMWa9t1I/+ClPYCduF04hJsCthymtPnQKubJWj90AC0A2jPK
 aYBulmx17SFrCoEvtRRLOo5gdGpll6MniTOcTZiL0A==
X-Google-Smtp-Source: APXvYqzqgVb0Dn3nghpgE0JOdTaxD1sSLXcYeBJ5SaBwI3JLusskqPp89fKtEBxxBB3bkmRTm/7hKGIUPIpcjOs3bko=
X-Received: by 2002:a9d:30c8:: with SMTP id r8mr4241297otg.363.1573663976870; 
 Wed, 13 Nov 2019 08:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
In-Reply-To: <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 13 Nov 2019 08:52:46 -0800
Message-ID: <CAPcyv4i=Kkycy3YtU7FS-qG02CFjAQTcN7UaGjbKwDnNHDZCEA@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Tao Xu <tao3.xu@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_085258_590729_2DC1CF69 
X-CRM114-Status: GOOD (  26.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith Busch <keith.busch@intel.com>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 5:57 AM Tao Xu <tao3.xu@intel.com> wrote:
>
> On 11/13/2019 5:47 PM, Jonathan Cameron wrote:
> > On Tue, 12 Nov 2019 09:55:17 -0800
> > Dan Williams <dan.j.williams@intel.com> wrote:
> >
> >> [ add Tao Xu ]
> >>
> >> On Fri, Oct 4, 2019 at 4:45 AM Jonathan Cameron
> >> <Jonathan.Cameron@huawei.com> wrote:
> >>>
> >>> Generic Initiators are a new ACPI concept that allows for the
> >>> description of proximity domains that contain a device which
> >>> performs memory access (such as a network card) but neither
> >>> host CPU nor Memory.
> >>>
> >>> This patch has the parsing code and provides the infrastructure
> >>> for an architecture to associate these new domains with their
> >>> nearest memory processing node.
> >>
> >> Thanks for this Jonathan. May I ask how this was tested? Tao has been
> >> working on qemu support for HMAT [1]. I have not checked if it already
> >> supports generic initiator entries, but it would be helpful to include
> >> an example of how the kernel sees these configurations in practice.
> >>
> >> [1]: http://patchwork.ozlabs.org/cover/1096737/
> >
> > Tested against qemu with SRAT and SLIT table overrides from an
> > initrd to actually create the node and give it distances
> > (those all turn up correctly in the normal places).  DSDT override
> > used to move an emulated network card into the GI numa node.  That
> > currently requires the PCI patch referred to in the cover letter.
> > On arm64 tested both on qemu and real hardware (overrides on tables
> > even for real hardware as I can't persuade our BIOS team to implement
> > Generic Initiators until an OS is actually using them.)
> >
> > Main real requirement is memory allocations then occur from one of
> > the nodes at the minimal distance when you are do a devm_ allocation
> > from a device assigned. Also need to be able to query the distances
> > to allow load balancing etc.  All that works as expected.
> >
> > It only has a fairly tangential connection to HMAT in that HMAT
> > can provide information on GI nodes.  Given HMAT code is quite happy
> > with memoryless nodes anyway it should work.  QEMU doesn't currently
> > have support to create GI SRAT entries let alone HMAT using them.
> >
> > Whilst I could look at adding such support to QEMU, it's not
> > exactly high priority to emulate something we can test easily
> > by overriding the tables before the kernel reads them.
> >
> > I'll look at how hard it is to build an HMAT tables for my test
> > configs based on the ones I used to test your HMAT patches a while
> > back.  Should be easy if tedious.
> >
> > Jonathan
> >
> Indeed, HMAT can support Generic Initiator, but as far as I know, QEMU
> only can emulate a node with cpu and memory, or memory-only. Even if we
> assign a node with cpu only, qemu will raise error. Considering
> compatibility, there are lots of work to do for QEMU if we change NUMA
> or SRAT table.

Thanks for the background. It would still be a useful feature to be
able to define a memory + generic-initiator node in qemu. That will
mirror real world accelerators with local memory configurations.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
