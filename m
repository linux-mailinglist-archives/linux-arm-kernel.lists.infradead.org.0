Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA1A7311E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7LMpXkzhuhYj318WYnDQDyp+n1lTfyR8R5BS6oApxo=; b=MqMPwHlZBwjmTW
	SJSohWSpiKZKjuNPxJd9CrjjV71HdTVob8VsUzwpsvo6MDWiE8YGuEfOfmDIm0QIlmLw5cp62F/0j
	Bs3P8kp1/2gSm2bkIixSv+a2Z2xNcEidMPjglggqPeamKAFlP7wT3GE0JxhA2NP8vaIv1VC6rkJmi
	rBs17+YD8tbuGNvz5yDRLHq3RoAzyJDdaKcTNwNWZQVRaSAE7ef8d13wf67olT0T0HdLHtVMhEL+v
	AhsyWzN8VoCX0u+f/wp6dMn3oVpDa8hkEEN88PCkTCQZTdgXuLiNZtdSSkC8HuyYYS0f5w0Jx9RdD
	xhGzQ9bOel1VyZT/CIBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHvs-00025m-QJ; Wed, 24 Jul 2019 14:07:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHvh-00025K-0k
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:07:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 449AE28;
 Wed, 24 Jul 2019 07:07:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7DA53F71A;
 Wed, 24 Jul 2019 07:07:37 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:07:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
Message-ID: <20190724140735.GD2624@lakrids.cambridge.arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190723101639.GD8085@lakrids.cambridge.arm.com>
 <e108b8a6-deca-e69c-b338-52a98b14be86@arm.com>
 <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070741_153974_0AED3FD0 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 linux-mm@kvack.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 03:57:33PM +0200, Thomas Gleixner wrote:
> On Wed, 24 Jul 2019, Steven Price wrote:
> > On 23/07/2019 11:16, Mark Rutland wrote:
> > > Are there any visible changes to the arm64 output?
> > 
> > arm64 output shouldn't change. I've confirmed that "efi_page_tables" is
> > identical on a Juno before/after the change. "kernel_page_tables"
> > obviously will vary depending on the exact layout of memory, but the
> > format isn't changed.
> > 
> > x86 output does change due to patch 14. In this case the change is
> > removing the lines from the output of the form...
> > 
> > > 0xffffffff84800000-0xffffffffa0000000         440M                               pmd
> > 
> > ...which are unpopulated areas of the memory map. Populated lines which
> > have attributes are unchanged.
> 
> Having the hole size and the level in the dump is a very conveniant thing.

Mhmm; I thought that we logged which level was empty on arm64 (but
apparently not), since knowing the structure can be important.

> Right now we have:
> 
> 0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
> 0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
> 0xffffffffc042e000-0xffffffffc042f000           4K                               pte
> 0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
> 0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
> 0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
> 0xffffffffc0433000-0xffffffffc0434000           4K                               pte
> 0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
> 0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
> 0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
> 0xffffffffc043a000-0xffffffffc043f000          20K                               pte
> 0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
> 0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
> 0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
> 0xffffffffc0449000-0xffffffffc044f000          24K                               pte
> 0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
> 0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
> 0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
> 0xffffffffc0453000-0xffffffffc0458000          20K                               pte
> 0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
> 0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte
> 
> with your change this becomes:
> 
> 0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
> 0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
> 0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
> 0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
> 0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
> 0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
> 0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
> 0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
> 0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
> 0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
> 0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
> 0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
> 0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
> 0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
> 0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
> 0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte
> 
> which is 5 lines less, but a pain to figure out the size of the holes. And
> it becomes even more painful when the holes go across different mapping
> levels.

I agree.

Steven, could you align arm64 with the x86 behaviour here?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
