Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202511C5EA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wJQJKsM3mZ9APfiNe7mU0DMUi1AybkGhCCqr7M4InI=; b=AuCOgJkyaolXeP
	xjJ6K4vWYZ/bH1Eb/GkPlDB4IQpOTXgXQGZM8hXr1mm+gSS/vXqlvmOfipUv4JERzykL7Yrk9Kkiv
	y8Ge1Vh+s7fPtUNRfm5yi6opfx+Vdwfs7bUIzVRwhLFCnNiYckcfj2lDLepnp5Ezdhqx0GMPGwpyh
	WgRLPplvtIIPgoFUpZtFCU+uXwxbt/0hjr+yMxSxvV7KQBEws9g98sRj6UKcn/bn6LnTim+vDojMS
	k/WHz+9sxTX8Bs/1IGHukSZZddVqcEM6j1vKN27BLZGfYFBs/FFW/mtoImkpDkczXCWBV+AjMtkRX
	7F+E8sgZmjVHM229nKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1Cr-0000XU-65; Tue, 05 May 2020 17:18:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1BO-00084W-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:16:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so3237371wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 10:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j/K4PATbLRvXzOHJ5kuvFj7wv+7GxYy2AO2wgULDc48=;
 b=UdfGkBCaEekX1+Ogl521QElFibeK4JEuXmv+9Qyn1i1eO1zr1X48fFX03epvhY+IY6
 ndvidFnMb1LphudrcVRhoWifpNWD22iZNraDpuomYuRhOEn76EjZ3b9SSDCBtT8Y4GQ7
 jt6vabzBm6D8UD+o4kzd9GJibXajbtWD8IdhX9Lmgfrh0w0ORRwY8fXa2Ya6/ryu3evu
 SBcPxJ45+56nOeQDG0Egjl56sijaUTDF0SJfEaOmqBuxiSyv38xKB49H6095OwlH+Mad
 6s4qyd1ojEeGZwrkhd05xwnwU2rFCDNGqF17NcmacWdRCjdzQak93yG3czezNQwM0bZg
 /ISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j/K4PATbLRvXzOHJ5kuvFj7wv+7GxYy2AO2wgULDc48=;
 b=umQrNrin9R4AWxBqEP50NNb1PZgm1OssQ63ykQQfdrdOSm5JSCa4yPzLDm2WcKqqOh
 DC5CWvsUvY1KiNBW44S9XGo8KUWgPTZY73WrNZhpB3VyKjq7so9WqeeGhqTFp2DI9l0Q
 hup0wo+fZEXKcoX+CuaYObFHInullZMsWQThm0ECVnBo25Db0c+KwWY51bYKwpve+U+r
 /YmlopR4TzyBvLECxEtrFPAVQIAKXCfNYB+bwjLSTGg856H0aw3qc2/QlwQZNfpjWG05
 PS6yBvjUa6Hdkh7E8JamuDlXCP3kuRQQ+nEXz3C78YFkoZKk+kFFCQCWWUOdv6BcL0m3
 BE9A==
X-Gm-Message-State: AGi0PuaAFPowsO3M5FcH3eSVfkwBhPVliD3pqVoj48eGAUbelOaHVqlo
 LTalyEncPAX3EQzaYiz8YIcqgQ==
X-Google-Smtp-Source: APiQypLAF/GA9/GggAGCjJYWWbPUt/ZLtlJkLB0SJTpOIVPoR1ng5wPO0c9UIGGAGmCzyMuR7y9mNA==
X-Received: by 2002:a1c:3c87:: with SMTP id j129mr4234274wma.157.1588698996194; 
 Tue, 05 May 2020 10:16:36 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id z22sm4692812wma.20.2020.05.05.10.16.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 10:16:35 -0700 (PDT)
Date: Tue, 5 May 2020 18:16:31 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 06/26] arm64: Add level-hinted TLB invalidation helper
Message-ID: <20200505171631.GC237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-7-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422120050.3693593-7-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_101638_175781_EE877637 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +#define __tlbi_level(op, addr, level)					\
> +	do {								\
> +		u64 arg = addr;						\
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

Despite the spec saying both tables apply to TLB maintenance
instructions that do not apply to a range of addresses I think it only
means the 4-bit version (bug report to Arm, or I'm on the wrong spec).

This is consistent with Table D5-53 and the macro takes a single address
argument to make misuse with range based tlbi less likely.

It relies on the caller to get the level right and getting it wrong
could be pretty bad as the spec says all bets are off in that case. Is
it worth adding a check of the level against the address (seems a bit
involved), or that it is just 2 bits or adding a short doc comment to
explain it?

(Looks like we get some constants for the levels in a later patch that
could be referenced with some form of time travel)

> +		}							\
> +									\
> +		__tlbi(op,  arg);					\

cosmetic nit: double space in here

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
