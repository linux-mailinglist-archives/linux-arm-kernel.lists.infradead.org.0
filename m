Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51308E8968
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:24:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elHMINoz5l8TFNiOMH5bOMjsR6eILE/hPXKD9SqWz2s=; b=Qs45M2NH9DU+tT
	rjYZ7wMCIgKhKF2U2v5bc5HLk+AR9ZQYMb8Mrn4DS6ZVpbcJuL0Bi3ELNHCPE5ZVh9o66GHMFvl2J
	Q9Ga3zM1k+ikFU0A0iB8g5F6yEQaZxOt6FJdeiwNwMAhkK9+JFOwvZw0xN5av0KUt7CSAUnIxp0C2
	NMFj00gr55HfgspfrZX5q3kUd7Tmf21pQfFvqn+vH6+rRONUWHrYNKUIF212rMi3zDPl4m1SJA2qz
	SLavyOy6BWA648fOP/cb9nFNwefynaEpd68aoy6gzAPK8/9+eLTnj2LeQi8eLK9iutBsPjoc9/z+C
	bAVqAZGBeNQ24f+ooPOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRUO-0008Am-UX; Tue, 29 Oct 2019 13:24:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRUD-0008A0-TM
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:24:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id p12so9587415pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=agBQg3hokpEDCA+5ypathVVcPR8JeMxOWdM5pD1vdDk=;
 b=TrOSRYkSgaYuSKiCgDaU15gZjZDUYotaZzKqMu2F8RK8gTrmuWL20FeYbA4KXJ3knN
 OvcPsfUQ7+sinyKas+FD8LK5cBHpFCZ2We5tTMg4cDcfYevPKgdw6fshB0FI0Knmuiz4
 AJivLs8afNcJ3EYvOsWXz0PJFuGJIQipugzhhxtyw//da1hckEnZTipWWK19ViJI+4T6
 AOoK+5eIReB/0LiFFAlq67r4rYxXihO/WHr2kn/XL6JEN6LdvwyMnbCOt+EUI4b7n5W7
 CYllX3PSmIeXuSZ1WgBW/oInAQpDblwRnyZScLLRz5p8eLmJ/WOZqKdGHXYKi1SXd8AU
 2qRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=agBQg3hokpEDCA+5ypathVVcPR8JeMxOWdM5pD1vdDk=;
 b=jHhzkw3a5rjPAPwAEp7ABRZxumKT4l2EESONt3+9kq0fN8wIQBpEQxrhtC62CzmdPE
 PoPnWZayCqFuWLdUfOQdHkfT+MuCRpTZHcvfP7Pm23E56dpntHI/zCnhsmF7OSVo/K3x
 D6WqAwbyg4U79EI5IQG4WLVcazA7ly/QDSAYsNyF7JH8vTjoCvnTkJaYsM6+NSoMMkX3
 k9Q53FUYKV3zpgsj+Ep7MI8ZwbiyClE/CxQRdBU6aAMt8COst+tZZEhfyi8rZ2F+6JyZ
 mE+SBcYyiwBFzCItK8GXKCaDM4GnTjr7QJzyENmVThXfqRM49RxkrP2mMNcuHwkWinav
 oU7Q==
X-Gm-Message-State: APjAAAVZQjYuM+Fu9hFxio3LeZqXiWU1zj2N9FZrmOoLhwMYxHLf7pB4
 0lvbtQGINVQt0k/PZN/JEADpzA==
X-Google-Smtp-Source: APXvYqyBw9EuF2wA7EpWIyA4yR+S/tQc38xv6kLvb7CVNeXKvseSgzNPRoDaFui1dmABxAQdONo+eQ==
X-Received: by 2002:a63:c411:: with SMTP id h17mr27117887pgd.360.1572355477251; 
 Tue, 29 Oct 2019 06:24:37 -0700 (PDT)
Received: from [192.168.43.94] ([172.58.27.50])
 by smtp.gmail.com with ESMTPSA id d14sm16439173pfh.36.2019.10.29.06.24.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 06:24:36 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: linux-arm-kernel@lists.infradead.org
References: <20191028203254.7152-1-richard.henderson@linaro.org>
 <20191028203254.7152-2-richard.henderson@linaro.org>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <bfda9074-a866-d5d6-7f2a-3d91258a7113@linaro.org>
Date: Tue, 29 Oct 2019 14:24:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028203254.7152-2-richard.henderson@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_062437_953716_EBAEA0C8 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will@kernel.org, Dave.Martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/28/19 9:32 PM, richard.henderson@linaro.org wrote:
> +bool arch_get_random_long(unsigned long *v)
> +{
> +	bool ok;
> +
> +	preempt_disable_notrace();
> +
> +	ok = this_cpu_has_cap(ARM64_HAS_RNG);
> +	if (ok) {
> +		/*
> +		 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
> +		 * and set PSTATE.NZCV to 0b0100 otherwise.
> +		 */
> +		asm volatile(
> +			__mrs_s("%0", SYS_RNDR_EL0) "\n"
> +		"	cset %w1, ne\n"
> +		: "=r"(*v), "=r"(ok)
> +		:
> +		: "cc");
> +
> +		if (unlikely(!ok)) {
> +			pr_warn_ratelimited("cpu%d: sys_rndr failed\n",
> +					    read_cpuid_id());
> +		}
> +	}
> +
> +	preempt_enable_notrace();
> +	return ok;
> +}
...
> +bool arch_get_random_seed_long(unsigned long *v)
> +{
> +	preempt_disable_notrace();
> +
> +	if (this_cpu_has_cap(ARM64_HAS_RNG)) {
> +		unsigned long ok, val;
> +
> +		/*
> +		 * Reads of RNDRRS set PSTATE.NZCV to 0b0000 on success,
> +		 * and set PSTATE.NZCV to 0b0100 otherwise.
> +		 */
> +		asm volatile(
> +			__mrs_s("%0", SYS_RNDRRS_EL0) "\n"
> +		"	cset %1, ne\n"
> +		: "=r"(val), "=r"(ok)
> +		:
> +		: "cc");
> +
> +		if (likely(ok)) {
> +			*v = val;
> +			preempt_enable_notrace();
> +			return true;
> +		}
> +
> +		pr_warn_ratelimited("cpu%d: sys_rndrrs failed\n",
> +				    read_cpuid_id());
> +	}
> +
> +	preempt_enable_notrace();
> +	return false;
> +}

Ho hum.  The difference in form between these two functions is unintentional.
I had peeked at the assembly for arch_get_random_long, tweaked the structure a
bit, and meant to copy the result to arch_get_random_seed_long, but forgot.

The first form above produces fewer register spills from gcc8.  I'll use that
for both for v3, supposing there are further comments to be addressed in review.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
