Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA41640DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 07:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8ivFQUDlVNKcDCGtJ6Y7B2kK/PBqOPvx+eDhI6+hsE=; b=RmTMejvapoKPW6
	r2KAthQ5Ck4Rp5Y8YKJ+14zZQ/x/r1L+0Rz0YWtfCr2peLpsBnNEXFHYu6UemSk6Gu1gSjpDCxyuJ
	8HYszm009CavqW9ZETnKg+XIz2IpBvp6eMLrSCbZ1HVOmyYjCvevA5UwJh1DJcCsoGfJOxYt4h+Sp
	IVOGz3EJAqK/jLlMCtzcOAnngPMp5O1Zdj85lwjKhxPYfe+jig+xJaZATYJtzvSM0rvtwsh9G1Myb
	pdKmwPi9WKaqONAtM3o+J8ScW1qU9m6IvURB1zP5UnfXxsJp1r3QG0ouCAj0HspS2mjHSpglK+hB/
	oe2I9JZuPzzTrXculc6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl5dR-0002DV-QC; Wed, 10 Jul 2019 05:59:21 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl5dD-0002CQ-Rx
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 05:59:09 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hl5cV-0004bB-Pv; Wed, 10 Jul 2019 07:58:23 +0200
Date: Wed, 10 Jul 2019 07:58:21 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Hoan Tran OS <hoan@os.amperecomputing.com>
Subject: Re: [PATCH 3/5] x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
In-Reply-To: <1c5bc3a8-0c6f-dce3-95a2-8aec765408a2@os.amperecomputing.com>
Message-ID: <alpine.DEB.2.21.1907100755010.1758@nanos.tec.linutronix.de>
References: <1561501810-25163-1-git-send-email-Hoan@os.amperecomputing.com>
 <1561501810-25163-4-git-send-email-Hoan@os.amperecomputing.com>
 <alpine.DEB.2.21.1906260032250.32342@nanos.tec.linutronix.de>
 <1c5bc3a8-0c6f-dce3-95a2-8aec765408a2@os.amperecomputing.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_225908_047252_80815282 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hoan,

On Wed, 10 Jul 2019, Hoan Tran OS wrote:
> On 6/25/19 3:45 PM, Thomas Gleixner wrote:
> > On Tue, 25 Jun 2019, Hoan Tran OS wrote:
> >> @@ -1567,15 +1567,6 @@ config X86_64_ACPI_NUMA
> >>   	---help---
> >>   	  Enable ACPI SRAT based node topology detection.
> >>   
> >> -# Some NUMA nodes have memory ranges that span
> >> -# other nodes.  Even though a pfn is valid and
> >> -# between a node's start and end pfns, it may not
> >> -# reside on that node.  See memmap_init_zone()
> >> -# for details.
> >> -config NODES_SPAN_OTHER_NODES
> >> -	def_bool y
> >> -	depends on X86_64_ACPI_NUMA
> > 
> > the changelog does not mention that this lifts the dependency on
> > X86_64_ACPI_NUMA and therefore enables that functionality for anything
> > which has NUMA enabled including 32bit.
> > 
> 
> I think this config is used for a NUMA layout which NUMA nodes addresses 
> are spanned to other nodes. I think 32bit NUMA also have the same issue 
> with that layout. Please correct me if I'm wrong.

I'm not saying you're wrong, but it's your duty to provide the analysis why
this is correct for everything which has NUMA enabled.

> > The core mm change gives no helpful information either. You just copied the
> > above comment text from some random Kconfig.
> 
> Yes, as it's a correct comment and is used at multiple places.

Well it maybe correct in terms of explaining what this is about, it still
does not explain why this is needed by default on everything which has NUMA
enabled.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
