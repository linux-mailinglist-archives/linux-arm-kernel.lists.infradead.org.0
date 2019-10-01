Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBEFC34F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9InDoKPsjK7bPHm2D5uf0hzIWTi03LXztxKZsRads3M=; b=uKw1bUOzMscVLS
	EO1eyrPjdt/fAg65xRrb7BBnW9CVCR6X/yO7ryDsawcLEpEyclAnSvw2hBnVsg8i3vi35PVwt/IXP
	yn+dcdT+iWE41c+bhNlAcglVYllouM4jNx4UyklqkvKURiUCBZRxb889ijzgoCOfI+L+kOM8ZMqPD
	mbtvCXtEjxEjR85TXqs00RIdWZmqWsBeD7LPlDj7vO9mXQbKcO9UtCLpGG7wpJihJYwPU1+/tFFpK
	gDARB21ii07g61Wh5NjV1VWPLCNSy4yVVKsFdgOY7VGqIlsv4mgsRrOvaqJXPET7Mufuduv2Gc6yr
	NA4HXQ5+1Qzip4xq6Smw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHib-0000xc-Gv; Tue, 01 Oct 2019 12:57:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHiQ-0000wo-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:57:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 992D221872;
 Tue,  1 Oct 2019 12:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569934638;
 bh=0bA4Rq6VDBLu6I3CzvvdBz/Rpc0kbhKzaP3mVRtSZ/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=01Wi7ut1J5j5bRSABELqrAgsKs6gnQg9LdVXwqryhfgbSlqELlu1zMrWTEzbBIt+q
 YidwhwXF9xdXy+gVZN/Pey49ROcWyw6/DJ15mEOh7d+9qF6sehq08V7tVZy4L8ZlG1
 XXm5mFnJ3erKadUUEbX99B1EFCvbFNODtJLN8bTs=
Date: Tue, 1 Oct 2019 13:57:14 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: simplify syscall wrapper ifdeffery
Message-ID: <20191001125714.dbuzmotrphevf37u@willie-the-truck>
References: <20190913125550.7053-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913125550.7053-1-mark.rutland@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055718_688951_FBE7A2B1 
X-CRM114-Status: GOOD (  12.93  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 01:55:50PM +0100, Mark Rutland wrote:
> Back in commit:
> 
>   4378a7d4be30ec69 ("arm64: implement syscall wrappers")
> 
> ... I implemented the arm64 syscall wrapper glue following the approach
> taken on x86. While doing so, I also copied across some ifdeffery that
> isn't necessary on arm64.
> 
> On arm64 we don't share any of the native wrappers with compat tasks,
> and unlike x86 we don't have alternative implementations of
> SYSCALL_DEFINE0(), COND_SYSCALL(), or SYS_NI() defined when AArch32
> compat support is enabled.
> 
> Thus we don't need to prevent multiple definitions of these macros, and
> can remove the #ifndef ... #endif guards protecting them. If any of
> these had been previously defined elsewhere, syscalls are unlikely to
> work correctly, and we'd want the compiler to warn about the multiple
> definitions.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/syscall_wrapper.h | 6 ------
>  1 file changed, 6 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
