Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D254729A04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Br7ZqGqq71Mfnj7GMuzaNkuQDkGnhPv4beDG/i3Yv/8=; b=S9t4dVBAl52l1R
	Pl8ks47ryFG8a+22sSlw8t/IRtxzarcTzLRG0OY1JS4sF98d8PaklRahP6aIVEFyy7bAjJp2HSspQ
	uzBK+fw8m63vAtFikHF7t8fzAptLp5abKkxngWgIEsV78SJiXPxlzbx6e2VMA4/ypsZWFlkk66UFW
	zM9lDKHn054S8Wom9vJ/YRJ7lNe88OkeXHxkaD1WyKAf9H+9dfCOI+FVLgjRhvitCV3AV6tmuI80m
	YbTece6QfDwIrojmzn6IvKIBlYYfzLo95aWOlf3G8xHA3E0use+nhruXX2z7iAcJTmouKFkERYNPy
	m6pEYvmFHNIw/iZNx2SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUB9B-0007Gt-4n; Fri, 24 May 2019 14:26:13 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUB93-0007GT-J8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:26:07 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4OE8bjv170883;
 Fri, 24 May 2019 14:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=OJhMCvW2kp8bOu0Aj9xHYqe11sQBRT1hGdecAvzomjs=;
 b=Ymf3dbVVSk/usGv/LWyN8I3YdUizbsu/NiEI/I45nxcgQtjyJP24xaCjavUVvrMsM2O6
 yEP3RCJrHDJF5nnRuz4iw9XN7owpeQqjW6DAcNsFAO79ZSNGKG1WbLKp1rBvO3sJA5Dr
 +fBrLpy1lQu6d91Ea6iJuVHlzyPxZBxwhYSSJ8nFZjA8cuYTCNKl6zTycOpBAIsWwpl+
 g1GFUsvpVXx8ufMZ3zfNa2womboo5KLhh4oJCIIc9jToeIVyIP/Opv9xH3hpRByfsilL
 vIwIH66z4yFn+YxGOtQgVRvyfsmkvl77RxspM3YzOuGKjPJ5b3GlOA6tg3BSpgx4LR4x mw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2smsk5sewf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 May 2019 14:25:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4OEPft9008165;
 Fri, 24 May 2019 14:25:48 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2smsgtwpfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 May 2019 14:25:47 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4OEPkT8002811;
 Fri, 24 May 2019 14:25:46 GMT
Received: from [192.168.1.16] (/24.9.64.241)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 May 2019 14:25:45 +0000
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <6049844a-65f5-f513-5b58-7141588fef2b@oracle.com>
 <20190523201105.oifkksus4rzcwqt4@mbp>
 <ffe58af3-7c70-d559-69f6-1f6ebcb0fec6@oracle.com>
 <20190524101139.36yre4af22bkvatx@mbp>
From: Khalid Aziz <khalid.aziz@oracle.com>
Organization: Oracle Corp
Message-ID: <c6dd53d8-142b-3d8d-6a40-d21c5ee9d272@oracle.com>
Date: Fri, 24 May 2019 08:25:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524101139.36yre4af22bkvatx@mbp>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905240096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_072605_716963_6491E8A1 
X-CRM114-Status: GOOD (  29.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/24/19 4:11 AM, Catalin Marinas wrote:
> On Thu, May 23, 2019 at 03:49:05PM -0600, Khalid Aziz wrote:
>> On 5/23/19 2:11 PM, Catalin Marinas wrote:
>>> On Thu, May 23, 2019 at 11:51:40AM -0600, Khalid Aziz wrote:
>>>> On 5/21/19 6:04 PM, Kees Cook wrote:
>>>>> As an aside: I think Sparc ADI support in Linux actually side-stepped
>>>>> this[1] (i.e. chose "solution 1"): "All addresses passed to kernel must
>>>>> be non-ADI tagged addresses." (And sadly, "Kernel does not enable ADI
>>>>> for kernel code.") I think this was a mistake we should not repeat for
>>>>> arm64 (we do seem to be at least in agreement about this, I think).
>>>>>
>>>>> [1] https://lore.kernel.org/patchwork/patch/654481/
>>>>
>>>> That is a very early version of the sparc ADI patch. Support for tagged
>>>> addresses in syscalls was added in later versions and is in the patch
>>>> that is in the kernel.
>>>
>>> I tried to figure out but I'm not familiar with the sparc port. How did
>>> you solve the tagged address going into various syscall implementations
>>> in the kernel (e.g. sys_write)? Is the tag removed on kernel entry or it
>>> ends up deeper in the core code?
>>
>> Another spot I should point out in ADI patch - Tags are not stored in
>> VMAs and IOMMU does not support ADI tags on M7. ADI tags are stripped
>> before userspace addresses are passed to IOMMU in the following snippet
>> from the patch:
>>
>> diff --git a/arch/sparc/mm/gup.c b/arch/sparc/mm/gup.c
>> index 5335ba3c850e..357b6047653a 100644
>> --- a/arch/sparc/mm/gup.c
>> +++ b/arch/sparc/mm/gup.c
>> @@ -201,6 +202,24 @@ int __get_user_pages_fast(unsigned long start, int
>> nr_pages
>> , int write,
>>         pgd_t *pgdp;
>>         int nr = 0;
>>
>> +#ifdef CONFIG_SPARC64
>> +       if (adi_capable()) {
>> +               long addr = start;
>> +
>> +               /* If userspace has passed a versioned address, kernel
>> +                * will not find it in the VMAs since it does not store
>> +                * the version tags in the list of VMAs. Storing version
>> +                * tags in list of VMAs is impractical since they can be
>> +                * changed any time from userspace without dropping into
>> +                * kernel. Any address search in VMAs will be done with
>> +                * non-versioned addresses. Ensure the ADI version bits
>> +                * are dropped here by sign extending the last bit before
>> +                * ADI bits. IOMMU does not implement version tags.
>> +                */
>> +               addr = (addr << (long)adi_nbits()) >> (long)adi_nbits();
>> +               start = addr;
>> +       }
>> +#endif
>>         start &= PAGE_MASK;
>>         addr = start;
>>         len = (unsigned long) nr_pages << PAGE_SHIFT;
> 
> Thanks Khalid. I missed that sparc does not enable HAVE_GENERIC_GUP, so
> you fix this case here. If we add the generic untagged_addr() macro in
> the generic code, I think sparc can start making use of it rather than
> open-coding the shifts.

Hi Catalin,

Yes, that will be good. Right now addresses are untagged in sparc code
in only two spots but that will expand as we expand use of tags.
Scalabale solution is definitely better.

> 
> There are a few other other places where tags can leak and the core code
> would get confused (for example, madvise()). I presume your user space
> doesn't exercise them. On arm64 we plan to just allow the C library to
> tag any new memory allocation, so those core code paths would need to be
> covered.
> 
> And similarly, devices, IOMMU, any DMA would ignore tags.
> 

Right. You are doing lot more with tags than sparc code intended to do.
I had looked into implementing just malloc(), mmap() and possibly
shmat() in library that automatically tags pointers. Expanding tags to
any pointers in C library will require covering lot more paths in kernel.

--
Khalid



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
