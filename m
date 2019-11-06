Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA37F1AE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxwDBacfal0ZEy4P/372Uw+p62Km0H8OB8QfYqKn6EE=; b=k7xJcxivhzIISm
	sd0szz4L9kOt+2h4fbnM5tvyT6vCoLMRgD5W/wj1Uy2hLHp26FrNos2QVq0Q6UoUdFQcEbJ/TUpKZ
	ra58LAkMHTH/RF6ZXAtnMCE6eoYP3ICnPQBOu54/ETkS8xewjaVXeHge6QIpbZ4jRkyvsL+b9etRW
	fJWyJCFOzOAHN+3y55hG9PR408+V0RZ1U3GliTqPqrc4y75PUkYw69a59UEGhx1zRZXEJtUHYMaeS
	tXhLcLXmMNyY/1JKKRZMzzXk36Ol6N1n/dK7B+2xp1UBobZg140B+jTH81ZnJS4/Q2TscLo+5A258
	ubdUAPR9WkoumCj9Sc+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNvG-0005wd-RR; Wed, 06 Nov 2019 16:12:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNvA-0005vY-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:12:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D4B82075C;
 Wed,  6 Nov 2019 16:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573056755;
 bh=F3Ew6H9mBN3Ya+BnzXseH+1ZU9k1PhQGagvwG0KlHWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E77hkYmroLOF/SzC0oiT0i3HvxYRGQygdyrroMkY8IC9LUqQFXV5VL3kcw6IKme5R
 h1kBOXYBYCEgREVNLCoIkAYqKn0CBMIbfci4gSSNbQOGYt8yWyZ+FHU6wf52Rcy4+z
 RottMu/d3IT0DR/E/tVeDmDi3VItk/zEZWQTwq9M=
Date: Wed, 6 Nov 2019 16:12:30 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Message-ID: <20191106161230.GB6893@willie-the-truck>
References: <20191106154105.15176-1-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106154105.15176-1-catalin.marinas@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_081236_083732_3096F935 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: John Stultz <john.stultz@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:41:05PM +0000, Catalin Marinas wrote:
> Following commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out
> of set_pte_at()"), the PTE_RDONLY bit is no longer managed by
> set_pte_at() but built into the PAGE_* attribute definitions.
> Consequently, pte_same() must include this bit when checking two PTEs
> for equality.
> 
> Remove the arm64-specific pte_same() function, practically reverting
> commit 747a70e60b72 ("arm64: Fix copy-on-write referencing in HugeTLB")
> 
> Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> Cc: <stable@vger.kernel.org> # 4.14.x-
> Cc: Will Deacon <will@kernel.org>
> Cc: Steve Capper <steve.capper@arm.com>
> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
> 
> Steve,
> 
> Could you please check that the original problem fixed by commit
> 747a70e60b72 no longer exists after reverting it in 4.14 onwards?

In the meantime, I've thrown this at the CI to check that they come back
clean.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
