Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E09C846D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d55WqeaJc1q3rnQ0stQqYErblPw+HHl4JQy6IG7yiEA=; b=sDL1ptVOi0iHa7
	CYU4l9UfdkZto8d6iTTV4ifuiy4Wv2PoXbn3WSbsoc4y0n/+KnncabGGCa0LY604W20Fpr1DzZkkT
	0DgN+n+cH0rsZ3AYoKBHM760zeWunof/frZaUkkNLg/PpFfKo49FSfsyGIzdJq2+c8enrWxlHEzXI
	Vy+KufxHRwimD4b3JhHk3kYGlDRMXOhQJdnCKZ7danhYLcpDja6ruc3/eBJHsrzEy+0joRcyZbBm7
	/Oqw0kYZHw2Gg34TfJnEFVgWaC+MqcpkOJRD8nnV9M8rXCeiCD7mstDFjgPfOJVimrvwIisviPR2f
	HoVPZDiTMyffGS+kjbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGyz-0003KW-Sz; Wed, 07 Aug 2019 08:07:42 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGyg-0002mU-RB; Wed, 07 Aug 2019 08:07:25 +0000
Received: from [IPv6:2001:983:e9a7:1:8cc6:9015:1548:23f3]
 ([IPv6:2001:983:e9a7:1:8cc6:9015:1548:23f3])
 by smtp-cloud9.xs4all.net with ESMTPA
 id vGyNhjeHgAffAvGyOh7CoE; Wed, 07 Aug 2019 10:07:15 +0200
Subject: Re: [PATCH v3 11/41] media/v4l2-core/mm: convert put_page() to
 put_user_page*()
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <20190807013340.9706-12-jhubbard@nvidia.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <8a02b10a-507b-2eb3-19aa-1cb498c1a4af@xs4all.nl>
Date: Wed, 7 Aug 2019 10:07:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807013340.9706-12-jhubbard@nvidia.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLtFI4ThDBFuoSwFqT380PxkcC6q3XCYC9HO7bxya62SPesHUoWCzd0ksBMTGkppOn75d+WBKCLiUJL1JCKKzueS8vA20zMfsb357SuvaUy4TtJTFapt
 x/bWCTcScAJNoSAViYa6NSlEx2FKBMG1ub01wuczTnbJurUSOB+vxv+m9yWKJM94dHdvARuWMkXZdmUldHpi22HuFtGEBhfQsDY52cLv9SRNbWMy30DrEJ0t
 IZpNWziFzZ3evJ7mzLCVhbiK2kiOOXAk37J1rrkYGH2YtOIVmpGPTJw+iPQnS41ERf+BCjbaTp9dtSr4qdKvpCtCTPfnpCYMb9QEG7YIv4Bkl6jCBTx7G7/4
 E+/Gcs1gOswCkbsVZkXHiYav454A3NZryrYeXwugbZcaQXzdLwQKX8vixuVBgbqFmyjLnuKfL1+c17HvE7YGvrxNLgEJHTveu7qGFUgiDp8Kxm2qaSU6Ln+T
 ElUIz8bygLmP/ZaLM0W02XHdcvoF3n3t59CNY87n3tR3oXUf8LBXliPMUlUaTsd4sTe3FnbfHAUNwVeklfrjO7mwx/ZtuvdypniGohclf+1bp5fAUTyCCCrQ
 2HyNedUvC2lDdYTRuhJr04fafwrpC9JLhSLKJeMRBVwa4n0gqjUnzFBrEoDnP692PfkgpqcUzLJ3ou9bn9SXymgnoZ/su+Qto3UpDDWJiMsSJM83gtLeDDPU
 2LAMy4jSsugrfD7VC1dmYwzG8OWIPHuvJ7Tu8XU7oActSpAZS3c9skTdMjLehhV+5MHeC8g3tQLGrW2WL0nM2XSwHbo4mwTDcXTASOqE5niPTgs0jd+PPxdD
 6xGBJo3u/QbyQ3ajYSHTR7/iYO7MKvqve0YwbtTNR57pWM38fmVObjBWJ2Qb5+GQ3v2MdIxvVfz42j69SfAzoN+qm5pqDcKBwXhfBdG1NM3xlepenmsR9xg5
 62RVbClfekDh1mdFfuyj4KBmVBX0v1np3JjJ4vNebVx2IyoyHonzCgI/VeK3Xg6+xvyxhVW0lz7O9WmdlxWKcql5t0Yb5f0zsKtS1NvNqjdoMQPPDLlgqBkJ
 zSwzmxMfYBhUca00uKQBlssFsG5QNKIC7fFgqtDFBmNtn6ipJvZKRC79Cw4QS6qRNMXKSaUQOSPYCvM4KmrZVW9w5s8hot0TfDYbj+oHiuzjCO1jmdtzXAbt
 gWocxcFwf55hNfAhTODtYnIcQTTBxC/fmKLTijSmU3lfUSSSsnl8ef0xn1zUtoXXnyzz6mcZVljhvITEJx0jnOlTUGnl6EnAeCVrfPoD4WCRmPS4tIKMb0Sn
 DjxDBO/HszoKfvVJZYTfTvPxU+6WAyaIoLGRNQX6ew6/T19LTZ7M+CVC1zczygV1hOTQJzIdJnWdrI7AWTB8dFsFHEUTylMp921VegrittBprwtssRQSETDt
 w+WAy7sK++9/GONtwbizNl49IwU+D0GMpL0NbybeY6J7lGNNM2UtsFttBraN5pO3M9SU3xDoE5SqJiulL8VfDzJKyah60WIfPdhLbN00mLGEveLuRT0YQNVO
 Ve41rvqKpgWWp9HPZO7QwGGi4muzZFJs6F8sgGua1ktJvh99nm3LVZHEV++X5Bous3oUMbzF6ihXBdgtubshPp+ElhOLvWLff7DQNQVzst9h3eqqPREvSJlB
 0+CfDkY+tvaCm6YXmIbg/FxzMGySzi98TfrQYNsvylv4MWX8pxKCyY/xfBN6o8zPRNMJNc0PX0kAdkxIJbJSRls4hOcOInlZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010723_243141_63E64080 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Souptick Joarder <jrdr.linux@gmail.com>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-fsdevel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/7/19 3:33 AM, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Hans Verkuil <hans.verkuil@cisco.com>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: linux-media@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

> ---
>  drivers/media/v4l2-core/videobuf-dma-sg.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/videobuf-dma-sg.c b/drivers/media/v4l2-core/videobuf-dma-sg.c
> index 66a6c6c236a7..d6eeb437ec19 100644
> --- a/drivers/media/v4l2-core/videobuf-dma-sg.c
> +++ b/drivers/media/v4l2-core/videobuf-dma-sg.c
> @@ -349,8 +349,7 @@ int videobuf_dma_free(struct videobuf_dmabuf *dma)
>  	BUG_ON(dma->sglen);
>  
>  	if (dma->pages) {
> -		for (i = 0; i < dma->nr_pages; i++)
> -			put_page(dma->pages[i]);
> +		put_user_pages(dma->pages, dma->nr_pages);
>  		kfree(dma->pages);
>  		dma->pages = NULL;
>  	}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
