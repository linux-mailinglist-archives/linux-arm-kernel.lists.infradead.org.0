Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85196BB1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqvUcDN0zKdYWg05fq9hsnJJ5eQX2gWDDZv4dBPbu/Y=; b=Jh1BfbOXmiVLUQ
	mNmsejGP0sgroFOyskFHJPByJWJbeySK4yLjrIJOKmfr3HsVj6299qAi+8qSdg+OZxvi818qL0ptz
	toCpMwMd3u+SHxHSsR7Gz/gRVoc13ev9N1+MvFkCoMoqq1kVGx+zpvSMxZx3XlAl5m/053jJLdpOP
	Wa2sjKfCtjOYicuYxKqgwEokLmbx/uraHYgHIg6L4z87TiEUOt5IzrHhRZrCAQJj9VnPyrAje2xyB
	S3iMiTnudI6RbnxMw02a7AO7bV2KdEKy/3RmElwMAr+Ueyl44PXWmohjDJixR2ZPBNtRvZUNQkgpT
	C+ZquvzpBebU+1+vvpWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhog-0006Ko-Hh; Wed, 17 Jul 2019 11:09:46 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhoX-000631-Fv
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:09:39 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6HB12N9071339
 for <linux-arm-kernel@lists.infradead.org>; Wed, 17 Jul 2019 07:09:33 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tsy5t9bt5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 17 Jul 2019 07:09:32 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 17 Jul 2019 12:09:29 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 17 Jul 2019 12:09:19 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6HB9I7C39190742
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jul 2019 11:09:18 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0C29152063;
 Wed, 17 Jul 2019 11:09:18 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.168])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 366B052050;
 Wed, 17 Jul 2019 11:09:15 +0000 (GMT)
Date: Wed, 17 Jul 2019 14:09:13 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v18 08/15] userfaultfd: untag user pointers
References: <cover.1561386715.git.andreyknvl@google.com>
 <d8e3b9a819e98d6527e506027b173b128a148d3c.1561386715.git.andreyknvl@google.com>
 <20190624175120.GN29120@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624175120.GN29120@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19071711-0020-0000-0000-00000354AA32
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19071711-0021-0000-0000-000021A87C56
Message-Id: <20190717110910.GA12017@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-17_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907170134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_040937_648030_83F0D03B 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
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

On Mon, Jun 24, 2019 at 06:51:21PM +0100, Catalin Marinas wrote:
> On Mon, Jun 24, 2019 at 04:32:53PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends kernel ABI to allow to pass
> > tagged user pointers (with the top byte set to something else other than
> > 0x00) as syscall arguments.
> > 
> > userfaultfd code use provided user pointers for vma lookups, which can
> > only by done with untagged pointers.
> > 
> > Untag user pointers in validate_range().
> > 
> > Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  fs/userfaultfd.c | 22 ++++++++++++----------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> Same here, it needs an ack from Al Viro.

The userfault patches usually go via -mm tree, not sure if Al looks at them :) 
 
FWIW, you can add 

Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>

> > diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> > index ae0b8b5f69e6..c2be36a168ca 100644
> > --- a/fs/userfaultfd.c
> > +++ b/fs/userfaultfd.c
> > @@ -1261,21 +1261,23 @@ static __always_inline void wake_userfault(struct userfaultfd_ctx *ctx,
> >  }
> >  
> >  static __always_inline int validate_range(struct mm_struct *mm,
> > -					  __u64 start, __u64 len)
> > +					  __u64 *start, __u64 len)
> >  {
> >  	__u64 task_size = mm->task_size;
> >  
> > -	if (start & ~PAGE_MASK)
> > +	*start = untagged_addr(*start);
> > +
> > +	if (*start & ~PAGE_MASK)
> >  		return -EINVAL;
> >  	if (len & ~PAGE_MASK)
> >  		return -EINVAL;
> >  	if (!len)
> >  		return -EINVAL;
> > -	if (start < mmap_min_addr)
> > +	if (*start < mmap_min_addr)
> >  		return -EINVAL;
> > -	if (start >= task_size)
> > +	if (*start >= task_size)
> >  		return -EINVAL;
> > -	if (len > task_size - start)
> > +	if (len > task_size - *start)
> >  		return -EINVAL;
> >  	return 0;
> >  }
> > @@ -1325,7 +1327,7 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
> >  		goto out;
> >  	}
> >  
> > -	ret = validate_range(mm, uffdio_register.range.start,
> > +	ret = validate_range(mm, &uffdio_register.range.start,
> >  			     uffdio_register.range.len);
> >  	if (ret)
> >  		goto out;
> > @@ -1514,7 +1516,7 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
> >  	if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
> >  		goto out;
> >  
> > -	ret = validate_range(mm, uffdio_unregister.start,
> > +	ret = validate_range(mm, &uffdio_unregister.start,
> >  			     uffdio_unregister.len);
> >  	if (ret)
> >  		goto out;
> > @@ -1665,7 +1667,7 @@ static int userfaultfd_wake(struct userfaultfd_ctx *ctx,
> >  	if (copy_from_user(&uffdio_wake, buf, sizeof(uffdio_wake)))
> >  		goto out;
> >  
> > -	ret = validate_range(ctx->mm, uffdio_wake.start, uffdio_wake.len);
> > +	ret = validate_range(ctx->mm, &uffdio_wake.start, uffdio_wake.len);
> >  	if (ret)
> >  		goto out;
> >  
> > @@ -1705,7 +1707,7 @@ static int userfaultfd_copy(struct userfaultfd_ctx *ctx,
> >  			   sizeof(uffdio_copy)-sizeof(__s64)))
> >  		goto out;
> >  
> > -	ret = validate_range(ctx->mm, uffdio_copy.dst, uffdio_copy.len);
> > +	ret = validate_range(ctx->mm, &uffdio_copy.dst, uffdio_copy.len);
> >  	if (ret)
> >  		goto out;
> >  	/*
> > @@ -1761,7 +1763,7 @@ static int userfaultfd_zeropage(struct userfaultfd_ctx *ctx,
> >  			   sizeof(uffdio_zeropage)-sizeof(__s64)))
> >  		goto out;
> >  
> > -	ret = validate_range(ctx->mm, uffdio_zeropage.range.start,
> > +	ret = validate_range(ctx->mm, &uffdio_zeropage.range.start,
> >  			     uffdio_zeropage.range.len);
> >  	if (ret)
> >  		goto out;
> > -- 
> > 2.22.0.410.gd8fdbe21b5-goog

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
