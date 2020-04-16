Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2F31AD140
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0JuhWOmTANdfQ9nFwWeAwwva0JL8e9Xe6VS4JlA3yk=; b=r5bJumZC6TnmbM
	UhHrRpku3ZBdva9JU2kuqKuRM3IynH6SJx8osNCzHyrMd/f/smMfGs//WVQDTR1tBqnF+wFwxLRqU
	GVwhcjY0N+LlPLtAnQ3NuJvKHuNGmoP867wxR5ho4+VS97Dbg4c7eSBLAMZ3BdGLNFuNi4DYu3cM9
	iKx/YRnmnLRwytrE+9wklzn+/CjxlfxktkYPSi7bq7iLLVmVNg365KAJzoRL1V9Fnk0qrLgGOe9KU
	/P3c2Pn6Qk5czK+evpjNFFL5szIDKYjJxGyj+y6jn5QWPSXF7nguG2Gdp0N2UbiMyE1m6T94OXDrq
	5HiWZnk2ADpiTa3l8QHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBGh-0002hS-Rd; Thu, 16 Apr 2020 20:37:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBGZ-0002gJ-2a
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:37:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id x26so2184206pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XptGLsb8LK835cBV0jSCf0HRG/zsBSED6dv7tPgulp4=;
 b=gnCYkWmGETLB8PFSLV04Wdrz2FK+gEIIVYi1koqv0Kj68T1sE9a0zKATXAPY7gyzfJ
 suAROh/dNMoI6pHy/mCCmAEukmmvuLcuT+oRiOR7pSsJ7zs8in52Gebp1M1SYorAU4tK
 gOw3D6aDwjxZUg6c2JW6Y26Oj3CTSIyaIex5HlRUwrN0Akr9mc2rJN/ETJ63AkMWNaPZ
 lBqmfTlQr2tQLv3hxk3korpwrPMIzUOkCHKM9MiAc5EcYNrnyoXofMkm1N6eYHhs/DeF
 913mMDnNGshbbDlgR/ygTf2Uto9ROB2t1oEKoFobtuWYnROIBcT0nnQEOaLeZGRWafc8
 pefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=XptGLsb8LK835cBV0jSCf0HRG/zsBSED6dv7tPgulp4=;
 b=EtNn0cJ21adLPt2hCeC5SB9P1L38E3ht4MPOfnY2rFjLtelgvKkBKwujv0/FpZdYUm
 owlcdqokBONV1mOtgp6dLH3LzwrrR0T8Ys2x45sQZKMdtVLB+HnTsiuE4uBhB2k6qx9o
 Q88TpmmLaFFkTh7AFRiqBMSFTWtj/4tVvM6yqw5AxouxhM+4fOATfeV4qCgTuoZUyOFR
 H2wIJ2BtwomlkIYl0Jl82sYyZSjB25M6oJ2BT/bCkCyunueBUUf1NbcRdIFoeeGoe4p+
 0BnYRWgZ551E5B6Wwm38FJiIMzuSH9stwqvBajZRl5iCSFIbYSp0yeKp/sO/u1JRCt5u
 bLDg==
X-Gm-Message-State: AGi0Pubtwg/13kHFtG1UzQCW6RhNyZJsQO4cVJqEtDrh8d9vBID0FhYH
 HFj2wRIpqvvFUUnEFGPkqG8=
X-Google-Smtp-Source: APiQypLz/G622vMAZI/1t7tx6iXdrAiprqdhsptFvPk2bcCnaQJR//IYq0Xxli2CBTatOLYd6eCB1g==
X-Received: by 2002:a63:2e03:: with SMTP id u3mr15186804pgu.121.1587069460712; 
 Thu, 16 Apr 2020 13:37:40 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id u13sm3654978pjb.45.2020.04.16.13.37.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:37:38 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:37:36 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200416203736.GB50092@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
 <20200410023845.GA2354@jagdpanzerIV.localdomain>
 <20200410231136.GA101325@google.com>
 <20200411072052.GA31242@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411072052.GA31242@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_133743_141232_CF7C3ABC 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [minchan.kim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,


Sorry for the late.

On Sat, Apr 11, 2020 at 09:20:52AM +0200, Christoph Hellwig wrote:
> Hi Minchan,
> 
> On Fri, Apr 10, 2020 at 04:11:36PM -0700, Minchan Kim wrote:
> > It doesn't mean we couldn't use zsmalloc as module any longer. It means
> > we couldn't use zsmalloc as module with pgtable mapping whcih was little
> > bit faster on microbenchmark in some architecutre(However, I usually temped
> > to remove it since it had several problems). However, we could still use
> > zsmalloc as module as copy way instead of pgtable mapping. Thus, if someone
> > really want to rollback the feature, they should provide reasonable reason
> > why it doesn't work for them. "A little fast" wouldn't be enough to exports
> > deep internal to the module.
> 
> do you have any data how much faster it is on arm (and does that include
> arm64 as well)?  Besides the exports which were my prime concern,

https://github.com/sjenning/zsmapbench

I need to recall the memory. IIRC, it was almost 30% faster at that time
in ARM so was not trivial at that time. However, it was story from
several years ago.

> zsmalloc with pgtable mappings also is the only user of map_kernel_range
> outside of vmalloc.c, if it really is another code base for tiny
> improvements we could mark map_kernel_range or in fact remove it entirely
> and open code it in the remaining callers.

I alsh have temped to remove it. Let me have time to revist it in this
chance.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
