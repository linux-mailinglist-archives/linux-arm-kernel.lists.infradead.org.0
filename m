Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76C91BB637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 08:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snB+NNd/gV7i9V5gqSsZyQ2yPeRkSvMs6eBjpfdqONc=; b=JvjjW5N3dSvSNd
	GIug456dFp/34uu4ZVNmnNSwb7YU2JB1ZIUf6Q/TfVP+ijHHcuKRqQ6g1BZ0XCNAqxikfsk25rA2+
	Qp7x3RS1lLenHp3IPI7Mb2MkYacODr9KKcasFX5Xv4ASvf8zbid48p8BUJETOdCApkc9ovIKdKaCr
	npKFdmFelgYLim3TWm77KhZUrTMhoYfHSeLsOphKeTisYGQHnKUKt9Ng5cHiRNdgo6LUmxycmreL5
	t1QgjIknEu+GSqWco084f8eLVExNPln9m/cJwcRiXMqttt4SEbiBxXIW+mLn56tRbmWvdKBKKQXQD
	Q0ss7X+0aBpoe4VIA/iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJSq-0006Q2-FB; Tue, 28 Apr 2020 06:11:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJSi-0006PJ-8n
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 06:11:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id d25so948975lfi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 23:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fjR2WXsg1WuSqX8WD5c+nhnalPJJVRAV+Xn9CSGG1bY=;
 b=cdP0uVyDLEuTHWB46kef943mTKZiv/Grb+3pidmYUxbnYjhqmBibE45csv9aQ88lot
 AJ3IDfIwUFyKZ0ltlC/7Xz/eIBrBQ9fKuiYosWuO9jxHiT7plltOgrcHcyVpxe7QmbFJ
 +/ZAj1QUE0+7MbjnRNVVxQdmpxWa3++ZAydGa9ZaoAwMf5FQMxsgbkOQjpNYPiBk1sY+
 4yiGOkjuYSnheFG1MggDO6unAQSkGnM4raGCF4V8kQa2tBeFbthnB+CXJOmDktWBOEtl
 eTb5TN7/Nnq4dr6LqUU6zAA7IbwWt3mzS4YUp1+NK/1MBrYrdLqkTHc4pCWe0R/ARh+9
 +0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fjR2WXsg1WuSqX8WD5c+nhnalPJJVRAV+Xn9CSGG1bY=;
 b=nsz0+OHZBifnZ9jyCHe5FhvooVFAW3GFpiHGsq8PPRqjUcSCcOVSWP4akrwoDIPFoV
 +UvMtzdTBCNargFbVYoglJnyaywVlVi5duLN/dRrlRsX+j7/uyXZxXDOcl1PybonXUMX
 9deI0ez5Ed4l7JAtPRykNmQS7DUcW5BJfwhKGIsMDZpy4X2DGIyi8iCXbLfJERpIJsLu
 Wq9cYbWP60eGkwXKolE4chS8Ad3FuicaVC8BdXG/gVok1KFCeU+UjVM5Wt0GyRCw31p0
 8Q2R3iNKIiEI8tN1us4yV6WrxQt0oxtGsMLZaM7kElgOFNoWf9QBXXcUC7Hv5GZsiw3m
 k05g==
X-Gm-Message-State: AGi0PuZ1+DXcLUCp60IokyIX1W71uoNIUsTU/3U4bXSiuK9e288BTt3+
 FA3GqrptYeOyrqz88oKXvhG9jjBmLqO2AlWacwt1cw==
X-Google-Smtp-Source: APiQypLIie/TYTkh1e9E9TFpjYomoyBZT+NMzXY2V+G8zBhTAdtjDWAqu5o9w5HGdoenyRP931MOYycHK/t36nWbs+Q=
X-Received: by 2002:a19:e04a:: with SMTP id g10mr17744131lfj.164.1588054277719; 
 Mon, 27 Apr 2020 23:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
 <20200428032745.133556-6-jannh@google.com>
 <CAHk-=wgBNSQhH1gyjo+Z2NFy4tOQnBQB4rra-jh+3XTpOjnThQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgBNSQhH1gyjo+Z2NFy4tOQnBQB4rra-jh+3XTpOjnThQ@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 28 Apr 2020 08:10:51 +0200
Message-ID: <CAG48ez3kLgXQBOnSJJ+XuYpM__XnKc_AqJMoiPBhFbTdmoWxag@mail.gmail.com>
Subject: Re: [PATCH 5/5] mm/gup: Take mmap_sem in get_dump_page()
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_231120_333847_B1FD8BE6 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 5:50 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Mon, Apr 27, 2020 at 8:28 PM Jann Horn <jannh@google.com> wrote:
> >
> > Properly take the mmap_sem before calling into the GUP code from
> > get_dump_page(); and play nice, allowing __get_user_pages_locked() to drop
> > the mmap_sem if it has to sleep.
>
> This makes my skin crawl.
>
> The only reason for this all is that page cache flushing.
>
> My gut feeling is that it should be done by get_user_pages() anyway,
> since all the other users presumably want it to be coherent in the
> cache.
>
> And in fact, looking at __get_user_pages(), it already does that
>
>                 if (pages) {
>                         pages[i] = page;
>                         flush_anon_page(vma, page, start);
>                         flush_dcache_page(page);
>                         ctx.page_mask = 0;
>                 }
>
> and I think that the get_dump_page() logic is unnecessary to begin with.

Ah! And even though flush_cache_page() is broader than
flush_dcache_page(), that's actually unnecessary, right? Since the
kernel only wants to read from the page, and therefore e.g. the icache
is irrelevant?

Yay! :) I did think this was a bit gnarly, and it's nice to know that
this can be simplified.

(And now I'm going to avert my eyes from the GUP code before I start
thinking too hard about how much it sucks that FOLL_LONGTERM doesn't
drop the mmap_sem across the access and how much I dislike the whole
idea of FOLL_LONGTERM in general...)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
