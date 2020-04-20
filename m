Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFD81B1167
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDT7bHnWCsBvsOMqZGwnuLTlAKuXr+OeklaZ3rpHghQ=; b=YVixw9aeNvpCak
	uwY3F7r+1Tn6Jg/STVJgVFPidR7JgEFbIhdRk8tDE9tbkB7w5omH9vD+K220/E5NRYQiFdtgbd58G
	Wk2P/57857DNmPvn831OCpN+vJ0+hqCdUEsYK8LVydqEkS2ROp5YP1Po8eP4+WT5JEPJcRgf7kyDI
	FX6ZRosRDyVmA6PUzhs1fg6oqEksTY+l6vK9MD6uLR35NMoKeCNOqZz2htVmZrOuGSxre+ENyhdLh
	EoR3dOcMWw4LLEBBsGCeISblmpUCFYSFjlrkANKjgzidckABZAOJ6IJy0LRX8zEGgPujF/dfWAppp
	AQAPLdUHCwXWWeAupcuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZA8-0003vt-JC; Mon, 20 Apr 2020 16:20:48 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZ9v-0003ui-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:20:37 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KG2IYi050588
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 12:20:34 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30gmu74uc8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 12:20:34 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Mon, 20 Apr 2020 17:19:49 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 20 Apr 2020 17:19:43 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 03KGKPl455509026
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 16:20:25 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E70A842042;
 Mon, 20 Apr 2020 16:20:24 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4D9874203F;
 Mon, 20 Apr 2020 16:20:24 +0000 (GMT)
Received: from thinkpad (unknown [9.145.190.22])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 20 Apr 2020 16:20:24 +0000 (GMT)
Date: Mon, 20 Apr 2020 18:20:23 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [RFC][Qusetion] the value of cleared_(ptes|pmds|puds|p4ds) in
 struct mmu_gather
In-Reply-To: <68affa6e-44cd-37e3-cdfc-8eec31c4097e@de.ibm.com>
References: <fbb00ac0-9104-8d25-f225-7b3d1b17a01f@huawei.com>
 <20200330121654.GL20696@hirez.programming.kicks-ass.net>
 <68affa6e-44cd-37e3-cdfc-8eec31c4097e@de.ibm.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 20042016-4275-0000-0000-000003C366E0
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20042016-4276-0000-0000-000038D8E918
Message-Id: <20200420182023.6b8e143a@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 suspectscore=2 mlxlogscore=817
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092035_978737_4F2AE62D 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-s390 <linux-s390@vger.kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Zhenyu Ye <yezhenyu2@huawei.com>,
 Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, npiggin@gmail.com,
 arm@kernel.org, bp@alien8.de, xiexiangyou@huawei.com, luto@kernel.org,
 akpm@linux-foundation.org, torvalds@linux-foundation.org, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 Apr 2020 10:51:59 +0200
Christian Borntraeger <borntraeger@de.ibm.com> wrote:

[...]
> 
> adding Gerald and Vasily. Gerald can you have a look?
> 
> >>
> >>
> >> In my view, the cleared_(ptes|pmds|puds) and (pte|pmd|pud)_free_tlb
> >> correspond one-to-one.  So we should set cleared_ptes in pte_free_tlb(),
> >> then use it when needed.
> > 
> > So pte_free_tlb() clears a table of PTE entries, or a PMD level entity,
> > also see free_pte_range(). So the generic code makes sense to me. The
> > PTE level invalidations will have happened on tlb_remove_tlb_entry().
> > 
> >> I'm very confused about this. Which is wrong? Or is there something
> >> I understand wrong?
> > 
> > I agree the s390 case is puzzling, Martin does s390 need a PTE level
> > invalidate for removing a PTE table or was this a mistake?
> > 

Peter is right, the PTE level invalidations will happen before. For
s390, not exactly at the tlb_remove_tlb_entry() itself, since
__tlb_remove_tlb_entry() is not defined, but rather directly at the
preceding ptep_get_and_clear(). I think this also the reason why we
cannot easily optimize for larger granularity.

Anyway, pte_free_tlb() will then later only take care of freeing
the page table page, no further PTE level clearing/invalidation
needed. I see no reason why s390 should behave differently from
the generic code, wrt to cleared_pxds setting in pxd_free_tlb().

So I guess this was an "off-by-one" mistake in commit 9de7d833e3708
("s390/tlb: Convert to generic mmu_gather"), since the other
pxd_free_tlb() functions also show similar puzzling behavior.
Not consistently off-by-one though, as pmd_free_tlb() seems
to behave correctly, setting tlb->cleared_puds = 1, similar to
generic code.

That was a very nice catch, Zhenyu, thanks for reporting!
We are not yet making use of the tlb->cleared_pxds for s390, but
we would certainly have stumbled over this if we ever tried.
Will send a patch to make s390 behave like generic code here.

Regards,
Gerald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
