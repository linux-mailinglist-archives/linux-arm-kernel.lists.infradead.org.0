Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C363EADBF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZrfrzl0cljXuD1VXtYcSucZLuETBDnz6gx3tIYJ3XU=; b=XgO5p9HtcH81BF
	pre8CfaYOkGD5FX+oClZCn6lYBEbnyPgsE6AevNXZxj4eafKkVTGDWsWo0MAA0G65mgD7ftA7b46/
	eHcUtW5jgakg50uKNPC1W6jiYra6TJgURNi/WfopxU9kZlcfYCT2UQ7NGEz3fCB5h84iKdmY/Q3/R
	hosHAe2W4Abdujj6s2bugcAuVVo2R3Kam0Sn1UdgVqXo7JVf5yluke2HX88KyfjL+D2kWErA+tmmr
	zQuEROeHgYD7LiZkp4mffz2Ppnqy9Lt8U0BEPVE+Z1h2qQDoCuXanT1RVnRxcs2sen5v+9sShnmW+
	DXdu/RJRAcWZzM8c+qqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LMk-0006wd-Lt; Mon, 09 Sep 2019 15:14:06 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LMS-0006vN-RE
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:13:50 +0000
Received: by mail-ed1-x543.google.com with SMTP id a23so11062010edv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 08:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ptGQKrJwsC6QNZJxPTcIFHrTBzodlhROW8EV9Cr6mks=;
 b=lqK7soM8Ql8EG2Ftn3h3hR+olO0M3L5hi5yR7FV9iLEmOGD4dckGUM3j+cW0/Dime1
 tcaru2ydfakL0qOGX9NW71rS5xXhlEsWXHR5tZTvN8nAdg3jRR7H91vVYT27iUT4zLQL
 /8sd6tx6RSZch+NQKzd2gDDMnTl6lfsTiDI17WOQGfxtCfWUReS2eIOCKDQqmHkeOOb6
 CQ29hW9JyqW2659VgWaWS03hTBmcSoCzS6kj58DkCjvhtjcgvBnAojuQ6LW0JN5ngCCR
 oxmuahVreVZAzOjjnErCDvkrgGlDpVGWckjhAKTQyS0XAzH5VKEiZW6qr15a3nTgG9T0
 I28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ptGQKrJwsC6QNZJxPTcIFHrTBzodlhROW8EV9Cr6mks=;
 b=A5tZG9A94/0QLpmEPXHIdt4CNmJ8QyKDJQiv4GhxqiPZOtv2NcLuw52TO/87g4p/o1
 gU1HhS0tndazRvi0WyjutCf9YQTWKbPnI0t+VTBw3IIDqKQBWCKVxfYDsvI5W22yW5/l
 3Gob0DcCPdOfv5Gr8uE65AkwPBnLZPIHyFz78Rhl0cnUNMM4JItmv/8X8ubsgqt1sIm1
 F4b3xnkAs91gPJdsWGRisTqbFBYbabTJgMSS+jLGzKltOCXXipIhmJk8mMt10lpAq9Hd
 ufp3pTlfc1VXWTfiJiLXrrCOQlxAfvG1ur7UHUGNk0zeoFc2iJzaT5ANsnhgY4VoeBDe
 Vl2g==
X-Gm-Message-State: APjAAAWYB1cdEsVt8YTtkGMNJ5GFDI4cbestrEDtozF1zc4IUCzJv90x
 QWkKuNfoFj6wUrYkEO9GtC8USg==
X-Google-Smtp-Source: APXvYqwJokBcl6isKFmA//BZZyEEgwoj2uNW2kTs0Tg/Y35qXurjsqN7Jks2aTze1VFcwFZl9Fv8+Q==
X-Received: by 2002:a17:906:c304:: with SMTP id
 s4mr20002026ejz.71.1568042026870; 
 Mon, 09 Sep 2019 08:13:46 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id bf19sm3010529edb.23.2019.09.09.08.13.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 08:13:46 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id CD9501003B5; Mon,  9 Sep 2019 18:13:44 +0300 (+03)
Date: Mon, 9 Sep 2019 18:13:44 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
Message-ID: <20190909151344.ghfypjbgxyosjdk3@box>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
 <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
 <20190906210346.5ecbff01@thinkpad>
 <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_081348_880113_DBCD7EF3 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Vlastimil Babka <vbabka@suse.cz>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 11:56:50AM +0530, Anshuman Khandual wrote:
> 
> 
> On 09/07/2019 12:33 AM, Gerald Schaefer wrote:
> > On Fri, 6 Sep 2019 11:58:59 +0530
> > Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > 
> >> On 09/05/2019 10:36 PM, Gerald Schaefer wrote:
> >>> On Thu, 5 Sep 2019 14:48:14 +0530
> >>> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> >>>   
> >>>>> [...]    
> >>>>>> +
> >>>>>> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> >>>>>> +static void pud_clear_tests(pud_t *pudp)
> >>>>>> +{
> >>>>>> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
> >>>>>> +	pud_clear(pudp);
> >>>>>> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
> >>>>>> +}    
> >>>>>
> >>>>> For pgd/p4d/pud_clear(), we only clear if the page table level is present
> >>>>> and not folded. The memset() here overwrites the table type bits, so
> >>>>> pud_clear() will not clear anything on s390 and the pud_none() check will
> >>>>> fail.
> >>>>> Would it be possible to OR a (larger) random value into the table, so that
> >>>>> the lower 12 bits would be preserved?    
> >>>>
> >>>> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
> >>>> it should OR a large random value preserving lower 12 bits. Hmm, this should
> >>>> still do the trick for other platforms, they just need non zero value. So on
> >>>> s390, the lower 12 bits on the page table entry already has valid value while
> >>>> entering this function which would make sure that pud_clear() really does
> >>>> clear the entry ?  
> >>>
> >>> Yes, in theory the table entry on s390 would have the type set in the last
> >>> 4 bits, so preserving those would be enough. If it does not conflict with
> >>> others, I would still suggest preserving all 12 bits since those would contain
> >>> arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
> >>> would also work with the memset, but for consistency I think the same logic
> >>> should be used in all pxd_clear_tests.  
> >>
> >> Makes sense but..
> >>
> >> There is a small challenge with this. Modifying individual bits on a given
> >> page table entry from generic code like this test case is bit tricky. That
> >> is because there are not enough helpers to create entries with an absolute
> >> value. This would have been easier if all the platforms provided functions
> >> like __pxx() which is not the case now. Otherwise something like this should
> >> have worked.
> >>
> >>
> >> pud_t pud = READ_ONCE(*pudp);
> >> pud = __pud(pud_val(pud) | RANDOM_VALUE (keeping lower 12 bits 0))
> >> WRITE_ONCE(*pudp, pud);
> >>
> >> But __pud() will fail to build in many platforms.
> > 
> > Hmm, I simply used this on my system to make pud_clear_tests() work, not
> > sure if it works on all archs:
> > 
> > pud_val(*pudp) |= RANDOM_NZVALUE;
> 
> Which compiles on arm64 but then fails on x86 because of the way pmd_val()
> has been defined there.

Use instead

	*pudp = __pud(pud_val(*pudp) | RANDOM_NZVALUE);

It *should* be more portable.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
