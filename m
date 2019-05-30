Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39762FFDE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXl6C9bAu17/pTseyHPZtflA6mvwXzh0ZnFR56E66hE=; b=ca8rjQCDxosbBd
	4NkYqpd9+t/rCenS/kDsgyd9og1ght83ZmzHyXT2QDgkMncUpL/XzCGtbDb9Z56AyoOVSzbrJDKCa
	9rbRDFHAze9hZgj+8FQ07+VVAGGzwfh3RTKNWLddAuy6tbr6Uvtda9jt2/0tIf4NJ6U5RJaewDKuO
	eGh5+ewsRVlp12nP75xDtdKIh3gK1jA7hGUwVFtOg0Y9N0bXdrro+C+ny3rKiYsv2LqufFjJineFn
	8STraP9w4u+1BQnaIze8NB7Pean/BUCToZBEe/IS9iq4bBwPpXxBE0tnfpWr1MhCjuxAJYjj9driA
	tNRqLefgI6kyV//DtuEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNZp-0005qj-Ix; Thu, 30 May 2019 16:06:49 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNZh-0005pW-Iv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:06:43 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UG4VBr062702;
 Thu, 30 May 2019 16:06:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=+GLA6qLrn26KPJEpEajh3ipF/BPoxxfouik/rd34OzM=;
 b=AwmlutIReVoUCST+0CvuT1i683wuk/bgaVaXpwFLuLObOH6WAfasg+1gIzeRdE2lXYjb
 k8P67eGtLM2jUaKR9Cy3m4TvgSb5+cBwa2T8P+yN1HdMoZWh+Ggt2lVsYNq8wgS4RczC
 Ob71kUfljvyH5fcGoqQaqFQS4TYWXfMx3pY3C+r2yQF46AIqpx1jAW7P3kPlizYiO3T0
 ZblzYxr+PrepeLcYjU1orVLKF6nQOQcaFQBGNaPWrM8vzs9svllGt0RN7sK/lmLWd9+b
 VLJpczb5tPtPCsmplNczUgngjT1jT/8Yk0IfRgeZkTSIRA/aLnoWnZFsdY3idrib592i Ow== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2spw4ts5tq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 16:06:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4UG64iQ193779;
 Thu, 30 May 2019 16:06:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2sr31vy3va-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 May 2019 16:06:12 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4UG62SZ026718;
 Thu, 30 May 2019 16:06:02 GMT
Received: from [192.168.1.16] (/24.9.64.241)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 May 2019 09:06:02 -0700
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190527143719.GA59948@MBP.local>
 <20190528145411.GA709@e119886-lin.cambridge.arm.com>
 <20190528154057.GD32006@arrakis.emea.arm.com>
 <11193998209cc6ff34e7d704f081206b8787b174.camel@oracle.com>
 <20190529142008.5quqv3wskmpwdfbu@mbp>
 <b2753e81-7b57-481f-0095-3c6fecb1a74c@oracle.com>
 <20190530151105.GA35418@arrakis.emea.arm.com>
From: Khalid Aziz <khalid.aziz@oracle.com>
Organization: Oracle Corp
Message-ID: <f79336b5-46b4-39c0-b754-23366207e32d@oracle.com>
Date: Thu, 30 May 2019 10:05:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530151105.GA35418@arrakis.emea.arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=660
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905300114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9272
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=684 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905300114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_090641_713648_E4926E7D 
X-CRM114-Status: GOOD (  32.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/30/19 9:11 AM, Catalin Marinas wrote:
> On Wed, May 29, 2019 at 01:16:37PM -0600, Khalid Aziz wrote:
>> mmap() can return the same tagged address but I am uneasy about kernel
>> pre-coloring the pages. Database can mmap 100's of GB of memory. That is
>> lot of work being offloaded to the kernel to pre-color the page even if
>> done in batches as pages are faulted in.
> 
> For anonymous mmap() for example, the kernel would have to zero the
> faulted in pages anyway. We can handle the colouring at the same time in
> clear_user_page() (as I said below, we have to clear the colour anyway
> from previous uses, so it's simply extending this to support something
> other than tag/colour 0 by default with no additional overhead).
> 

On sparc M7, clear_user_page() ends up in M7clear_user_page defined in
arch/sparc/lib/M7memset.S. M7 code use Block Init Store (BIS) to clear
the page. BIS on M7 clears the memory tags as well and no separate
instructions are needed to clear the tags. As a result when kernel
clears a page before returning it to user, the page is not only zeroed
out, its tags are also cleared to 0.

>>> Since we already need such loop in the kernel, we might as well allow
>>> user space to require a certain colour. This comes in handy for large
>>> malloc() and another advantage is that the C library won't be stuck
>>> trying to paint the whole range (think GB).
>>
>> If kernel is going to pre-color all pages in a vma, we will need to
>> store the default tag in the vma. It will add more time to page fault
>> handling code. On sparc M7, kernel will need to execute additional 128
>> stxa instructions to set the tags on a normal page.
> 
> As I said, since the user can retrieve an old colour using ldxa, the
> kernel should perform this operation anyway on any newly allocated page
> (unless you clear the existing colour on page freeing).>

Tags are not cleared on sparc on freeing. They get cleared when the page
is allocated again.

>>>> We can try to store tags for an entire region in vma but that is
>>>> expensive, plus on sparc tags are set in userspace with no
>>>> participation from kernel and now we need a way for userspace to
>>>> communicate the tags to kernel.
>>>
>>> We can't support finer granularity through the mmap() syscall and, as
>>> you said, the vma is not the right thing to store the individual tags.
>>> With the above extension to mmap(), we'd have to store a colour per vma
>>> and prevent merging if different colours (we could as well use the
>>> pkeys mechanism we already have in the kernel but use a colour per vma
>>> instead of a key).
>>
>> Since tags can change on any part of mmap region on sparc at any time
>> without kernel being involved, I am not sure I see much reason for
>> kernel to enforce any tag related restrictions.
> 
> It's not enforcing a tag, more like the default colour for a faulted in
> page. Anyway, if sparc is going with default 0/untagged, that's fine as
> well. We may add this mmap() option to arm64 only.
> 
>>>> From sparc point of view, making kernel responsible for assigning tags
>>>> to a page on page fault is full of pitfalls.
>>>
>>> This could be just some arm64-specific but if you plan to deploy it more
>>> generically for sparc (at the C library level), you may find this
>>> useful.
>>
>> Common semantics from app developer point of view will be very useful to
>> maintain. If arm64 says mmap with MAP_FIXED and a tagged address will
>> return a pre-colored page, I would rather have it be the same on any
>> architecture. Is there a use case that justifies kernel doing this extra
>> work?
> 
> So if a database program is doing an anonymous mmap(PROT_TBI) of 100GB,
> IIUC for sparc the faulted-in pages will have random colours (on 64-byte
> granularity). Ignoring the information leak from prior uses of such
> pages, it would be the responsibility of the db program to issue the
> stxa. On arm64, since we also want to do this via malloc(), any large
> allocation would require all pages to be faulted in so that malloc() can
> set the write colour before being handed over to the user. That's what
> we want to avoid and the user is free to repaint the memory as it likes.
> 

On sparc, any newly allocated page is cleared along with any old tags on
it. Since clearing tag happens automatically when page is cleared on
sparc, clear_user_page() will need to execute additional stxa
instructions to set a new tag. It is doable. In a way it is done already
if page is being pre-colored with tag 0 always ;) Where would the
pre-defined tag be stored - as part of address stored in vm_start or a
new field in vm_area_struct?

--
Khalid


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
