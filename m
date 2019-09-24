Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182E7BC737
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 13:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pJF/gtr46G9D6th14x81xjmxlGGlLAv2iCzmM4gWQs=; b=AMGblyqs1UM3yW
	kis/nnA9J4++UWpA8+bhAtBaw+m2sf8kSdRosmuFVi1rjcIT84C9LYo2c3PS6hpGc5AepIMRsBvxW
	Q7Q7NbGS4a9Iy02wjaxg/kmw40/t0EVrj5EeFkym/euv+zzWXp5Y9k1Lt1iLgmr0v6yAPDl1ZYhxl
	RTDkU9hfmdina5u1CEQgEs1lmiBZo9kXvzw3Ka3lrIFVlG3qIplXlHNq29TNvhqudRWkG/JWaFcY9
	ZOr4G32iXzlF3txuKQTGvpjZJ57NayakdVEjniZJQatoveEiwNprPkWls6TUyH+YoydQSLB56OInB
	LYc7oL6xR0ri1njxcQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjMD-0000PJ-L9; Tue, 24 Sep 2019 11:51:49 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjLT-0000Lx-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 11:51:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id t3so1525162edw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 04:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/6kM5ATWnIRmId0RwOcRfnLcpIWKP734aWDaVWhsGUo=;
 b=ga2DmRzWY94J19ywTXc7aJlINJ/KRYQ8PGtndpIW2otrRhhwz0vdOk+0aZyvFf12zM
 XpRveudYGeGkFKJSHG8HcySuK12YIGpCUEC2wkOTV45q1k8LT1ifI5j18tohQF7m/PA+
 6K8RlpcUkVPR9/+LLhQ4mzvuJBoUuyuUhlcKKiXhgp+n7PTRkv6s71hrNtmrwMJbpl7m
 e1KH2/aooSfrmq/GY1oql/dqAZBTTajifnl7uEJSb86NOqby7WFhLm7p3odLbtelzM4m
 ZVwvJJ/+RmqA5b79C+mbE04M3aieJOA2xjgY+3pjxmiSzVw2GC4lYm0cvsm1rZytvgPU
 ruog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/6kM5ATWnIRmId0RwOcRfnLcpIWKP734aWDaVWhsGUo=;
 b=JgVBTCm92o8pjcuHenmNCre9o7ffjTnhHHHTJ8gmhTCibuaBXlyiZNobh+ADDeUM8p
 +SFtMIY1UeQHT0zNmDHnDjTKS/0Ubqv39hiK3VkYYVEJ01diEWsUAAAkb6C98juwBuwV
 BTMCv+9Nk2xmltbh4A0bOMuy+FH87ENrSf8Iuaal1zWTMpTakGL3Ay0tgk5iIpaGvAEq
 mT7Sh5FVwD/aW4hmLJ5t4ZOopJoqU+ilt9Eg+HLogE7RTPP0GI/uWQTnylSKHKwXQyxP
 HzMYLqXWgK9tIX/KM80lPsrmkydsbfzGZHx3pJxIGp2I6aYcgfMDvrj8AbM0ojiLd9YF
 cAmA==
X-Gm-Message-State: APjAAAUGJZgOxJ7ZS3KgfehDPq9pgDHtBEaJM+njrsTavC3Hsa+aCiRL
 MkQhx22hiPFBPSYcM6MsDEc1Cg==
X-Google-Smtp-Source: APXvYqxJMR8XXzMM+ktrv2ws01Rr8qKWI/iP6Q9Wd6fsMeCMuUxQBVCNuUcjqBIbwcds2k2WtfZxLA==
X-Received: by 2002:a50:9fe5:: with SMTP id c92mr2202655edf.280.1569325860692; 
 Tue, 24 Sep 2019 04:51:00 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id r18sm319556edx.94.2019.09.24.04.50.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 04:51:00 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 60C621022A6; Tue, 24 Sep 2019 14:51:01 +0300 (+03)
Date: Tue, 24 Sep 2019 14:51:01 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 0/2] mm/debug: Add tests for architecture exported
 page table helpers
Message-ID: <20190924115101.p6y7vpbtgmj5qjku@box>
References: <1568961203-18660-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568961203-18660-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_045104_515968_42257155 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 12:03:21PM +0530, Anshuman Khandual wrote:
> This series adds a test validation for architecture exported page table
> helpers. Patch in the series adds basic transformation tests at various
> levels of the page table. Before that it exports gigantic page allocation
> function from HugeTLB.
> 
> This test was originally suggested by Catalin during arm64 THP migration
> RFC discussion earlier. Going forward it can include more specific tests
> with respect to various generic MM functions like THP, HugeTLB etc and
> platform specific tests.
> 
> https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/
> 
> Testing:
> 
> Successfully build and boot tested on both arm64 and x86 platforms without
> any test failing. Only build tested on some other platforms. Build failed
> on some platforms (known) in pud_clear_tests() as there were no available
> __pgd() definitions.
> 
> - ARM32
> - IA64

Hm. Grep shows __pgd() definitions for both of them. Is it for specific
config?


-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
