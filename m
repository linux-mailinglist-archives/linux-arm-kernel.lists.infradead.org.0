Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09F4AC01E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSxx1wx3dlc7Cn5/FX5Ys7OAuKEi7Ylqa6LORaNz+1c=; b=imJ37lb8O/XlNo
	mFvLFhhk8TZUZfVpfOwEWP402Ifz8c4Ronit8pWHIYBgkFuVqaH0ZAB5RwqNJY9lQ+NqR+cQtLrZX
	uhB4Wt6iOM0H9+jNNJ7Su+CvBrtXdBMkKskaliGGTwx/lXYcEt4QpxNzCzvr/ATbxonUtxMzsCZj8
	YbVlt+qCWkDaPNU+V+6XulkhKIOFtB//EpD6g9VHIy+ee3IaWuNmKZX48TWYU+vuokUcF2AQOggy2
	oIZn95H+Jc3HUfyyl8g8xefSzZ6l5DYquSlOwwiAd5p3d4alkZjytqS6KAudy1vRmATr7jlDKf60O
	GIshuW1qPm4k3Ji/XOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JX3-0006DR-4d; Fri, 06 Sep 2019 19:04:29 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JWf-00064l-Py
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:04:08 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x86J1olW034483
 for <linux-arm-kernel@lists.infradead.org>; Fri, 6 Sep 2019 15:04:02 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uuvk3hp3b-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 06 Sep 2019 15:04:02 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Fri, 6 Sep 2019 20:03:59 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 6 Sep 2019 20:03:50 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x86J3nGp51839194
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 6 Sep 2019 19:03:49 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 20BAC42042;
 Fri,  6 Sep 2019 19:03:49 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 047F842049;
 Fri,  6 Sep 2019 19:03:48 +0000 (GMT)
Received: from thinkpad (unknown [9.152.96.94])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  6 Sep 2019 19:03:47 +0000 (GMT)
Date: Fri, 6 Sep 2019 21:03:46 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
In-Reply-To: <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
 <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19090619-0020-0000-0000-000003689871
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19090619-0021-0000-0000-000021BE1320
Message-Id: <20190906210346.5ecbff01@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-06_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909060198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120405_934297_4D1443C3 
X-CRM114-Status: GOOD (  44.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, 6 Sep 2019 11:58:59 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> On 09/05/2019 10:36 PM, Gerald Schaefer wrote:
> > On Thu, 5 Sep 2019 14:48:14 +0530
> > Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> >   
> >>> [...]    
> >>>> +
> >>>> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> >>>> +static void pud_clear_tests(pud_t *pudp)
> >>>> +{
> >>>> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
> >>>> +	pud_clear(pudp);
> >>>> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
> >>>> +}    
> >>>
> >>> For pgd/p4d/pud_clear(), we only clear if the page table level is present
> >>> and not folded. The memset() here overwrites the table type bits, so
> >>> pud_clear() will not clear anything on s390 and the pud_none() check will
> >>> fail.
> >>> Would it be possible to OR a (larger) random value into the table, so that
> >>> the lower 12 bits would be preserved?    
> >>
> >> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
> >> it should OR a large random value preserving lower 12 bits. Hmm, this should
> >> still do the trick for other platforms, they just need non zero value. So on
> >> s390, the lower 12 bits on the page table entry already has valid value while
> >> entering this function which would make sure that pud_clear() really does
> >> clear the entry ?  
> > 
> > Yes, in theory the table entry on s390 would have the type set in the last
> > 4 bits, so preserving those would be enough. If it does not conflict with
> > others, I would still suggest preserving all 12 bits since those would contain
> > arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
> > would also work with the memset, but for consistency I think the same logic
> > should be used in all pxd_clear_tests.  
> 
> Makes sense but..
> 
> There is a small challenge with this. Modifying individual bits on a given
> page table entry from generic code like this test case is bit tricky. That
> is because there are not enough helpers to create entries with an absolute
> value. This would have been easier if all the platforms provided functions
> like __pxx() which is not the case now. Otherwise something like this should
> have worked.
> 
> 
> pud_t pud = READ_ONCE(*pudp);
> pud = __pud(pud_val(pud) | RANDOM_VALUE (keeping lower 12 bits 0))
> WRITE_ONCE(*pudp, pud);
> 
> But __pud() will fail to build in many platforms.

Hmm, I simply used this on my system to make pud_clear_tests() work, not
sure if it works on all archs:

pud_val(*pudp) |= RANDOM_NZVALUE;

> 
> The other alternative will be to make sure memset() happens on all other
> bits except the lower 12 bits which will depend on endianness. If s390
> has a fixed endianness, we can still use either of them which will hold
> good for others as well.
> 
> memset(pudp, RANDOM_NZVALUE, sizeof(pud_t) - 3);
> 
> OR
> 
> memset(pudp + 3, RANDOM_NZVALUE, sizeof(pud_t) - 3);
> 
> > 
> > However, there is another issue on s390 which will make this only work
> > for pud_clear_tests(), and not for the p4d/pgd_tests. The problem is that
> > mm_alloc() will only give you a 3-level page table initially on s390.
> > This means that pudp == p4dp == pgdp, and so the p4d/pgd_tests will
> > both see the pud level (of course this also affects other tests).  
> 
> Got it.
> 
> > 
> > Not sure yet how to fix this, i.e. how to initialize/update the page table
> > to 5 levels. We can handle 5 level page tables, and it would be good if
> > all levels could be tested, but using mm_alloc() to establish the page
> > tables might not work on s390. One option could be to provide an arch-hook
> > or weak function to allocate/initialize the mm.  
> 
> Sure, got it. Though I plan to do add some arch specific tests or init sequence
> like the above later on but for now the idea is to get the smallest possible set
> of test cases which builds and runs on all platforms without requiring any arch
> specific hooks or special casing (#ifdef) to be agreed upon broadly and accepted.
> 
> Do you think this is absolutely necessary on s390 for the very first set of test
> cases or we can add this later on as an improvement ?

It can be added later, no problem. I did not expect this to work flawlessly
on s390 right from the start anyway, with all our peculiarities, so don't
let this hinder you. I might come up with an add-on patch later.

Actually, using get_unmapped_area() as suggested by Kirill could also
solve this issue. We do create a new mm with 3-level page tables on s390,
and the dynamic upgrade to 4 or 5 levels is then triggered exactly by
arch_get_unmapped_area(), depending on the addr. But I currently don't
see how / where arch_get_unmapped_area() is set up for such a dummy mm
created by mm_alloc().

Regards,
Gerald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
