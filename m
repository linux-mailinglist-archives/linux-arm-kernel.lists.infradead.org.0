Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6C31A799C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjXpUXjRv2qm0PvIQx9KqGigX7Uwb2wYMKHfiOO+3Ic=; b=bo6+LDidnWotBm
	IkaTYp3wAECygl/W13GquFW3mLHbGBx5mDDO4/sbxmAX5zch/wCZzi8+EDi+6OWJZd4c4m8bDcMob
	xqF3d7jGnMeMXxojjNh5j+48gfI9FR6ErEGrLhPjd+FTgsq5xzbt4skXLJINU7b6EdhYrKELKQAiA
	5HLbd0QLTJj45AVlYBRTYiVLVmsXdhruBtoeXC2RPnHPYtaUMsNHWY7rk8lmh5OkcSuNkH8eSs4rA
	adGFNAr+24QH+z5s+wcqDYzpbJu/jNzX5eDjiaM76d+u5S2f6QMifvUQZNq69Vm8sUGx7WFDW4/y5
	ZGoiYkF3sFOkocyXDh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJos-0002P0-LD; Tue, 14 Apr 2020 11:33:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJoj-0002O5-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:33:26 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so5077406pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 04:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=KZ+sHNUWTGOOngDZlWZuibRHv6pBV5xa/Uz2LHhglIw=;
 b=VRrPqiVD/QCxdjEBbskkY+yCiShEK6wsEIXtHjLXfpvij1ltRLBYW8NzIJJmPGw7Jl
 7O9rXprSSg2KypN2/n22gPbfrV2ko9yTd5ZQA5X2LQDSyGFUWQu8QBnphH70gUe+/FRK
 5/ysYWz68GwkQi8JYoDLAb1lhU/6pBp5yLlGMV7SiRr2jMJHGt/nW+uAjgiUYV7ycto8
 eFxubCIicj7SXfgr/8LiQbyXdkpfNE6H1TDEa73cP7OLaDzRMX9MMI1VYP3Q3GlNdo69
 gNWUpXzn33RucYnWizv9TVCwAa7EJYfdk5B6bGls6Fic9fwDW2teTKTU4yxceD2TRnfL
 dySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=KZ+sHNUWTGOOngDZlWZuibRHv6pBV5xa/Uz2LHhglIw=;
 b=IAHHOWaSwThPwttQnzU+chys7XjVsrsN6Gg8qm6mKMcI5L0h1n7Vsr/y57RFvR3nfX
 3Omk+y7uv9GWPqgUhBjbrU8sHLyPu6dmthNhFjuGsCsF3+IdbcJ03LHXtTCojeIWCI+s
 CzGd6ZRN83ZRE2gibKKR4FtrDOVZa9seHgWslOKzb1qKGSkPX8aH5myet0l5B3PdVfjp
 zm2xZiLKpUQKfcMmqbYIHe9zWaSC7+eLIMIZRA1xs2uia1NEu+21XrtydvykZ3HjGyN7
 up7zeghA4qI2318a5rh+1sPwViZmhE7Gt67ecze9LHcl7KQ9XYfjRFM+Uw8AZ5R2ZyyW
 RBoQ==
X-Gm-Message-State: AGi0PubqsNlQ5EntE7khynlrAAC02mF/yVxnSQGoP8talpQJ/2g5azcA
 NrlJEq9j1XPc+0eSvD+T6Xc=
X-Google-Smtp-Source: APiQypIcyr6/I0Kkbv3wlFcU4/Xr/0wS9p1hSr/PXKwlPWpCeFL0ysIODdUC3n5T/abK9CdK/6LdFA==
X-Received: by 2002:a17:902:6a88:: with SMTP id
 n8mr21744267plk.292.1586864004572; 
 Tue, 14 Apr 2020 04:33:24 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id w2sm11023334pff.195.2020.04.14.04.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 04:33:23 -0700 (PDT)
Date: Tue, 14 Apr 2020 21:31:49 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 1/4] mm/vmalloc: fix vmalloc_to_page for huge vmap
 mappings
To: Matthew Wilcox <willy@infradead.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-2-npiggin@gmail.com>
 <20200413133444.GM21484@bombadil.infradead.org>
In-Reply-To: <20200413133444.GM21484@bombadil.infradead.org>
MIME-Version: 1.0
Message-Id: <1586863573.ufpx8o7f0i.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_043325_643551_1C168799 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Excerpts from Matthew Wilcox's message of April 13, 2020 11:34 pm:
> On Mon, Apr 13, 2020 at 10:53:00PM +1000, Nicholas Piggin wrote:
>> vmalloc_to_page returns NULL for addresses mapped by larger pages[*].
>> Whether or not a vmap is huge depends on the architecture details,
>> alignments, boot options, etc., which the caller can not be expected
>> to know. Therefore HUGE_VMAP is a regression for vmalloc_to_page.
>> 
>> This change teaches vmalloc_to_page about larger pages, and returns
>> the struct page that corresponds to the offset within the large page.
>> This makes the API agnostic to mapping implementation details.
> 
> I'm trying to get us away from returning tail pages from various
> functions.  How much of a pain would it be to return the head page
> instead of the tail page?

Well, this is a fix for the interface for HUGE_VMAP stuff so it
doesn't really make sense to change the implementation here. If you
want to change or make a different API that would be a later patch, no?

> Obviously the implementation gets simpler,
> but can the callers cope?  I've been focusing on the page cache, so I
> haven't been looking at the vmalloc side of things at all.

Well callers that operate on ioremap today (and vmalloc tomorrow) won't
cope, because they're expecting a base page. If you wanted to change it
I suspect the way to go would be introduce a new function and move
everyone over individually.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
