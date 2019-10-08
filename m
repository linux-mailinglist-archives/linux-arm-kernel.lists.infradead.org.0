Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394A2CF7F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0BlqIvyv8Qwz8nedAh6lCNbUt65E4b/B9w41TlnnzM=; b=q0cj0iODD/FtFo
	+1+nhpqtFKBxhh9GgoqzV4mk1KDNYDifC3yv8Hq/qWOl/ywaFNZdfH+SrPmACZenQRwodWus1fgtB
	aZ6IU2T345dQWhjqK0SnEUPdbalSQZ9I0czbfMN62bi6aCvI96VX094NMwWLfSU6/58dWKatety0l
	cNyvDmzyki2wlwl//EaO7c/W7iF5j+WL0iZkpZE79SUZGm96i+Xn32hntR4KXWqGXhZgPLf3Lwc+I
	ihOLOt9BMzSsnQiH7kshIHfuCPb0fXb9jVLApyNEe96iRMijEYjDA/enyl08QGcrd7n3e+Hp8so0A
	4d4WihmvwRM47Ju63Z0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnVK-0000sR-Tg; Tue, 08 Oct 2019 11:18:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnVA-0000rV-DY
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:18:02 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 440B2A04CF488C9331FE;
 Tue,  8 Oct 2019 19:17:56 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 19:17:47 +0800
Date: Tue, 8 Oct 2019 12:17:29 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH V5 3/4] x86: Support Generic Initiator only proximity
 domains
Message-ID: <20191008121729.00005ee9@huawei.com>
In-Reply-To: <20191007145505.GB88143@gmail.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-4-Jonathan.Cameron@huawei.com>
 <20191007145505.GB88143@gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_041800_626224_709E8519 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-acpi@vger.kernel.org, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Andrew
 Morton <akpm@linux-foundation.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 16:55:05 +0200
Ingo Molnar <mingo@kernel.org> wrote:

> * Jonathan Cameron <Jonathan.Cameron@huawei.com> wrote:
> 
> > Done in a somewhat different fashion to arm64.
> > Here the infrastructure for memoryless domains was already
> > in place.  That infrastruture applies just as well to
> > domains that also don't have a CPU, hence it works for
> > Generic Initiator Domains.
> > 
> > In common with memoryless domains we only register GI domains
> > if the proximity node is not online. If a domain is already
> > a memory containing domain, or a memoryless domain there is
> > nothing to do just because it also contains a Generic Initiator.
> > 
> > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > ---
> >  arch/x86/include/asm/numa.h |  2 ++
> >  arch/x86/kernel/setup.c     |  1 +
> >  arch/x86/mm/numa.c          | 14 ++++++++++++++
> >  3 files changed, 17 insertions(+)
> > 
> > diff --git a/arch/x86/include/asm/numa.h b/arch/x86/include/asm/numa.h
> > index bbfde3d2662f..f631467272a3 100644
> > --- a/arch/x86/include/asm/numa.h
> > +++ b/arch/x86/include/asm/numa.h
> > @@ -62,12 +62,14 @@ extern void numa_clear_node(int cpu);
> >  extern void __init init_cpu_to_node(void);
> >  extern void numa_add_cpu(int cpu);
> >  extern void numa_remove_cpu(int cpu);
> > +extern void init_gi_nodes(void);
> >  #else	/* CONFIG_NUMA */
> >  static inline void numa_set_node(int cpu, int node)	{ }
> >  static inline void numa_clear_node(int cpu)		{ }
> >  static inline void init_cpu_to_node(void)		{ }
> >  static inline void numa_add_cpu(int cpu)		{ }
> >  static inline void numa_remove_cpu(int cpu)		{ }
> > +static inline void init_gi_nodes(void)			{ }
> >  #endif	/* CONFIG_NUMA */
> >  
> >  #ifdef CONFIG_DEBUG_PER_CPU_MAPS
> > diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > index cfb533d42371..b6c977907ea5 100644
> > --- a/arch/x86/kernel/setup.c
> > +++ b/arch/x86/kernel/setup.c
> > @@ -1264,6 +1264,7 @@ void __init setup_arch(char **cmdline_p)
> >  	prefill_possible_map();
> >  
> >  	init_cpu_to_node();
> > +	init_gi_nodes();
> >  
> >  	io_apic_init_mappings();
> >  
> > diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> > index 4123100e0eaf..50bf724a425e 100644
> > --- a/arch/x86/mm/numa.c
> > +++ b/arch/x86/mm/numa.c
> > @@ -733,6 +733,20 @@ static void __init init_memory_less_node(int nid)
> >  	 */
> >  }
> >  
> > +/*
> > + * Generic Initiator Nodes may have neither CPU nor Memory.
> > + * At this stage if either of the others were present we would
> > + * already be online.
> > + */
> > +void __init init_gi_nodes(void)
> > +{
> > +	int nid;
> > +
> > +	for_each_node_state(nid, N_GENERIC_INITIATOR)
> > +		if (!node_online(nid))
> > +			init_memory_less_node(nid);
> > +}  
> 
> Nit: missing curly braces.

Good point.

> 
> How do these work in practice, will a system that only had nodes 0-1 
> today grow a third node '2' that won't have any CPUs on memory on them?

Yes. Exactly that.  The result is that fallback lists etc work when
_PXM is used to assign a device into that new node.  The interesting
bit comes when a driver does something more interesting and queries
the numa distances from SLIT.  At that point the driver can elect to
do load balancing across multiple nodes at similar distances.

In theory you can also specify a device you wish to put into the node
via the SRAT entry (IIRC using segment + BDF for PCI devices), but
for now I haven't implemented that method.

> 
> Thanks,
> 
> 	Ingo

Thanks,

Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
