Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E813999B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 20:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL5SKiv6Fj3vG0VyKJ94oeuXngo0W3FO+a3MgiCHLuQ=; b=ZIvecDPNbIQbPe
	An+ljj2hKXmgp/sL14vwWAhqMXpvmaw2Y6cVCG/aeJqdPvtanSisLR+xcUegPy0F5v2t30aG0WaNv
	3E87oZGxUqyp7mfuO/5BNNFYJOrhiQ16dVdSrVj8xFEVN9WJxisACtNHNdO4elRNBCXIkE4OfmyEd
	vnKXxz/vehWzrazjMb4o0NxpXXRmOqjG7+JNMIf+uWsNFelM6RzHW2qR4Wd27KmXv8a+ocWlXfGwm
	cuOsZqq4YJdlYkJiFOGCEfcAeVoJ8CY/WjhAEKxHyVDsykNfa0vHHYrF8R1LRFPs+d8OWLt56tDCc
	RIC+Cf11lYNZZFkFyJjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir55Y-0004h9-1m; Mon, 13 Jan 2020 19:09:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir55Q-0004gl-UN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 19:09:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so5319090pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 11:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ge6FxKbujm8HaMVdZjrEJxIYzXVxgY56fz3e6UisU+c=;
 b=hx1X00RT0gEptv1npnWwE2KGcmSK4VQ7hTR6BShNgAy3y0On5YqkmiQ5OVVpYxR2GH
 IduBE0ek+uy2QgDVdcrVcBcRRNxbWWz1cMAkJsZ62Spuiay37hAYBhVi90LX6Pa1C//D
 gsi8SM+3Jv3s/oqcc6l+c9Af9ULz0kvnDJv4Tz2DJcnOFKHqli/gUgU8pmubBsHwmoTb
 4MyiUv92IEmUyTqwzNLh/51mCSvEN1kG0nvgdMe/nCKsK+Z7mw92bE+It3MlIAm7wQrF
 hs+0+1x2Z3g1/5EbfaohrrYpveXqcTd6mwvCjrUggnzFzVXnt5VLpn/lOgbAICu4ovm5
 ymvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ge6FxKbujm8HaMVdZjrEJxIYzXVxgY56fz3e6UisU+c=;
 b=byJ2X1TJWii3dyX6PH12vvMdvDpIcDK5T0FjqJvrFzQLSTIuY2mLaQlaGHf3RMwFvv
 zSKOzr4Gi2Zco63+U0EQQJtgAwQnu0iSJ80uY1MGtJfVglu7Za/Rj3R9H/Vwn9D8EbZO
 fMdLUXq2w87oPGQeRI3zTtXjncuiXRH29T0QvrYKKRs5L5NJSoRF6v8WXxVsaKv0LSTW
 cIPv0XladTP4Uj5O/3DaGFF1iMyUVo5Jx0diduGsoITT87AXWo2Ypc/rPMtD6hKXp+oA
 NkkfFVagDk9Zkuqe3aoCnFSNnu74H9GzOmiFQpetic9si2qcDF7Az1l55z1uIfc8Ver2
 bcEw==
X-Gm-Message-State: APjAAAXZ0GjEGmlGMfNKyLPph980tuzcD00m0hEsDBdOU1jBguPdd4gu
 1v8CphUIq+2oPJwjIkkKu9bT7A==
X-Google-Smtp-Source: APXvYqylm+AmKnRnGtnI/pwatHzp40sgStxKXs3Yqpwj3aaWQd5aD7G4j9XVxr9jum4USHUImW/5nQ==
X-Received: by 2002:a63:d017:: with SMTP id z23mr22557567pgf.110.1578942555971; 
 Mon, 13 Jan 2020 11:09:15 -0800 (PST)
Received: from [192.168.3.43] (rrcs-66-91-136-155.west.biz.rr.com.
 [66.91.136.155])
 by smtp.gmail.com with ESMTPSA id o2sm14079920pjo.26.2020.01.13.11.09.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 11:09:15 -0800 (PST)
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
To: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <3c22586b-a994-2542-d3be-9de9a59d3606@linaro.org>
Date: Mon, 13 Jan 2020 09:09:09 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200110122341.8445-3-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_110916_984845_53B21ED1 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 1/10/20 2:23 AM, Mark Brown wrote:
> Since the arm64 ARCH_RANDOM implementation is not available until
> cpufeature has determined the system capabilities it can't be used by
> the generic random code to initialize the entropy pool for early use.
> Instead explicitly add some data to the pool from setup_arch() if the
> boot CPU supports v8.5-RNG, this is the point recommended by the generic
> code.
> 
> Note that we are only adding data here, it will be mixed into the pool
> but won't be credited as entropy. There are currently no suitable
> interfaces for that at present - extending the random code to provide
> those will be done as a future step. Providing data is better than not
> doing so as it will still provide an increase in variation in the output
> from the random code and there will be no impact on the rate at which
> entropy is credited compared to what we have without this patch.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/archrandom.h | 30 +++++++++++++++++++++++++++++
>  arch/arm64/kernel/setup.c           |  2 ++
>  2 files changed, 32 insertions(+)
Reviewed-by: Richard Henderson <richard.henderson@linaro.org>


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
