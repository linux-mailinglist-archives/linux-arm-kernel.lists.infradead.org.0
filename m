Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E46216958D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGHCqHfk3b3APzJcLbPC5C5UZFI2HWEQIiMjOOqOk+g=; b=rL5WAcE3d93+ZL
	AZPkB2RMc4rmUt+5jNuNJ/b8TXTw7CwS4t7iIU6gY+OWj2ThUVO68BETyl9CyoYLvwrawWZfx/web
	BTG7/vi79sqLd6vW3JdOZswHpaXUqJUawF7cb5mxdlmmOHzCGoRbaLKtLUBVWMaXyz/4DoLpr938W
	Xf6iFlhWHQaZQtxqMuj+9FUaf0LnGoFrOpogsqiAIcB+k/NBK7Tq0I+ZnjTEto59xcyQ++Rx9fUjI
	qzWuqRcSFpiqwEfEMaQZTwhJSn7T2tfjQtE8bYgD+lFILmK/an+hTZ8RQbjeiVO3HBgu+bNFjeCQG
	H2b6JPUTlwGv0bmgeiHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hun-0002nT-0g; Sun, 23 Feb 2020 03:26:45 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hue-0002mp-FA
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:26:37 +0000
Received: by mail-ed1-f65.google.com with SMTP id v28so7530660edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:26:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+CR/qJ4zb1qF8uhdGH5yBtOVB+m81/kR2txmUNet5o=;
 b=PvtdsfIbHZ4YBzMmGPFkoUpeQ32/aQRvf0wzUNhmW+lteVuo4vQmYuqX9OLAQ8hBXo
 BH3pMX1r3Ip2dREqtCI1ob83fMlAr5YK82sSgCQsQJes2EibT/6UYN13vCZLnA9XWISE
 0ZaufGy5MfAuWAGt9RsgkXrwWjs0FkuROKedL+7SOXT31xjNBx7UCZELnDhyX9Qa297j
 7YV799IIQ0vyo2QsfiG8ukAC6kF0rA7410Ir6oqZVLw6vIm6iosulwVLQVlIfPhQT65y
 fGMlfz7pxqxwZP28h4zJozk4IWh/0+b+bIRhkUwpiWEnh5KuwzpM44AL3SxCe8wMKSLS
 G5Pw==
X-Gm-Message-State: APjAAAXYlY8m9vDnolqhhUIa40doVUWzc3Fq45ECkwylDNNecb4itHtY
 gqcP9W4F/fyKjlMf06WGlGg3YqYJMtc=
X-Google-Smtp-Source: APXvYqyyNSxYCtPE3fuUsS7hG/t8z86w+9jpZZUih6Qf3MFeYQ6tarxw9HP0PF46ts/j1WEpx8sY5g==
X-Received: by 2002:a17:906:454d:: with SMTP id
 s13mr41857113ejq.18.1582428394376; 
 Sat, 22 Feb 2020 19:26:34 -0800 (PST)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id j17sm574068ejo.1.2020.02.22.19.26.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 19:26:34 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id q9so5629041wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:26:33 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr13650427wmd.77.1582428393666; 
 Sat, 22 Feb 2020 19:26:33 -0800 (PST)
MIME-Version: 1.0
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-2-megous@megous.com>
In-Reply-To: <20200222223154.221632-2-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 11:26:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
Message-ID: <CAGb2v67XwrYA8FLF9wpnngm9F-F9UV2m+rr+r3t+KUVv5-EMiw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/4] ARM: dts: sun8i-a83t-tbs-a711: OOB WiFi
 interrupt doesn't work
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_192636_506830_1D10A220 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arend van Spriel <arend.vanspriel@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On Sun, Feb 23, 2020 at 6:32 AM Ondrej Jirman <megous@megous.com> wrote:
>
> It just causes a constant rate of 5000 interrupts per second for both
> GPIO and MMC, even if nothing is happening. Rely on in-band interrupts
> instead.
>
> Fixes: 0e23372080def7bb ("arm: dts: sun8i: Add the TBS A711 tablet devicetree")
> Signed-off-by: Ondrej Jirman <megous@megous.com>

What WiFi chip/module does this use? It might be worth asking Broadcom
people to help with this and fix the driver.

ChenYu

> ---
>  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> index 2fd31a0a0b344..ee5ce3556b2ad 100644
> --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> @@ -214,9 +214,6 @@ &mmc1 {
>         brcmf: wifi@1 {
>                 reg = <1>;
>                 compatible = "brcm,bcm4329-fmac";
> -               interrupt-parent = <&r_pio>;
> -               interrupts = <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 WL_WAKE_UP */
> -               interrupt-names = "host-wake";
>         };
>  };
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200222223154.221632-2-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
