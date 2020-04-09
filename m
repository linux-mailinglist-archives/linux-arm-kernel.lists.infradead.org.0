Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FCD1A389B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DXEv73kuu6VytJPFL29oOINd/LQqPF4Ex+yzXENjz8=; b=R5ImZe17S5817C
	HEIuZCtBORvkNvDu4xH/Tde52alOFv/NwUgTYs8Fn1lxwp8U8hiywsKLQJB/W2Bh9DzpFRpKuRb25
	2Nu2ud2PKsl+FDBUefU+lddCvzAE53WCkUvKjpDW44tsPOm6W3Rjq7/P69LPKrvbBfPv/oCeyy3oo
	C5nSFyDpgCGZ/17kQknNAXqCYIkhf/3XmoyYlHRJasBALzsmpE3Z6ZOpBtnAyYj44+dZ5sYaDVKIw
	zl7DcqQGtZyPK91OiTF4Fw8UFVNBCVgdskRYjiJipj3l0yC2o6mWtKIOOq1pg1NIq5WcHvuy5KHdf
	hmhxIn0THmXkGVnwO25g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMafD-0004ak-DB; Thu, 09 Apr 2020 17:08:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMaf4-0004aK-Oq
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:08:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id c20so4383353pfi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bQvrRMm1xrJntOiYTsW2Lx5FztmdO0PKJyWqixStKZM=;
 b=SMSIs7zBXCYahuaxAxR+LoWlUnZeIr9zTb2pf+IjX3ssSGO4f/LJ71rs7cs+jdg3O/
 IC2318r5GGhJcELuDl/Ze0uwNXia0OcIjwna6k5blB77mj0Y4XtCiMcbIK8st3rNlQ+e
 osVfwDBBL2rIaU7lZns6ACclP5PoeUh8qegQnwkKt4YjmRM4qERNzP7oJBRDLPzgJljZ
 qy1lKCQ8rFVztGlVzfI/Rkmzy7LEt8LalUdIpP0YHvwYF+bjfC0BE4mFZcwtZ0vyDnDC
 IIFREURwImK0S68ylJtyrSaPkrzDPGZiOeOLFfr2hQJsER61wmNg7KZF/yKS5L8L3Igm
 o7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=bQvrRMm1xrJntOiYTsW2Lx5FztmdO0PKJyWqixStKZM=;
 b=rM6TjnYZ4cMJgXrMOZbtF0aI1JNPpNcHUb/8ewHq9/wsxRFJsMDpePb0bd7k/NftGm
 C4oAPPoxBsZ88ym5pzwyBqYxWs99pXmVblrPVhw00vvTrOXtPUpikH4IQYZgc1yZgER/
 M/vtq8LhixqtNw+VyTNlPRZTyOYber5MzzhoKm8t0mLCvzNiDhT8vo8behJwCu05k+Rt
 hLIShLyN/SWSN6NMVcL7W8usmU5Mjeql/nOcoTzPbNtAe74NVruG1BCPf+8ZAsSgPyqJ
 mM5B0bdaXEsrx1DzDbs1NYNhU8tzA7qDfFmBNO5GpAUbpB65W3u6v7yZdYFvaFHRcYXh
 MnIQ==
X-Gm-Message-State: AGi0PuapiIb3CgGIixRQ99D/qxwE2kpMvJlaxPTiQesK1zXyeBc7Kudl
 DDolZydqLqy12f7HCXhdBGk=
X-Google-Smtp-Source: APiQypIGXl7ptK897jLts3QdF+EDBFxPJWcYJ6uqbpmOLvOgFWAldqFqZYwLtwgtv4/3t4lh0qbzWw==
X-Received: by 2002:a63:d143:: with SMTP id c3mr401112pgj.171.1586452097545;
 Thu, 09 Apr 2020 10:08:17 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id w142sm1167934pff.111.2020.04.09.10.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:08:16 -0700 (PDT)
Date: Thu, 9 Apr 2020 10:08:13 -0700
From: Minchan Kim <minchan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200409170813.GD247701@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409165030.GG20713@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_100818_809520_CE57D199 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [minchan.kim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 x86@kernel.org, Christoph Hellwig <hch@lst.de>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 06:50:30PM +0200, Peter Zijlstra wrote:
> On Thu, Apr 09, 2020 at 09:08:26AM -0700, Minchan Kim wrote:
> > On Wed, Apr 08, 2020 at 01:59:08PM +0200, Christoph Hellwig wrote:
> > > This allows to unexport map_vm_area and unmap_kernel_range, which are
> > > rather deep internal and should not be available to modules.
> > 
> > Even though I don't know how many usecase we have using zsmalloc as
> > module(I heard only once by dumb reason), it could affect existing
> > users. Thus, please include concrete explanation in the patch to
> > justify when the complain occurs.
> 
> The justification is 'we can unexport functions that have no sane reason
> of being exported in the first place'.
> 
> The Changelog pretty much says that.

Okay, I hope there is no affected user since this patch.
If there are someone, they need to provide sane reason why they want
to have zsmalloc as module.

Acked-by: Minchan Kim <minchan@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
