Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E012D14C099
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 20:07:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrdHLMkjCzGZ44fubvJSoPx2gO1kr2qPWT7aTn9UFT8=; b=c5saFXnl5FprY2
	yjmtUTaoqSyX++za0LWclVeez5y7mPoz6/RWpaU7YB2R5xDNb4v3Q74DrHBqyprGvCwGHRONn2sXi
	SDUMCMXNypbjSK9xXIT8Pe5Ikgu06m6KUsu9DXuG9Ocwq/tOWjXrsxp+y6hlcvsXFlNMG2HIiWlZS
	k+0tiplTZH0af94wW/KWVyBFbrNiodVdI3mqXjnMXbK+/nvC+VAbfTVzrCyNB3EY/RoSRerpb1n4B
	D9+antO/1eyoVATN12N0X/bcGyc4HhTabGp8Q0Ty/1bp28ayf8ZPtpRqlmkSJYbcZNgrxbRKjf44P
	/mVBkTTYDcqxdcDPczxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWCq-0000ef-LJ; Tue, 28 Jan 2020 19:07:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWCg-0000dP-OS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 19:07:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id d9so11132377qte.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 11:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ZSIv5JurPysNixS3YWSkJ+cqh/2vHLB/JAVHcGR/4Zo=;
 b=rZzl+qEAYLTBtMp9ssPK9Ejc0IQXfIjcMlCwc8RZJ/Poapm8WZnOmSKjpPGU/CRTsz
 s49j6egQsNv+bATXo82MSoiXpQi3N3QHvgnyq6VfzcooOemBU6djud+xflwQG7RGqoPc
 L5M9+QbKcXOUUg0U09rJgFyuy4M0BvZq0fS3S49pfbq8xDC/uRvuAV9T3NJ2dNoyS3t+
 r0VLb2Wpo+pntt9bwsRP15mZe1cOZg5vc4u8F4VRwv/pqDLOhfKGv0d7nyNY7llsOI2p
 sOz+jYkbLFQ6oe89WgJeyG/Pa023GcDt5lsRxS1gRMmySONFqvaE1MUA5AHjPWyKvzIK
 /yww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ZSIv5JurPysNixS3YWSkJ+cqh/2vHLB/JAVHcGR/4Zo=;
 b=kfLeuTy/IwqlYvSNP4KF4fHocPJF3ouB/wy/oEMauWdfS2/uYDGuH9oA9iG79vhPrm
 GcOPfdTAYDHw9mDyvLRLTr+6v4aztyHim+vJg3mtifcNEELZMkCOwdV2K173uhyHiRnq
 G/2SU5Mhl9OOjc5vCcJAWnc5H+PQcNPxol2VMSGaU4qVC3mLf7bVuIqgLZ9MeuJcG60T
 T1a6sVCVF2hpTUenVYnnfXrPnALT3pIiX5pJduwM6xyQqkNo0nBn9GOEo+bUn344Hn/r
 Ogp4ZS38uwtgUO0iNnxIF7ZN+0bQG7nqMDRdN07aMkdDUx+5f8CwkgOAkLACOu2cFDud
 4Byg==
X-Gm-Message-State: APjAAAU7cqJ++kAaRDCcYi9JR9CbjXaRwqw4YXaJcPmWih5NUzI3KSFq
 FGyQmd5fuHi+OkJMv/h9yrzp3A==
X-Google-Smtp-Source: APXvYqwfcEAdtsZ+rCamZtj0MvoXkHQbqikImH2K21Z7lN9o0ZlEjUgJncOajxaQBGEujZOyMJYZkQ==
X-Received: by 2002:ac8:2b86:: with SMTP id m6mr23384923qtm.190.1580238432152; 
 Tue, 28 Jan 2020 11:07:12 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id f7sm13273329qtp.86.2020.01.28.11.07.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 11:07:10 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Date: Tue, 28 Jan 2020 14:07:10 -0500
Message-Id: <69091BA4-18C4-4425-A5E2-31FBE4654AF9@lca.pw>
References: <20200128174709.GK655507@arrakis.emea.arm.com>
In-Reply-To: <20200128174709.GK655507@arrakis.emea.arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_110714_824009_BB03C714 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 Vlastimil Babka <vbabka@suse.cz>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dan Williams <dan.j.williams@intel.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Jan 28, 2020, at 12:47 PM, Catalin Marinas <catalin.marinas@arm.com> wrote:
> 
> The primary goal here is not finding regressions but having clearly
> defined semantics of the page table accessors across architectures. x86
> and arm64 are a good starting point and other architectures will be
> enabled as they are aligned to the same semantics.

This still does not answer the fundamental question. If this test is simply inefficient to find bugs, who wants to spend time to use it regularly?  If this is just one off test that may get running once in a few years (when introducing a new arch), how does it justify the ongoing cost to maintain it?

I do agree there could be a need to clearly define this thing but that belongs to documentation rather than testing purpose. It is confusing to mix this with other config options which have somewhat a different purpose, it will then be a waste of time for people who mistakenly enable this for regular automatic testing and never found any bug from it.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
