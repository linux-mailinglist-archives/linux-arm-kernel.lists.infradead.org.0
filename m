Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A200788E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hzz8f+TBuezey5xZkG5JOwqBMXtW8lHKLVkW/69RM9U=; b=pae7c7OM/hw6Jp
	gqV630gYZPoKSddzIPfcYqLqyqp94d0EipsmgL1tAWW8PHaGu1WVGR991Cd8yXIiPW9nt4WtQByW1
	6G0KG7UW+V1whraYosHQM7PcoNARp5tMNo7AQlUyrwo5bOphg5QkrvirUjbnd8BSStyYJeQf41F8p
	ZSoAo1WQ0gikv8evXb0kowHBANCxPw1OdYcluNMEZXSfXE6LsAcrdaCqyyu8VtNRles2Wz0fSoRex
	334s1cYdTgk4rCdMMAwEAKi9T4UEXcGTwlB4tEBGiRKPWiDoAMDMW8IzNtGEBW3YJaomwVZsUZE/y
	5gNOdW+errxslBjY637w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2Jb-0004uv-Ui; Mon, 29 Jul 2019 09:51:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2JN-0004uV-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:51:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B4DE1570;
 Mon, 29 Jul 2019 02:51:21 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 988DF3F694; Mon, 29 Jul 2019 02:51:20 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: mark expected switch fall-through in HYP
To: Matteo Croce <mcroce@redhat.com>, linux-arm-kernel@lists.infradead.org
References: <20190728231949.6874-1-mcroce@redhat.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <181597ab-f38c-73f1-4404-5bbddc451f85@kernel.org>
Date: Mon, 29 Jul 2019 10:51:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728231949.6874-1-mcroce@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_025121_988715_0F3DB828 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 00:19, Matteo Croce wrote:
> Mark switch cases where we are expecting to fall through,
> fixes a 130+ lines warning.
> 
> Signed-off-by: Matteo Croce <mcroce@redhat.com>
> ---
>  arch/arm64/kvm/hyp/debug-sr.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
> index 26781da3ad3e..c648c243f98b 100644
> --- a/arch/arm64/kvm/hyp/debug-sr.c
> +++ b/arch/arm64/kvm/hyp/debug-sr.c
> @@ -18,40 +18,70 @@
>  #define save_debug(ptr,reg,nr)						\
>  	switch (nr) {							\
>  	case 15:	ptr[15] = read_debug(reg, 15);			\
> +			/* fallthrough */				\
>  	case 14:	ptr[14] = read_debug(reg, 14);			\
> +			/* fallthrough */				\
>  	case 13:	ptr[13] = read_debug(reg, 13);			\
> +			/* fallthrough */				\
>  	case 12:	ptr[12] = read_debug(reg, 12);			\
> +			/* fallthrough */				\
>  	case 11:	ptr[11] = read_debug(reg, 11);			\
> +			/* fallthrough */				\
>  	case 10:	ptr[10] = read_debug(reg, 10);			\
> +			/* fallthrough */				\
>  	case 9:		ptr[9] = read_debug(reg, 9);			\
> +			/* fallthrough */				\
>  	case 8:		ptr[8] = read_debug(reg, 8);			\
> +			/* fallthrough */				\
>  	case 7:		ptr[7] = read_debug(reg, 7);			\
> +			/* fallthrough */				\
>  	case 6:		ptr[6] = read_debug(reg, 6);			\
> +			/* fallthrough */				\
>  	case 5:		ptr[5] = read_debug(reg, 5);			\
> +			/* fallthrough */				\
>  	case 4:		ptr[4] = read_debug(reg, 4);			\
> +			/* fallthrough */				\
>  	case 3:		ptr[3] = read_debug(reg, 3);			\
> +			/* fallthrough */				\
>  	case 2:		ptr[2] = read_debug(reg, 2);			\
> +			/* fallthrough */				\
>  	case 1:		ptr[1] = read_debug(reg, 1);			\
> +			/* fallthrough */				\
>  	default:	ptr[0] = read_debug(reg, 0);			\
>  	}
>  
>  #define restore_debug(ptr,reg,nr)					\
>  	switch (nr) {							\
>  	case 15:	write_debug(ptr[15], reg, 15);			\
> +			/* fallthrough */				\
>  	case 14:	write_debug(ptr[14], reg, 14);			\
> +			/* fallthrough */				\
>  	case 13:	write_debug(ptr[13], reg, 13);			\
> +			/* fallthrough */				\
>  	case 12:	write_debug(ptr[12], reg, 12);			\
> +			/* fallthrough */				\
>  	case 11:	write_debug(ptr[11], reg, 11);			\
> +			/* fallthrough */				\
>  	case 10:	write_debug(ptr[10], reg, 10);			\
> +			/* fallthrough */				\
>  	case 9:		write_debug(ptr[9], reg, 9);			\
> +			/* fallthrough */				\
>  	case 8:		write_debug(ptr[8], reg, 8);			\
> +			/* fallthrough */				\
>  	case 7:		write_debug(ptr[7], reg, 7);			\
> +			/* fallthrough */				\
>  	case 6:		write_debug(ptr[6], reg, 6);			\
> +			/* fallthrough */				\
>  	case 5:		write_debug(ptr[5], reg, 5);			\
> +			/* fallthrough */				\
>  	case 4:		write_debug(ptr[4], reg, 4);			\
> +			/* fallthrough */				\
>  	case 3:		write_debug(ptr[3], reg, 3);			\
> +			/* fallthrough */				\
>  	case 2:		write_debug(ptr[2], reg, 2);			\
> +			/* fallthrough */				\
>  	case 1:		write_debug(ptr[1], reg, 1);			\
> +			/* fallthrough */				\
>  	default:	write_debug(ptr[0], reg, 0);			\
>  	}
>  
> 

Already reported here[1].

Thanks,

	M.

[1] https://www.spinics.net/lists/arm-kernel/msg743592.html
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
