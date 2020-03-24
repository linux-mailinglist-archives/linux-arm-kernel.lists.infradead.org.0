Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E121912AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:20:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvW4Oib8zjsTrA1lLJLZS1uRfqU5og9YOrHZsz1kP48=; b=bfjhSRBR9ogRmd
	Cnz1zaxxXHcoit62uwp75IOW5AR1IU8UU6oEyQ0WIH4n/Gpeh2SoFcZ0MENYJMeQrPTmaL0JXETSJ
	lZnEfxOqhBDAnOs2/wDFlySXD5TGDXd9ZXyY3DLLfHVYz6WRW97Bk05czypAYJvky/asyCj2ZM/Sr
	TqRq+sGmjyuwEuOK8bdiKbDMXdDOmfES+9MbXDH3wWSUytppl2EpeLjM+r9CE0Yn8EoIFNwd4K3LG
	WWoelR2QZpjQ6++LLPeuJXi02cIDQt2S6LeWEp11UQZiHWes4c2zdRhRPqyqsZYc+Jfvg0zObcRSR
	g4u4eOqiU6o10DVFttYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkPJ-0005Rm-Jj; Tue, 24 Mar 2020 14:19:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPA-0005R6-5V
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:19:45 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9247320788;
 Tue, 24 Mar 2020 14:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585059583;
 bh=BiuF+8C09ZXZT+Y0m0yfA1PY8+9yZbVyGyhq0q53CDM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j8uY0T2TR1Jwh+mYP5o7fUfBxvYDj2Sl4idAVhraSsAtcBNSoG2GLTa2Nhw5StfCf
 Ord/lxL5FmP3Ezz+JZlTqLqPH1cmdjcjL6QF1isp83h4j0zilyyvUqlLU10rl1I0pF
 OouqDxnm0K0Vg5g6FDFTf99yq8YWeEY9bWfUeSA4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGkP7-00FIiG-KS; Tue, 24 Mar 2020 14:19:41 +0000
Date: Tue, 24 Mar 2020 14:19:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v4 3/6] arm64: Add level-hinted TLB invalidation
 helper to tlbi_user
Message-ID: <20200324141939.51917225@why>
In-Reply-To: <20200324134534.1570-4-yezhenyu2@huawei.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <20200324134534.1570-4-yezhenyu2@huawei.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: yezhenyu2@huawei.com, will@kernel.org, mark.rutland@arm.com,
 catalin.marinas@arm.com, aneesh.kumar@linux.ibm.com, akpm@linux-foundation.org,
 npiggin@gmail.com, peterz@infradead.org, arnd@arndb.de, rostedt@goodmis.org,
 suzuki.poulose@arm.com, tglx@linutronix.de, yuzhao@google.com,
 Dave.Martin@arm.com, steven.price@arm.com, broonie@kernel.org,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-mm@kvack.org,
 arm@kernel.org, xiexiangyou@huawei.com, prime.zeng@hisilicon.com,
 zhangshaokun@hisilicon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_071944_315784_63092EBA 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, aneesh.kumar@linux.ibm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, rostedt@goodmis.org, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 21:45:31 +0800
Zhenyu Ye <yezhenyu2@huawei.com> wrote:

> Add a level-hinted parameter to __tlbi_user, which only gets used
> if ARMv8.4-TTL gets detected.
> 
> ARMv8.4-TTL provides the TTL field in tlbi instruction to indicate
> the level of translation table walk holding the leaf entry for the
> address that is being invalidated.
> 
> This patch set the default level value to 0.
> 
> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
> ---
>  arch/arm64/include/asm/tlbflush.h | 42 ++++++++++++++++++++++++++-----
>  1 file changed, 36 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index a3f70778a325..d141c080e494 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -89,6 +89,36 @@
>  		__tlbi(op,  arg);					\
>  	} while(0)
>  
> +#define __tlbi_user_level(op, addr, level)				\
> +	do {								\
> +		u64 arg = addr;						\
> +									\
> +		if (!arm64_kernel_unmapped_at_el0())			\
> +			break;						\
> +									\
> +		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
> +		    level) {						\
> +			u64 ttl = level;				\
> +									\
> +			switch (PAGE_SIZE) {				\
> +			case SZ_4K:					\
> +				ttl |= 1 << 2;				\
> +				break;					\
> +			case SZ_16K:					\
> +				ttl |= 2 << 2;				\
> +				break;					\
> +			case SZ_64K:					\
> +				ttl |= 3 << 2;				\
> +				break;					\
> +			}						\
> +									\
> +			arg &= ~TLBI_TTL_MASK;				\
> +			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\
> +		}							\
> +									\
> +		__tlbi(op,  (arg) | USER_ASID_FLAG);
> 	\
> +	} while (0)
> +

Isn't this just:

define __tlbi_user_level(op, addr, level)			\
	do {							\
		if (!arm64_kernel_unmapped_at_el0())		\
			break;					\
								\
		__tlbi_level(op, addr | USER_ASID_FLAG, level);	\
	} while (0)

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
