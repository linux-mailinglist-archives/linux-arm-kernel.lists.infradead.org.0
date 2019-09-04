Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FD7A7BBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5+yQgUh6IfIbHRyyn4tzdESOU5ijWfWQ80EbLigqdQ=; b=ozEbvMh4hK5Gmd
	7fExoXdarVlfdZVtIL7ZAQywMueiC+jW7uwm8Pv2R0eNc6bJNcJj+4yco6g+ufe0ygYWB/M/K+oxc
	dtIE5Y5G1JuKs+/grevaMWVGtSVZVOAxzZmrahmHHhshvmPb36lake/46h0oiEMtjdTq4Ehc9mTcI
	LAp67/43qtT2cjenO+jw+d4PXkuXcubZFAHqZVwVkIVQVMTw9luEQj9urQdg0FFjEXXbjxJzfk83W
	8fN+dt8XHoCEtnAB1sJQB8NH3NMZCbHK7Uje+TRbSuy7x5IqlJ8HQnh1FVVTvj9wZhfxL0z/83e1A
	wr3J0/MSrumW4qxoqCFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Oqt-0007c7-8i; Wed, 04 Sep 2019 06:33:11 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Oqe-0007b5-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:32:58 +0000
Received: by mail-ua1-x942.google.com with SMTP id f9so6359797uaj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pX/GIsxIbo847f+9FXL/2KTOJZD24+9rFmb5WYj6XnM=;
 b=ehRWcBqW/GnnrlLMZcxZ1viX7IZQO1jEB4mYsM9rvT1aBiuak1bsc24ghhQdY1flE3
 vPA2jiJUTn1TxryfeBlRjQ3Zwbs1C3Dunqzz4HZkyEiMl97AvEVyCVEaWjU6YE7yaZKk
 QFgRRsxbYODVVkXzkzv884LEQiuC6CBl0EzykoH6XDI3YiF6P/FItLJb/RwWZ3WBjEm+
 xgLWF+y9fqqIfJu3KwOf92/Px/4TcUs8f/18B1U+7F+oX/+glyXDhD/ZyW6QeKN+5uAF
 8okc6Lt6HMfjAbzd6/HPu9e0mzp/NiTRYkXmdgRsh9M2sq8qaAnaSsbXJHXkYvE0oeO/
 u+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pX/GIsxIbo847f+9FXL/2KTOJZD24+9rFmb5WYj6XnM=;
 b=rL8V28dydqdoR23N95lyoybINvuNPgcSsvTBpXj/ZjptNdMateh6dujlTyjLK6bbYl
 aDwXkdgBy0wgBk17wTrRt5Gwj4DQzVaBWK/ZrVbBDjXc5ZWiV+rJ2B2sfP3vPyQ8RIdb
 IkajNRXcMDKayt++Q4021LPMsrJV6pUUKfN8XTkSgXuQHv3EpBzzcIr6vsGPW15bZvSp
 umL5USqkw2drmZjnxLddmF0IfP6FEqg3YNtsYlJHd3Tp+2ZbAqBIQVb/LpSVh4mSGS2e
 N5U9Y+2O1P7lY2+FJPadJRor1DvNeilh7fRilIwRUUQcdI4tbFfv7p/RuSq3M/GC7uNx
 P4Lg==
X-Gm-Message-State: APjAAAVYxfevQe0VLm8aoYgRhJS0hZES8UuT5wsfsJIFuuS0Y17Jlj94
 lrp/xPvDFzLfln+ePgvft69CXaQlSe4whz9zrOI8Ew==
X-Google-Smtp-Source: APXvYqxLkO4gsK7ntkEBpo/NFXtCvWaI2cOa5+E0oSaexWzXKH/CEQPs/hLtZQ5zTm1z1/mU8QRSrIfhVXyy42mFJDY=
X-Received: by 2002:ab0:6601:: with SMTP id r1mr5047079uam.100.1567578775596; 
 Tue, 03 Sep 2019 23:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190904022120.4174-1-andrew@aj.id.au>
In-Reply-To: <20190904022120.4174-1-andrew@aj.id.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Sep 2019 08:32:18 +0200
Message-ID: <CAPDyKFqj84wm4hHTv4xWMOXpBBi5mkBB8BXJgNFb7-c_YtzpCg@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci-of-aspeed: Depend on CONFIG_OF_ADDRESS
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_233256_957939_366150C1 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild test robot <lkp@intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 04:20, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Resolves the following build error reported by the 0-day bot:
>
>     ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!
>
> SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Depend on
> CONFIG_OF_ADDRESS to ensure the driver is only built for supported
> configurations.
>
> Fixes: 2d28dbe042f4 ("mmc: sdhci-of-aspeed: Add support for the ASPEED SD controller")
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Applied for next, thanks!

Kind regards
Uffe


> ---
> v2 was a series of 4 patches, three of which were applied leaving this build
> fix to be reworked. The v2 series can be found here:
>
> https://patchwork.ozlabs.org/cover/1156457/
>
>  drivers/mmc/host/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 0f8a230de2f3..3a52f5703286 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -157,7 +157,7 @@ config MMC_SDHCI_OF_ARASAN
>  config MMC_SDHCI_OF_ASPEED
>         tristate "SDHCI OF support for the ASPEED SDHCI controller"
>         depends on MMC_SDHCI_PLTFM
> -       depends on OF
> +       depends on OF && OF_ADDRESS
>         help
>           This selects the ASPEED Secure Digital Host Controller Interface.
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
