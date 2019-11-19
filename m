Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6289102DB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtjwQgRoZ4Gg/PVHtcvkaHyVjbWfK6JEe0F/p4gkDCA=; b=Xi+T/1d06U9PBJ
	cInFVTurq/j8MIh8MD2JdXAY1/6PFr/rbz5lR8NBTomiSfqjUI5YvkqG0480veAstSNMkW03+ifQP
	KKJlg06qIUKi/9wdg96vjg+xHLKr34pEwdY2THDVH+/DXUL8OCppLOSBRVmBS3ajbEQlRpUKKqKvk
	YPmRvm0opY6QwbYbC/z0dU8CJFGBHI5xx03YuyHHv460l3oAO1moTyqvUyNS3Rg0CjHBaav9p4yQl
	XxPXo458rfvFDF4j8ln/rkX+/Qd2a3ymIVuQpbjVrZwdWtyR3G+M0cLM7suY0Mc8PTZqZ1rmeSjdq
	pu4HFciuA16on/a+DMqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXAMC-00045e-0w; Tue, 19 Nov 2019 20:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXAM3-000450-U0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 20:44:09 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D13B2068F;
 Tue, 19 Nov 2019 20:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574196246;
 bh=tYk3NzkyGFMwfIfw621e64JBWLZbc2P157zpqSHKBfU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F7dezTirkHNZxF7r6iTVPjtQ2Gbnu/LKU0RXnzga76cLNAMs/2QcxVsC33X8jJNzH
 oI7UYI/oLaywEAbINKt2ngiHBiK1DoXioL9Ijnjil8D+Sp/npeg+W2IAQV+IJ+AhP6
 ci4IOmZuWXhLBr5x71GSi1Uw1czpCbFrPEBd3sr8=
Date: Tue, 19 Nov 2019 12:44:05 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 04/10] mm/memory_hotplug: Don't access uninitialized
 memmaps in shrink_zone_span()
Message-Id: <20191119124405.60a1f92f8e1cffed1afa0442@linux-foundation.org>
In-Reply-To: <8bbbd4f1-e2c9-b654-ab73-aa4314135f21@redhat.com>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-5-david@redhat.com>
 <5a4573de-bd8a-6cd3-55d0-86d503a236fd@redhat.com>
 <20191014121719.cb9b9efe51a7e9e985b38075@linux-foundation.org>
 <8bbbd4f1-e2c9-b654-ab73-aa4314135f21@redhat.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_124408_008283_AAC922E3 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 Alexander Duyck <alexander.duyck@gmail.com>, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Toshiki Fukasawa <t-fukasawa@vx.jp.nec.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 15:16:22 +0100 David Hildenbrand <david@redhat.com> wrote:

> On 14.10.19 21:17, Andrew Morton wrote:
> > On Mon, 14 Oct 2019 11:32:13 +0200 David Hildenbrand <david@redhat.com> wrote:
> > 
> >>> Fixes: d0dc12e86b31 ("mm/memory_hotplug: optimize memory hotplug")
> >>
> >> @Andrew, can you convert that to
> >>
> >> Fixes: f1dd2cd13c4b ("mm, memory_hotplug: do not associate hotadded
> >> memory to zones until online") # visible after d0dc12e86b319
> >>
> >> and add
> >>
> >> Cc: stable@vger.kernel.org # v4.13+
> > 
> > Done, thanks.
> > 
> 
> Just a note that Toshiki reported a BUG (race between delayed
> initialization of ZONE_DEVICE memmaps without holding the memory
> hotplug lock and concurrent zone shrinking).
> 
> https://lkml.org/lkml/2019/11/14/1040
> 
> "Iteration of create and destroy namespace causes the panic as below:
> 
> [   41.207694] kernel BUG at mm/page_alloc.c:535!
> [   41.208109] invalid opcode: 0000 [#1] SMP PTI
> [   41.208508] CPU: 7 PID: 2766 Comm: ndctl Not tainted 5.4.0-rc4 #6
> [   41.209064] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.11.0-0-g63451fca13-prebuilt.qemu-project.org 04/01/2014
> [   41.210175] RIP: 0010:set_pfnblock_flags_mask+0x95/0xf0
> [   41.210643] Code: 04 41 83 e2 3c 48 8d 04 a8 48 c1 e0 07 48 03 04 dd e0 59 55 bb 48 8b 58 68 48 39 da 73 0e 48 c7 c6 70 ac 11 bb e8 1b b2 fd ff <0f> 0b 48 03 58 78 48 39 da 73 e9 49 01 ca b9 3f 00 00 00 4f 8d 0c
> [   41.212354] RSP: 0018:ffffac0d41557c80 EFLAGS: 00010246
> [   41.212821] RAX: 000000000000004a RBX: 0000000000244a00 RCX: 0000000000000000
> [   41.213459] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffffffbb1197dc
> [   41.214100] RBP: 000000000000000c R08: 0000000000000439 R09: 0000000000000059
> [   41.214736] R10: 0000000000000000 R11: ffffac0d41557b08 R12: ffff8be475ea72b0
> [   41.215376] R13: 000000000000fa00 R14: 0000000000250000 R15: 00000000fffc0bb5
> [   41.216008] FS:  00007f30862ab600(0000) GS:ffff8be57bc40000(0000) knlGS:0000000000000000
> [   41.216771] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   41.217299] CR2: 000055e824d0d508 CR3: 0000000231dac000 CR4: 00000000000006e0
> [   41.217934] Call Trace:
> [   41.218225]  memmap_init_zone_device+0x165/0x17c
> [   41.218642]  memremap_pages+0x4c1/0x540
> [   41.218989]  devm_memremap_pages+0x1d/0x60
> [   41.219367]  pmem_attach_disk+0x16b/0x600 [nd_pmem]
> [   41.219804]  ? devm_nsio_enable+0xb8/0xe0
> [   41.220172]  nvdimm_bus_probe+0x69/0x1c0
> [   41.220526]  really_probe+0x1c2/0x3e0
> [   41.220856]  driver_probe_device+0xb4/0x100
> [   41.221238]  device_driver_attach+0x4f/0x60
> [   41.221611]  bind_store+0xc9/0x110
> [   41.221919]  kernfs_fop_write+0x116/0x190
> [   41.222326]  vfs_write+0xa5/0x1a0
> [   41.222626]  ksys_write+0x59/0xd0
> [   41.222927]  do_syscall_64+0x5b/0x180
> [   41.223264]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   41.223714] RIP: 0033:0x7f30865d0ed8
> [   41.224037] Code: 89 02 48 c7 c0 ff ff ff ff eb b3 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 8d 05 45 78 0d 00 8b 00 85 c0 75 17 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 58 c3 0f 1f 80 00 00 00 00 41 54 49 89 d4 55
> [   41.225920] RSP: 002b:00007fffe5d30a78 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [   41.226608] RAX: ffffffffffffffda RBX: 000055e824d07f40 RCX: 00007f30865d0ed8
> [   41.227242] RDX: 0000000000000007 RSI: 000055e824d07f40 RDI: 0000000000000004
> [   41.227870] RBP: 0000000000000007 R08: 0000000000000007 R09: 0000000000000006
> [   41.228753] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000004
> [   41.229419] R13: 00007f30862ab528 R14: 0000000000000001 R15: 000055e824d07f40
> 
> While creating a namespace and initializing memmap, if you destroy the namespace
> and shrink the zone, it will initialize the memmap outside the zone and
> trigger VM_BUG_ON_PAGE(!zone_spans_pfn(page_zone(page), pfn), page) in
> set_pfnblock_flags_mask()."
> 
> 
> This BUG is also mitigated by this commit, where we for now stop to
> shrink the ZONE_DEVICE zone until we can do it in a safe and clean
> way.
> 

OK, thanks.  I updated the changelog, added Reported-by:Toshiki and
shall squeeze this fix into 5.4.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
