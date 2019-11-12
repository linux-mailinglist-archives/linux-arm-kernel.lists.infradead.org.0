Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23106F9E0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhD/p0Sh1NCG8HzAr6SAzrmHXmsZ6qSHTzSqFAgHuvQ=; b=VjdGpXa3B/9a7Q
	F1BbNJwi/P2KMIT4/CjJgcbc19F/mLqC0NfIn0crxBTdMv9mEToZaSFBVfFmySl4xeEQ3kPkeECIM
	KpB10eH47b33hXHHw2jsG/2USxl1+Ze+TaHxJepHonXltY2b/QaDQBG03+viv38g19HFa+WIdA1t6
	yiMpPPpKEx3omHuAD3LsnXrwEpuwiDrTHfwGKAb9oOeDunOngqTii7MNRLYFbidpYaN1TEs//YKDI
	8peCUNEBODvdrTwC6CSPSYAKJDnmQhBQmZyH79LwNYGOlEgyN8SPTolTIlU+VBoTfQP6fhFTZHney
	965cygjzAVpq/TUjPEuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfQ5-0003G4-5B; Tue, 12 Nov 2019 23:17:57 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfPv-0003FN-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:17:48 +0000
Received: by mail-lj1-x236.google.com with SMTP id v8so351196ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LIflrWKP50iYK8//oCk2tWTFXozYzLmXIwfV667z38A=;
 b=PNa+J2mYKXMZqAUoDMzX0KUDv3Kyt6nEFoZ2A6dqCsdWHd/+om99vZDSq83XQqCC4M
 LCxzwZWEcdAUqRXZRH2bBQqCt6GLWa5ZGSXmMZRXE8EUs2KPKN5eLRopGkRZG+JzyFav
 dA7WFBfoY1eG6BK8ALXm0CZJxc5IWF3NPTr3FtI8AWd2Xt9sxVIIaOsPiPz6VbYrzeyM
 W6HryYPqgBk4lzubEIp6ESQ8Ph8C1zPvO+qYynxEjLMTW5hPB+WqUfFkxSS8bEbkJns2
 0Y76W3k2caHIlNVNoNkFVMbAvLWG4e3X3n3FWZ0Xs0kyW/HcS5461tqBTaUJFvlFp1rt
 fpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LIflrWKP50iYK8//oCk2tWTFXozYzLmXIwfV667z38A=;
 b=lNnfdPiJIvG24TN1/rZzwkeWyHbwI9mKyV8R5Sc3Y2ylASIwcIrDNZICcOj4IN+iF/
 O6GFW5MFJVJC6z05KYlwy4+3IipCwiJzDMyivZZ1n5x130eGYSKXNSXC67H/z2hiTmcU
 bXgFVbdkL9Xy5v4OVjJWhTmGuSwAr/wx5SCTdIYExJdZsv5KTMg4gcXBzufnEP54WbAi
 QAuH4aDsFlzzim63mOHZl/nxITbQ9+BBi/mca2/+Rq4KYylpS4bCXbIBKJcEW3nKWOha
 sOzuKaJtiSu6cME6xkXIMLP3uEz5t5C3f+/4pN22jZCwUPxLWQW5dREffFezrdPYjbZA
 27vQ==
X-Gm-Message-State: APjAAAWmV5tQg86TpUPztXRK4+41oIH69t0A/XIwKFa3Ar3AgomAUBXa
 q/zqTURzU27YQbGmBNA4Gf3LrUTAruvbEnZxy/Y=
X-Google-Smtp-Source: APXvYqyiLn4l/vK/xsmhu6N/3INF3zPy1lwX0qjKsVVRCGKK0WOh5xXLyk9+epm/72hEtkvaBpn8VeB1nb70JN092o4=
X-Received: by 2002:a05:651c:d3:: with SMTP id 19mr197085ljr.202.1573600665005; 
 Tue, 12 Nov 2019 15:17:45 -0800 (PST)
MIME-Version: 1.0
References: <1573586526-15007-1-git-send-email-oliver.graute@gmail.com>
 <1573586526-15007-3-git-send-email-oliver.graute@gmail.com>
In-Reply-To: <1573586526-15007-3-git-send-email-oliver.graute@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 12 Nov 2019 20:17:33 -0300
Message-ID: <CAOMZO5DX_-zSHJjDigK2c=dVLEMxvfd_dFCu=0fbyjht1gsr=A@mail.gmail.com>
Subject: Re: [PATCHv7 2/3] ARM: dts: Add support for i.MX6 UltraLite DART
 Variscite Customboard
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_151747_441005_7CA9331E 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oliver,

On Tue, Nov 12, 2019 at 4:22 PM Oliver Graute <oliver.graute@gmail.com> wrote:

> +&lcdif {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_lcdif>;
> +       display = <&display0>;
> +       status = "okay";
> +
> +       display0: display0 {
> +               bits-per-pixel = <16>;
> +               bus-width = <24>;
> +
> +               display-timings {
> +                       native-mode = <&timing0>;
> +                       timing0: timing0 {
> +                               clock-frequency =<35000000>;
> +                               hactive = <800>;
> +                               vactive = <480>;
> +                               hfront-porch = <40>;
> +                               hback-porch = <40>;
> +                               hsync-len = <48>;
> +                               vback-porch = <29>;
> +                               vfront-porch = <13>;
> +                               vsync-len = <3>;
> +                               hsync-active = <0>;
> +                               vsync-active = <0>;
> +                               de-active = <1>;
> +                               pixelclk-active = <0>;
> +                       };
> +               };
> +       };
> +};

You are using the deprecated bindings.

Please switch to the DRM bindings as stated at
Documentation/devicetree/bindings/display/mxsfb.txt

You should also add your panel to the simple panel driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
