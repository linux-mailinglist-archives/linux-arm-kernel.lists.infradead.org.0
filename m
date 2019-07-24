Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0099E7305E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehB0dLhvYjUfLe6PUCfGiPjVeSX0WLQHslS1aJi6YAw=; b=VStiFbnj1to2zs
	h4+k8tVzFzAbhV0v3pwe5kJ+eQZCR2Is0eSeiD5l/J0Yz29wF9W+5Q1w+xWtkTM2k4IWt14I0cmT0
	KmKkkCfVK/Ydp6zFaJtrQydbrBpJ8bKBEdNfiucDGycea0PTjr9aUJMqf6j19saDCLCFnKMHbSKLg
	eSrLtjrZy9BDYMjU3og5QG4nOjrBWvzTV54qtTNd05faf8ez2aGY4hPo+fK0cGvE+89n5jrHfOaht
	hluGav6JiLmZz38TPkzp4E8lcNtY6YR25WqQR3L1qNqATZ7z9YivXRJGekWn0GEa+ZIp32rVkAwMw
	SPDfUX4zHYNUy0YeGR0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHmQ-0004Kj-CK; Wed, 24 Jul 2019 13:58:06 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHmE-0004Jg-1H
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:57:55 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hqHlu-0001CA-H9; Wed, 24 Jul 2019 15:57:34 +0200
Date: Wed, 24 Jul 2019 15:57:33 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
In-Reply-To: <e108b8a6-deca-e69c-b338-52a98b14be86@arm.com>
Message-ID: <alpine.DEB.2.21.1907241541570.1791@nanos.tec.linutronix.de>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190723101639.GD8085@lakrids.cambridge.arm.com>
 <e108b8a6-deca-e69c-b338-52a98b14be86@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065754_219566_62C0CED3 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?ISO-8859-15?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019, Steven Price wrote:
> On 23/07/2019 11:16, Mark Rutland wrote:
> > Are there any visible changes to the arm64 output?
> 
> arm64 output shouldn't change. I've confirmed that "efi_page_tables" is
> identical on a Juno before/after the change. "kernel_page_tables"
> obviously will vary depending on the exact layout of memory, but the
> format isn't changed.
> 
> x86 output does change due to patch 14. In this case the change is
> removing the lines from the output of the form...
> 
> > 0xffffffff84800000-0xffffffffa0000000         440M                               pmd
> 
> ...which are unpopulated areas of the memory map. Populated lines which
> have attributes are unchanged.

Having the hole size and the level in the dump is a very conveniant thing.

Right now we have:

0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
0xffffffffc042e000-0xffffffffc042f000           4K                               pte
0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
0xffffffffc0433000-0xffffffffc0434000           4K                               pte
0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
0xffffffffc043a000-0xffffffffc043f000          20K                               pte
0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
0xffffffffc0449000-0xffffffffc044f000          24K                               pte
0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
0xffffffffc0453000-0xffffffffc0458000          20K                               pte
0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte

with your change this becomes:

0xffffffffc0427000-0xffffffffc042b000          16K     ro                     NX pte
0xffffffffc042b000-0xffffffffc042e000          12K     RW                     NX pte
0xffffffffc042f000-0xffffffffc0430000           4K     ro                     x  pte
0xffffffffc0430000-0xffffffffc0431000           4K     ro                     NX pte
0xffffffffc0431000-0xffffffffc0433000           8K     RW                     NX pte
0xffffffffc0434000-0xffffffffc0436000           8K     ro                     x  pte
0xffffffffc0436000-0xffffffffc0438000           8K     ro                     NX pte
0xffffffffc0438000-0xffffffffc043a000           8K     RW                     NX pte
0xffffffffc043f000-0xffffffffc0444000          20K     ro                     x  pte
0xffffffffc0444000-0xffffffffc0447000          12K     ro                     NX pte
0xffffffffc0447000-0xffffffffc0449000           8K     RW                     NX pte
0xffffffffc044f000-0xffffffffc0450000           4K     ro                     x  pte
0xffffffffc0450000-0xffffffffc0451000           4K     ro                     NX pte
0xffffffffc0451000-0xffffffffc0453000           8K     RW                     NX pte
0xffffffffc0458000-0xffffffffc0459000           4K     ro                     x  pte
0xffffffffc0459000-0xffffffffc045b000           8K     ro                     NX pte

which is 5 lines less, but a pain to figure out the size of the holes. And
it becomes even more painful when the holes go across different mapping
levels.

From your 14/N changelog:

> This keeps the output shorter and will help with a future change

I don't care about shorter at all. It's debug information.

> switching to using the generic page walk code as we no longer care about
> the 'level' that the page table holes are at.

I really do not understand why you think that WE no longer care about the
level (and the size) of the holes. I assume that WE is pluralis majestatis
and not meant to reflect the opinion of you and everyone else.

I have no idea whether you ever had to do serious work with PT dump, but I
surely have at various occasions including the PTI mess and I definitely
found the size and the level information from holes very useful.

Thanks,

	tglx






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
