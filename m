Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C320AFC37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8e9TDRGKsGu2Uq5FwcfMHtzUw8wegQ2WM39Q3l/1Mis=; b=suFZN9WX/tfrBn
	U95n9Je6bz7LF8xU/rsnowhJeacSInZxoOVOQXqB2WhOQKShX5leSJ5Z3sTLS3LYG9pPxeLCC+q65
	R4k0rATZcv54Omo+oj1goSxCcvd6QO4nFWm4wyAsABzf01MkTeNOvQB4bIlNIobqML/MFKrLjogxo
	e4DfffwmJPgaNrbK3t6adAvoUjp85FLeD48adAFr0JmujxbL4Eva3xwM2UwX5PLCnh0xgTTyZ5dQC
	CuwNEtHDXTTUz8Yw4u0rBiIGoyEBxiscYkWqctPbCPl4Tvc8QiJRlReCiBvFT1PwzfkQ7MEDE9oZP
	eDu5+Amnb1u4RM28tLkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81Qn-0003ij-6v; Wed, 11 Sep 2019 12:09:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81QX-0003hw-St
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:08:51 +0000
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E08B2A09D4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 12:08:49 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id k68so24772502qkb.19
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 05:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=enh0zIvHZGYnRPPPLW+6aSKLca0Arx8DkKfrIqKoLus=;
 b=TVFQ1qj811pKOLjGqbItCtqDT4xZpxcieGUDbDMvlVq0HdVn6HtS2C14F80tYxMvKq
 NeKD72kWPMWclsjybZg11MejXo4Pxr3fdZ97+U7cIMjO9my4EdKaFjPMLLEiUzIhjK2N
 6ndRe8kKsAwVm83nAigD/3MXksT4KSBEpSacks0by4Ha16NPcNIdZF7ymbPjID2AJdtw
 J90NTQYctuf8FC7Gc3HoyUuXOBH6kO4LaPwH+M+MPKocLU1TaWy2foPY7Zb4ggLy5MI3
 2V1dRwbxZARzQme1gFsb4Upobmb9zPvo4K1ZR/px2QalFHYBqsUO29e5KgxxxT9zM9vN
 QDzg==
X-Gm-Message-State: APjAAAWhpWmh7pK0icmw6enCDI05bv1w6lZz7zeFd+eSJEzYT/4g56L9
 goBE9SMFHICL3ys5phUI/O72DaXxREbmCwousx3CEJxVEo84MlmiYaR1kxaskLlyGuw9m+4DBKC
 jedJzU1MaYFzDZT61gQEmX/5OhZ4bNnNbZuo=
X-Received: by 2002:ac8:3564:: with SMTP id z33mr18649579qtb.291.1568203728299; 
 Wed, 11 Sep 2019 05:08:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzeft2UuPFTSdxyb4bOFOk8mjCIC7+wIdafGuW+Aj+RlGHxCc75dN/Ohnmz48toLx7v9uY0nw==
X-Received: by 2002:ac8:3564:: with SMTP id z33mr18649552qtb.291.1568203728135; 
 Wed, 11 Sep 2019 05:08:48 -0700 (PDT)
Received: from redhat.com ([80.74.107.118])
 by smtp.gmail.com with ESMTPSA id x12sm8228721qtb.32.2019.09.11.05.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 05:08:47 -0700 (PDT)
Date: Wed, 11 Sep 2019 08:08:38 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190911080804-mutt-send-email-mst@kernel.org>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911113619.GP4023@dhcp22.suse.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_050849_974537_CC3DE627 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -3.5 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [80.74.107.118 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 Rik van Riel <riel@surriel.com>, Matthew Wilcox <willy@infradead.org>, "Wang,
 Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 01:36:19PM +0200, Michal Hocko wrote:
> On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> [...]
> > We don't put any limitations on the allocator other then that it needs to
> > clean up the metadata on allocation, and that it cannot allocate a page
> > that is in the process of being reported since we pulled it from the
> > free_list. If the page is a "Reported" page then it decrements the
> > reported_pages count for the free_area and makes sure the page doesn't
> > exist in the "Boundary" array pointer value, if it does it moves the
> > "Boundary" since it is pulling the page.
> 
> This is still a non-trivial limitation on the page allocation from an
> external code IMHO. I cannot give any explicit reason why an ordering on
> the free list might matter (well except for page shuffling which uses it
> to make physical memory pattern allocation more random) but the
> architecture seems hacky and dubious to be honest. It shoulds like the
> whole interface has been developed around a very particular and single
> purpose optimization.
> 
> I remember that there was an attempt to report free memory that provided
> a callback mechanism [1], which was much less intrusive to the internals
> of the allocator yet it should provide a similar functionality. Did you
> see that approach? How does this compares to it? Or am I completely off
> when comparing them?
> 
> [1] mostly likely not the latest version of the patchset
> http://lkml.kernel.org/r/1502940416-42944-5-git-send-email-wei.w.wang@intel.com
> 
> -- 
> Michal Hocko
> SUSE Labs

Linus nacked that one. He thinks invoking callbacks with lots of
internal mm locks is too fragile.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
