Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C921A3788
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxjOWu6uSvtffg3vdsYMjTZtzSV0OJrXWlTaKGuWahI=; b=L5Uo3ngEZT7d+8
	83EbWTD7tHC+kCGBQVkPtzIhXBpTgME3JhVYQcGlujp+DEvdZo4wek1xDvOII3k/O4d0vVLR/N9Vx
	xz7rwP8JWALiTcqJDdQLvVkKwE+QV3S+rR4bD7TPwlTqN3HI2YneLsro94Hv1WkUWju1kgwIe1BcB
	7w+pe/Nmsn9DPMW7bKmeJ2/W/3q+1sCybhP/1k+EeKgSEBC4CZLZEDpbyqHV/KrhgN0gPNrVBE7ds
	RTFG5AotCmPCFB7cUA9q0IfJ4BEx0w4MoHqUBwoBM+mey+Hb915s3hESu3yqo+O7t7TuT/UiHorEm
	sgFmu7TI6TjRmhHXBFqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZTb-0006kP-VT; Thu, 09 Apr 2020 15:52:23 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZTV-0006M7-7V
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:52:18 +0000
Received: by mail-wr1-f65.google.com with SMTP id v5so12467480wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:52:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eqkR8PSND6qViZd9vmRT63/nOL3pGElbecF9kS9AV5s=;
 b=lZrauBi5Ub/xXhQv+1MbcqpBSJ7bkVccVg4NBApRnTidtn0SDvYyla/hUtsjOmMe8n
 gGel8GXAQn5P8D+iuCjqx9RM2QswFrSm74+3X7d1fCm0P6kaMXoMLCQbkJuNKmDUvd/R
 Vz5Dgkb7otEDQyFSx0ta69DyRmsO2rbiKas1kS0fEYLtw2g4iMjIZ0RFO0BEtvmszzz1
 5dekpzq6ABwUL2dae3vG14/RTxhuKWCwLGTnP0tB/rmJQ/MSkid0nGq+NajXzz3MCg8d
 1aVL1TUyXL+0uPSpnwxzaSAjgcgoNezwVIhiI2ZLDEOj+3fjEvtz/c7NQqfjtP4MNv7k
 0EwA==
X-Gm-Message-State: AGi0PuZ9C6ptNZzg0SIW/mbRJhSFsVEh8xcK5ry8Ggzwaqc5zBQ4EKof
 nMO3+v64ZiI3aHYua7MtuEA=
X-Google-Smtp-Source: APiQypKMJHF6OiHO4wdgZ4uGElDczTXQUdaiFhgSzp0EipiSdhIJoRoqAA6vF3j45RxLstvXaIP8Cw==
X-Received: by 2002:adf:8b5c:: with SMTP id v28mr13870834wra.98.1586447532733; 
 Thu, 09 Apr 2020 08:52:12 -0700 (PDT)
Received: from debian (44.142.6.51.dyn.plus.net. [51.6.142.44])
 by smtp.gmail.com with ESMTPSA id o13sm18258592wrm.74.2020.04.09.08.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 08:52:11 -0700 (PDT)
Date: Thu, 9 Apr 2020 16:52:09 +0100
From: Wei Liu <wei.liu@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/28] x86/hyperv: use vmalloc_exec for the hypercall page
Message-ID: <20200409155209.4tqaipnwifcsrmda@debian>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-2-hch@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_085217_293548_1D4154B5 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wei.liu.linux[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:58:59PM +0200, Christoph Hellwig wrote:
> Use the designated helper for allocating executable kernel memory, and
> remove the now unused PAGE_KERNEL_RX define.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Wei Liu <wei.liu@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
