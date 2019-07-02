Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76275D849
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6Rxz87+uPh9pEovTs/PTwLfnLYijBi3Wh8h8cplrc8=; b=tFD9JYA2NSqC9+
	quTz0FFo3aY0ZEvXl73OP9Yt7SNioOpNkcaMid4EkBzL7MoUUTXDp5lIgCfO8aCduAiG8OZauEkev
	8B6fn3e6CHh4BOhkz8t5KknN5M5dBMjyT89X2M65XkxyFaDYsO6Y4rxj0RmKu2nbwejJh3YxxvXdl
	2HXbfzIrm0p/L2UTG6fmZRCyooCDzKvsNlwiZfzcrKLUxj6kobDAZCaLQ+/GPcRg5T4/bJATwuvJf
	0T6PoG41xhZgE5nio/6Zo/xOl4+3fTIu+OeeLRARVealX+qbMgtZTtRq5zWjJ2CdyL/3+Rvz0p3r1
	oL7t8xVZLvQb3nZ6592w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRmu-00043B-Ek; Tue, 02 Jul 2019 23:02:12 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRmh-00042g-Gb; Tue, 02 Jul 2019 23:02:00 +0000
Received: by mail-ot1-x343.google.com with SMTP id r21so277603otq.6;
 Tue, 02 Jul 2019 16:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qbrn6+3X47dwhyUkAWXte8J+fjd+tHfpJpFHgAD+S58=;
 b=TtsFiJatyqjLoJBxRVt34oXzoLGjO+FToXJtmv6CMHqLJ1J83PkR6QLrCwLHwZJnDn
 rctTXjH0uAqvaRXNTUMUyew3QYxk8VGHKOJx53ikFwb5551GicsjHXcHFydA3g2ygLLm
 qUGMeUdNAuAwkIfZf0Xdyzf7BNKslpY47cG4HmIReOIUhHcoNfXFQGvf7od4YcjkIT0x
 xfigNk7ibXc0Nk50OjWAz5Hnkma8gjHVw6gkyxtRaWT80undWb/Xshw9gtH2ElUj2U6b
 xNHQG6Gf3IEUxRhcTkGmBLtMbJiauTEClCyOKiARxVaySyOrgn6brYMqadKyW+9xVZ78
 6kng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qbrn6+3X47dwhyUkAWXte8J+fjd+tHfpJpFHgAD+S58=;
 b=PtBE42rpoh1hXwjXXTzMB+B0tT5sz1KutvPf9o/GFt7OiNk1brp9lkC5WLG9/BVLHu
 p1JuI7kVwNm0ZOoa17K4Ez7qqME/CG5KvGmxkkf61KYgGLWt9iJ5NX2kg6tpfR1uzjvB
 CK/vONJ2GYuzw6RgBepUISpaPPn82hI5YbxgWh/+UlI+bIE9696tJQ5vllUEvIWdqpfl
 PojFjb7Mtp71FXJSVbFBOkLbBBOtskxEWjktlshL1es7f227RMg4D9B6lK6F0ihOTUDq
 0wbylCiIDjuoW8olyG/UCjtScgfg7jRDwgciaktmUqP/+w4HqEjtlzpuMg5O+clhDRAz
 UiYQ==
X-Gm-Message-State: APjAAAUC07nohr6955BHbXQP42dRrT6HKHDfYJ/MhqLOLKtyZA8v8oAh
 9CNBSnmnQD9a5c8+PzZtVxFt48iPQoB02cVPzMw=
X-Google-Smtp-Source: APXvYqwyhHHZpYKTd+W1EP2ObsG3A5HTjaf6wiigNc78pHsXxw86smXpidtCkCRHFB9PyazmH3UOEt3pYpO/+Mr8cF0=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr26119392otb.98.1562108518402; 
 Tue, 02 Jul 2019 16:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-6-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:01:47 +0200
Message-ID: <CAFBinCD8WfhgcjKfstvVoDaLWm9yoZUg4SJpj-i1R+KgZ17aKg@mail.gmail.com>
Subject: Re: [RFC/RFT v3 05/14] soc: amlogic: meson-clk-measure: protect
 measure with a mutex
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_160159_556728_1F47AA91 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> In order to protect clock measuring when multiple process asks for
> a measure, protect the main measure function with mutexes.
>
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/soc/amlogic/meson-clk-measure.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/soc/amlogic/meson-clk-measure.c b/drivers/soc/amlogic/meson-clk-measure.c
> index 19d4cbc93a17..c470e24f1dfa 100644
> --- a/drivers/soc/amlogic/meson-clk-measure.c
> +++ b/drivers/soc/amlogic/meson-clk-measure.c
> @@ -11,6 +11,8 @@
>  #include <linux/debugfs.h>
>  #include <linux/regmap.h>
>
> +static DEFINE_MUTEX(measure_lock);
I wonder if that should be part of struct meson_msr for consistency reasons

apart from that:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
