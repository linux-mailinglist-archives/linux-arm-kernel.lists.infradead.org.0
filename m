Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C82F19879D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0X6rmz6YL9uxACP210lgINF8Wy/IIdsqwpU6ZX0jk8=; b=RGoULxPr7IGG9W
	TV+EPG+y6iQVm0VmXAHvaFKxjNEbducNidMCdFbfU4tQGNfKgUBu1+bXhvAhGSyM+EIYaLZXnV96t
	/YIYVYeD9Pnf4D1JwDYiIvZHZu6USpaEvFInK6ksR2lGJ1jkP2eZ+GKZ08OG24Fw1E/l3jzBmKB4F
	b/8rWZolnWL8+fYy8oySuHxf/+bNzN+TYuQZOJW3uBRJjcBDDPpAYdfcWZbfWTY7M8UxfiUJSQ82A
	K6Nr5SYRL00L4+fbnwvgbU/AZdWEX0rWA+h+8KTdRq5602hMJ/eR7bB9c0fMUQT0nSZCGRGjqYslT
	6NUbYg/nfZEvqysC6g1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3GG-0000Mr-B7; Mon, 30 Mar 2020 22:52:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3G7-0000Lp-95; Mon, 30 Mar 2020 22:51:56 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C8F620733;
 Mon, 30 Mar 2020 22:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585608711;
 bh=EXmX9dErmlEkFgnbipzAfMRYR83Acb60UF9bDXiz0DI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=z2ihfI3sBMfsr5Wfl0ingXQoY+GET5tztqWSEKsLwaPrr7s+ZlNiSAKTokhw8O+xN
 ZHVynMZSxwgLZ5vqpo7pk6F7cOLNDYCHpT8EuVMpy6pEAuagf741mQ/aHK8qub7GET
 5sfIGbrfC8VOGI745W0EmSJ89zj6DGCdOS5BwtB0=
Date: Mon, 30 Mar 2020 15:51:50 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 0/2] mm/thp: Rename pmd_mknotpresent() as pmd_mknotvalid()
Message-Id: <20200330155150.750ef923d297c455c7b418e0@linux-foundation.org>
In-Reply-To: <2e67f1b8-d196-89e4-aee1-f552db1433a0@arm.com>
References: <1584680057-13753-1-git-send-email-anshuman.khandual@arm.com>
 <2e67f1b8-d196-89e4-aee1-f552db1433a0@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_155155_344097_8CCFE5EC 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 nouveau@lists.freedesktop.org, linux-snps-arc@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vineet Gupta <vgupta@synopsys.com>, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 29 Mar 2020 19:12:35 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> 
> 
> On 03/20/2020 10:24 AM, Anshuman Khandual wrote:
> > This series renames pmd_mknotpresent() as pmd_mknotvalid(). Before that it
> > drops an existing pmd_mknotpresent() definition from powerpc platform which
> > was never required as it defines it's pmdp_invalidate() through subscribing
> > __HAVE_ARCH_PMDP_INVALIDATE. This does not create any functional change.
> > 
> > This rename was suggested by Catalin during a previous discussion while we
> > were trying to change the THP helpers on arm64 platform for migration.
> > 
> > https://patchwork.kernel.org/patch/11019637/
> > 
> > This series is based on v5.6-rc6.
> > 
> > Boot tested on arm64 and x86 platforms.
> > Built tested on many other platforms including the ones changed here.
> 
> Gentle ping, any updates regarding this ?

We're in the merge window so I have parked this for consideration after
-rc1.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
