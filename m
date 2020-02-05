Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A502A153129
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrW2Defyz6ld/KtpE9qChUDod/w5h2C8f+9NI7tKlT0=; b=IPXmqGLnzn+ISu
	qS+Cjtit5rXuvEY+qm0sQ6vAmGqfJGWfy4KYgDBgaRD6Ej2stwGi91jgKIoX5ToK3qKoLEWcXSdLi
	G3xIBr42JB4y52PtjsyYX2/aiUgBw6+7Wm0wFhKfC1FqzeYWR4cHYB1teQhsbP6YtKNlzBS4i+qB8
	0j8wB07v+dN/n8MFspzeCT6sJfsf+CKpmsrhRY56Nsw2D5Q4/Df0gVGUcPjkKl1Acka6s6tAzQRjf
	NJEC2rMfAVoQVs41kROHf1jfvGpJGUI3sH/f+gvNKzwNOahEMM+616gTd1+Zwkf6dysnzTL8JGl1J
	K7A3X7zzYVQXSmqoUi3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKB4-0003t3-Df; Wed, 05 Feb 2020 12:53:10 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKAx-0003s7-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:53:05 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 015CppFf030570;
 Wed, 5 Feb 2020 06:51:51 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 015Cpn3x030569;
 Wed, 5 Feb 2020 06:51:49 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Wed, 5 Feb 2020 06:51:49 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 10/10] mm/memory_hotplug: Cleanup __remove_pages()
Message-ID: <20200205125149.GS22482@gate.crashing.org>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-11-david@redhat.com> <20200204094652.GE6494@linux>
 <5d698f94-af18-0714-bc97-14b6c520572c@redhat.com>
 <20200204131353.GJ22482@gate.crashing.org>
 <0e2f700c-b01b-8c16-99c2-2648967fc203@redhat.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e2f700c-b01b-8c16-99c2-2648967fc203@redhat.com>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_045304_087686_980A0A2A 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Yang <richardw.yang@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 02:38:51PM +0100, David Hildenbrand wrote:
> On 04.02.20 14:13, Segher Boessenkool wrote:
> > On Tue, Feb 04, 2020 at 01:41:06PM +0100, David Hildenbrand wrote:
> >> It's a pattern commonly used in compilers and emulators to calculate the
> >> number of bytes to the next block/alignment. (we're missing a macro
> >> (like we have ALIGN_UP/IS_ALIGNED) for that - but it's hard to come up
> >> with a good name (e.g., SIZE_TO_NEXT_ALIGN) .

> > You can just write the easy to understand
> > 
> >   ...  ALIGN_UP(x) - x  ...
> 
> you mean
> 
> ALIGN_UP(x, PAGES_PER_SECTION) - x
> 
> but ...
> 
> > which is better *without* having a separate name.  Does that not
> > generate good machine code for you?
> 
> 1. There is no ALIGN_UP. "SECTION_ALIGN_UP(x) - x" would be possible

Erm, you started it ;-)

> 2. It would be wrong if x is already aligned.
> 
> e.g., let's use 4096 for simplicity as we all know that value by heart
> (for both x and the block size).
> 
> a) -(4096 | -4096) -> 4096
> 
> b) #define ALIGN_UP(x, a) ((x + a - 1) & -(a))
> 
> ALIGN_UP(4096, 4096) - 4096 -> 0
> 
> Not as easy as it seems ...

If you always want to return a number >= 1, it it simply
  ALIGN_UP(x + 1) - x
(and replace 1 by any other minimum size required).  This *also* is
easy to read, without having to have any details (and quirks :-/ )
of those utility functions memorised.


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
