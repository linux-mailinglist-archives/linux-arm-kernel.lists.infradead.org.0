Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB54613C658
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Bd7tUV4jRRMP8f/A6kcmj6eYEw9Zv/3gRZDAFxysc8=; b=qGJ/Xo51wzPGB/
	8irLMDFko0KFc4FF9imZokTYc1zAlIg8CSxnfAoKeKwOT/fp13c6iBEuLkk9gJO+qjZWhfDUapZZb
	KS25tHKyMxpf580RSvYSjQ7XPWBSSKwt1bTl69ttiKAWEAFfNrN/vmfqL5fqvXlqg+MZyyTmZd3eR
	kkzPUoudUQ5d7+9nv8U2Wa7Nb8NEKCMGHJoE3zc9puCL+l+DVVEXHsxzpFLYH7/q+FBMvlHYBW2SB
	KOlqKs2tCr71pFaoLBE4EMulrjg3hlVAEGl6QssaSqFbzN7xioPzEw2WSbmUwpnhJ36gJKH3YZ9/w
	PuDqfGg5ZG/mkKV7UK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjsQ-0006en-4X; Wed, 15 Jan 2020 14:42:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjsD-0006eI-97
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:42:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5850D2075B;
 Wed, 15 Jan 2020 14:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579099340;
 bh=rhAo0e1CjOR2QBmI8FiiF6Camf/H/qwsu8G4O/2US/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vIwxg9Ma0qXCH/qJ7nVHXmwsTMbjmeOQaIHxmNvRcl8bkvBiZzwFzOLPQCE1uDlUl
 EpasDvhKOCGyDqtmKNRl6mP+BjtDavZpjz5bs9QjBOQBK57x04DIAGjOQNsvzE1xO8
 98iFEvj5q7L1qBS8ELlGGKdqTyXccXHgnCvx4BvE=
Date: Wed, 15 Jan 2020 14:42:17 +0000
From: Will Deacon <will@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH] arm64: Turn "broken gas inst" into real config option
Message-ID: <20200115144216.GA29230@willie-the-truck>
References: <1579097905-128661-1-git-send-email-vladimir.murzin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579097905-128661-1-git-send-email-vladimir.murzin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_064221_342447_E4EB57CC 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 02:18:25PM +0000, Vladimir Murzin wrote:
> So it is available everywhere and there is no need to keep
> CONFIG_ARM64 workaround.
> 
> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
> ---
>  arch/arm64/Kconfig  |  3 +++
>  arch/arm64/Makefile | 10 +++-------
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 63c19ef..4139c927 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -303,6 +303,9 @@ config ARCH_SUPPORTS_UPROBES
>  config ARCH_PROC_KCORE_TEXT
>  	def_bool y
>  
> +config BROKEN_GAS_INST
> +	def_bool y if !$(as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n)

Guessing you can drop the 'y if' part here?

No need to resend just for that, but would be nice to know that it works.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
