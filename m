Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ADB169585
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:23:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BNh9VugSDsE7MyVlPWT390xOsAqyB+wpwIKxIdCr6U=; b=lGokrmc/Y4M4kA
	gCB+Z3m0IbFqv4aSM/vi3aHBTduu4pWNabZ3rASKeUSeL9Tp8KFVyOReqKRb521RFpk6eSxeuHmci
	PBQ6mGjCIJCYVPv/EMyJxf76rdoP8+vDW26XwYUS9LwqJSM6GbjCUXyGGQqJdx8j/eU3LWCvCFrb3
	JdhPAj20ZMW9k/t9+hlNkbm4fMUShAl8sdzSxf+/PNDWC38UYe1JR2q9hZ47gm7jUDPEB31Ig5qLD
	hC7wIa1lYCFvy0Gucl7OPpOKnkvV5/enhcItSPrdSveUCkod0cKBONc/DoqXcoA5n5GeCRPoH69q/
	godwUxrwlmlR8UQBPJNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hrm-0001FD-M8; Sun, 23 Feb 2020 03:23:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hrd-0001Em-O6
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:23:31 +0000
Received: by mail-ed1-f66.google.com with SMTP id c7so7565301edu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:23:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RS1myGQD4/DxcloU05LYheuFzcmTnlxgIJwQU+BLqtY=;
 b=aO20oxQwS8ZeITcgsN8EUAfPnPr3u4CMVBcB2JVaEWdaaD373REjtOfLuyo3AyJFvr
 w1T45qesHDyJZBZs7rVuWg3hNr8TiPz5rAGMvIiiv81yb0ogVOVaIRqWtvTdWurLgzZy
 VGhuR8sDpmL2ooJPsT6bIi2X5aKJzhfS+hwJQyaWqlqUtsyBzj+I8OcJSPWyK3lc8VgT
 Y0QrhcVpZ88Yk0iNeSxujrLWuoEgFtSkZ3PiQtfQClxfP6ij7z3d+akd/PUx7WOIwWlx
 alw8cfur6NL7Am62eDRY6Cq2uh7jDtc3ar/SiL0Sv3vhockKKDJuNKFw4OChjxvD3LVM
 lysg==
X-Gm-Message-State: APjAAAXhMCYnM94K8MetEQAfuoyWTvWgoZEpk5ou40g46eAmQK1K0nA3
 ew4wBYcuKzUrD/zzTqu2hq6c+lP2rKk=
X-Google-Smtp-Source: APXvYqwCDbGenyQX+KnrY7X3oZSB+0Q9x86SeFp34WkXSNJoJmP0quIK9SKRPJkX8gHSLtA3CwKAaA==
X-Received: by 2002:aa7:d803:: with SMTP id v3mr38019974edq.62.1582428207156; 
 Sat, 22 Feb 2020 19:23:27 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id cw15sm754472edb.44.2020.02.22.19.23.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 19:23:26 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id e8so6365354wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:23:25 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr57653500wrs.365.1582428205416; 
 Sat, 22 Feb 2020 19:23:25 -0800 (PST)
MIME-Version: 1.0
References: <20191020134229.1216351-3-megous@megous.com>
 <20191110124355.1569-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 11:23:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v67piSbdmDPOU_w3QterPRk7iFnrMAZe05O5ypwraohssQ@mail.gmail.com>
Message-ID: <CAGb2v67piSbdmDPOU_w3QterPRk7iFnrMAZe05O5ypwraohssQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 RESEND] phy: allwinner: Fix GENMASK misuse
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_192329_785130_F522A3CD 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 7:42 AM Ondrej Jirman <megous@megous.com> wrote:
>
> From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
>
> Arguments are supposed to be ordered high then low.
>
> Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> Tested-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

> ---
> v1->v2: Add fixes tax. Add Ondrejs Tested-by. No functional change.
>
> This was last sent in Nov last year. I'm resending, because it probably
> got forgotten. The only change is adding my SoB, which I understand is
> required for the sender of the patch.
>
>  drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
> index 1169f3e83a6f..b1c04f71a31d 100644
> --- a/drivers/phy/allwinner/phy-sun50i-usb3.c
> +++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
> @@ -49,7 +49,7 @@
>  #define SUNXI_LOS_BIAS(n)              ((n) << 3)
>  #define SUNXI_LOS_BIAS_MASK            GENMASK(5, 3)
>  #define SUNXI_TXVBOOSTLVL(n)           ((n) << 0)
> -#define SUNXI_TXVBOOSTLVL_MASK         GENMASK(0, 2)
> +#define SUNXI_TXVBOOSTLVL_MASK         GENMASK(2, 0)
>
>  struct sun50i_usb3_phy {
>         struct phy *phy;
> --
> 2.24.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20191110124355.1569-1-rikard.falkeborn%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
