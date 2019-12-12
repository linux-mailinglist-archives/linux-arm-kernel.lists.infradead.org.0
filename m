Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117D111D793
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HaZJaMnlvzDvcCqX7flhRlEV7Rn3MXQQIXNkBnyre4=; b=mIYPipVwH4RulC
	tYa0Iuo7UBLGn01BWOUn7leaeU0yhltfOZ8vkv6I2NBtBlkcGGkeO4XV7oD8WimnzplHqbLyM9XFN
	Y5dKGqcg0elj2MulyQSyweDKV8YqMgJKZ3wp4NWMNoqzxAy0I8rmaS2z85W1q7rezsM7tCGAN5qet
	XI7iIrk6R5Cx9cN8xjH0fsTwq3EmFLqRkeyjS9wSMDNIBDTwaOY0aUleZbSVmYgzUpJWGVmGDt3Nm
	utxWBnha1XQhIYZrWeAY4c32RnVqDFJiKwMu1vnTaPtvkfvGj0KJy4DOryS49vA0mKUqI3e0Fb6ol
	yqAJZV6OieSuDLuzSS9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUbL-0004vK-MR; Thu, 12 Dec 2019 19:58:19 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUbA-0004ta-Jm; Thu, 12 Dec 2019 19:58:09 +0000
Received: by mail-ot1-x344.google.com with SMTP id i15so3246459oto.7;
 Thu, 12 Dec 2019 11:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DFLlahyHI5CWddupsVreSqNy/vA0cEJats5492jOSIs=;
 b=TD7g7jwnUfDkDTZXvxve3OJXxK3GHfe5bBkdC7pt5OmvM0NMo9LVvJUmtVK+yMpQgy
 vQgMoNCRNgIPGk6R5mhXxZWioE7nsHSI6ypVusSjEl7CjyUu3EgqXGSybzS7OkzpOsSb
 mcmhXX1vYjnkVSefiLRylfhtoyJ9Vy39jDMVZLuZYqVTpzRQWrobagHQbcOPc1HsXqqF
 y/kSNaw3ZaaGT3WDFKb/HmEQ8tHXojg9ICTqbAEDBP/HnjJ5Rbzd8E4ODkxLXWOHxQgZ
 kjs1aVUkYxcYB1+tQil4sFBJqJe4E+3ubKfq45Cxfg8dyMV0PoAWKl+Ix78PTZOq33op
 TL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DFLlahyHI5CWddupsVreSqNy/vA0cEJats5492jOSIs=;
 b=MzMeY/SDViOW6Oq8ieA+501EG7LIBvWFUwhjJoZXUO7KrtouoMK9pxb0KjPwmQr2lZ
 uC8j//c6mv1677dUfjU5e/neF0PmbznmKe9djLKNRo7b2qKkuCbt+9ANCghu0OmQDebQ
 wxhMgWcQO7zPBGLLHMd/EhB03BgJ9W/BNtei2sLpiFmy2hpZm0GC5YJ++HgEopvJp0rm
 T6luFMY2RD+rgQym3J4x9q+yxH7qUZ30LbSgtb3kXX0pG4o1NczfXODA1y96KapeIDaw
 a9hXDRkvtSTRiWWRjAhuYwtZYRSrZUVP49RWoJPwdJnIHuFJ++Qk0ysTCfHoHWlLtAal
 lUjw==
X-Gm-Message-State: APjAAAWRGIPQnu+sSUyGeinI2nwCx9HwrIooiDjoLDhVgY9xst1vaMhC
 cJ6bHWxL1DUwuH7vxaPMolq9qQfzrfpieG9z2po=
X-Google-Smtp-Source: APXvYqzBv7wgx408g13iewCw+znrFEZiUL++7s01qX7XO3cSWn27p9E1tGYyz8Gwyf9GVrZPOlySmA8XV5OfmM/myAQ=
X-Received: by 2002:a9d:6a4c:: with SMTP id h12mr10313165otn.81.1576180687595; 
 Thu, 12 Dec 2019 11:58:07 -0800 (PST)
MIME-Version: 1.0
References: <20191212145925.32123-1-glaroque@baylibre.com>
 <20191212145925.32123-4-glaroque@baylibre.com>
In-Reply-To: <20191212145925.32123-4-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 12 Dec 2019 20:57:56 +0100
Message-ID: <CAFBinCDjfzQX=ZG=cgTYo=icGNU-t4Kqnu0Bu5qRLsRk_s6S_Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: platform: meson-ao-cec-g12a: add wakeup support
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_115808_649021_1950A888 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, hverkuil-cisco@xs4all.nl,
 linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Guillaume,

(I don't know the specifics of this hardware but I have two general
comments below)

On Thu, Dec 12, 2019 at 4:00 PM Guillaume La Roque
<glaroque@baylibre.com> wrote:
> +#define CECB_FUNC_CFG_REG              0xA0
> +#define CECB_FUNC_CFG_MASK             GENMASK(6, 0)
> +#define CECB_FUNC_CFG_CEC_ON           0x01
> +#define CECB_FUNC_CFG_OTP_ON           0x02
> +#define CECB_FUNC_CFG_AUTO_STANDBY     0x04
> +#define CECB_FUNC_CFG_AUTO_POWER_ON    0x08
> +#define CECB_FUNC_CFG_ALL              0x2f
> +#define CECB_FUNC_CFG_NONE             0x0
> +
> +#define CECB_LOG_ADDR_REG      0xA4
> +#define CECB_LOG_ADDR_MASK     GENMASK(22, 16)
do these registers have some RTI_* prefix in the datasheet?
that would make it easier to spot that these registers belong to AO /
RTI (while all other registers belong to the CEC controller)

[...]
> +       if (ao_cec->regmap_ao_sysctrl)
> +               ret |= regmap_update_bits(ao_cec->regmap_ao_sysctrl,
> +                                        CECB_LOG_ADDR_REG,
> +                                         CECB_FUNC_CFG_MASK,
why do we need to mask CECB_FUNC_CFG_MASK (from register 0xa0) in the
CECB_LOG_ADDR_REG register (0xa4)?

> +                                         logical_addr << CECB_LOG_ADDR_SHIFT);
FIELD_PREP(CECB_FUNC_CFG_MASK, logical_addr) would make it consistent
with the rest of the driver
then you can also drop the #define CECB_LOG_ADDR_SHIFT


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
