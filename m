Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D27134EEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEKTD+xRzZjcl+peZYH62VaHK/g0RBFEc9uxK2y0eug=; b=BrsyLtBPyVroKJ
	tIawXb8OBfxJQ2ozhI3AjC8T8pWALmWVOteUoCubg4+fGiGKa4O/L10Q/XIf7QVjbxk+f/KnQxxWR
	Z0hLIsxPMweafEZrWGqtO1FRQ2icRJKblT0dVMOCo78BNrxYW8pe05zTGuTGj/HUQmHBp3shaxXJM
	D2RDVqZuU74nDRkcYwez2oB/TjPRkYnlJt/c7/iIOnwz81bX7YjizL6ZjzoLhBmDEASdfFWODKEhW
	TUnvc43pda3woKj3SM6YTXYmAtzsrdSvJRjNU+A/ZrnnUrnVWXFB8GKNZe3AeOQRQqzu6yS9pirq2
	Nd6+ExurDQy8EVnFVUsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIxP-0007TV-Ps; Wed, 08 Jan 2020 21:33:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIxJ-0007Ss-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:33:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so2183124pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 13:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=stHs+ksGbtueG8+co8cekOXB2PEDZ0+hg7ZuBPxiqUI=;
 b=TSaXx/zzCA0GmGa5JIeeHDlKXT81tq4FLektIrmMiPzwOTCp2UcZdmueU7L0mijqZx
 qDjGnmcyKkMq+/IhaoOQqV0Wmx8f60TG+KQNIY/IoUA8dJMdoLx29Qxot0q/79UbMhlJ
 NvsoCZupj5KFVAgFaK8+EVKkXK+Fe3K/bpEgDkIGhTiP2zoqpqbxNKXB50dheIHkdOAe
 +C/E115ZjI5oC4TnYO4qAbP2N6ZjMnyt8HqUlTrPKu1VIfK5r9csvg8oVngO4ePQ7XJO
 1CbBvAfSaWqZxRHI/3i/WPqyM/UuzmmBYpYJkcDKQhKkY1G3vgg6z8ZxE0GFUNL0BDAa
 qcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=stHs+ksGbtueG8+co8cekOXB2PEDZ0+hg7ZuBPxiqUI=;
 b=T/M6gmk2YKwsJ5dKO5Lc3ZaR7iYiMOR2XELZB1OAmt+JaS25y0MYLO+a8rBkg95PHl
 fMRApKWJpFVCAOhfObub3TGvnFjX2/eW6JA7U1FrP3RBDDu78DOojHIMF3uy2r4R/GYc
 3q2RnfHnjVUeTkRCUUjbgA8/IsZGnKwNZFro0/pvonThqifLSbc1QPJo9K8aItn4qjY+
 tUEbJZVndyJdoH2j2jzPg0rL/s/RUejzaz18zK6HDcRIDUNih6hNBnDJGW7V1ERTnuCl
 8TsanIVySjtf7ZH/XUUWtxSwWfJS+QJvy61G3Hq5knuuHc0V27LbKOb8toAIOHCxur8A
 Qfmw==
X-Gm-Message-State: APjAAAVtwYuN3dEwAJKKa/0JcSYFjT4iK3txHImL86ArDZX2rOuTpZ0b
 PwaBnbfCt8AVwK7f9qisKL95xw==
X-Google-Smtp-Source: APXvYqzWV20C98heeL44DAoNwnQhaTHlx3+wtXrfPzmRT7dQiS8B0sOPLw8S0B3YF3hdHwh19aZhhA==
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr7286529pgk.357.1578519212332; 
 Wed, 08 Jan 2020 13:33:32 -0800 (PST)
Received: from [192.168.15.12] (alanje.lnk.telstra.net. [120.151.179.201])
 by smtp.gmail.com with ESMTPSA id v9sm4825692pfi.37.2020.01.08.13.33.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:33:31 -0800 (PST)
Subject: Re: [PATCH v9 2/3] arm64: random: Add data to pool from setup_arch()
To: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20200108194133.44110-1-broonie@kernel.org>
 <20200108194133.44110-3-broonie@kernel.org>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <1639b993-d056-5e32-b841-436d42f60df4@linaro.org>
Date: Thu, 9 Jan 2020 08:33:25 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108194133.44110-3-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_133333_537618_DECD9AE7 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/9/20 6:41 AM, Mark Brown wrote:
> +/*
> + * Our ARCH_RANDOM implementation does not function until relatively
> + * late in the boot when cpufeature has detertmined system
> + * capabilities so the core code can't use arch_get_random*() to
> + * initialize, instead we call this function to inject data from
> + * setup_arch() if the boot CPU supports v8.5-RNG.
> + */
> +static inline void __init arm64_add_early_rndr_entropy(void)
> +{
> +	unsigned long val;
> +	int i;
> +
> +	if (!__early_cpu_has_rndr())
> +		return;
> +
> +	/* Add multiple values to mirror the generic code. */
> +	for (i = 0; i < 16; i++)
> +		if (__arm64_rndr(&val))
> +			add_device_randomness(&val, sizeof(val));
> +}

This is not nearly the same thing as what crng_initialize does.  In particular,
it's not going to advance crng_init at all.

You could use add_hwgenerator_randomness, but you have no way to honor the
random.trust_cpu command-line parameter that way.

The only thing I can imagine that would satisfy MarkR's constraints is to have
a new archrandom.h interface, arch_get_random_boot_long().


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
