Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C21A42AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 08:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KG2ZiZF0QdknMtAzIsU6Q/YsPlaLphfRKqwsGwIDiKo=; b=o/3JEECgMOGCcL
	jacJrgtHmzIkEQBji+jQ17q5jnmk60lWBWGGZoIcV1SU4VKtJzaTTZcSZ2zvzrOST6rXU02q66Hlb
	twEmru9E6n4dGJ1A06Rnxyw2F3qa4sbBiMYO3IllU+YA6qdw0/CmmQBmwJdUfoLGr+0O4YP4E6JL+
	qJclUd853vaKV72pajavm37E60XzGx4gCNOCDwOKrCRbSG8W4eFCBqH3bCQMPRSQ/QTLBS+ZhNfWR
	oxV3zlqXPWHakA4Vvfk4r1RYgivNhyu96FFUd/3eethq618gIuKdqugVFcgFYrkd8BqpmWEqv9pd3
	/JQ4KeD+gthV+3dAl8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnVJ-00017b-GO; Fri, 10 Apr 2020 06:51:05 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnVA-00016Q-Hh
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 06:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586501453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g9JE7+kQcGRHuqYE15Qj2LdCxQJFZbqVW19T+MEzEiw=;
 b=ZM3ufTJc0Qqpm9Pdq9U6WBlEiq3wrtYIlqjPua67yQdOSgrqMRWfs08mxcU2fdsqUlhwdk
 sdalJKMxLWT/3Wf+bz4mrmsWGBLQcfPVb/qZOX8rGL/2Vprg0XWnhtgjgGM85gVsBgDlei
 s/v9m0swT/sQSSCOD7cCOqNOfMYarQc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-YFk-c_hfPIunR-iCRoa7nA-1; Fri, 10 Apr 2020 02:50:47 -0400
X-MC-Unique: YFk-c_hfPIunR-iCRoa7nA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACA40107B275;
 Fri, 10 Apr 2020 06:50:43 +0000 (UTC)
Received: from localhost (ovpn-13-236.pek2.redhat.com [10.72.13.236])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E95605DA7C;
 Fri, 10 Apr 2020 06:50:41 +0000 (UTC)
Date: Fri, 10 Apr 2020 14:50:39 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200410065039.GG2129@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
 <20200331081423.GE30942@linux.ibm.com>
 <20200331085513.GE30449@dhcp22.suse.cz>
 <20200331140332.GA2129@MiWiFi-R3L-srv>
 <20200331142138.GL30449@dhcp22.suse.cz>
 <20200409162741.GA9387@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409162741.GA9387@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_235056_659634_67CF6858 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/09/20 at 07:27pm, Mike Rapoport wrote:
> On Tue, Mar 31, 2020 at 04:21:38PM +0200, Michal Hocko wrote:
> > On Tue 31-03-20 22:03:32, Baoquan He wrote:
> > > Hi Michal,
> > > 
> > > On 03/31/20 at 10:55am, Michal Hocko wrote:
> > > > On Tue 31-03-20 11:14:23, Mike Rapoport wrote:
> > > > > Maybe I mis-read the code, but I don't see how this could happen. In the
> > > > > HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
> > > > > calculate_node_totalpages() that ensures that node->node_zones are entirely
> > > > > within the node because this is checked in zone_spanned_pages_in_node().
> > > > 
> > > > zone_spanned_pages_in_node does chech the zone boundaries are within the
> > > > node boundaries. But that doesn't really tell anything about other
> > > > potential zones interleaving with the physical memory range.
> > > > zone->spanned_pages simply gives the physical range for the zone
> > > > including holes. Interleaving nodes are essentially a hole
> > > > (__absent_pages_in_range is going to skip those).
> > > > 
> > > > That means that when free_area_init_core simply goes over the whole
> > > > physical zone range including holes and that is why we need to check
> > > > both for physical and logical holes (aka other nodes).
> > > > 
> > > > The life would be so much easier if the whole thing would simply iterate
> > > > over memblocks...
> > > 
> > > The memblock iterating sounds a great idea. I tried with putting the
> > > memblock iterating in the upper layer, memmap_init(), which is used for
> > > boot mem only anyway. Do you think it's doable and OK? It yes, I can
> > > work out a formal patch to make this simpler as you said. The draft code
> > > is as below. Like this it uses the existing code and involves little change.
> > 
> > Doing this would be a step in the right direction! I haven't checked the
> > code very closely though. The below sounds way too simple to be truth I
> > am afraid. First for_each_mem_pfn_range is available only for
> > CONFIG_HAVE_MEMBLOCK_NODE_MAP (which is one of the reasons why I keep
> > saying that I really hate that being conditional). Also I haven't really
> > checked the deferred initialization path - I have a very vague
> > recollection that it has been converted to the memblock api but I have
> > happilly dropped all that memory.
> 
> The Baoquan's patch almost did it, at least for simple case of qemu with 2
> nodes. It's only missing the adjustment to the size passed to
> memmap_init_zone() as it may change because of clamping.

Right, the size need be adjusted after start and end clamping.

> 
> I've drafted something that removes HAVE_MEMBLOCK_NODE_MAP and added this
> patch there [1]. For several memory configurations I could emulate with
> qemu it worked.
> I'm going to wait a bit to see of kbuild is happy and then I'll send the
> patches.
> 
> Baoquan, I took liberty to add your SoB, hope you don't mind.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git/log/?h=memblock/all-have-node-map 

Of course not. Thanks for doing this, and look forward to seeing your
formal patchset posting when it's ready.

>   
> > > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > > index 138a56c0f48f..558d421f294b 100644
> > > --- a/mm/page_alloc.c
> > > +++ b/mm/page_alloc.c
> > > @@ -6007,14 +6007,6 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
> > >  		 * function.  They do not exist on hotplugged memory.
> > >  		 */
> > >  		if (context == MEMMAP_EARLY) {
> > > -			if (!early_pfn_valid(pfn)) {
> > > -				pfn = next_pfn(pfn);
> > > -				continue;
> > > -			}
> > > -			if (!early_pfn_in_nid(pfn, nid)) {
> > > -				pfn++;
> > > -				continue;
> > > -			}
> > >  			if (overlap_memmap_init(zone, &pfn))
> > >  				continue;
> > >  			if (defer_init(nid, pfn, end_pfn))
> > > @@ -6130,9 +6122,17 @@ static void __meminit zone_init_free_lists(struct zone *zone)
> > >  }
> > >  
> > >  void __meminit __weak memmap_init(unsigned long size, int nid,
> > > -				  unsigned long zone, unsigned long start_pfn)
> > > +				  unsigned long zone, unsigned long range_start_pfn)
> > >  {
> > > -	memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> > > +	unsigned long start_pfn, end_pfn;
> > > +	unsigned long range_end_pfn = range_start_pfn + size;
> > > +	int i;
> > > +	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> > > +		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> > > +		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> > > +		if (end_pfn > start_pfn)
> > > +			memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> > > +	}
> > >  }
> > >  
> > >  static int zone_batchsize(struct zone *zone)
> > 
> > -- 
> > Michal Hocko
> > SUSE Labs
> 
> -- 
> Sincerely yours,
> Mike.
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
