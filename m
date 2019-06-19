Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4742D4B801
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIn+wuWMikjspnZC9oigQdiv5WwdH/OrRd28evbTrIY=; b=EDqEdoQPFOad2H
	cdZDajCCR5T3PKBwIV6Xu5B59gYL3C9dbiMQHOf8Pe5UtkkVy/jEZzyTEZq8TDipo12QhLIR1T9lX
	cFLoYy0ksQ08RZJFRVjlez9+5RUB16XVnOQhPobKL7SMenM4/428tk7UgP2erA9QHCTWSilINQHlr
	cinWxc2vHQWE7zg/+GHZ2a39Fnf2GIKz/94ZHkD24UswponXbuvemStjbxyNgLk70degJ6mJ2Zt0R
	LD/TJcmIhtnpfFrnp7e/tQKVeD+obJS2wlnc2sgcYWcTTRVS3CcDgF3JbFDSLT18q2nVvXvrejl3y
	W9313TjHgA3sTcsGNhQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZYa-0006Li-Ba; Wed, 19 Jun 2019 12:19:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZYE-0006CO-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:18:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC31EC0A;
 Wed, 19 Jun 2019 05:18:51 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1AF53F738;
 Wed, 19 Jun 2019 05:18:50 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:18:48 +0100
From: Will Deacon <will.deacon@arm.com>
To: jinho lim <jordan.lim@samsung.com>
Subject: Re: [PATCH] arm64: remove useless condition
Message-ID: <20190619121848.GE7767@fuggles.cambridge.arm.com>
References: <CGME20190619113904epcas1p23e2c335cda62dfa5ea02c4eb5cb0d788@epcas1p2.samsung.com>
 <20190619113857.5053-1-jordan.lim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619113857.5053-1-jordan.lim@samsung.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051854_623355_EC144958 
X-CRM114-Status: GOOD (  14.60  )
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, linux-kernel@vger.kernel.org, seroto7@gmail.com,
 ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 08:38:57PM +0900, jinho lim wrote:
> dump_instr function checks user_mode internally.
> 
> Signed-off-by: jinho lim <jordan.lim@samsung.com>
> ---
>  arch/arm64/kernel/traps.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index ccc13b45d9b1..694e78b950ca 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -182,8 +182,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
>  	print_modules();
>  	show_regs(regs);
>  
> -	if (!user_mode(regs))
> -		dump_instr(KERN_EMERG, regs);
> +	dump_instr(KERN_EMERG, regs);

I don't think this is right, because it means we'll now dump the current
user instruction on the die() path.

Instead, we should probably rename dump_instr to dump_kernel_instr(),
and have it return immediately if user_mode(regs). We can also kill
__dump_instr completely.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
