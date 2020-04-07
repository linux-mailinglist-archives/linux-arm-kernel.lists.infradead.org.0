Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520171A0A10
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SHe7twnc6bkbW70+9yLZhfq9DiCFGqn2GD4Zzl1fBc=; b=Qaq2ym4g3ipKXB
	iNVBnGgi7Uo5HVxGD8UUp/pmPYApk7M/jvlHZbFT2ypNbLbHKCmSqlTGrDvvX8g/hi3Ley+tK84h+
	i1mJneDEybh0f7XZ0kZvSNomLBW4p4MQCYWBi71Kc5SePqwO9NBb2Fic6oEXKtXFoVBtEutUV0Cj4
	tUig84hrAoMPyX4iA4J4JVud6XhiWDAlhf7epNcpJGvwKddyLU8mJ+S1KFbhP2H6in10CEHW8NZo5
	4l59ihT9MiSKJlI5uUhG4yXnyvR5xlYw91s7Apix8CwiMH5xg6LNmwlTbPEB/yKkC08FOEJoKbZ5x
	7PlMumSWF1W+efKsc08w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkWU-0003Gw-4G; Tue, 07 Apr 2020 09:27:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkWN-0003GG-Dc
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 09:27:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B41F630E;
 Tue,  7 Apr 2020 02:27:48 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05C5C3F73D;
 Tue,  7 Apr 2020 02:27:47 -0700 (PDT)
Date: Tue, 7 Apr 2020 10:27:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Fredrik Strupe <fredrik@strupe.net>
Subject: Re: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
Message-ID: <20200407092744.GA2665@gaia>
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_022751_502288_7236D5EF 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 04:16:05PM +0200, Fredrik Strupe wrote:
> Use a full 32-bit mask to prevent accidental matchings of thumb32
> instructions where the second half-word is equal to the thumb16 setend
> encoding.
> 
> This fixes the same problem as the following patch:
> 
>     https://lkml.org/lkml/2020/3/16/341

This link is not guaranteed to be stable and the commit should have the
full description rather than referring to another email.

> but for setend emulation instead.
> 
> Signed-off-by: Fredrik Strupe <fredrik@strupe.net>

It also needs Fixes: and Cc: stable tags.

> ---
>  arch/arm64/kernel/armv8_deprecated.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
> index 9d3442d62..8c06dfee0 100644
> --- a/arch/arm64/kernel/armv8_deprecated.c
> +++ b/arch/arm64/kernel/armv8_deprecated.c
> @@ -609,7 +609,7 @@ static struct undef_hook setend_hooks[] = {
>  	},
>  	{
>  		/* Thumb mode */
> -		.instr_mask	= 0x0000fff7,
> +		.instr_mask	= 0xfffffff7,
>  		.instr_val	= 0x0000b650,

I can see how this could happen but it would be useful to provide a
concrete example in the commit log.

The instruction opcode built by call_undef_hook() first reads a u16 as a
T16 instruction and the above should be fine. However, if this looks
like a T32 opcode, it reads a subsequent u16 which becomes the lowest
half-word and the above mask/val may inadvertently match it.

The patch looks fine to me as long as you update the commit log.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
