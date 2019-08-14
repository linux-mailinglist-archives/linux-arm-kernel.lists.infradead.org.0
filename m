Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DAD8CF15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/V8cTtA7orR/uhxfJET+a260zx+X/WHPAn06IMO42lE=; b=DaZRUO9vCF5Rfz
	71a8MZ5JFkJjJm1u8Mr9aam4LqvjXsmgdYrFkq+RY1TMK55wC4K7vGyX/EmfO/rp3VHP1Cym6Oauo
	8obP+iTEtOvHTll8YKEOFrxLtvjjDqxXQxOu0WIzbvE6BkSDaaJ6M9TBomT9v+zk8lDjJxj3/etKC
	p/qYRFzI9j+XQjaQH6xn+LN+nAlrC1NrlI9LApRjCs7xV4nxek7WYkMBClddMr0LKy7eiMMLRuFCP
	dDOEZJjs6cov35iXyF/vL158DcX021NJZ8OPgAhH88JrjcsW8RqkBu25LK5QB0tW9AphJFwrAWZjc
	ehxHYWBYzK4W/uIxQUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpJE-00052L-5h; Wed, 14 Aug 2019 09:11:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpIy-00051k-5Y
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8ABDE344;
 Wed, 14 Aug 2019 02:10:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D84723F694;
 Wed, 14 Aug 2019 02:10:50 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:10:48 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 2/3] arm64: constify aarch64_insn_encoding_class[]
Message-ID: <20190814091048.GL10425@arm.com>
References: <20190813141639.13476-1-mark.rutland@arm.com>
 <20190813141639.13476-3-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813141639.13476-3-mark.rutland@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_021052_255487_9860C455 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 03:16:38PM +0100, Mark Rutland wrote:
> The aarch64_insn_encoding_class[] array contains compile-time constant
> data, and is never intentionally modified, so let's mark it as const.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> ---
>  arch/arm64/kernel/insn.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 84b059ed04fc..d801a7094076 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -26,7 +26,7 @@
>  #define AARCH64_INSN_N_BIT	BIT(22)
>  #define AARCH64_INSN_LSL_12	BIT(22)
>  
> -static int aarch64_insn_encoding_class[] = {
> +static const int aarch64_insn_encoding_class[] = {
>  	AARCH64_INSN_CLS_UNKNOWN,
>  	AARCH64_INSN_CLS_UNKNOWN,
>  	AARCH64_INSN_CLS_UNKNOWN,

This is an implementation detail of aarch64_get_insn_class(), so it
could be moved inside there, or rewritten as a switch.  It works as-is
though.

Either way,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
