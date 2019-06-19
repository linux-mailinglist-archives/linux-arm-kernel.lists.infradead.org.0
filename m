Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28B64BD55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6KCk4lXgBDV79x80b5f3Djpkkn7qcI6kyaj9ffqpGY=; b=jtAYPluwlP30IE
	JHJAWday2wplsW4ZR/Vy7/Eyfn6Jtx1gCV509glmKqlYK3n4x2z+jHpjcmIN6EgFgaN+w6J2plIaZ
	f2Buc774S557Fg7bWcOC59xQNNr1qkJW8qTKV++ROGLftydpTegL/bGMeWbRRUgUN4oY1YYWtw4N/
	80FqM782STBGLQBTRnBrwWwBx74Nsp2ROKe272IbyqrtxyvMY2tM4g2MmsebUkpvKXyvh4mjNgyfQ
	2JW+zJoT8vncyqV2hmx7a+IttfRrDnZWf8zClWApizp+NqfEteOKXDSfSgIOvSnuOuWYSowXpgkJX
	ehYENyTgfpl0cJu9lMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcwv-0007Z7-4w; Wed, 19 Jun 2019 15:56:37 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcwl-0007XI-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:56:29 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5JFrt88113520;
 Wed, 19 Jun 2019 15:56:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=SoDrd9n3X32J5yU22MXe5hxvbr0oADlAzco6AaNmPlY=;
 b=tiWkZ/w95Jnc750JE7NdIbSVLAxuNCJanB6vqjZPJ1aa3V8V1zz7hD/Mpir7yCJj4IkD
 UQZJ4T89Du+KDCmcxRn0ky0McpX+U/kGRnqOQRs9Q9lPNTQrXSPaHIcnrAd14qwTT+Ls
 CGw1pVAKq/48OOP4FVYkyfrOoPEKCzD3TVQpqowv9EXgafE2X+GyV2ycT9MSpTab4s91
 k+axl+0IYieWJcr4RyrP9FuovImoVA8NHW3+4dnQhyAVZXUqxpDMsH20ju5Zy1ck0hGd
 PWwheucUcbKKfNgIakqhbBRgWYJkSnvYDhZj4P1QxV3xVq7enCqaFO9qReDYFpCFmV9e cg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2t7809cba1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 15:56:00 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5JFsVbp049987;
 Wed, 19 Jun 2019 15:55:59 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2t77ynx8s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 15:55:59 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5JFtpTh010454;
 Wed, 19 Jun 2019 15:55:51 GMT
Received: from [10.65.164.174] (/10.65.164.174)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 19 Jun 2019 08:55:51 -0700
Subject: Re: [PATCH v17 04/15] mm, arm64: untag user pointers passed to memory
 syscalls
To: Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, kvm@vger.kernel.org,
 linux-kselftest@vger.kernel.org
References: <cover.1560339705.git.andreyknvl@google.com>
 <f9b50767d639b7116aa986dc67f158131b8d4169.1560339705.git.andreyknvl@google.com>
From: Khalid Aziz <khalid.aziz@oracle.com>
Organization: Oracle Corp
Message-ID: <a5e0e465-89d5-91d0-c6a4-39674269bbf2@oracle.com>
Date: Wed, 19 Jun 2019 09:55:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f9b50767d639b7116aa986dc67f158131b8d4169.1560339705.git.andreyknvl@google.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9293
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_085627_515621_83E41C38 
X-CRM114-Status: GOOD (  29.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/19 5:43 AM, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> This patch allows tagged pointers to be passed to the following memory
> syscalls: get_mempolicy, madvise, mbind, mincore, mlock, mlock2, mprotect,
> mremap, msync, munlock, move_pages.
> 
> The mmap and mremap syscalls do not currently accept tagged addresses.
> Architectures may interpret the tag as a background colour for the
> corresponding vma.
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> ---

Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>


>  mm/madvise.c   | 2 ++
>  mm/mempolicy.c | 3 +++
>  mm/migrate.c   | 2 +-
>  mm/mincore.c   | 2 ++
>  mm/mlock.c     | 4 ++++
>  mm/mprotect.c  | 2 ++
>  mm/mremap.c    | 7 +++++++
>  mm/msync.c     | 2 ++
>  8 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/madvise.c b/mm/madvise.c
> index 628022e674a7..39b82f8a698f 100644
> --- a/mm/madvise.c
> +++ b/mm/madvise.c
> @@ -810,6 +810,8 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
>  	size_t len;
>  	struct blk_plug plug;
>  
> +	start = untagged_addr(start);
> +
>  	if (!madvise_behavior_valid(behavior))
>  		return error;
>  
> diff --git a/mm/mempolicy.c b/mm/mempolicy.c
> index 01600d80ae01..78e0a88b2680 100644
> --- a/mm/mempolicy.c
> +++ b/mm/mempolicy.c
> @@ -1360,6 +1360,7 @@ static long kernel_mbind(unsigned long start, unsigned long len,
>  	int err;
>  	unsigned short mode_flags;
>  
> +	start = untagged_addr(start);
>  	mode_flags = mode & MPOL_MODE_FLAGS;
>  	mode &= ~MPOL_MODE_FLAGS;
>  	if (mode >= MPOL_MAX)
> @@ -1517,6 +1518,8 @@ static int kernel_get_mempolicy(int __user *policy,
>  	int uninitialized_var(pval);
>  	nodemask_t nodes;
>  
> +	addr = untagged_addr(addr);
> +
>  	if (nmask != NULL && maxnode < nr_node_ids)
>  		return -EINVAL;
>  
> diff --git a/mm/migrate.c b/mm/migrate.c
> index f2ecc2855a12..d22c45cf36b2 100644
> --- a/mm/migrate.c
> +++ b/mm/migrate.c
> @@ -1616,7 +1616,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
>  			goto out_flush;
>  		if (get_user(node, nodes + i))
>  			goto out_flush;
> -		addr = (unsigned long)p;
> +		addr = (unsigned long)untagged_addr(p);
>  
>  		err = -ENODEV;
>  		if (node < 0 || node >= MAX_NUMNODES)
> diff --git a/mm/mincore.c b/mm/mincore.c
> index c3f058bd0faf..64c322ed845c 100644
> --- a/mm/mincore.c
> +++ b/mm/mincore.c
> @@ -249,6 +249,8 @@ SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
>  	unsigned long pages;
>  	unsigned char *tmp;
>  
> +	start = untagged_addr(start);
> +
>  	/* Check the start address: needs to be page-aligned.. */
>  	if (start & ~PAGE_MASK)
>  		return -EINVAL;
> diff --git a/mm/mlock.c b/mm/mlock.c
> index 080f3b36415b..e82609eaa428 100644
> --- a/mm/mlock.c
> +++ b/mm/mlock.c
> @@ -674,6 +674,8 @@ static __must_check int do_mlock(unsigned long start, size_t len, vm_flags_t fla
>  	unsigned long lock_limit;
>  	int error = -ENOMEM;
>  
> +	start = untagged_addr(start);
> +
>  	if (!can_do_mlock())
>  		return -EPERM;
>  
> @@ -735,6 +737,8 @@ SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
>  {
>  	int ret;
>  
> +	start = untagged_addr(start);
> +
>  	len = PAGE_ALIGN(len + (offset_in_page(start)));
>  	start &= PAGE_MASK;
>  
> diff --git a/mm/mprotect.c b/mm/mprotect.c
> index bf38dfbbb4b4..19f981b733bc 100644
> --- a/mm/mprotect.c
> +++ b/mm/mprotect.c
> @@ -465,6 +465,8 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
>  	const bool rier = (current->personality & READ_IMPLIES_EXEC) &&
>  				(prot & PROT_READ);
>  
> +	start = untagged_addr(start);
> +
>  	prot &= ~(PROT_GROWSDOWN|PROT_GROWSUP);
>  	if (grows == (PROT_GROWSDOWN|PROT_GROWSUP)) /* can't be both */
>  		return -EINVAL;
> diff --git a/mm/mremap.c b/mm/mremap.c
> index fc241d23cd97..64c9a3b8be0a 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -606,6 +606,13 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>  	LIST_HEAD(uf_unmap_early);
>  	LIST_HEAD(uf_unmap);
>  
> +	/*
> +	 * Architectures may interpret the tag passed to mmap as a background
> +	 * colour for the corresponding vma. For mremap we don't allow tagged
> +	 * new_addr to preserve similar behaviour to mmap.
> +	 */
> +	addr = untagged_addr(addr);
> +
>  	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
>  		return ret;
>  
> diff --git a/mm/msync.c b/mm/msync.c
> index ef30a429623a..c3bd3e75f687 100644
> --- a/mm/msync.c
> +++ b/mm/msync.c
> @@ -37,6 +37,8 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
>  	int unmapped_error = 0;
>  	int error = -EINVAL;
>  
> +	start = untagged_addr(start);
> +
>  	if (flags & ~(MS_ASYNC | MS_INVALIDATE | MS_SYNC))
>  		goto out;
>  	if (offset_in_page(start))
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
