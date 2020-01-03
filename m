Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9CD12F69C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 11:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qg8pP87E6j2lBuEF7EbC3T7SnD7Dr9n9XdM333W9Bug=; b=cGgTkzVWr0Wzvc
	8hrOExUQzGyAuNyYFLzAt1SHjjYcBHz8k8AR2umE8YaB5k7HYOEDngNQ0HPFKgCzavX2BoXbsqoiy
	mf1oFjWeHIFMAbXx9FjRruRo6XSOA0ZQp5KV9QXSWNBDxm3gt6/7Vk+xJ4J0wiRIjBvFLUkYFIYX8
	kSFp03Oa2XkjGfkUWg4lH1O8atKvjMd7l+N1yZuSH/Pa9CvgiYMdovABAEIsZ/jc+Ji2x1xRy0F9o
	g3RgeVdOV4aPdy/vkplkEeJf7WGHXZ5glBddj32YBIzmBLWUImJk0gD6Dhzis26jGeM/ewjWSP3gw
	xo3u0gbEHyWRKS8MePqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJtg-0007z9-1O; Fri, 03 Jan 2020 10:09:36 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJtZ-0007yG-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 10:09:31 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 6369F35EAC12E5808DA;
 Fri,  3 Jan 2020 10:09:22 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 3 Jan 2020 10:09:22 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 3 Jan 2020
 10:09:21 +0000
Date: Fri, 3 Jan 2020 10:09:20 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Brice Goglin <brice.goglin@gmail.com>
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
Message-ID: <20200103100920.00006a18@Huawei.com>
In-Reply-To: <b428d231-4879-4462-ac42-900b5d094eee@gmail.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
 <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
 <20200102152604.000039f1@Huawei.com>
 <b428d231-4879-4462-ac42-900b5d094eee@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml730-chm.china.huawei.com (10.201.108.81) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_020929_750381_E2E7DDBD 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-acpi@vger.kernel.org,
 Tao Xu <tao3.xu@intel.com>, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-mm@kvack.org, jglisse@redhat.com,
 Sudeep Holla <sudeep.holla@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 Keith Busch <kbusch@kernel.org>, Andrew
 Morton <akpm@linux-foundation.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020 22:37:04 +0100
Brice Goglin <brice.goglin@gmail.com> wrote:

> Le 02/01/2020 =E0 16:27, Jonathan Cameron a =E9crit=A0:
> >  =

> >> However the HMAT table gets ignored because find_mem_target() fails in
> >> hmat_parse_proximity_domain(). The target should have been allocated in
> >> alloc_memory_target() which is called in srat_parse_mem_affinity(), but
> >> it seems to me that this function isn't called for GI nodes. Or should
> >> SRAT also contain a normal Memory node with same PM as the GI?
> >>  =

> > Hi Brice,
> >
> > Yes you should see a node with 0kB memory.  Same as you get for a proce=
ssor
> > only node I believe.
> >
> > srat_parse_mem_affinity shouldn't call alloc_memory_target for the GI n=
odes
> > as they don't have any memory.   The hmat table should only refer to
> > GI domains as initiators.  Just to check, do you have them listed as
> > a target node?  Or perhaps in some hmat proximity entry as memory_PD?
> >  =

> =

> Thanks, I finally got things to work. I am on x86. It's a dual-socket
> machine with SubNUMA clusters (2 nodes per socket) and NVDIMMs (one
> dax-kmem node per socket). Before adding a GI, initiators look like this:
> =

> node0 -> node0 and node4
> =

> node1 -> node1 and node5
> =

> node2 -> node2 and node4
> =

> node3 -> node3 and node5
> =

> I added a GI with faster access to node0, node2, node4 (first socket).
> =

> The GI node becomes an access0 initiator for node4, and node0 and node2
> remain access1 initiators.
> =

> The GI node doesn't become access0 initiator for node0 and node2, likely
> because of this test :
> =

>         /*
>          * If the Address Range Structure provides a local processor pxm,=
 link
>          * only that one. Otherwise, find the best performance attributes=
 and
>          * register all initiators that match.
>          */
>         if (target->processor_pxm !=3D PXM_INVAL) {
> =

> I guess I should split node0-3 into separate CPU nodes and memory nodes
> in SRAT?

It sounds like it's working as expected.  There are a few assumptions made =
about
'sensible' hmat configurations.

1) If the memory and processor are in the same domain, that should mean the
access characteristics within that domain are the best in the system.
It is possible to have a setup with very low latency access
from a particular processor but also low bandwidth.  Another domain may have
high bandwidth but long latency.   Such systems may occur, but they are pro=
bably
going to not be for 'normal memory the OS can just use'.

2) If we have a relevant "Memory Proximity Domain Attributes Structure"
Note this was renamed in acpi 6.3 from "Address Range Structure" as
it no longer has any address ranges.
(which are entirely optional btw) that indicates that the memory controller
for a given memory lies in the proximity domain of the Initiator specified.
If that happens we ignore cases where hmat says somewhere else is nearer
via bandwidth and latency.

For case 1) I'm not sure we actually enforce it.
I think you've hit case 2).  =


Removing the address range structures should work, or as you say you can
move that memory into separate memory nodes.  It will be a bit of a strange
setup though.  Assuming node4 is an NVDIMM then that would be closer to a
potential real system.  With a suitable coherent bus (CCIX is most familiar
to me and can do this) You might have

 _______       ________    _______
|       |     |        |   |       |
| Node0 |     | Node4  |---| Node6 |
| CPU   |-----| Mem +  |---| GI    |
| Mem   |     | CCHome |---|       |
|_______|     |________|   |_______|
   |                          |
   |__________________________|

CCHome Cache Coherency directory location to avoid the need for more
esoteric cache coherency short cut methods etc.

Idea being the GI node is some big fat DB accelerator or similar doing
offloaded queries.  It has a fat pipe to the NVDIMMs.  =


Lets ignore that, to actually justify the use of a GI only node,
you need some more elements as this situation could be represented
by fusing node4 and node6 and having asymmetric HMAT between Node0
and the fused Node4.

So in conclusion, with your setup, only the NVDIMM nodes look like the
sort of memory that might be in a node nearer to a GI than the host.
> =

> Brice

Thanks again for looking at this!

Jonathan
> =

> =

> =

> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
