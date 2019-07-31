Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE9B7C147
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wI0sax7TQo4e075Fx03aSRZOBwcWqqD69eiKzHZ6s7Y=; b=TD591J7/vFUGa6
	LEJJZ66z2ptYNbtX4nxOU+eVyNvDq/sq1Y6cwXMGj3u/n+pji4TYPQNkMG7M/QUny5iZtHa69VXC/
	E2RksetOLX2A+VhRQ9RcQAzQ2Akr044IyMdknMEJ/Zxmxga1zUnc/hr4WlJRX3s4R3C4p7lV+w8WK
	L7rjqwi3QetWsjWbQa1aPx9Xqy65G/U7w9RaEPW02yw2m1bVXAyYSfIshfd5KqYKaQgbEPhQRgxb2
	p2YmDp8bQM8ra1pa8XBnz5ZS+6YcvE9dBu27a5TExkgui2OQ/NeDN7KkkkpubzyENvCY3c6c4DGhP
	sTXDye4u06yq3CQURCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnh5-0000YA-S4; Wed, 31 Jul 2019 12:26:59 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsngu-0000Xp-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:26:50 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6VCNV5U018996
 for <linux-arm-kernel@lists.infradead.org>; Wed, 31 Jul 2019 08:26:47 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2u39q9byy3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 31 Jul 2019 08:26:47 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 31 Jul 2019 13:26:45 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 31 Jul 2019 13:26:37 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6VCQZF059244618
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 31 Jul 2019 12:26:36 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DB81511C05B;
 Wed, 31 Jul 2019 12:26:35 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D43D911C04A;
 Wed, 31 Jul 2019 12:26:33 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.168])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed, 31 Jul 2019 12:26:33 +0000 (GMT)
Date: Wed, 31 Jul 2019 15:26:32 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v2 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
References: <586ae736-a429-cf94-1520-1a94ffadad88@os.amperecomputing.com>
 <20190712121223.GR29483@dhcp22.suse.cz>
 <20190712143730.au3662g4ua2tjudu@willie-the-truck>
 <20190712150007.GU29483@dhcp22.suse.cz>
 <730368c5-1711-89ae-e3ef-65418b17ddc9@os.amperecomputing.com>
 <20190730081415.GN9330@dhcp22.suse.cz>
 <20190731062420.GC21422@rapoport-lnx>
 <20190731080309.GZ9330@dhcp22.suse.cz>
 <20190731111422.GA14538@rapoport-lnx>
 <20190731114016.GI9330@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731114016.GI9330@dhcp22.suse.cz>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19073112-0028-0000-0000-00000389A2B7
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19073112-0029-0000-0000-00002449F381
Message-Id: <20190731122631.GB14538@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=754 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907310126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_052648_708577_866721C3 
X-CRM114-Status: GOOD (  33.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Will Deacon <will@kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
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

On Wed, Jul 31, 2019 at 01:40:16PM +0200, Michal Hocko wrote:
> On Wed 31-07-19 14:14:22, Mike Rapoport wrote:
> > On Wed, Jul 31, 2019 at 10:03:09AM +0200, Michal Hocko wrote:
> > > On Wed 31-07-19 09:24:21, Mike Rapoport wrote:
> > > > [ sorry for a late reply too, somehow I missed this thread before ]
> > > > 
> > > > On Tue, Jul 30, 2019 at 10:14:15AM +0200, Michal Hocko wrote:
> > > > > [Sorry for a late reply]
> > > > > 
> > > > > On Mon 15-07-19 17:55:07, Hoan Tran OS wrote:
> > > > > > Hi,
> > > > > > 
> > > > > > On 7/12/19 10:00 PM, Michal Hocko wrote:
> > > > > [...]
> > > > > > > Hmm, I thought this was selectable. But I am obviously wrong here.
> > > > > > > Looking more closely, it seems that this is indeed only about
> > > > > > > __early_pfn_to_nid and as such not something that should add a config
> > > > > > > symbol. This should have been called out in the changelog though.
> > > > > > 
> > > > > > Yes, do you have any other comments about my patch?
> > > > > 
> > > > > Not really. Just make sure to explicitly state that
> > > > > CONFIG_NODES_SPAN_OTHER_NODES is only about __early_pfn_to_nid and that
> > > > > doesn't really deserve it's own config and can be pulled under NUMA.
> > > > > 
> > > > > > > Also while at it, does HAVE_MEMBLOCK_NODE_MAP fall into a similar
> > > > > > > bucket? Do we have any NUMA architecture that doesn't enable it?
> > > > > > > 
> > > > 
> > > > HAVE_MEMBLOCK_NODE_MAP makes huge difference in node/zone initialization
> > > > sequence so it's not only about a singe function.
> > > 
> > > The question is whether we want to have this a config option or enable
> > > it unconditionally for each NUMA system.
> > 
> > We can make it 'default NUMA', but we can't drop it completely because
> > microblaze uses sparse_memory_present_with_active_regions() which is
> > unavailable when HAVE_MEMBLOCK_NODE_MAP=n.
> 
> I suppose you mean that microblaze is using
> sparse_memory_present_with_active_regions even without CONFIG_NUMA,
> right?

Yes.

> I have to confess I do not understand that code. What is the deal
> with setting node id there?

The sparse_memory_present_with_active_regions() iterates over
memblock.memory regions and uses the node id of each region as the
parameter to memory_present(). The assumption here is that sometime before
each region was assigned a proper non-negative node id. 

microblaze uses device tree for memory enumeration and the current FDT code
does memblock_add() that implicitly sets nid in memblock.memory regions to -1.

So in order to have proper node id passed to memory_present() microblaze
has to call memblock_set_node() before it can use
sparse_memory_present_with_active_regions().

> -- 
> Michal Hocko
> SUSE Labs

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
