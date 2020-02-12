Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B074F15AF31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 18:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1mms9QL6MsjaGPKYQGGeHCZmpHEbgoyJFbJyWFJgU0=; b=bliGgArHDREDP3
	BpxzZnUXAXwjU1jq7I1AGzxursInjPbWaC2HPlmT2FFvtcVmH+yKPXhoqvL5JKEBxVu2j62EjUn3m
	Mi/0VTkC/vmKMcCYJJf1zKS8j4qSgbnxg2uxWzCGsm1vqjWkfWa0cHqIxt8wVTOGZtX3pCMv2EPbT
	VbSm3uw2EpSEFz9N1Sc3/ucE4UZDRUBe7slYGTwBdfc8u9wzWknj19T7z2GPzfQIwca5hZi0QA8PK
	bOCphVTMqrAXIpS8wpiTmWRw1hcWoNXxgaQCZ6t8RoLhKBeDXl5plV6iy7StKAnQdmA62FZXq80IV
	+uhmQNaKKp1XCylO5SwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wFK-0005DE-PP; Wed, 12 Feb 2020 17:56:22 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1wF4-00059S-Ml
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 17:56:09 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01CHn2ZY138027
 for <linux-arm-kernel@lists.infradead.org>; Wed, 12 Feb 2020 12:56:04 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2y4j8ajj21-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 12 Feb 2020 12:56:03 -0500
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <gerald.schaefer@de.ibm.com>; 
 Wed, 12 Feb 2020 17:56:01 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 12 Feb 2020 17:55:51 -0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 01CHtoBV51576916
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Feb 2020 17:55:50 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8E98CA4055;
 Wed, 12 Feb 2020 17:55:50 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5B2C5A4057;
 Wed, 12 Feb 2020 17:55:49 +0000 (GMT)
Received: from thinkpad (unknown [9.152.96.168])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 12 Feb 2020 17:55:49 +0000 (GMT)
Date: Wed, 12 Feb 2020 18:55:48 +0100
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
In-Reply-To: <b169ff9d-7b87-91f4-b3d0-e97f86680d0c@arm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <20200210153716.GB9283@E121110.arm.com>
 <b169ff9d-7b87-91f4-b3d0-e97f86680d0c@arm.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 20021217-0020-0000-0000-000003A98A3E
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021217-0021-0000-0000-00002201718D
Message-Id: <20200212185548.3274ec2e@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-12_08:2020-02-12,
 2020-02-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0
 mlxlogscore=999 clxscore=1015 impostorscore=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002120131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_095606_861367_5CEBC6C6 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dan Williams <dan.j.williams@intel.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A
 . Shutemov" <kirill@shutemov.name>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
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

On Wed, 12 Feb 2020 15:12:54 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> >> +/*
> >> + * On s390 platform, the lower 12 bits are used to identify given page table
> >> + * entry type and for other arch specific requirements. But these bits might
> >> + * affect the ability to clear entries with pxx_clear(). So while loading up
> >> + * the entries skip all lower 12 bits in order to accommodate s390 platform.
> >> + * It does not have affect any other platform.
> >> + */
> >> +#define RANDOM_ORVALUE	(0xfffffffffffff000UL)  
> > 
> > I'd suggest you generate this mask with something like
> > GENMASK(BITS_PER_LONG, PAGE_SHIFT).  
> 
> IIRC the lower 12 bits constrains on s390 platform might not be really related
> to it's PAGE_SHIFT which can be a variable, but instead just a constant number.
> But can definitely use GENMASK or it's variants here.
> 
> https://lkml.org/lkml/2019/9/5/862

PAGE_SHIFT would be fine, it is 12 on s390. However, in order to be
more precise, we do not really need all 12 bits, only the last 4 bits.
So, something like this would work:

#define RANDOM_ORVALUE GENMASK(BITS_PER_LONG - 1, 4)

The text in the comment could then also be changed from 12 to 4, and
be a bit more specific on the fact that the impact on pxx_clear()
results from the dynamic page table folding logic on s390:

/*
 * On s390 platform, the lower 4 bits are used to identify given page table
 * entry type. But these bits might affect the ability to clear entries with
 * pxx_clear() because of how dynamic page table folding works on s390. So
 * while loading up the entries do not change the lower 4 bits.
 * It does not have affect any other platform.
 */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
