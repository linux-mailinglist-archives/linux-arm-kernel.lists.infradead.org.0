Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA681BD65F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioET2wIKhGM+zPQiGn5X7wKBxCZ0haCjjhsTJnfVSz8=; b=pPR8iTTbXtRSDE
	JmDD++jO/GDn4oy6unR6TAXaZt1iCFPMAS/x7Av1q8ctjc7q1Y89qXHQEiwjJrhZKXxTrytPw2NPh
	YMyRc18EfRvOgua9AJcPh4okutGoPdE4YEA5njKfkVxq1ONPG3E32C4dATkXps5dCH7jRFHj7ywQW
	2/t87BNweT9/WcV6+7aFjkyVk5yBmUl0X5ITVkTBMJWJ7UijQSyoSuyfs9mYYJUv3PzQmEW4arB8V
	fV0LDS1nQFPOhcGs27dogd2Xzx542E7Si5QMMR9YAWWLY1R0Bx3TZQmndNYAvMeS579aQlgGwJtxH
	SNl7OpbEJYz0nGu6/4MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThQP-0006wX-SV; Wed, 29 Apr 2020 07:46:33 +0000
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThQF-0006vp-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:46:24 +0000
Received: by mail-oo1-f65.google.com with SMTP id x16so215664oop.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 00:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CU1r87DEf9EDqidLSkEplO1lYUftmrsA2E1BOSxydts=;
 b=I632QD4GJoJCa42NOYJIogeVXzcA3t1nun/Lev0PJTXglgIt34AfWWkB59syTrL5L+
 oIWn1QleebD3qP7q71hU4MtooknCkdQDacodPMQkeIeblcZCisovFlV9dhbzdFLEjZkc
 dQmqjClnv17+Baend6bq8ATrZB61cd68qzV4kyE2IrpoT+oy6mlbwB1YLxMyI0pqn64g
 MmhjFwVD6c4ju+0sNX8O1/1Y66qhaJiv6iNnJqhmSe70ZQ0+3ARUToHQxg0W2mcAmyGf
 J0jTkg7EDjy1/CJxt7uRWRApw6tkv5GmBlJpqFTwP5g0EdeJhyJCdO4Yl3ATf7cvcH0A
 dZjg==
X-Gm-Message-State: AGi0PuaG3vJSQDL9icZh0lqwk1dID33vwpgpzsG3kaxKAw/8rvaUu25k
 yLB7uk0tyAWrPEjzY1eh58PIcZ5Qp1xRmI5LQKA=
X-Google-Smtp-Source: APiQypJ1jF9TjWe+vcX7uWBgHl1A6eOvqackk+9xrvO3ayUppWZISci79o2WVinUCoWwPQ4zAS5OLGLEWmUjOOFs7qM=
X-Received: by 2002:a4a:e8db:: with SMTP id h27mr26395547ooe.40.1588146382572; 
 Wed, 29 Apr 2020 00:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-7-willy@infradead.org>
In-Reply-To: <20200428194449.22615-7-willy@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Apr 2020 09:46:11 +0200
Message-ID: <CAMuHMdXDJ0dBL-JetLd2iN1gzXirf9Z29nSwEHxsVZdFzvm1DA@mail.gmail.com>
Subject: Re: [PATCH 6/7] mm: Set pt_mm in PTE constructor
To: Matthew Wilcox <willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_004623_420104_DB10C828 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 9:45 PM Matthew Wilcox <willy@infradead.org> wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
>
> By setting pt_mm for pages in use as page tables, we can help with
> debugging and lay the foundation for handling hardware errors in page
> tables more gracefully.  It also opens up the possibility for adding
> more sanity checks in the future.
>
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

>  arch/m68k/include/asm/mcf_pgalloc.h | 2 +-
>  arch/m68k/mm/motorola.c             | 2 +-

Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
