Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBCD1A37FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAg/ddwdVNA/ShPnHvPq/g3j925Tf3MRqEy8r1l8RGg=; b=hYBoQggFYcp8Q4
	Y/wU9z96gtweSj4OCnLEGPdxBArmryAM9bLccBwVZ5Qdv7SN7KA32wAyGaLrDL6Nhq/yZ1GQCuZcf
	t7iXS61Ug4osF2RXZeWGEzhmXOcC4TwSI0TIyrhP7lINFFlEZo1feyou7OjYGa2UYGJGclKm3SLX6
	FEn46n6BKa54d/MeiKuYEMciqSKca5hp2ii02XefvSSAj4JKfi47yid1CZ5YLnHY3lmMholCp+wPQ
	lIJMelLz5+93yqrx5eCGczm7ggZdzDGg7MdUkWL14ZH6QBmDl00y8rUqlhy/QKVcCnYKPY2lZC0Rt
	hhbo+Rhz6rwvaga6tvmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMa2E-0006Ti-Gn; Thu, 09 Apr 2020 16:28:10 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMa26-0006SU-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 16:28:04 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039G3gih084014
 for <linux-arm-kernel@lists.infradead.org>; Thu, 9 Apr 2020 12:27:58 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30920xmebt-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 09 Apr 2020 12:27:58 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 9 Apr 2020 17:27:35 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 9 Apr 2020 17:27:28 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 039GRklf52756716
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 9 Apr 2020 16:27:47 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D5C3511C04C;
 Thu,  9 Apr 2020 16:27:46 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AE74D11C050;
 Thu,  9 Apr 2020 16:27:43 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.53])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  9 Apr 2020 16:27:43 +0000 (GMT)
Date: Thu, 9 Apr 2020 19:27:41 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
 <20200331081423.GE30942@linux.ibm.com>
 <20200331085513.GE30449@dhcp22.suse.cz>
 <20200331140332.GA2129@MiWiFi-R3L-srv>
 <20200331142138.GL30449@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331142138.GL30449@dhcp22.suse.cz>
X-TM-AS-GCONF: 00
x-cbid: 20040916-0008-0000-0000-0000036DAB16
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040916-0009-0000-0000-00004A8F4DFB
Message-Id: <20200409162741.GA9387@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 clxscore=1015 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004090118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_092802_624530_30A21875 
X-CRM114-Status: GOOD (  38.27  )
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
 Will Deacon <will.deacon@arm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Baoquan He <bhe@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 04:21:38PM +0200, Michal Hocko wrote:
> On Tue 31-03-20 22:03:32, Baoquan He wrote:
> > Hi Michal,
> > 
> > On 03/31/20 at 10:55am, Michal Hocko wrote:
> > > On Tue 31-03-20 11:14:23, Mike Rapoport wrote:
> > > > Maybe I mis-read the code, but I don't see how this could happen. In the
> > > > HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
> > > > calculate_node_totalpages() that ensures that node->node_zones are entirely
> > > > within the node because this is checked in zone_spanned_pages_in_node().
> > > 
> > > zone_spanned_pages_in_node does chech the zone boundaries are within the
> > > node boundaries. But that doesn't really tell anything about other
> > > potential zones interleaving with the physical memory range.
> > > zone->spanned_pages simply gives the physical range for the zone
> > > including holes. Interleaving nodes are essentially a hole
> > > (__absent_pages_in_range is going to skip those).
> > > 
> > > That means that when free_area_init_core simply goes over the whole
> > > physical zone range including holes and that is why we need to check
> > > both for physical and logical holes (aka other nodes).
> > > 
> > > The life would be so much easier if the whole thing would simply iterate
> > > over memblocks...
> > 
> > The memblock iterating sounds a great idea. I tried with putting the
> > memblock iterating in the upper layer, memmap_init(), which is used for
> > boot mem only anyway. Do you think it's doable and OK? It yes, I can
> > work out a formal patch to make this simpler as you said. The draft code
> > is as below. Like this it uses the existing code and involves little change.
> 
> Doing this would be a step in the right direction! I haven't checked the
> code very closely though. The below sounds way too simple to be truth I
> am afraid. First for_each_mem_pfn_range is available only for
> CONFIG_HAVE_MEMBLOCK_NODE_MAP (which is one of the reasons why I keep
> saying that I really hate that being conditional). Also I haven't really
> checked the deferred initialization path - I have a very vague
> recollection that it has been converted to the memblock api but I have
> happilly dropped all that memory.

The Baoquan's patch almost did it, at least for simple case of qemu with 2
nodes. It's only missing the adjustment to the size passed to
memmap_init_zone() as it may change because of clamping.

I've drafted something that removes HAVE_MEMBLOCK_NODE_MAP and added this
patch there [1]. For several memory configurations I could emulate with
qemu it worked.
I'm going to wait a bit to see of kbuild is happy and then I'll send the
patches.

Baoquan, I took liberty to add your SoB, hope you don't mind.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git/log/?h=memblock/all-have-node-map 
  
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index 138a56c0f48f..558d421f294b 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -6007,14 +6007,6 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
> >  		 * function.  They do not exist on hotplugged memory.
> >  		 */
> >  		if (context == MEMMAP_EARLY) {
> > -			if (!early_pfn_valid(pfn)) {
> > -				pfn = next_pfn(pfn);
> > -				continue;
> > -			}
> > -			if (!early_pfn_in_nid(pfn, nid)) {
> > -				pfn++;
> > -				continue;
> > -			}
> >  			if (overlap_memmap_init(zone, &pfn))
> >  				continue;
> >  			if (defer_init(nid, pfn, end_pfn))
> > @@ -6130,9 +6122,17 @@ static void __meminit zone_init_free_lists(struct zone *zone)
> >  }
> >  
> >  void __meminit __weak memmap_init(unsigned long size, int nid,
> > -				  unsigned long zone, unsigned long start_pfn)
> > +				  unsigned long zone, unsigned long range_start_pfn)
> >  {
> > -	memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> > +	unsigned long start_pfn, end_pfn;
> > +	unsigned long range_end_pfn = range_start_pfn + size;
> > +	int i;
> > +	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> > +		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> > +		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> > +		if (end_pfn > start_pfn)
> > +			memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> > +	}
> >  }
> >  
> >  static int zone_batchsize(struct zone *zone)
> 
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
