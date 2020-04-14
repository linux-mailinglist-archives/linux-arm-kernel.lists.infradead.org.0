Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B064D1A700A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 02:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDvqGCR5osY3wffPK6hcAg3vyXdwsqhXEVt0+VJwOvk=; b=H+nCGrgaexnlge
	YkQJTUo3wM3r622ylOX/57WCRtSJ2c7OQ5snO5FTyqqtJj8doDwkf+l4UudAKUN9nes+3DKQAQAM/
	00E4bULT32+Dzhni7L0xXkCeN1UP+37iYXaiDEPi3S2YT21XEDpm51sFMsWSgzlqYSe2d4mLd7up+
	JmVGwM4/LocLHqlb2edNdOnq1N9xrDtj6jfIulaaWN7nYDoknUt7cxnXcFjxg1nE+w1DdAknnvsgZ
	kU/+aPDQX9F2fmBWiX1Kld53Dmofyd0p2R61TVQIEU+3sdR/0IeBuzrlGbnIYm2MxMtn37GxFHpYP
	bywYA60F+MbTOlpB92IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO9Qw-0002E8-1t; Tue, 14 Apr 2020 00:28:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO9Qo-0002Df-Bt
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 00:28:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id p8so5229231pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 17:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Iab8a1FKfuOAzK+EtN5ksWX3Ch8SBZHLkolYH18vMow=;
 b=lct5lXl+IscuWLrw6XCAopB0jz61pOOckI0TmsidUgK4aX5mFUXIL+srhSrr7xsXiI
 R858On8eqIKqa3BXB4MJdWnfFhKywElGKTmO4z+5bqMcrhqViWsYCBSTHeu5VymTDvXy
 vzDM5SQexLRHSqiZTMW5uVEwHz6m0ToMk5ffxuaUr7dFrUjGIrbFJSlBk8RtMkG1HFta
 e9YzM1vFQZlEpZx+IwYLnAg7oi80UtsWCGSGE9hdWjS2nYrQr6DSDyUzhadbwcYpuzTu
 tfVONL2lwfWuYRw4uqk4mrPTFWRAPc4c1PM/LJ8V399ICf9ZbS1MhBB39wQOxCgx1dGp
 +4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Iab8a1FKfuOAzK+EtN5ksWX3Ch8SBZHLkolYH18vMow=;
 b=NvA5vz+vpbZvBHZ3hmne12/0zZOtmu6GUFYWOd2AiEa3aebRCr0nlV18lXw37fy/qs
 po7TcvX87DXoltFErZYUmwg1jU5EVh9vg5xZJG40R6YipkwAdDDr2mJCZUr63I5W4nHB
 JNR8XvIYtkBq0jEue1yyK3v+0oO9DxhFmkX84NKBeVOv6reRDzfMaZvYXu6UcyvjnOtK
 8esZq/ZtcrSW4f6TmcJvPIytDXOOhCYG4DbH9lj7HjTuww0VyIQVA0LpYsT/f3UDJgta
 pbVbm23/+ccrLcRGgp6fte8YKJs10zWvtlvgaPPCQV5WUujwwoBBv10OeJSHh9djFwYl
 bqMA==
X-Gm-Message-State: AGi0PuYROxLvKm3jTmaFqMfGMwDy7KdJhFSBAP5VUiVDNVuLArNHKNtX
 b3yEKvVKifsYuz6/CqK87wY2pw==
X-Google-Smtp-Source: APiQypLZpjmT/ThpynRDdIZHTO4aZH7CnvngDUK8vlIGwZhBDCAfCPTuSg0ilh9qJ0MLoF72azaR+A==
X-Received: by 2002:a63:5724:: with SMTP id l36mr15697582pgb.366.1586824079677; 
 Mon, 13 Apr 2020 17:27:59 -0700 (PDT)
Received: from [2620:15c:17:3:3a5:23a7:5e32:4598]
 ([2620:15c:17:3:3a5:23a7:5e32:4598])
 by smtp.gmail.com with ESMTPSA id 132sm9849909pfc.183.2020.04.13.17.27.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 17:27:59 -0700 (PDT)
Date: Mon, 13 Apr 2020 17:27:58 -0700 (PDT)
From: David Rientjes <rientjes@google.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 0/4] huge vmalloc mappings
In-Reply-To: <20200413125303.423864-1-npiggin@gmail.com>
Message-ID: <alpine.DEB.2.21.2004131727150.260270@chino.kir.corp.google.com>
References: <20200413125303.423864-1-npiggin@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_172802_432367_B3EF4E6F 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020, Nicholas Piggin wrote:

> We can get a significant win with larger mappings for some of the big
> global hashes.
> 
> Since RFC, relevant architectures have added p?d_leaf accessors so no
> real arch changes required, and I changed it not to allocate huge
> mappings for modules and a bunch of other fixes.
> 

Hi Nicholas,

Any performance numbers to share besides the git diff in the last patch in 
the series?  I'm wondering if anything from mmtests or lkp-tests makes 
sense to try?

> Nicholas Piggin (4):
>   mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
>   mm: Move ioremap page table mapping function to mm/
>   mm: HUGE_VMAP arch query functions cleanup
>   mm/vmalloc: Hugepage vmalloc mappings
> 
>  arch/arm64/mm/mmu.c                      |   8 +-
>  arch/powerpc/mm/book3s64/radix_pgtable.c |   6 +-
>  arch/x86/mm/ioremap.c                    |   6 +-
>  include/linux/io.h                       |   3 -
>  include/linux/vmalloc.h                  |  15 +
>  lib/ioremap.c                            | 203 +----------
>  mm/vmalloc.c                             | 413 +++++++++++++++++++----
>  7 files changed, 380 insertions(+), 274 deletions(-)
> 
> -- 
> 2.23.0
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
