Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21151399BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 20:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxrSKiylcZIQFrAJPsvCcy9Jc18Bfn9bwrIFNyRbKGU=; b=jGGqhYI5cd8VOG
	R3cA18JIJU0lJatdlJdCoJzaEyPpStfN4krN9eiewnX5b0DuNIDIfVVLLors6EYssTvEk1JOwfi0C
	SEDTxp2ewMfQK3F4xLhXUupJxaSTFp80RYdw2mJkWT0lYfhMoJuI2WHPG/f7dgdweUc58oMRqZyMY
	rxXKz7PulRYLsTbhNEdsinWX9jSlwk0nsU+VvbPpJOh5OjlJO2gczW290QoDPJ+jIQXOYOUyoarM2
	nHBUnUu9EDzf9MQmeK2sskfgAHUQmaxBYVmKnLTbuu/zyILop4lis89swdQgzvd5VFsQuRg0c7PFm
	1NVqnhKoTcDfkNSzmx8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir56O-0005yJ-5A; Mon, 13 Jan 2020 19:10:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir56D-0005Sz-25
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 19:10:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so5298402pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 11:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WV7k9KiYoDcnFOZOqkZqw+JoPHmLrbLAx4GqZihcSbU=;
 b=Q+xB8BroCzZqi5qAZITzRpyWlMelyTSU0Z5Y/uT2+MD+WQdDIcGptkJU8fni5djVoF
 W7KlmZfu5jYOCiNJXhJfCMUQ4S+svPIXdaEqUJsmi6te69uIBDF56e8ouezQ79mpFymP
 AIztlFOnW7dOAAKfYXN49rIZx+WawY8R1wLuzvSbuR9kkkxhx7eL7pfeyhyrZddXUvhq
 MzVX0o6ppinM7qCZcNxHHZdwHKc9XQ8/J+9cQLfAMR0tCx//kZzJ85Nimp/JSAUmS4E9
 Wn3OqCAM2AMn+055k9Cpi7Rghima0sqIUngzh1fRDH6PUs8CmZKmqADzqPOudj+C9egS
 Y4Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WV7k9KiYoDcnFOZOqkZqw+JoPHmLrbLAx4GqZihcSbU=;
 b=PDpj4E7F7GBJdDM7PLvZkgMw6IAidu1k+/uBIpbaTLYj6TUj3DoMYSithoYyPTVfH4
 x6pudUgac0f8U9ba3+iDX+RdMbUA2xm2qOCGLSxQR1Xe5pMdf6LD36ytspFbf15oaVNK
 opEuiu98bGd0yEDCNH5OHKG0icHfzzbnjHO2JpW5L2kk3lCOCOX7CrMNJUeNr12jwrtr
 TNZfF/CXecULoZmnXrqREL25anH6+YZx0mv285i7zNkL4QTN9YtDpfrKW1iuFJl4aNzj
 Jz9aPWQiiQphE6sC0XGPMPZlOsZQhOPJ8UWxcQyoNgBats+GsLe8mutFzpDPwoKSQddv
 aISg==
X-Gm-Message-State: APjAAAVUE9a7d9nsPSmU3EewUNvvfiK8M6YUS+ztHYvYXc/CS8AYiuHF
 NX5aekA9Rrq/PZ6vMi3+oZE7mSfPQ6E=
X-Google-Smtp-Source: APXvYqzzkr/fgM14XSSFf598fyNiDJTFfa9zMr2lpK0PxBJUURaaf+q+inbmgYxqdlLS6URl9Mlx3g==
X-Received: by 2002:a63:c652:: with SMTP id x18mr22635670pgg.211.1578942604106; 
 Mon, 13 Jan 2020 11:10:04 -0800 (PST)
Received: from [192.168.3.43] (rrcs-66-91-136-155.west.biz.rr.com.
 [66.91.136.155])
 by smtp.gmail.com with ESMTPSA id k44sm14309889pjb.20.2020.01.13.11.10.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 11:10:03 -0800 (PST)
Subject: Re: [PATCH v10 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
To: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-4-broonie@kernel.org>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <cbab0b40-06e5-80a9-bc33-0b08a9b257cd@linaro.org>
Date: Mon, 13 Jan 2020 09:09:59 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200110122341.8445-4-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_111005_108451_332EB6E5 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
> When seeding KALSR on a system where we have architecture level random
> number generation make use of that entropy, mixing it in with the seed
> passed by the bootloader. Since this is run very early in init before
> feature detection is complete we open code rather than use archrandom.h.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/kaslr.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Reviewed-by: Richard Henderson <richard.henderson@linaro.org>


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
