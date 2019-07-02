Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E245C77E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 04:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8jsHCdRfNzKawqoaqsbhovekyfZKMGefe/Yiv8ZdzI=; b=Ob2pnMy6vKTazq
	RAWcMnLvBXZiDyd5TtXsNRKH2l++32DBWhjbrtMOefBhlHb0Ln2apRQ6Lb6NT4eIyl8/ojfu54DsY
	uwiCdR7QLF3spHRLR/MAF7l01mU8iuLaq5Ff2AnMN26oaI1MAkIW9zphP2L20+ogGx9qJvIj1MTSw
	iVtu5qvGdGU5Zb7iQQcfkomui2Y0Djzr+pyYcFjV8oojjbMG/XETY0vvmM0xmcJSxjlyE/1/+VZYh
	lfS45YUy8o00AUETLs241oJzES1hwr+sUq4TAw14GQWEV3XlO30HaNCvdlKyAgud/xLQ4A8VDoWUe
	OFDZ0mI0NfHSzdvb7EbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi8xN-0004j0-6D; Tue, 02 Jul 2019 02:55:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi8xB-0004iT-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 02:55:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so8314863plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 19:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=yh72SMFSBekrHMHAzJEsEH43qcxL2exqJGEt88fMstM=;
 b=OQloBSmLK7yZ68Nmhh3ZNo6BLX04mI8FD6n8AeTw37MNwj0uMNbWidDAheX5FJ/Znt
 FRzI3+hb/f6xTgs8hr0qR9TZ9OHETLisz4gXDouc1TOgihYQlbeV4GUgK1BwxOdpvGMc
 hGQj+HGKUJUHtHB1LSlUfu6YD9ajCK+Jq5Giva1slXFpNcXTmhPFtFKvyolKV+VnvwCs
 +mcnr4ORNAQD3T8DPa0Izny+94iWrnftJZ5i+foB8mwBago8ICdTU4o6YjGfQgtq2Gjs
 0fIyhWwDKZdJk7d3KDG2qYX7D/1tuC7vaBUyAchhzuMG+JtMHLXqu3nFv+R8NsJW09zS
 9omA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=yh72SMFSBekrHMHAzJEsEH43qcxL2exqJGEt88fMstM=;
 b=bgmdoiYsqeuyUxobORYtbUoKaWIgNAPEbXgNuxmS0Refe0ii2aJBy+Ijwj/OZVjwml
 1KsGpqCa5qVXZ+HrVg9GLncOFqOOKv5B9onAvuTgdzwYDXmpckAio/J6/6bhtHURLieY
 DQ5FQP0C331PKGOFDWrijZmSoqnTUmZWQU7zm5+UwNG2zEuSdRFfvvERyZLaupPPrOME
 vWgjwAwv997R5d9AUZi4GmPIqXjVK/avykfZpC1JJHokBBEtXdtFhGlvEK+CEIi/9GC9
 abtw0j4P2a0641gbn5ZWrBLUPM7CIHitNClbnMN3RaGjjOIljKk1aMi20xYCC9FEeEKI
 /Sfg==
X-Gm-Message-State: APjAAAVVq4P9Oo1qDJCqGLd010uZvxkJYxZsczQcQjAAyuaZbCwo9qP0
 AE2Uqhueb3E14RqqSHuRgPpN1JDy
X-Google-Smtp-Source: APXvYqx4btuHxQBeOFukhSzSKKwHsk18ZBVKxKzevK0qIIRUp7DmMiBws+GtDKL9X7ZhzyJrivZoIg==
X-Received: by 2002:a17:902:f204:: with SMTP id
 gn4mr32852271plb.3.1562036132165; 
 Mon, 01 Jul 2019 19:55:32 -0700 (PDT)
Received: from localhost ([175.45.73.101])
 by smtp.gmail.com with ESMTPSA id cq4sm769147pjb.23.2019.07.01.19.55.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 19:55:31 -0700 (PDT)
Date: Tue, 02 Jul 2019 12:55:12 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: mm: Add p?d_large() definitions
To: "linux-mm @ kvack . org" <linux-mm@kvack.org>, Steven Price
 <steven.price@arm.com>
References: <20190701064026.970-1-npiggin@gmail.com>
 <20190701064026.970-2-npiggin@gmail.com>
 <0a3e0833-908d-b7eb-e6e7-6413b2e37094@arm.com>
In-Reply-To: <0a3e0833-908d-b7eb-e6e7-6413b2e37094@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1562035876.apiyxfrmrw.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_195533_415603_C5D291AC 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Steven Price's on July 1, 2019 7:57 pm:
> On 01/07/2019 07:40, Nicholas Piggin wrote:
>> walk_page_range() is going to be allowed to walk page tables other than
>> those of user space. For this it needs to know when it has reached a
>> 'leaf' entry in the page tables. This information will be provided by the
>> p?d_large() functions/macros.
>> 
>> For arm64, we already have p?d_sect() macros which we can reuse for
>> p?d_large().
>> 
>> pud_sect() is defined as a dummy function when CONFIG_PGTABLE_LEVELS < 3
>> or CONFIG_ARM64_64K_PAGES is defined. However when the kernel is
>> configured this way then architecturally it isn't allowed to have a
>> large page that this level, and any code using these page walking macros
>> is implicitly relying on the page size/number of levels being the same as
>> the kernel. So it is safe to reuse this for p?d_large() as it is an
>> architectural restriction.
>> 
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Signed-off-by: Steven Price <steven.price@arm.com>
> 
> Hi Nicolas,
> 
> This appears to my patch which I originally posted as part of converting
> x86/arm64 to use a generic page walk code[1].

Hey, yeah it is, I'd intended to mark you as the author but must have
forgot to change it in git.

> I'm not sure that this
> patch makes much sense on its own, in particular it was working up to
> having a generic macro[2] which means the _large() macros could be used
> across all architectures.

It goes with this series which makes _large macros usable for archs
that define HUGE_VMAP. I posted the same thing earlier and Anshuman
noted you'd done it too so I deferred to yours (I thought it would
go via arm64 tree and that this would just allow Andrew to easily
reconcile the merge).

If your series is not going upstream this time then the changelog
probably doesn't make so much sense, so I could just send my version
to the arm64 tree.

Thanks,
Nick


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
