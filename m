Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD4E498C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kF+nEANiRuQxERUeFu7JrZqeShqC3Stuc6CtPWERSC4=; b=rYiyr6RUjGitAb
	sqJ8ZP8d2ICzhHBbhEIXLiz+xctoZ0uqyU7Q9vV+TtoxiQ90k0C4AvEV6Y/tcgm5fo6SHvj1GO6IU
	LTCSwAGUorw7Z7PZ2p/syaPx/k0bwghK1o4RxT7Ov0L3Ia4oWdLLCsPDK5VW6b9fXABK7u1qtFCle
	UdKokuwKLV5wBp6Pbv0isi38MfPhbIsxTck8v5wNJsNS4VGpRZ7E0pK4Y2i69ZkOlTkqjQwdZC0fD
	1lTHNpCzEngMFqhVyvpWBOZcxwQcPgVH9A0c6IZnMqlwdghjKRMt8CwbUli37HS743gak8jUIJ+Bt
	Lb6zbV09IsDV2lyVZblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7My-0007wh-Rl; Tue, 18 Jun 2019 06:13:24 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7Mo-0007wK-98
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:13:15 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5I67n0P165648
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Jun 2019 02:13:10 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t6nt18ehj-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Jun 2019 02:13:10 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 18 Jun 2019 07:13:08 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 18 Jun 2019 07:13:03 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5I6D2jD61210840
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 06:13:02 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 79475A4040;
 Tue, 18 Jun 2019 06:13:02 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7A0E8A4051;
 Tue, 18 Jun 2019 06:13:01 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.53])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 18 Jun 2019 06:13:01 +0000 (GMT)
Date: Tue, 18 Jun 2019 09:12:59 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190613121100.GB25164@rapoport-lnx>
 <20190617151252.GF16810@rapoport-lnx>
 <20190617163630.GH30800@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617163630.GH30800@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19061806-0008-0000-0000-000002F4A996
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061806-0009-0000-0000-00002261BF41
Message-Id: <20190618061259.GB15497@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-18_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=27 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=929 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906180050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_231314_444986_A57BE30E 
X-CRM114-Status: GOOD (  28.49  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, linux-mm@kvack.org,
 Qian Cai <cai@lca.pw>, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, akpm@linux-foundation.org,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 05:36:30PM +0100, Will Deacon wrote:
> Hi Mike,
> 
> On Mon, Jun 17, 2019 at 06:12:52PM +0300, Mike Rapoport wrote:
> > Andrew, can you please add the patch below as an incremental fix?
> > 
> > With this the arm64::pgd_alloc() should be in the right shape.
> > 
> > 
> > From 1c1ef0bc04c655689c6c527bd03b140251399d87 Mon Sep 17 00:00:00 2001
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > Date: Mon, 17 Jun 2019 17:37:43 +0300
> > Subject: [PATCH] arm64/mm: don't initialize pgd_cache twice
> > 
> > When PGD_SIZE != PAGE_SIZE, arm64 uses kmem_cache for allocation of PGD
> > memory. That cache was initialized twice: first through
> > pgtable_cache_init() alias and then as an override for weak
> > pgd_cache_init().
> > 
> > After enabling accounting for the PGD memory, this created a confusion for
> > memcg and slub sysfs code which resulted in the following errors:
> > 
> > [   90.608597] kobject_add_internal failed for pgd_cache(13:init.scope) (error: -2 parent: cgroup)
> > [   90.678007] kobject_add_internal failed for pgd_cache(13:init.scope) (error: -2 parent: cgroup)
> > [   90.713260] kobject_add_internal failed for pgd_cache(21:systemd-tmpfiles-setup.service) (error: -2 parent: cgroup)
> > 
> > Removing the alias from pgtable_cache_init() and keeping the only pgd_cache
> > initialization in pgd_cache_init() resolves the problem and allows
> > accounting of PGD memory.
> > 
> > Reported-by: Qian Cai <cai@lca.pw>
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/arm64/include/asm/pgtable.h | 3 +--
> >  arch/arm64/mm/pgd.c              | 5 +----
> >  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> Looks like this actually fixes caa841360134 ("x86/mm: Initialize PGD cache
> during mm initialization") due to an unlucky naming conflict!
> 
> In which case, I'd actually prefer to take this fix asap via the arm64
> tree. Is that ok?

I suppose so, it just won't apply as is. Would you like a patch against the
current upstream?

> Will

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
