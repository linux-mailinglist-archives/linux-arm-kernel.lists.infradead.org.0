Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29C4D91E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KomG551XfBcFjngc7RH6JjO69JXaG86aswvgE2N+yCs=; b=R9I0E3NgQFiMTr
	hOBATD1M3aq7mtMwg8NKUkK+LynqkikHIkEnUjnPc2O/a2E42reIPh1g/wL+wlvbEdZ3M44jPWg0W
	oaQB5/8HQRQu2ZE0aY9/8+KxxRiKsTvTMdkNM2KKOODBXFxmMJNhTO0+VhL/dtww4nWLK2OtqWfzb
	3hCJhFznyX+8R+VQY9w+zIEZntGzMCcKhyHnGRP2Jr+GTADvUvaafi/1kwfPjUcaWxF5WxD/KCh48
	iSFMR2yqG03YWg7MNJQh5UNI/eSEkS+/cW4pNFhXE1xuruXMIQf1WzMvGVjYEQsRCwCO+TfGdjpKc
	J+RkpNfzBwBT6jvOKulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiwl-0007Yq-MS; Wed, 16 Oct 2019 13:02:35 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiwY-0007YI-NO
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:02:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id c21so35871610qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nb+Zwv6A9Mb4GfSnlLYIs35QuTFmhM3ANMKIRmvC9YI=;
 b=k2uI+8mjSnh09Xb8YO7vjSmrVkGwUmx1Mp2fIXodTr8e5zJG/RhUZ9a4R+Ze4LnTtK
 23eqK1hAdLmvlmjfJOSbPS4YfGjjwoWeVeiQ+Xb31T7+BLKRnSsZTG8bubsr/JjuWR8/
 4AoHL4EfhG2bs+gtfdfHzxYOGI6VlOer+aiNFAYVyl0lTx8F9Exqaf+DH5uL1DIBgUWq
 az80mzMXkF5Qj+VH8cvhDzRyTKlq6rMPJ+BBA7Hc+HqVwGTu0TqjW645pYwiPf3AA+0a
 +KCJvGnQa4kJUbsEam72ESp8wY9Nbn1BJVHcrIjHvnYP/AFdzm1XjUN1Ycnd6i+IGoll
 aUyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nb+Zwv6A9Mb4GfSnlLYIs35QuTFmhM3ANMKIRmvC9YI=;
 b=YJnYKIsnCAfihr57EmMSYciWZzUHaNECzCsSwL3IOkh5vKIthNcuz0pUVTv84p7pQe
 WiW3gsrAfU0YSyorlbq1gh95VYFU93a9BIYPVrEIKY9Lgoe0GSSIKtJg9KYCbZhyiE7x
 suIg5/M3cG7KM9NRWS6LMYHQU0WlEv82VaoTiVOLxPenHJ5x/OPKPFsGRVBl8S8sE52B
 CJS9X2pZ08lDtUIkbwYFOFJ53PIwTWmK5s/hK6E40/YDQ6zvFNxRmNaHEP0K/aOtIfTR
 GixCSlQ1a9Mr6SqsyKrqw2AhFFIvfy3JMM0w0Q66fMSDEqkbEfCHjhmz5uTDEQUALC7u
 6JIw==
X-Gm-Message-State: APjAAAUwXSJFfJqUATu0fN8d9oXIiU69qK5UbXdazbCDgdgXu+YMa9Hv
 tQ0YR59/zW4OI3VQxOuLppo28psQ++BIYxA7ZRpKhjn6
X-Google-Smtp-Source: APXvYqyW4cbiSWGzBxQIXio3vIu0cmY2K6dYV01TTkd8mDKAjaYz3de0ceDV/3tatxQgqUQRv2lL843vXSRKNrVKh8k=
X-Received: by 2002:ac8:2f9b:: with SMTP id l27mr43816025qta.218.1571230942027; 
 Wed, 16 Oct 2019 06:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191014121910.7264-1-ard.biesheuvel@linaro.org>
 <20191014121910.7264-16-ard.biesheuvel@linaro.org>
In-Reply-To: <20191014121910.7264-16-ard.biesheuvel@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 15:02:10 +0200
Message-ID: <CACRpkdZLha2jExo2dzfxpCLw2SydWxkOw1FDLy+iwY9i7hADpg@mail.gmail.com>
Subject: Re: [PATCH 15/25] crypto: ixp4xx - switch to skcipher API
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_060222_762967_79F0893C 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Linus Walleij <linusw@kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, linux-crypto@vger.kernel.org,
 Imre Kaloz <kaloz@openwrt.org>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 2:19 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:

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
> Cc: Linus Walleij <linusw@kernel.org>
> Cc: Imre Kaloz <kaloz@openwrt.org>
> Cc: Krzysztof Halasa <khalasa@piap.pl>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
