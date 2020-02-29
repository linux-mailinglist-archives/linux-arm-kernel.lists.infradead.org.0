Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7500B1749BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 23:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyASmU4jRvywrUIQ9qlC98uf/tHMJO4EsJX7WQARBew=; b=h0DkfOkpWOrS/y
	O81tXCZFscjnbtT2pQtGv3ZpysGMoS941c4jC9nmX0yB4A7JKlVNFIEqVDpOrM/EXnZNw7XBPEMbT
	W0MfyimIgOG4XrvKk6Ch5wZFT+sXlt8EztvFYujEdmOi4GNNLkwfQDk/EsRMPTDXj6lIsXY+eg3G9
	uF8s0d42K5y0uuEyio8hhG2Ndp/Y0TMaVwozHoBYvjN2n/51QW02eWovXXAmUQNLX8xDkxQX7C1/1
	AormlEQg0KopniIh2j7vp4+wrrQh3QU2nbswjMhn8nIaKecF/BqO3GJBRysaPoQ8R1zuhPYT+PzyX
	pRNDr7d3pmAqGq+kImsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Afs-0005Kr-3u; Sat, 29 Feb 2020 22:33:32 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Afg-0005Jp-U7
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 22:33:22 +0000
Received: by mail-oi1-x243.google.com with SMTP id g6so4928356oiy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 14:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0+qFmqhcgb7jhEPbeVLEVdCHOr+If3XHxdqQ1tb+5pc=;
 b=MJlh0jh6fKGmlMf8QKHfSMGKxkzGHEeUxIKuMK576jnOzp5ajBbWFd723+Nwz5sX5o
 kd5kFB1Qa4nMK4C2Quz1EtosMFhbFGty2TrTrSeM0926YL1M9TjPuncmtlZef3BqKcKO
 0QMDkTU7/GfTsJIR/w5n5LoqIVS0h8Ha+vMH2bvx31vmcGio+VmcVwwkaawh8iuK3FDK
 B8oJ2LCRKfwY4UJPa+Ufg0yoRxTMpdzcD2JzNOx//OiTA4E21r9KhphDTjUvXXJpa4mN
 qph+2qengVBm0C0Rc0eQp7M69RV9q8SQixDZKId1V2L1G6rpoNj9Qc0++zW1EeGd/ZTO
 X0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0+qFmqhcgb7jhEPbeVLEVdCHOr+If3XHxdqQ1tb+5pc=;
 b=kLf6+oV3GWW54OfLmBaElZ8ooz631UXHQr01IqONcmfSfi0uF6BkzWnPteFm+Kkuzp
 GLIN79zGxsOGkpGdX3J1TMP39pSc2bW99o/ozjcEwAuzZSs2RefCie94OA2021gXdiLo
 tK78KHXOLe3QW+HnZpn/kZZtEBriXKC1wHMRnpfZhlMQZ3T+iTgzQntd1ri/ussgptip
 QilvgoPe6/wbUVmmCZVzDZSpY3H7T1kko/TbjhItA93hcj5arid7uiFoCf9xp2G+COzv
 UzulKlLiv7mb3YDQiBFoiny1xNuB0pDkD4+yQ4CrMaAHmTG4tUgfuEcer+i2QDTbriNq
 JeTQ==
X-Gm-Message-State: APjAAAWX0udW3AW421dpovfv1/GiMK94FyxRaH9fjPm+1NHNTB3+Ekru
 Vpvb/H3cwG/mHkPixSbhW5jBz8YSyC5s8SXIXHzy/g==
X-Google-Smtp-Source: APXvYqyGoDfozeCQcvGtfIbG5zusEz6FXIH1C19GvJgWOw0G4+LzaZgF0KV8DfFmkR6MhUJ7WBGfGAzVDBqWpHKu+yI=
X-Received: by 2002:a54:4791:: with SMTP id o17mr6946593oic.70.1583015599612; 
 Sat, 29 Feb 2020 14:33:19 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-5-logang@deltatee.com>
In-Reply-To: <20200221182503.28317-5-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 29 Feb 2020 14:33:08 -0800
Message-ID: <CAPcyv4j=bZ5KBPp6PbViERdDe+HZpV_W6qbSJupTNAzyfiK6xg@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] x86/mm: Introduce _set_memory_prot()
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_143321_114027_10017F7D 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: X86 ML <x86@kernel.org>, linux-ia64@vger.kernel.org,
 Linux-sh <linux-sh@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-s390 <linux-s390@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> For use in the 32bit arch_add_memory() to set the pgprot type of the
> memory to add.
>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: x86@kernel.org
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  arch/x86/include/asm/set_memory.h | 1 +
>  arch/x86/mm/pat/set_memory.c      | 7 +++++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
> index 64c3dce374e5..0aca959cf9a4 100644
> --- a/arch/x86/include/asm/set_memory.h
> +++ b/arch/x86/include/asm/set_memory.h
> @@ -34,6 +34,7 @@
>   * The caller is required to take care of these.
>   */
>
> +int _set_memory_prot(unsigned long addr, int numpages, pgprot_t prot);

I wonder if this should be separated from the naming convention of the
other routines because this is only an internal helper for code paths
where the prot was established by an upper layer. For example, I
expect that the kernel does not want new usages to make the mistake of
calling:

   _set_memory_prot(..., pgprot_writecombine(pgprot))

...instead of

    _set_memory_wc()

I'm thinking just a double underscore rename (__set_memory_prot) and a
kerneldoc comment for that  pointing people to use the direct
_set_memory_<cachemode> helpers.

With that you can add:

Reviewed-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
