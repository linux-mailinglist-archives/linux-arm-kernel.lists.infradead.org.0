Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C09DCA21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKex/awBzNtDB+BVAqwoXN0PmC2nmW0I8DuPXytdw6k=; b=uogQeMpM5oS5vC
	x0UUt08//YwDvKunuDsgI8erfc/6jRZ1USLcq7xa4xmEUTiLk5trTJk7jhQhhT+eSxxNSf9FO4BLt
	TulfQQv5QQQmXY1p4IKrEq+nuGknUOLlSuj++CXN45EPKzuhvmJXWyRC0g1me0bhYemhGUmotNb+u
	dwkJvy0e8VYFlldH1CmcR/fWFNeXZkFurHZCHCdcm90OuiZ0lRf37e16IjWUHZixh7felYFx7tmJq
	93zIWX6Qn/F81gNQWRiChDnGzXIxgTNvd94staAu86fro6yQ9LNkOLpoA76evhYyZF3R8p6xV3itq
	hZMf+0/MRlv0LPB5GiNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUg8-0001vQ-2S; Fri, 18 Oct 2019 16:00:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUdL-00086G-K0; Fri, 18 Oct 2019 15:57:43 +0000
Date: Fri, 18 Oct 2019 08:57:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v12 07/22] riscv: mm: Add p?d_leaf() definitions
Message-ID: <20191018155743.GG25386@infradead.org>
References: <20191018101248.33727-1-steven.price@arm.com>
 <20191018101248.33727-8-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018101248.33727-8-steven.price@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 Albert Ou <aou@eecs.berkeley.edu>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Alexandre Ghiti <alex@ghiti.fr>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>, Arnd Bergmann <arnd@arndb.de>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +	return pud_present(pud)
> +		&& (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +}

The operators always need to go before the line break, not after it
per linux coding style.  There are a few more spots like this, so please
audit the whole series for it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
