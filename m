Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B1B1074E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 13:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWZt0ZKXYJ4s//k0/5vV4zJyKBlJUsGsyQJbxvX642Q=; b=IfhSuYYhcbYGh1
	OwI8Jv4DqJPhcRP1kWRV5DRi0K3qekEdt1x6exSboYmVfg9M5KdOEX7sn+CrbG6US5e2QGykkDEe4
	uLx+y7g23MOxkXv3tnc1M7QBQT0+h5yJy/C2PESiz7d2FnbasXLWJhu9J7gUYMATqjknXwX/nJv6B
	8uBPp7WsPILKtc2F/F9bnGX6Pu5OmfzrGtzSgpQyeNBLWlbHdXcVfXv3iU3cV073a1qLNMMQhuIP6
	Uh/BFVbmpcyzVtt9XRXglF1Zy28clPpLwQXoJx2NxXvNzaLjlrCYNs7eZwlVjwp0Uld9OsQVz79oT
	YYHkr9wbgFcdP53616xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLmzP-0004Xc-Dy; Wed, 01 May 2019 11:01:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmzI-0004X8-IZ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 11:01:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7534580D;
 Wed,  1 May 2019 04:01:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9E603F719;
 Wed,  1 May 2019 04:01:16 -0700 (PDT)
Date: Wed, 1 May 2019 12:01:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arun KS <arunks@codeaurora.org>
Subject: Re: arm64: Fix size of __early_cpu_boot_status
Message-ID: <20190501110113.GD11740@lakrids.cambridge.arm.com>
References: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_040120_618464_B90A8641 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:05:04PM +0530, Arun KS wrote:
> __early_cpu_boot_status is of type long. Use quad
> assembler directive to allocate proper size.
> 
> Signed-off-by: Arun KS <arunks@codeaurora.org>
> ---
>  arch/arm64/kernel/head.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index eecf792..115f332 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -684,7 +684,7 @@ ENTRY(__boot_cpu_mode)
>   * with MMU turned off.
>   */
>  ENTRY(__early_cpu_boot_status)
> -	.long 	0
> +	.quad 	0

This is the last element in .mmuoff.data.write, which is padded to 2K,
so luckily we don't clobber anything else (and don't need a backport).

For consistency with __boot_cpu_mode, we could instead change the c
declaration to int, and fix up the calls to
update_early_cpu_boot_status, to use a w register, but either way:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  
>  	.popsection
>  
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
