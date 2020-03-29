Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4504196A3D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 01:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icgNLkJC6btZf/vcPzGPlE8gY33sg9x9F+PR/4aG/xw=; b=RrgAfMn2AzTqvk
	VJnO/9JHUCxsMFhLtpU1Mppv4jzV7cP2hmkh8mxIdaE7dlplup7DNjuYlpIxXlLBm1/Y+KDSJObY2
	R1Yg2qRqYwY9oIA4rwOU5GpsWaITsPoUpTOtwiSSIHGs+hCAZwOetML6gbNkDsZLXfpp9ltzLZR5g
	+wmOV0uOFLUqHdEN7vKEv946wtz3ztalPfrP18a89g4N/jN/Px5EZyXXMuXUJv9KMSxcKEd0sFGU9
	Kj5+FIE657tcGvHJ8H5RlJTGz1P+n+GJNNe5tF5UKeFHVcw//K5olRdqCoeh24FVgo7eoDUohKRWK
	6iSOora9CF9DV0szeXQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jILg5-0004Yd-SN; Sun, 29 Mar 2020 00:19:49 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jILfy-0004XG-7f
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 00:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585441178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vaewZEk2eYYox9uyi7WlaKYkj/uEgqOwrp4YGqapC0o=;
 b=WcNn9SNfjezooIP5MAhyf/waif40iq0ONlfoDqpEs9aPT4FYBiVR/R8hYNpgCOmXBWqi9b
 rCe68x3RbGg3E6uW7lvT/c2Uuemof1CUdfPEirmMv7wFksc0G24a+Fsy+wbvbMGgJz+hBx
 /ffV/ibuD1maGgJug6LPOmfg/Awndd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-ivzlOkrCNy-K-x1Z03nVDw-1; Sat, 28 Mar 2020 20:19:34 -0400
X-MC-Unique: ivzlOkrCNy-K-x1Z03nVDw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0BD918A8C80;
 Sun, 29 Mar 2020 00:19:29 +0000 (UTC)
Received: from localhost (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B78510013A1;
 Sun, 29 Mar 2020 00:19:27 +0000 (UTC)
Date: Sun, 29 Mar 2020 08:19:24 +0800
From: Baoquan He <bhe@redhat.com>
To: Hoan Tran <Hoan@os.amperecomputing.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200329001924.GS3039@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_171942_350513_7317C6B1 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mmorana@amperecomputing.com, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
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

On 03/28/20 at 11:31am, Hoan Tran wrote:
> In NUMA layout which nodes have memory ranges that span across other nodes,
> the mm driver can detect the memory node id incorrectly.
> 
> For example, with layout below
> Node 0 address: 0000 xxxx 0000 xxxx
> Node 1 address: xxxx 1111 xxxx 1111

Sorry, I read this example several times, but still don't get what it
means. Can it be given with real hex number address as an exmaple? I
mean just using the memory layout you have seen from some systems. The
change looks interesting though.

> 
> Note:
>  - Memory from low to high
>  - 0/1: Node id
>  - x: Invalid memory of a node
> 
> When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> config, mm only checks the memory validity but not the node id.
> Because of that, Node 1 also detects the memory from node 0 as below
> when it scans from the start address to the end address of node 1.
> 
> Node 0 address: 0000 xxxx xxxx xxxx
> Node 1 address: xxxx 1111 1111 1111
> 
> This layout could occur on any architecture. Most of them enables
> this config by default with CONFIG_NUMA. This patch, by default, enables
> CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.
> 
> v3:
>  * Revise the patch description
> 
> V2:
>  * Revise the patch description
> 
> Hoan Tran (5):
>   mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA
>   powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   sparc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> 
>  arch/powerpc/Kconfig | 9 ---------
>  arch/s390/Kconfig    | 8 --------
>  arch/sparc/Kconfig   | 9 ---------
>  arch/x86/Kconfig     | 9 ---------
>  mm/page_alloc.c      | 2 +-
>  5 files changed, 1 insertion(+), 36 deletions(-)
> 
> -- 
> 1.8.3.1
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
