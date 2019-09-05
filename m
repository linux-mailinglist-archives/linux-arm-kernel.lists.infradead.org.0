Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B35DAA9B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOu0vEE222M8TEuit4OfTJ5ronq6pjRmfnikMhPg1M4=; b=F5eDGDOkFn9xv5
	cOohVJHhpagwW/T/fl4pP5K3+cEPKThtKEgwY8hxFvWyaDsY2k5z982fLPl+YMrhzitYE1FAVY+NW
	sjbkiLwBuvKS/Nwqa91We2vH973olxEBV956p9LNmXnTeDUMTazPQbzu2XXP2SxMfTr9w6z2M2/+y
	IIWNMAglMIdCTtJhiTh49oMprQwG69SeFNA3P5GoVIX5piI6gSPFABSSrFyahGlFUqJGUE/7K2Uip
	aDLwIjCdKzf0UeIvpcfuXVeiVoG+rFAoBgyBh0uHpBYvEzXCXkIKuGZ/vKd9v4X6QzeEEWYQRSdR7
	KqGKxBkxu1nMZSCj4ngw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vEP-0006jG-7f; Thu, 05 Sep 2019 17:07:37 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vEF-0006it-I6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 17:07:29 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x85H7OPs107125
 for <linux-arm-kernel@lists.infradead.org>; Thu, 5 Sep 2019 13:07:26 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uu6ekg32h-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 05 Sep 2019 13:07:25 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Thu, 5 Sep 2019 18:06:42 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 5 Sep 2019 18:06:33 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x85H68Tu33030630
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 5 Sep 2019 17:06:08 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 104054C050;
 Thu,  5 Sep 2019 17:06:32 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0017A4C044;
 Thu,  5 Sep 2019 17:06:30 +0000 (GMT)
Received: from thinkpad (unknown [9.152.96.45])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu,  5 Sep 2019 17:06:30 +0000 (GMT)
Date: Thu, 5 Sep 2019 19:06:29 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
In-Reply-To: <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090517-0012-0000-0000-000003471F7D
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090517-0013-0000-0000-000021817691
Message-Id: <20190905190629.523bdb87@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-05_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909050164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_100727_726177_3A2DA0F6 
X-CRM114-Status: GOOD (  30.50  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019 14:48:14 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> > [...]  
> >> +
> >> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> >> +static void pud_clear_tests(pud_t *pudp)
> >> +{
> >> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
> >> +	pud_clear(pudp);
> >> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
> >> +}  
> > 
> > For pgd/p4d/pud_clear(), we only clear if the page table level is present
> > and not folded. The memset() here overwrites the table type bits, so
> > pud_clear() will not clear anything on s390 and the pud_none() check will
> > fail.
> > Would it be possible to OR a (larger) random value into the table, so that
> > the lower 12 bits would be preserved?  
> 
> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
> it should OR a large random value preserving lower 12 bits. Hmm, this should
> still do the trick for other platforms, they just need non zero value. So on
> s390, the lower 12 bits on the page table entry already has valid value while
> entering this function which would make sure that pud_clear() really does
> clear the entry ?

Yes, in theory the table entry on s390 would have the type set in the last
4 bits, so preserving those would be enough. If it does not conflict with
others, I would still suggest preserving all 12 bits since those would contain
arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
would also work with the memset, but for consistency I think the same logic
should be used in all pxd_clear_tests.

However, there is another issue on s390 which will make this only work
for pud_clear_tests(), and not for the p4d/pgd_tests. The problem is that
mm_alloc() will only give you a 3-level page table initially on s390.
This means that pudp == p4dp == pgdp, and so the p4d/pgd_tests will
both see the pud level (of course this also affects other tests).

Not sure yet how to fix this, i.e. how to initialize/update the page table
to 5 levels. We can handle 5 level page tables, and it would be good if
all levels could be tested, but using mm_alloc() to establish the page
tables might not work on s390. One option could be to provide an arch-hook
or weak function to allocate/initialize the mm.

IIUC, the (dummy) mm is really only needed to provide an mm->pgd as starting
point, right?

Regards,
Gerald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
