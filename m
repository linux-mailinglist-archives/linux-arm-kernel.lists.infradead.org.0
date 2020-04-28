Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC24A1BBE64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeQWkXiPHxHn+2fWCOPQi31WEzWt2CEyYoa3Iba8mCU=; b=KULN1yWK/dtieR
	MtcaG5NXli300Y8N4ccBY+lr+qqBz2XbDZyDJ/qV2Rxb3jOFjJ52sgnTfpsSH9Cy+Xkgv3TKd3814
	eVvNp1gThSdbAXoEBGCa+7BkDO1Vvjcq0BinA1Rr0M/xg24QFaJnPtS/jX8ldw76dXo3uVF49HLYn
	gnWjtzww+EX7y0AZ14HTX3IYP4FrrOykoybzLE+bq4iGNNvIuGzS1BqUTcdMiAv2v9i9NQIyPyPty
	5dRev/HEBoi7tyBT5iWe9eBZRTNH3FqvC9R2HRD/4N8B5z301eiDE+1s4NAa1gMPfAaqWzMbwasP4
	iUKNUxjx621Sub6WeF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPog-0000wj-VS; Tue, 28 Apr 2020 12:58:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPoX-0000wB-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:58:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0343C206D6;
 Tue, 28 Apr 2020 12:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588078696;
 bh=R/W+sDgU2J6qq+7c61xQGriDtpNKBiLYZRy2nTsky8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RGcDlEtW0lyHvNG0JAo7LmvFyfJ7mcbAuv7BsflDGTTgLkS8T24pKAI6RSIXE1cEr
 zU99CT7WIYtMV14X2ijQ6yklVUPczzQYDkpbqI28xNFOA2+w0rI1LFG0ZQQoHDDIQb
 TQ8PCWKWC5CyziO/Lx9xEAImU1mv1B5Nd0XOuEZ0=
Date: Tue, 28 Apr 2020 13:58:12 +0100
From: Will Deacon <will@kernel.org>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [PATCH v2] arm64: ptr auth: Use get_random_u64 instead of _bytes
Message-ID: <20200428125812.GD6791@willie-the-truck>
References: <202003311544.02VFiClP011630@sdf.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003311544.02VFiClP011630@sdf.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055817_281557_F14CE9DB 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi George,

On Tue, Mar 31, 2020 at 03:44:12PM +0000, George Spelvin wrote:
> get_random_bytes() is approximately 4x the cost of two
> get_random_u64() calls, because the former implements
> anti-backtracking.
> 
> Because these are authentication keys, useless to an attacker
> as soon as the kernel stops using them, there is no security
> benefit from anti-backtracking.
> 
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> v2: Took out all the clever bitmap-based stuff and made a simple
>     boring helper function to replace get_random_bytes(&key, 16).
> 
>  arch/arm64/include/asm/pointer_auth.h | 16 +++++++++++-----
>  arch/arm64/kernel/pointer_auth.c      | 10 +++++-----
>  2 files changed, 16 insertions(+), 10 deletions(-)

Please can you resend this against the arm64 for-next/ptr-auth branch [1]?
I can't apply it as-is.

Thanks,

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/ptr-auth

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
