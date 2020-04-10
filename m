Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460EB1A42A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 08:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoZWu++kAOFXTEPsEMpW4Bn/IoRNIaBS+AnepactlrE=; b=rGR7O2j2iymtzL
	qojUDX83hwmQQ0QJ7uJtswjS/0KgUxmHiW1m9emGRHF491EGb63oWyc5lXaIeKkZW+42opQnsxy7P
	HH1Gbmy3A13M6eZDgE0ar3XSANkZlG419qxKWCu6F14au6iOg0uDqZdsaNhwj//otx14e+gnPeJgl
	eABYou1uxadaVFA8k8XLv0iI9UU8F/e7dUNCHtDyK6yT8CrCrhFbvGwS4uSt+JVyrYxA+4pfgkF9T
	cf+LMdKmttAWGIuPR5x0HsX26n95TxEUbX0BrakacP77/F8LvlgKuU08VcaJ91jTCc/Qj9TPKpZUY
	8OnVCke5JarHHNjQ5cNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMnRI-0006aW-Ra; Fri, 10 Apr 2020 06:46:56 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMnR9-0006ZO-77
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 06:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586501201;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0zUfVt7mgJNJCuwkZj/ZTQSIXiHqwpNQ3G1o5Vhakx4=;
 b=KXeuZ0Y3Q4Fd1oRBxZdrCmwCr9pXYjt0e6MhyYKis8OyQqQr8KWvmUAOrdc70aWeFHfF9M
 KLhAI9PihDHgf0aaW9zMDYUVEPA6dJ1CAMSoXtCORYwLJsc/atu6GrOlNL8OCNgtZFOOQ1
 YkBGCIYXta3WoMzYn0TjRL6M31G9pXM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-Z0rWAvSEOYaWut_WfuFMDw-1; Fri, 10 Apr 2020 02:46:36 -0400
X-MC-Unique: Z0rWAvSEOYaWut_WfuFMDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 854D6107ACC4;
 Fri, 10 Apr 2020 06:46:31 +0000 (UTC)
Received: from localhost (ovpn-13-236.pek2.redhat.com [10.72.13.236])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 21183272A6;
 Fri, 10 Apr 2020 06:46:29 +0000 (UTC)
Date: Fri, 10 Apr 2020 14:46:26 +0800
From: Baoquan He <bhe@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH RFC] mm: remove CONFIG_HAVE_MEMBLOCK_NODE_MAP (was: Re:
 [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA)
Message-ID: <20200410064626.GF2129@MiWiFi-R3L-srv>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330092127.GB30942@linux.ibm.com>
 <20200330095843.GF14243@dhcp22.suse.cz>
 <20200331215618.GG30942@linux.ibm.com>
 <20200401054227.GC2129@MiWiFi-R3L-srv>
 <20200401075155.GH30942@linux.ibm.com>
 <20200402080144.GK22681@dhcp22.suse.cz>
 <20200409144119.GE2129@MiWiFi-R3L-srv>
 <20200409153321.GQ18386@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409153321.GQ18386@dhcp22.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_234647_336390_E35F61EA 
X-CRM114-Status: GOOD (  26.15  )
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

On 04/09/20 at 05:33pm, Michal Hocko wrote:
> On Thu 09-04-20 22:41:19, Baoquan He wrote:
> > On 04/02/20 at 10:01am, Michal Hocko wrote:
> > > On Wed 01-04-20 10:51:55, Mike Rapoport wrote:
> > > > Hi,
> > > > 
> > > > On Wed, Apr 01, 2020 at 01:42:27PM +0800, Baoquan He wrote:
> > > [...]
> > > > > From above information, we can remove HAVE_MEMBLOCK_NODE_MAP, and
> > > > > replace it with CONFIG_NUMA. That sounds more sensible to store nid into
> > > > > memblock when NUMA support is enabled.
> > > >  
> > > > Replacing CONFIG_HAVE_MEMBLOCK_NODE_MAP with CONFIG_NUMA will work, but
> > > > this will not help cleaning up the whole node/zone initialization mess and
> > > > we'll be stuck with two implementations.
> > > 
> > > Yeah, this is far from optimal.
> > > 
> > > > The overhead of enabling HAVE_MEMBLOCK_NODE_MAP is only for init time as
> > > > most architectures will anyway discard the entire memblock, so having it in
> > > > a UMA arch won't be a problem. The only exception is arm that uses
> > > > memblock for pfn_valid(), here we may also think about a solution to
> > > > compensate the addition of nid to the memblock structures. 
> > > 
> > > Well, we can make memblock_region->nid defined only for CONFIG_NUMA.
> > > memblock_get_region_node would then unconditionally return 0 on UMA.
> > > Essentially the same way we do NUMA for other MM code. I only see few
> > > direct usage of region->nid.
> > 
> > Checked code again, seems HAVE_MEMBLOCK_NODE_MAP is selected directly in
> > all ARCHes which support it. Means HAVE_MEMBLOCK_NODE_MAP is enabled by
> > default on those ARCHes, and has no dependency on CONFIG_NUMA at all.
> > E.g on x86, it just calls free_area_init_nodes() in generic code path,
> > while free_area_init_nodes() is defined in CONFIG_HAVE_MEMBLOCK_NODE_MAP
> > ifdeffery scope. So I tend to agree with Mike to remove
> > HAVE_MEMBLOCK_NODE_MAP firstly on all ARCHes. We can check if it's worth
> > only defining memblock_region->nid for CONFIG_NUMA case after
> > HAVE_MEMBLOCK_NODE_MAP is removed.
> 
> This can surely go in separate patches. What I meant to say is the
> region->nid is by definition 0 on !CONFIG_NUMA.

I see, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
