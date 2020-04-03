Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4A219D0D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 09:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52Yc/Oyc2dYgq5LGkvzrGmdxaIYlIy3iVT0WkvB2y6M=; b=iJObX6hnwfVmnI
	S6Kyf3Y3M2qt1e3qDxplE3jmQdBtPVsAzBfgi/iTgrRx9Q1e+wniWXUnVbX2Tov9qNkkjeu8q5ahm
	34ginOI5o7J2WASp9mZKVjTGPGpYjP0G5i3cCDXQEqA8SAQ7Y+JxsOo7MPNEz+nISehjqF6w4NdED
	d9MOS7SHGg0ciwUlj66+dUheKoZniV8qH5vrPHJZS4rKbj4JUbkF6OG5cT+OGfEHKSAiKQjm4389U
	1VTrcjFUQygeCnF5wVNFmecGJRcMkKFBjnJZOmQVOJZDttWcGon2p8LTJX9BKJ/Tco9YJ+pNJi5q9
	j/02mO75ygIP2jqLu3oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGSE-0001W1-47; Fri, 03 Apr 2020 07:09:26 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKGS6-0001V8-62
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 07:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585897755;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TUShErNk8cwU7hJf8BxmK0K5c6pEQ4hGGKwc5zmiaaw=;
 b=H0qa3p45pEFu5dODv0kZ4FEEaztxIqONFBQwnlxq4QvXs20WggEOCRypwiRArckAb2mzOw
 BueenI1alP3CSFcNU0G2OXwxtWMvQF8NqY0//4NkycZMIBnWCPf9OSE6A3BI7JZvNk73po
 qqClTaYvuhZf5y5/01GRSehcTEh/10Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-Cvy3b_roPf66oPbJTVFQdA-1; Fri, 03 Apr 2020 03:09:13 -0400
X-MC-Unique: Cvy3b_roPf66oPbJTVFQdA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2400818A6EC1;
 Fri,  3 Apr 2020 07:09:09 +0000 (UTC)
Received: from localhost (ovpn-12-42.pek2.redhat.com [10.72.12.42])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 115A11147D2;
 Fri,  3 Apr 2020 07:09:07 +0000 (UTC)
Date: Fri, 3 Apr 2020 15:09:04 +0800
From: Baoquan He <bhe@redhat.com>
To: Hoan Tran <hoan@os.amperecomputing.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200403070904.GO2402@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
 <20200331081423.GE30942@linux.ibm.com>
 <20200331085513.GE30449@dhcp22.suse.cz>
 <20200331140332.GA2129@MiWiFi-R3L-srv>
 <20200331142138.GL30449@dhcp22.suse.cz>
 <20200331143140.GA2402@MiWiFi-R3L-srv>
 <cc717f09-2b18-b242-e438-3ec730c5dac0@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc717f09-2b18-b242-e438-3ec730c5dac0@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_000918_299831_0451FABA 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/02/20 at 09:46pm, Hoan Tran wrote:
> Hi All,
> 
> On 3/31/20 7:31 AM, Baoquan He wrote:
> > On 03/31/20 at 04:21pm, Michal Hocko wrote:
> > > On Tue 31-03-20 22:03:32, Baoquan He wrote:
> > > > Hi Michal,
> > > > 
> > > > On 03/31/20 at 10:55am, Michal Hocko wrote:
> > > > > On Tue 31-03-20 11:14:23, Mike Rapoport wrote:
> > > > > > Maybe I mis-read the code, but I don't see how this could happen. In the
> > > > > > HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
> > > > > > calculate_node_totalpages() that ensures that node->node_zones are entirely
> > > > > > within the node because this is checked in zone_spanned_pages_in_node().
> > > > > 
> > > > > zone_spanned_pages_in_node does chech the zone boundaries are within the
> > > > > node boundaries. But that doesn't really tell anything about other
> > > > > potential zones interleaving with the physical memory range.
> > > > > zone->spanned_pages simply gives the physical range for the zone
> > > > > including holes. Interleaving nodes are essentially a hole
> > > > > (__absent_pages_in_range is going to skip those).
> > > > > 
> > > > > That means that when free_area_init_core simply goes over the whole
> > > > > physical zone range including holes and that is why we need to check
> > > > > both for physical and logical holes (aka other nodes).
> > > > > 
> > > > > The life would be so much easier if the whole thing would simply iterate
> > > > > over memblocks...
> > > > 
> > > > The memblock iterating sounds a great idea. I tried with putting the
> > > > memblock iterating in the upper layer, memmap_init(), which is used for
> > > > boot mem only anyway. Do you think it's doable and OK? It yes, I can
> > > > work out a formal patch to make this simpler as you said. The draft code
> > > > is as below. Like this it uses the existing code and involves little change.
> > > 
> > > Doing this would be a step in the right direction! I haven't checked the
> > > code very closely though. The below sounds way too simple to be truth I
> > > am afraid. First for_each_mem_pfn_range is available only for
> > > CONFIG_HAVE_MEMBLOCK_NODE_MAP (which is one of the reasons why I keep
> > > saying that I really hate that being conditional). Also I haven't really
> > > checked the deferred initialization path - I have a very vague
> > > recollection that it has been converted to the memblock api but I have
> > > happilly dropped all that memory.
> > 
> > Thanks for your quick response and pointing out the rest suspect aspects,
> > I will investigate what you mentioned, see if they impact.
> 
> I would like to check if we still move on with my patch to remove
> CONFIG_NODES_SPAN_OTHER_NODES and have another patch on top it?

I think we would like to replace CONFIG_NODES_SPAN_OTHER_NODES with
CONFIG_NUMA, and just let UMA return 0 as node id, as Michal replied in
another mail. Anyway, your patch 2~5 are still needed to sit on top of
the change of this new plan.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
