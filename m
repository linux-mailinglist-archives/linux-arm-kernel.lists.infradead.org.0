Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1D436575
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mKNTfwAUTjLBUQiEfu72RHPQUwtBVftMBc5OQYkNLw=; b=Tmso7EavZ8+6sb
	FY49b84NQ75YE4SUsKmytC6+EusWnHGDOfzK5ve3WW9/PDnSy9/eopj+ph6n3KtlAmdO2bUU4aouX
	PEWaaL7FlSwaC5NaevuqskiLeZqD2u2uEqWpfYkuVX9ztIRCo2XLoBatamSBVZ3qGmwCMkIuQrO1Z
	3voqfROLfs1slD8IQC9azluPfSmypELFzbDSbb2cagaYvkSUr7nPjWNcxVnl524ta6ZTIlZBcIxm2
	JjRXdUPF+lIpUVAGy37Pfm7uS0BPIFXLF0tZaqY+6UpRPoy1UsIRbeyBlT4Abp/7wfaFKwCqJ7IoS
	hImU7KbZJ2wDAqufBg8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcVS-0003UM-7g; Wed, 05 Jun 2019 20:27:34 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcVJ-0003T3-Nm
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:27:28 +0000
Received: by mail-qt1-f196.google.com with SMTP id d23so111741qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:27:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wGxHiQlWFn1uiPqF46GhGASLxDFDSqAuue1nQQO+VCs=;
 b=A6SCwuyEIN8eWuhLPg3WYssqG7FYkcVvNBYbrMe0/3QuvXGePRWjDshoshgYFQwFQq
 9+jN8uCXACDmnHgFxP8g0TaLFZPH5Hyi/JhIzRU2o6YmA6/j2qihElKHSC8lVsjl2INk
 ZlS8TRdvUXYqYEo85g0QmS0c2Lxrn1nrqbbAOigEeEvZn4c6AcUYNT2LOMTZKcd5IRxR
 ILfxUoGsard2/P0wiN/x3NGsI6uKV20NwnyRaFZ8vcS0b+vViFvoIeQa5usrUctEE+E1
 SPdSQ31TWf8PTS2M9utZR3H5M77nuE0jE1h3/9nRQ3YpXjdAAjrwUMpH2dSFWc5S+aFg
 4tFA==
X-Gm-Message-State: APjAAAUxIbGcAXL2VBVkMKv1VKuVj1tXkU8Fw3355vvLT/XSv6UcCrJQ
 +Zua25xgEqIrXfSW4NHk75JkOkAYz88=
X-Google-Smtp-Source: APXvYqyNZwCNllCffk9CW8iJVZnNw6kyLj1Wao5YfIYT6vXREYUpwAyvBsDlsGb5oilKvNDw7Zk3hw==
X-Received: by 2002:aed:254c:: with SMTP id w12mr37738167qtc.127.1559766441824; 
 Wed, 05 Jun 2019 13:27:21 -0700 (PDT)
Received: from redhat.com (pool-100-0-197-103.bstnma.fios.verizon.net.
 [100.0.197.103])
 by smtp.gmail.com with ESMTPSA id z20sm14611825qtz.34.2019.06.05.13.27.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 13:27:20 -0700 (PDT)
Date: Wed, 5 Jun 2019 16:27:18 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: [PATCH net-next 0/6] vhost: accelerate metadata access
Message-ID: <20190605162631-mutt-send-email-mst@kernel.org>
References: <20190524081218.2502-1-jasowang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524081218.2502-1-jasowang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_132725_774929_98C89FBD 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@infradead.org, linux-parisc@vger.kernel.org, kvm@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, peterx@redhat.com,
 virtualization@lists.linux-foundation.org,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org, jglisse@redhat.com,
 jrdr.linux@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, christophe.de.dinechin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 04:12:12AM -0400, Jason Wang wrote:
> Hi:
> 
> This series tries to access virtqueue metadata through kernel virtual
> address instead of copy_user() friends since they had too much
> overheads like checks, spec barriers or even hardware feature
> toggling like SMAP. This is done through setup kernel address through
> direct mapping and co-opreate VM management with MMU notifiers.
> 
> Test shows about 23% improvement on TX PPS. TCP_STREAM doesn't see
> obvious improvement.
> 
> Thanks


Thanks this is queued for next.

Did you want to rebase and repost packed ring support on top?
IIUC it's on par with split ring with these patches.


> Changes from RFC V3:
> - rebase to net-next
> - Tweak on the comments
> Changes from RFC V2:
> - switch to use direct mapping instead of vmap()
> - switch to use spinlock + RCU to synchronize MMU notifier and vhost
>   data/control path
> - set dirty pages in the invalidation callbacks
> - always use copy_to/from_users() friends for the archs that may need
>   flush_dcache_pages()
> - various minor fixes
> Changes from V4:
> - use invalidate_range() instead of invalidate_range_start()
> - track dirty pages
> Changes from V3:
> - don't try to use vmap for file backed pages
> - rebase to master
> Changes from V2:
> - fix buggy range overlapping check
> - tear down MMU notifier during vhost ioctl to make sure
>   invalidation request can read metadata userspace address and vq size
>   without holding vq mutex.
> Changes from V1:
> - instead of pinning pages, use MMU notifier to invalidate vmaps
>   and remap duing metadata prefetch
> - fix build warning on MIPS
> 
> Jason Wang (6):
>   vhost: generalize adding used elem
>   vhost: fine grain userspace memory accessors
>   vhost: rename vq_iotlb_prefetch() to vq_meta_prefetch()
>   vhost: introduce helpers to get the size of metadata area
>   vhost: factor out setting vring addr and num
>   vhost: access vq metadata through kernel virtual address
> 
>  drivers/vhost/net.c   |   4 +-
>  drivers/vhost/vhost.c | 850 ++++++++++++++++++++++++++++++++++++------
>  drivers/vhost/vhost.h |  38 +-
>  3 files changed, 766 insertions(+), 126 deletions(-)
> 
> -- 
> 2.18.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
