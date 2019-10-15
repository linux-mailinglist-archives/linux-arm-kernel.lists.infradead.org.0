Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8286D6C69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 02:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiZJmRv5ZlVj2nHkfhLC9WIkz3b2J1TzJmqXBAnGmM4=; b=bSMWTeDPJzsOoC
	5V4uLtZTkEWBYjEXM+Re8fKBF+Dl5d1d1PV2fIAB2iaIM5k9moMoHbug1UAkzsSvOmoitzPlAIETx
	B9M1pMFvO0v43tQoVCB5f3t9shbV7p48+BFhreiHriWTzWtTYy15IDFwXSmRI6RYqvXkSojfNF6Us
	gcSzI+ukHyE6H/T9DqeP9+VOickXE0+wOMO0rYggZlsMqLDGgItEwfjCDLB198h6rfE6wYpkqOScU
	IuvNNH+nAogXtUKX79jT4evTt7KRJSTjwPeKyu69y0XKy66bS7cbk5GYVA/S24Ijmmx54h5viuQL3
	rcrklHvOb9SyqFiuzAxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKAY8-0008CC-CM; Tue, 15 Oct 2019 00:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKAXx-0008Bk-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 00:18:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66448217D9;
 Tue, 15 Oct 2019 00:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571098720;
 bh=rwoRiB+wQGU744n1zKSEPj4a2yJrIqPtZgHsJ+gOmQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=InkkdLmSnOzul4H4R5ACoiK7D9dwZxnAkDvsoMiPOFdD26XeTzvD/ipLadEpVE5VL
 o1swarhHFBdtMoU+xGI8GEUhSp0cFOACydk/7GZf8nAj21bwbn4Nl30wkhwhsMAlaM
 40fUHKf8UxJMK48BHD/nH3V+ReS9VpmKXsknnDn8=
Date: Tue, 15 Oct 2019 01:18:34 +0100
From: Will Deacon <will@kernel.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v12 0/4] fix double page fault in cow_user_page for pfn
 mapping
Message-ID: <20191015001834.wwkd46t6dwicta7n@willie-the-truck>
References: <20191011140939.6115-1-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011140939.6115-1-justin.he@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_171841_076601_F2F9E2EF 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 x86@kernel.org, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 hejianet@gmail.com, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 10:09:35PM +0800, Jia He wrote:
> When we tested pmdk unit test vmmalloc_fork TEST1 in arm64 guest, there
> will be a double page fault in __copy_from_user_inatomic of cow_user_page.
> 
> As told by Catalin: "On arm64 without hardware Access Flag, copying from
> user will fail because the pte is old and cannot be marked young. So we
> always end up with zeroed page after fork() + CoW for pfn mappings. we
> don't always have a hardware-managed access flag on arm64."
> 
> -Changes
> v12:
>     refine PATCH 01, remove the !! since C languages can convert unsigned
>     to bool (Catalin)

Thanks. I think it's a bit late to take something like this for 5.4 now,
especially as the current behaviour has always been there. Hopefully
somebody can queue it for 5.5 instead.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
