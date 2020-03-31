Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AA1198E14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 10:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKWOTW/mY34uaAu40Lg36C0kGsmz9lv8cF7oDfRDX5Y=; b=O/xmn/8sYeBNdI
	Cfbg3J64x/EVvyiZ02v/a7Ee9TocbzwMAo+/v8DUHnLUXhIGFU7wgfNccYKkUVVMAOYf26xKksrDD
	cItSupdWI8eFjeFbtcFDyxYRm0Arb0cuTkXXKG8+i5hi7d0syJy4rd2UlTgzAEcfr8iMiOsyb5SuZ
	GfHgTX1pEGJeF1R3EXTjL/20gncWiWN1UOwqCye5sEvoOsra+5jr1Ygz95PYgHq0Wsc47P7fVlMYd
	3AFS5L99P0BAq6rTZY1X/4XaKSIROoQnKjK8qrD8BQI70SsVCizJfvWnT5t3oZ67LYIEfliGUmbAP
	aOAFEwA4dU0flGV7ENSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJC2t-0008K0-64; Tue, 31 Mar 2020 08:14:51 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJC2h-0008Ja-66
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 08:14:40 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02V8638j140641
 for <linux-arm-kernel@lists.infradead.org>; Tue, 31 Mar 2020 04:14:38 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 303vwhyeub-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 31 Mar 2020 04:14:37 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 31 Mar 2020 09:14:29 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 31 Mar 2020 09:14:22 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 02V8DOkE50790826
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 08:13:24 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 982FCA405C;
 Tue, 31 Mar 2020 08:14:27 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 211B9A405B;
 Tue, 31 Mar 2020 08:14:25 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.207.69])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 31 Mar 2020 08:14:25 +0000 (GMT)
Date: Tue, 31 Mar 2020 11:14:23 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330182301.GM14243@dhcp22.suse.cz>
X-TM-AS-GCONF: 00
x-cbid: 20033108-0012-0000-0000-0000039B78A8
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20033108-0013-0000-0000-000021D883D5
Message-Id: <20200331081423.GE30942@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_02:2020-03-30,
 2020-03-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0
 malwarescore=0 impostorscore=0 suspectscore=5 bulkscore=0 mlxlogscore=855
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003310067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_011439_350407_A671C188 
X-CRM114-Status: GOOD (  37.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
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

On Mon, Mar 30, 2020 at 08:23:01PM +0200, Michal Hocko wrote:
> On Mon 30-03-20 20:51:00, Mike Rapoport wrote:
> > On Mon, Mar 30, 2020 at 09:42:46AM +0200, Michal Hocko wrote:
> > > On Sat 28-03-20 11:31:17, Hoan Tran wrote:
> > > > In NUMA layout which nodes have memory ranges that span across other nodes,
> > > > the mm driver can detect the memory node id incorrectly.
> > > > 
> > > > For example, with layout below
> > > > Node 0 address: 0000 xxxx 0000 xxxx
> > > > Node 1 address: xxxx 1111 xxxx 1111
> > > > 
> > > > Note:
> > > >  - Memory from low to high
> > > >  - 0/1: Node id
> > > >  - x: Invalid memory of a node
> > > > 
> > > > When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> > > > config, mm only checks the memory validity but not the node id.
> > > > Because of that, Node 1 also detects the memory from node 0 as below
> > > > when it scans from the start address to the end address of node 1.
> > > > 
> > > > Node 0 address: 0000 xxxx xxxx xxxx
> > > > Node 1 address: xxxx 1111 1111 1111
> > > > 
> > > > This layout could occur on any architecture. Most of them enables
> > > > this config by default with CONFIG_NUMA. This patch, by default, enables
> > > > CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.
> > > 
> > > I am not opposed to this at all. It reduces the config space and that is
> > > a good thing on its own. The history has shown that meory layout might
> > > be really wild wrt NUMA. The config is only used for early_pfn_in_nid
> > > which is clearly an overkill.
> > > 
> > > Your description doesn't really explain why this is safe though. The
> > > history of this config is somehow messy, though. Mike has tried
> > > to remove it a94b3ab7eab4 ("[PATCH] mm: remove arch independent
> > > NODES_SPAN_OTHER_NODES") just to be reintroduced by 7516795739bd
> > > ("[PATCH] Reintroduce NODES_SPAN_OTHER_NODES for powerpc") without any
> > > reasoning what so ever. This doesn't make it really easy see whether
> > > reasons for reintroduction are still there. Maybe there are some subtle
> > > dependencies. I do not see any TBH but that might be burried deep in an
> > > arch specific code.
> > 
> > I've looked at this a bit more and it seems that the check for
> > early_pfn_in_nid() in memmap_init_zone() can be simply removed.
> > 
> > The commits you've mentioned were way before the addition of
> > HAVE_MEMBLOCK_NODE_MAP and the whole infrastructure that calculates zone
> > sizes and boundaries based on the memblock node map.
> > So, the memmap_init_zone() is called when zone boundaries are already
> > within a node.
> 
> But zones from different nodes might overlap in the pfn range. And this
> check is there to skip over those overlapping areas.

Maybe I mis-read the code, but I don't see how this could happen. In the
HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
calculate_node_totalpages() that ensures that node->node_zones are entirely
within the node because this is checked in zone_spanned_pages_in_node().
So, for zones from different nodes to overlap in the pfn range the nodes
themself should overlap. Is this even possible?


> The only way to skip over this check I can see is to do a different pfn
> walk and go through memblock ranges which are guaranteed to belong to a
> single node.
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
