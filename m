Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEE0197984
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 12:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8I+guAMC6VoZ8seGR0gv/CJoHbSqBNJoSb+ozSx/ho=; b=TxfGEGOOxukYa7
	DsoCH/DTqy74t90fw5so2jwt7w2+w6sLOa2sittNcBYQWSGyhTRu3hVX7SpZd+BTinrim+1/rcv14
	LdQ7qL5FISmsZ/5gAZ2LJhGkpeBUxwinEuzD1bIf7M8PWx12MjRgQQn1ZqVFPcxLffU8Gh7mgNwP1
	zdaewMxEaj06EplFLe3tdr7bYG+afhi/Xz+9p9aZpJop9sgBN3R1YvO8YsPYIOOj9cpz1I7RH07IA
	d8JhFqhJ3CgiokVMluGH5APjk3W7iFth5jGlRnRjKPCvRph+zBjCXKsXQUUKVQN0ZCtaAWSFyhRQN
	qhEc4WC/v4kQdvLBk9/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIrtz-0000T2-6T; Mon, 30 Mar 2020 10:44:19 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIrtq-0000Rp-2j
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 10:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585565048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ubZwCgodS3U5y1iwpfdeziXkCswHWi54UlMSk9s9wOI=;
 b=T4Zeag7tmUxfTXyYIjCJ/5P8VzRW8l3y8bZNEqeKEkr8DYIS6MCfdXTm9DuhsYEkR8R1c1
 O32ybm4pwkUjNnlRceLiF4O4jQti5Xcec253g7LbtGzuYOXovUdoK7KugLO1Lf5zZXHaTc
 Ho1kFUTo+fTjxrBLACALgGUpaX2z0ms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-RWReSoGTPOenn7_wlRjk4w-1; Mon, 30 Mar 2020 06:44:04 -0400
X-MC-Unique: RWReSoGTPOenn7_wlRjk4w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE63913F7;
 Mon, 30 Mar 2020 10:44:00 +0000 (UTC)
Received: from localhost (ovpn-12-192.pek2.redhat.com [10.72.12.192])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 20B5E19757;
 Mon, 30 Mar 2020 10:43:59 +0000 (UTC)
Date: Mon, 30 Mar 2020 18:43:56 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200330104356.GD6352@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
 <20200330095843.GF14243@dhcp22.suse.cz>
 <20200330102619.GC30942@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330102619.GC30942@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_034410_197801_098C8D0D 
X-CRM114-Status: GOOD (  32.29  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 03/30/20 at 01:26pm, Mike Rapoport wrote:
> On Mon, Mar 30, 2020 at 11:58:43AM +0200, Michal Hocko wrote:
> > On Mon 30-03-20 12:21:27, Mike Rapoport wrote:
> > > On Mon, Mar 30, 2020 at 09:42:46AM +0200, Michal Hocko wrote:
> > > > On Sat 28-03-20 11:31:17, Hoan Tran wrote:
> > > > > In NUMA layout which nodes have memory ranges that span across other nodes,
> > > > > the mm driver can detect the memory node id incorrectly.
> > > > > 
> > > > > For example, with layout below
> > > > > Node 0 address: 0000 xxxx 0000 xxxx
> > > > > Node 1 address: xxxx 1111 xxxx 1111
> > > > > 
> > > > > Note:
> > > > >  - Memory from low to high
> > > > >  - 0/1: Node id
> > > > >  - x: Invalid memory of a node
> > > > > 
> > > > > When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> > > > > config, mm only checks the memory validity but not the node id.
> > > > > Because of that, Node 1 also detects the memory from node 0 as below
> > > > > when it scans from the start address to the end address of node 1.
> > > > > 
> > > > > Node 0 address: 0000 xxxx xxxx xxxx
> > > > > Node 1 address: xxxx 1111 1111 1111
> > > > > 
> > > > > This layout could occur on any architecture. Most of them enables
> > > > > this config by default with CONFIG_NUMA. This patch, by default, enables
> > > > > CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.
> > > > 
> > > > I am not opposed to this at all. It reduces the config space and that is
> > > > a good thing on its own. The history has shown that meory layout might
> > > > be really wild wrt NUMA. The config is only used for early_pfn_in_nid
> > > > which is clearly an overkill.
> > > > 
> > > > Your description doesn't really explain why this is safe though. The
> > > > history of this config is somehow messy, though. Mike has tried
> > > > to remove it a94b3ab7eab4 ("[PATCH] mm: remove arch independent
> > > > NODES_SPAN_OTHER_NODES") just to be reintroduced by 7516795739bd
> > > > ("[PATCH] Reintroduce NODES_SPAN_OTHER_NODES for powerpc") without any
> > > > reasoning what so ever. This doesn't make it really easy see whether
> > > > reasons for reintroduction are still there. Maybe there are some subtle
> > > > dependencies. I do not see any TBH but that might be burried deep in an
> > > > arch specific code.
> > > 
> > > Well, back then early_pfn_in_nid() was arch-dependant, today everyone
> > > except ia64 rely on HAVE_MEMBLOCK_NODE_MAP.
> > 
> > What would it take to make ia64 use HAVE_MEMBLOCK_NODE_MAP? I would
> > really love to see that thing go away. It is causing problems when
> > people try to use memblock api.
> 
> Sorry, my bad, ia64 does not have NODES_SPAN_OTHER_NODES, but it does have
> HAVE_MEMBLOCK_NODE_MAP.
> 
> I remember I've tried killing HAVE_MEMBLOCK_NODE_MAP, but I've run into
> some problems and then I've got distracted. I too would like to have
> HAVE_MEMBLOCK_NODE_MAP go away, maybe I'll take another look at it.
>  
> > > So, if the memblock node map
> > > is correct, that using CONFIG_NUMA instead of CONFIG_NODES_SPAN_OTHER_NODES
> > > would only mean that early_pfn_in_nid() will cost several cycles more on
> > > architectures that didn't select CONFIG_NODES_SPAN_OTHER_NODES (i.e. arm64
> > > and sh).
> > 
> > Do we have any idea on how much of an overhead that is? Because this is
> > per each pfn so it can accumulate a lot! 
> 
> It's O(log(N)) where N is the amount of the memory banks (ie. memblock.memory.cnt)

This is for the Node id searching. But early_pfn_in_nid() is calling for
each pfn, this is the big one, I think. Otherwise, it may be optimized
as no-op.

>  
> > > Agian, ia64 is an exception here.
> > 
> > Thanks for the clarification!
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
