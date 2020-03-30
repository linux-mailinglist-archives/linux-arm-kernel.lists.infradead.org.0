Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93401977D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 11:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnaPKa8UGb1JTbCsy8m9gq1oueh6Wn8wUgrYtXc9RRQ=; b=p30tU88hXAmFxa
	76QaBnbpDr+Ys6xIP/7QFE6kRrTvmCq0eGPNi6LUB4O8FhFRHJs3RpOeA1qGFSd6wDoYd1ScpsdaQ
	RYOsQ3LbCAi0WIioVifRND00zfdsDXOL7ENQZAPPXzQBX+MSSnDtiogQyw9w/UZgMe6y7NZKr3eQl
	J7s9HkNazTA+HMajXJADEQE8EEpx0KRKvrmSXxSMwiKWRIFDsbA7KVOEqG/t9qwN4lGdDuUARhyST
	dwKRcjO8BO9b+i/HHEjC2bEFzu0yv34kfaty8cN1RmCKvlSzt4U9s+RWDQGhfPxl02gXU0KivgjUg
	Cksx9Vq1kRFs2Z9g0bbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIqgg-0004SL-7H; Mon, 30 Mar 2020 09:26:30 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqgV-0004R4-Kl
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 09:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585560377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=P7KONnLRBt7Zi6IX/bJ2rtifHakTT+zqNud06VP531U=;
 b=ByEYRusVLs3NWG4WNPMWE7dVfN2uyuWqOvh03tk4DBTiYZLGnE2eaiw+DT0deREIN6nSED
 0rs5YyAraUaExouH5W34GZ4yiOuWw0/dEuDw/MguMew5b+hu0+4AMISqelCqjnpJamtjAa
 N5fSMHdi/N+OJPMiAAeBwb/+WxL/qfU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-v6Tx4dfaPXm-1wc0_ZqlsA-1; Mon, 30 Mar 2020 05:26:14 -0400
X-MC-Unique: v6Tx4dfaPXm-1wc0_ZqlsA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4A2518A552A;
 Mon, 30 Mar 2020 09:26:10 +0000 (UTC)
Received: from localhost (ovpn-12-53.pek2.redhat.com [10.72.12.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A853510027AA;
 Mon, 30 Mar 2020 09:26:09 +0000 (UTC)
Date: Mon, 30 Mar 2020 17:26:06 +0800
From: Baoquan He <bhe@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200330092606.GC6352@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330074246.GA14243@dhcp22.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_022619_756945_12BE6F90 
X-CRM114-Status: GOOD (  24.24  )
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
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
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

On 03/30/20 at 09:42am, Michal Hocko wrote:
> On Sat 28-03-20 11:31:17, Hoan Tran wrote:
> > In NUMA layout which nodes have memory ranges that span across other nodes,
> > the mm driver can detect the memory node id incorrectly.
> > 
> > For example, with layout below
> > Node 0 address: 0000 xxxx 0000 xxxx
> > Node 1 address: xxxx 1111 xxxx 1111
> > 
> > Note:
> >  - Memory from low to high
> >  - 0/1: Node id
> >  - x: Invalid memory of a node
> > 
> > When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> > config, mm only checks the memory validity but not the node id.
> > Because of that, Node 1 also detects the memory from node 0 as below
> > when it scans from the start address to the end address of node 1.
> > 
> > Node 0 address: 0000 xxxx xxxx xxxx
> > Node 1 address: xxxx 1111 1111 1111
> > 
> > This layout could occur on any architecture. Most of them enables
> > this config by default with CONFIG_NUMA. This patch, by default, enables
> > CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.
> 
> I am not opposed to this at all. It reduces the config space and that is
> a good thing on its own. The history has shown that meory layout might
> be really wild wrt NUMA. The config is only used for early_pfn_in_nid
> which is clearly an overkill.
> 
> Your description doesn't really explain why this is safe though. The
> history of this config is somehow messy, though. Mike has tried
> to remove it a94b3ab7eab4 ("[PATCH] mm: remove arch independent
> NODES_SPAN_OTHER_NODES") just to be reintroduced by 7516795739bd
> ("[PATCH] Reintroduce NODES_SPAN_OTHER_NODES for powerpc") without any
> reasoning what so ever. This doesn't make it really easy see whether
> reasons for reintroduction are still there. Maybe there are some subtle
> dependencies. I do not see any TBH but that might be burried deep in an
> arch specific code.

Since on all ARCHes NODES_SPAN_OTHER_NODES has dependency on NUMA,
replacing it with CONFIG_NUMA seems no risk. Just for those ARCHes which
don't have CONFIG_NODES_SPAN_OTHER_NODES before, it involves a tiny
performance degradation. Besides, s390 has removed support of
NODES_SPAN_OTHER_NODES already.

commit 701dc81e7412daaf3c5bf4bc55d35c8b1525112a
Author: Heiko Carstens <heiko.carstens@de.ibm.com>
Date:   Wed Feb 19 13:29:15 2020 +0100

    s390/mm: remove fake numa support

> 
> > v3:
> >  * Revise the patch description
> > 
> > V2:
> >  * Revise the patch description
> > 
> > Hoan Tran (5):
> >   mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA
> >   powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> >   x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> >   sparc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> >   s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> > 
> >  arch/powerpc/Kconfig | 9 ---------
> >  arch/s390/Kconfig    | 8 --------
> >  arch/sparc/Kconfig   | 9 ---------
> >  arch/x86/Kconfig     | 9 ---------
> >  mm/page_alloc.c      | 2 +-
> >  5 files changed, 1 insertion(+), 36 deletions(-)
> > 
> > -- 
> > 1.8.3.1
> > 
> 
> -- 
> Michal Hocko
> SUSE Labs
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
