Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A141AD5E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LomVQ2EltuwtB9AmUeDUP0GJPLICryVvR6iB5fiKIBw=; b=q2gYfw5dx7vakm
	SFxQIlZ3yzp7bmRhryUjYSQfhdjevKRFtRMNHGgczWu7OnqwGnBiM2eeuY+VAOdc+WXmQGQm++05K
	uX+71lDtv5JOla1uj+A3tr1u4+2UpjIG5KmMuAP1/yKINb7ObsTl5OTaIOEhaKoNJyevkOEAdnIL+
	3vJ8nlZ+j+NN+ce6q2RrEUBeYew6t67BfBr02gO+4DMcvjmzPXZDvj5NkJjSPamnuRdEp+vwOgpVf
	6C/tKNtyqjXZ9wjcX4lJQTZEY4qSgctvymXFZT8Fdi5Q46J5U2HiUeaCO+9BCMej/uZs8TcK25kVg
	r4E2S0O+9iA2YelQYEbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GAI-000549-2z; Mon, 09 Sep 2019 09:40:54 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GA3-00052d-5v
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:40:40 +0000
Received: by mail-qt1-f194.google.com with SMTP id r15so15358287qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OSsOhHBNA6WtbtbcXdsydd62P7AL/2R8zBg5KGvl2fg=;
 b=EmAyqcUT9pr/Lk8fRZ2l5lT1J9/wUbix4i5nSIZddTTcsT4i5HIbjCo0Fj+jyevtWF
 COERNPfBvNCJw2iEg/YoysJcm0KZ2yWxejflxX/JfznACwnv40Jisl9oYYr/dNtxOCUW
 5gAZAY9rGYqpEKnGJJTVzQxlh5CZkmceoRw/IZ1ESVvQsilZeMc2DszD4OcfuykyMszf
 otOToiBs8U4bQQfdvucB06gT1YO7ZkJf2USMrS+Ql7dt6QMXZC+UBI28WX0IqB/N47LC
 5RiUmOeG50qy+O0t8wKHugDlam4PAkeOrPOuB2F4ERMiCNptzEu1bt1SPYoF9FU+KqM0
 m6Uw==
X-Gm-Message-State: APjAAAV9WA2DppNgwQ1SuN4T3SF+H6CvsG9sgeemhzV4FTMqQgwUlS/1
 XaySOk8K/CbcdRfZHCM05Eujzrct2kX67rwqQyQ=
X-Google-Smtp-Source: APXvYqwGHNSlvuqRvmxQq/EGJBTJRlR/BM2K59/TY6zrahtKUOrOlSXx0rXk+OXZ1vtblalawqRd5ou4Jyx8XeSegu8=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr21971357qts.304.1568022035326; 
 Mon, 09 Sep 2019 02:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-4-git-send-email-talel@amazon.com>
In-Reply-To: <1568020220-7758-4-git-send-email-talel@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 11:40:19 +0200
Message-ID: <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: alpine: select AL_POS
To: Talel Shenhar <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_024039_225490_90422B71 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick Venture <venture@google.com>,
 Olof Johansson <olof@lixom.net>, David Miller <davem@davemloft.net>,
 David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 11:14 AM Talel Shenhar <talel@amazon.com> wrote:
>
> Amazon's Annapurna Labs SoCs uses al-pos driver, enable it.
>
> Signed-off-by: Talel Shenhar <talel@amazon.com>
> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 4778c77..bd86b15 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -25,6 +25,7 @@ config ARCH_SUNXI
>  config ARCH_ALPINE
>         bool "Annapurna Labs Alpine platform"
>         select ALPINE_MSI if PCI
> +       select AL_POS
>         help
>           This enables support for the Annapurna Labs Alpine
>           Soc family.

Generally I think this kind of thing should go into the defconfig
rather than being hard-selected. There might be users that
want to not enable the driver.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
