Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA8FB695
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ig7Vi2CPKvwRhT3AwGyrrShoq1BO+IK97BbIMKCGKQY=; b=nnfRZE6VwGMkgO
	GGWbiiAlmYz0mvvsciylwyUmGLYGoWgPD/X0lL0ZWKnsrF25gK4Og+Mtu/gf+qEmEKCBzQ22x4WOi
	erub3Jw4s/lSNIlA7mjZRR3FZ9pQdsi2RO5tKNyqblQmNFLZWVRJnYCtSk01h484YhY6kNrnKeeX1
	XWgvJ+kZAObMYeYET56K8n+LaW+9nnm0SlH/uRbHFTN3WSNwn5Ocvq7D6Ogm1CkXbyRtRh7md7sbo
	ajFZacLxY1uloU78B2UkoqtfT0665dmrNL8kpqUt3ppd/pSEEBVdEOyVZ5uInJ4N00z40fUuNkdqZ
	JLKzFyh7hj6ts8YjxJNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwlh-0000Bw-N6; Wed, 13 Nov 2019 17:49:25 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwlX-0000Am-P3
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:49:17 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0E36FCA2DD50C4DA1289;
 Thu, 14 Nov 2019 01:49:03 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 14 Nov 2019
 01:48:53 +0800
Date: Wed, 13 Nov 2019 17:48:45 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Tao Xu <tao3.xu@intel.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
Message-ID: <20191113174845.000009d3@huawei.com>
In-Reply-To: <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_094916_005779_B2EB21EB 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith
 Busch <keith.busch@intel.com>, Linux MM <linux-mm@kvack.org>,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 21:57:24 +0800
Tao Xu <tao3.xu@intel.com> wrote:

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
> 

I faked up a quick HMAT table.

Used a configuration with 3x CPU and memory nodes, 1x memory only node
and 1x GI node.  Two test cases, one where the GI initiator is further than
the CPU containing nodes from the memory only node (realistic case for
existing hardware). That behaves as expected and there are no
/sys/node/bus/nodeX/access0 entries for the GI node
+ appropriate ones for the memory only node as normal.

The other case is more interesting we have the memory only node nearer
to the GI node than to any of the CPUs.  In that case for x86 at least
the HMAT code is happy to put an access0 directory GI in the GI node
with empty access0/initiators and the memory node under access0/targets

The memory only node is node4 and the GI node node3.

So relevant dirs under /sys/bus/nodes/devices

node3/access0/initators/ Empty
node3/access0/targets/node4

node4/access0/initators/[node3 read_bandwidth write_bandwith etc]
node4/access0/targets/ Empty

So the result current (I think - the HMAT interface still confuses
me :) is that a GI node is treated like a CPU node.  This might mean
there is no useful information available if you want to figure out
which CPU containing node is nearest to Memory when the GI node is
nearer still.

Is this a problem?  I'm not sure...  

If we don't want to include GI nodes then we can possibly
use the node_state(N_CPU, x) method to check before considering
them, or I guess parse SRAT to extract that info directly. 

I tried this and it seems to work so can add patch doing this
next version if we think this is the 'right' thing to do.

So what do you think 'should' happen? 

Jonathan







_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
