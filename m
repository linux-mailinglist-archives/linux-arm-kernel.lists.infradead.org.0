Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677A671D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnXsC2ultvyzO9JCKDLXPe0CF0KhgwiQHHbzlHtMn00=; b=Nr7nGNTugrwVu7
	SnpJVWAYj/VzE3O1ZmYLvnm7BS2zwZyHTXN0MV/3qLWop6KPCmdVikD3OojI8rwKAhmH4tfcqbTdg
	U5wTLFKui7TZ/OgmF0gGGN6Y0WR/4EiNm7FLnjYT/IGBI0oMcoxS4Jxcho+Px0qMG3urvt4sM9EYS
	OtHWkTrC5tS/9e8LuVdlTl8RPyitQjsjcfegF++BQZHj9qIzmyOmO7/830uMscpMI5d4DKvPI+iiE
	3eKcf4y0Ze16CLqLy4lL4wRmnDwoCrk3Daz1V6zA3ReQsCjryApb4BnLiuxTiZJ7xri3xBXMs5sA4
	OfgtTPQEf05Ttb+/rLpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlx2G-0002SL-82; Fri, 12 Jul 2019 15:00:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlx1v-00022c-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:00:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C4457ABE9;
 Fri, 12 Jul 2019 15:00:09 +0000 (UTC)
Date: Fri, 12 Jul 2019 17:00:07 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20190712150007.GU29483@dhcp22.suse.cz>
References: <1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com>
 <20190712070247.GM29483@dhcp22.suse.cz>
 <586ae736-a429-cf94-1520-1a94ffadad88@os.amperecomputing.com>
 <20190712121223.GR29483@dhcp22.suse.cz>
 <20190712143730.au3662g4ua2tjudu@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712143730.au3662g4ua2tjudu@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_080012_098152_ED153BD6 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 willy@infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran OS <hoan@os.amperecomputing.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 12-07-19 15:37:30, Will Deacon wrote:
> Hi all,
> 
> On Fri, Jul 12, 2019 at 02:12:23PM +0200, Michal Hocko wrote:
> > On Fri 12-07-19 10:56:47, Hoan Tran OS wrote:
> > [...]
> > > It would be good if we can enable it by-default. Otherwise, let arch 
> > > enables it by them-self. Do you have any suggestions?
> > 
> > I can hardly make any suggestions when it is not really clear _why_ you
> > want to remove this config option in the first place. Please explain
> > what motivated you to make this change.
> 
> Sorry, I think this confusion might actually be my fault and Hoan has just
> been implementing my vague suggestion here:
> 
> https://lore.kernel.org/linux-arm-kernel/20190625101245.s4vxfosoop52gl4e@willie-the-truck/
> 
> If the preference of the mm folks is to leave CONFIG_NODES_SPAN_OTHER_NODES
> as it is, then we can define it for arm64. I just find it a bit weird that
> the majority of NUMA-capable architectures have to add a symbol in the arch
> Kconfig file, for what appears to be a performance optimisation applicable
> only to ia64, mips and sh.
> 
> At the very least we could make the thing selectable.

Hmm, I thought this was selectable. But I am obviously wrong here.
Looking more closely, it seems that this is indeed only about
__early_pfn_to_nid and as such not something that should add a config
symbol. This should have been called out in the changelog though.

Also while at it, does HAVE_MEMBLOCK_NODE_MAP fall into a similar
bucket? Do we have any NUMA architecture that doesn't enable it?

Thanks!
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
