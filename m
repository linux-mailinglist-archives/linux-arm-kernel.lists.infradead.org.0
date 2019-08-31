Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09999A4538
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 18:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77iB9m442b474S3ht8Txz/oq1zT0xadBuPXknyTXouY=; b=aFfHnT3/3qg6uI
	3U5BXbUbNZroedEZC1AEBKgrKchCSM/G5zp3JVMsnsVqglfFBGMBIh094hAXb+JBeteSlq5G0KaYM
	BawKwI0/RC6HZ00Aw78SLxKVrUjn9L0il+OFmfOWwjgA5i27M+WUvMUVfzCj4nmU+LOcYiJNy2cfj
	W6L6pxWcvP6brwDtoAcBBC8AA6jru4Ujr4hYojfvSkfBHkoPsID+0EKQWDQbskLIoKaX16Bh9DQL4
	IbRYVGkcZKllqacCnqqTJIs4cSWors7PvIAF40KemSuWbuIt3ZmF9kNuuAqLFwtRPPx4RELieQ/fR
	iW8tVjgJKHeqxNW60lfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i460R-0007CS-8t; Sat, 31 Aug 2019 16:13:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i460J-0007CL-8l
 for linux-arm-kernel@bombadil.infradead.org; Sat, 31 Aug 2019 16:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9z8D9olsBa3hBeUPiIp09Dt+Z4AIzLPp/yvlpDUFHX0=; b=x8AzMV/dBDLgnZtYgd5WXrHZz
 J1Vzd0aVi/Gh9aR1ki4cBa4whG4Q1V/TmJqfGoj1lJq6kJjiuQYZNuorqmnCApb7upfCoptB6gJFD
 /zr79bDqLAuwubXHH8RP3U+PR2AsznxNYYfZ9NHQiCRpZlqAOstpbqBJRljB9ZgYsPWBx+MKFxs80
 ciDeDpUtS+sxAr9TXligHvyLa0o26gzbT/YjybHsFgge8Pvhl9sK46TsDOTJpa2DQeO8FEwa9a+0z
 CL2B8ec8EvIDtdx769upaAGdaagvguVv1uK6k1FG6efrfImifDIpfCuqJdr+/hOsIv+Uv1FL8Ogb7
 CPBOYqZeg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i45zj-0003On-Bp; Sat, 31 Aug 2019 16:12:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AF35F301A76;
 Sat, 31 Aug 2019 18:12:12 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id ADDA929B399D3; Sat, 31 Aug 2019 18:12:47 +0200 (CEST)
Date: Sat, 31 Aug 2019 18:12:47 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Yunsheng Lin <linyunsheng@huawei.com>
Subject: Re: [PATCH v2 2/9] x86: numa: check the node id consistently for x86
Message-ID: <20190831161247.GM2369@hirez.programming.kicks-ass.net>
References: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
 <1567231103-13237-3-git-send-email-linyunsheng@huawei.com>
 <20190831085539.GG2369@hirez.programming.kicks-ass.net>
 <4d89c688-49e4-a2aa-32ee-65e36edcd913@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d89c688-49e4-a2aa-32ee-65e36edcd913@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: dalias@libc.org, linux-sh@vger.kernel.org, catalin.marinas@arm.com,
 dave.hansen@linux.intel.com, heiko.carstens@de.ibm.com, linuxarm@huawei.com,
 jiaxun.yang@flygoat.com, linux-mips@vger.kernel.org, mwb@linux.vnet.ibm.com,
 paulus@samba.org, hpa@zytor.com, sparclinux@vger.kernel.org, chenhc@lemote.com,
 will@kernel.org, cai@lca.pw, linux-s390@vger.kernel.org,
 ysato@users.sourceforge.jp, mpe@ellerman.id.au, x86@kernel.org,
 rppt@linux.ibm.com, borntraeger@de.ibm.com, dledford@redhat.com,
 mingo@redhat.com, jeffrey.t.kirsher@intel.com, benh@kernel.crashing.org,
 jhogan@kernel.org, nfont@linux.vnet.ibm.com, mattst88@gmail.com,
 len.brown@intel.com, gor@linux.ibm.com, anshuman.khandual@arm.com,
 bp@alien8.de, luto@kernel.org, tglx@linutronix.de,
 naveen.n.rao@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 rth@twiddle.net, axboe@kernel.dk, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, tbogendoerfer@suse.de,
 paul.burton@mips.com, linux-alpha@vger.kernel.org, ink@jurassic.park.msu.ru,
 akpm@linux-foundation.org, robin.murphy@arm.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 06:09:39PM +0800, Yunsheng Lin wrote:
> 
> 
> On 2019/8/31 16:55, Peter Zijlstra wrote:
> > On Sat, Aug 31, 2019 at 01:58:16PM +0800, Yunsheng Lin wrote:
> >> According to Section 6.2.14 from ACPI spec 6.3 [1], the setting
> >> of proximity domain is optional, as below:
> >>
> >> This optional object is used to describe proximity domain
> >> associations within a machine. _PXM evaluates to an integer
> >> that identifies a device as belonging to a Proximity Domain
> >> defined in the System Resource Affinity Table (SRAT).
> > 
> > That's just words.. what does it actually mean?
> 
> It means the dev_to_node(dev) may return -1 if the bios does not
> implement the proximity domain feature, user may use that value
> to call cpumask_of_node and cpumask_of_node does not protect itself
> from node id being -1, which causes out of bound access.

> >> @@ -69,6 +69,12 @@ extern const struct cpumask *cpumask_of_node(int node);
> >>  /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
> >>  static inline const struct cpumask *cpumask_of_node(int node)
> >>  {
> >> +	if (node >= nr_node_ids)
> >> +		return cpu_none_mask;
> >> +
> >> +	if (node < 0 || !node_to_cpumask_map[node])
> >> +		return cpu_online_mask;
> >> +
> >>  	return node_to_cpumask_map[node];
> >>  }
> >>  #endif
> > 
> > I _reallly_ hate this. Users are expected to use valid numa ids. Now
> > we're adding all this checking to all users. Why do we want to do that?
> 
> As above, the dev_to_node(dev) may return -1.
> 
> > 
> > Using '(unsigned)node >= nr_nods_ids' is an error.
> 
> 'node >= nr_node_ids' can be dropped if all user is expected to not call
> cpumask_of_node with node id greater or equal to nr_nods_ids.

you copied my typo :-)

> From what I can see, the problem can be fixed in three place:
> 1. Make user dev_to_node return a valid node id even when proximity
>    domain is not set by bios(or node id set by buggy bios is not valid),
>    which may need info from the numa system to make sure it will return
>    a valid node.
> 
> 2. User that call cpumask_of_node should ensure the node id is valid
>    before calling cpumask_of_node, and user also need some info to
>    make ensure node id is valid.
> 
> 3. Make sure cpumask_of_node deal with invalid node id as this patchset.
> 
> Which one do you prefer to make sure node id is valid, or do you
> have any better idea?
> 
> Any detail advice and suggestion will be very helpful, thanks.

1) because even it is not set, the device really does belong to a node.
It is impossible a device will have magic uniform access to memory when
CPUs cannot.

2) is already true today, cpumask_of_node() requires a valid node_id.

3) is just wrong and increases overhead for everyone.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
