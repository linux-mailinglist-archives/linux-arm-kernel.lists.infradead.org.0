Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6944B190216
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 00:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4p7cB+9+m7/oTerNH4qJ3u0jKZJQBtCH+JhRFrGubA=; b=Ums2aS17qBBV/W
	JiJL2oWVbLRXaDKelN8f06FBTcnv82YZhFXAxPFLxYt7pwJydZ0DuUcPF2dtPrmYxZGmptL/r9YaD
	IZbVawpKMfQCCPcf3RQbZ0Vvl5nBF2TlqnhochPOaOAbEDrcDfyxbXYkmNouTqOinqc/YWwaHZjTw
	I/JRE8rPTd61qVYRhd3FKLDYtFiRw3Ey6RE4PZvqmnrYNQKOoZ41Z8Z/oepIR6pHHAdJ1ocF2na7d
	10ATkxQ8/SmBqZKao8OrjNh6gaq+TohGnfYWy5ST1J2bp8BuoWdb+lV6/63IPLn2fvfIJEbC9B5XJ
	0GFtq3EBkASMgKK8XZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWjT-0001XX-5T; Mon, 23 Mar 2020 23:43:47 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWjG-0001Vg-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 23:43:36 +0000
Received: by mail-oi1-x241.google.com with SMTP id e9so8356174oii.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 16:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QEuYlxaghpgWF2p5OUfw9hRKqdJnGRCmq90AXOuejGU=;
 b=JGS9qhFfhzpnjEAVbAAMHJj8in5e/nOn1IICF83YfSbXJY3qg9DEVBEwgVof62szn8
 +wcr6ReeQRfgWIdq3IXB2OeCk9osydynfhtZIMTCNHSyFiVP/P5Caj8dhLtq2BGgXDI9
 z9RWzC11+dTOKTK7uz6IWkRq0sE8ke2sODVks25xtxNeNkP0j/LZ0ZWRVSUO0ISXmDFY
 OXhQuh5V+0FA6tHkTdix9SbRKnBOQB6GwgxG+jXmCWPfN3smHYwjJomfsyJOxbvZNvce
 W9L18k9PNSoTMlcmWM5mVcddQaDKgk7ayZqZ1lqcZwPmZb1GF+ztYj4NfcNcdWQ/KL+9
 +iKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QEuYlxaghpgWF2p5OUfw9hRKqdJnGRCmq90AXOuejGU=;
 b=sNFINmZXkPYwc821DEq4Itgnv7PCvw1ItdptNyO6rHU5Bg/qBAG22gxCQkC/kG2Lne
 o7NZm9Bc1SycMsUNnJ0li99Y5aZkyWJBxCtPUzuBdfWPcxbifLE5IoTL/58Hr1HH1zeY
 8WItO5K8wANn8RvxyrLXW3Tn77hit+mBGi+h3n9AIB05zM7vA/9THwfngLCfIypfB2w1
 MsxXVqokg6dJMtah4ODfsVp2P1AC1aovSCgVXWGyfwcJ6eZDJo3ZzDFawUPV21hD7Ftd
 P56hKNod6wmOeoM2KXvUSTCX70+dYl+CsKWI7Pv5+CP1vqsgJX3QmASvEewiCfw1dorO
 ZfCQ==
X-Gm-Message-State: ANhLgQ2DUIB6qG0OjTIK4+gAgAnPSxl/yvtW/qfRQAuxN899kJ6SEMsh
 XwG7CRzrVuOwYZxFuxNLYwICyCYD6HolvJcDk3yF5w==
X-Google-Smtp-Source: ADFU+vtBxnTz2QBJIDkSVPYlpKleGGK1ca0DAH/injUpPrVGWi+vIqGYuB7A1hrRam1e7/mwSm5ajjiQswx4Jwdrhqo=
X-Received: by 2002:aca:5d83:: with SMTP id r125mr1504637oib.8.1585007011359; 
 Mon, 23 Mar 2020 16:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
 <20200318220634.32100-2-mike.kravetz@oracle.com>
In-Reply-To: <20200318220634.32100-2-mike.kravetz@oracle.com>
From: Mina Almasry <almasrymina@google.com>
Date: Mon, 23 Mar 2020 16:43:19 -0700
Message-ID: <CAHS8izMnxF9e-QDmA1WL4Kjgt=Uu0Xk64WZB1-bbvO4A+2fZiA@mail.gmail.com>
Subject: Re: [PATCH 1/4] hugetlbfs: add arch_hugetlb_valid_size
To: Mike Kravetz <mike.kravetz@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_164334_939223_21138546 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 3:07 PM Mike Kravetz <mike.kravetz@oracle.com> wrote:
>
> The architecture independent routine hugetlb_default_setup sets up
> the default huge pages size.  It has no way to verify if the passed
> value is valid, so it accepts it and attempts to validate at a later
> time.  This requires undocumented cooperation between the arch specific
> and arch independent code.
>
> For architectures that support more than one huge page size, provide
> a routine arch_hugetlb_valid_size to validate a huge page size.
> hugetlb_default_setup can use this to validate passed values.
>
> arch_hugetlb_valid_size will also be used in a subsequent patch to
> move processing of the "hugepagesz=" in arch specific code to a common
> routine in arch independent code.
>
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---
>  arch/arm64/include/asm/hugetlb.h   |  2 ++
>  arch/arm64/mm/hugetlbpage.c        | 19 ++++++++++++++-----
>  arch/powerpc/include/asm/hugetlb.h |  3 +++
>  arch/powerpc/mm/hugetlbpage.c      | 20 +++++++++++++-------
>  arch/riscv/include/asm/hugetlb.h   |  3 +++
>  arch/riscv/mm/hugetlbpage.c        | 28 ++++++++++++++++++----------
>  arch/s390/include/asm/hugetlb.h    |  3 +++
>  arch/s390/mm/hugetlbpage.c         | 18 +++++++++++++-----
>  arch/sparc/include/asm/hugetlb.h   |  3 +++
>  arch/sparc/mm/init_64.c            | 23 ++++++++++++++++-------
>  arch/x86/include/asm/hugetlb.h     |  3 +++
>  arch/x86/mm/hugetlbpage.c          | 21 +++++++++++++++------
>  include/linux/hugetlb.h            |  7 +++++++
>  mm/hugetlb.c                       | 16 +++++++++++++---
>  14 files changed, 126 insertions(+), 43 deletions(-)
>

With build fixes:
Acked-by: Mina Almasry <almasrymina@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
