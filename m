Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A6E61DF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 10:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4CLjAEk3vzmYNv8g2/t6QPIGnH0B0OHG+XWTIKnz1U=; b=NrKvtig0vvwHbq
	HV3scR4i2sBpUiV+lAHQpz5COvBgDPrFiRG89jE65lS0j3abw1xYP6sWCMfqxdK6z/I6GT5wLe/X9
	VfTgVSMf6HyOFMCFdOT4OVQvMXBYLCuO0yJfodO9GVTaMmMDI4orvBftpRc6z2S8rj6Ay3VuGG0Tf
	/qmjIyZqOUw5B5TPud+s8ptoBZIR96q9tiBN7nA0xV19eWCKJOY62NoZwSCSoRMkOefI/l6X+P2S5
	I5QWOwDiA/f4Ll9i+X2rqgOldjxktuxO/IY69UioT0tC6rYR4DdlEId9+LgII4ekgVyPqu+FvCvJP
	9+Mt2UiKgqskKOrIhvxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOfDO-0001qO-HA; Sun, 27 Oct 2019 09:52:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOfDH-0001pw-EN
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 09:51:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so6852161wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 02:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7QehFsmbEUXBylp6I6c0hm1gnaW+3GE6hBpKIJOLIUE=;
 b=atSdeIusOWVh5qnTdrFHuao3J9beARpY5rsOQWusSPPET4sJGwRDZPzkQeoa1XEM7E
 rrOrBoEMwH5vqMse748k9GWIXC2OW42eG3wHy5bAmYZjjm7gmyecmXIzxNFQ5LIqmbTF
 oNneVaDnKZJNCgNFVNed3CubOjGFikctV6C0PiErzaCNJyQmR7+GvmcGT3pEhEgbwJzG
 +W75Nt+ake1Q6TVoQHaNyMVw+Jq08xL14S4XSSqwDRcdytiFwptRVzRRF0o+tVosrdg8
 2vUCx7KakFUI9DhFBK/3Gsmmhv76UIZS54yJ1wDGjPguO/mPof7STAXuIJw/kCenxqMY
 PO3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7QehFsmbEUXBylp6I6c0hm1gnaW+3GE6hBpKIJOLIUE=;
 b=KaHjia2L+Uu7tZ/J56ntr/L4+JNDKy0WE3SQ7AFKHrDEssok+JSpPEoPS+e1/KApGD
 mZI/qEyobUhtDTpLG4TYftCBZpeF1PqpvThP5uhp83KliZz1HRGh9krtOmoRT82N60vr
 ITqIKhpJOcevbaSoS+Tq2LK/VXYIqAtKySWCkasC5ZMDSjfscIspFvQay1XrDaK0EDKC
 aQgXpX9JoGkPt2KvXhOsrtMWgkoMXeCyqBgwZeC3LhvEGustxaB8HQ0UUIP8S85j3zx9
 ZG6KmP2/Sw5gN6etDhbKO6SnifBIXOkiyTI9NQcnTRQiFiE3rV5BHESaMIF5MLPwBsvM
 Ea8g==
X-Gm-Message-State: APjAAAU/rE6GzCODh1oxQFhRm4eAPYxSQ6FsPyHCS5sv+z4RS0dQpBkX
 rxsnZzxZihRWDBW5YrVW9FP1bvk2aTE=
X-Google-Smtp-Source: APXvYqwXWJAx4TFkPZ/jCumpsKejQPTmJr2wPvincZSoLJ2tJSSMIhTLY8tM/NQHxD8/kDoyShHtMQ==
X-Received: by 2002:adf:fec7:: with SMTP id q7mr10818440wrs.267.1572169912002; 
 Sun, 27 Oct 2019 02:51:52 -0700 (PDT)
Received: from [192.168.1.9] (hst-221-5.medicom.bg. [84.238.221.5])
 by smtp.googlemail.com with ESMTPSA id i3sm8067094wrw.69.2019.10.27.02.51.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Oct 2019 02:51:51 -0700 (PDT)
Subject: Re: [PATCH v2 20/27] crypto: qce - switch to skcipher API
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-crypto@vger.kernel.org
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
 <20191024132345.5236-21-ard.biesheuvel@linaro.org>
From: Stanimir Varbanov <stanimir.varbanov@linaro.org>
Message-ID: <d587463d-2aa5-1ec3-ab0d-f4a985ec5551@linaro.org>
Date: Sun, 27 Oct 2019 11:51:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024132345.5236-21-ard.biesheuvel@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_025155_546626_04272C21 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

Thanks for the patch!

On 10/24/19 4:23 PM, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Stanimir Varbanov <stanimir.varbanov@linaro.org>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/crypto/qce/Makefile                     |   2 +-
>  drivers/crypto/qce/cipher.h                     |   8 +-
>  drivers/crypto/qce/common.c                     |  12 +-
>  drivers/crypto/qce/common.h                     |   3 +-
>  drivers/crypto/qce/core.c                       |   2 +-
>  drivers/crypto/qce/{ablkcipher.c => skcipher.c} | 172 ++++++++++----------
>  6 files changed, 100 insertions(+), 99 deletions(-)

Reviewed-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>

-- 
regards,
Stan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
