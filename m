Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A0B1F9FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nH397WRKJrVGSg+cWozK7xXtK1baaIzg1vpa+rjrK7o=; b=oPrrYV0Vcp2rTF
	uUVe6LMfkk8cCKgUGHIoDcTp/iZbrhgrF4AXn/QbXc+cFJSKeW1Fx1Z8KUKgnF98F7AYBGcrG/UBA
	HRJiEy2zGGKrMhT71lTHg9i2Iu34lFmvtb0xXNK13w1k7srbiYSH9ciNlI9eL98tydO3Y62rRdx9Q
	D4O4Vgc83RI28mYtfSchSnE2Ls+9MINAjQ82Ly0n+J/x7f99bLLo7L4TZvJfUJKtWJGhr/z4XYXbs
	VWF+1p7uorpdqEBqKOAyKYA9etamMJiYKUeM/ngUfWJHh7yX+lHdy4hZbIilTPADQWzO0FSqLoxKO
	6gCzQ6CLZVIXY7WM4KPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyfz-0003xg-2R; Wed, 15 May 2019 18:30:51 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyfo-0003sK-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:30:41 +0000
Received: by mail-vk1-xa41.google.com with SMTP id p24so288487vki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
 b=nzi7Tz62FN/3PrAYjwJ++Zv1PALOdoOBPyJ4XX1U8AIyDcFe0i1fEKvD9H1x6Ag/2X
 1EoWcOkUtrM1ICXH7Oz33wBHzE8UdR+QGwDdXu69dg9MCw2GhPZ2xNfQlrmMzR4nd29d
 oT7q4wYBWTdMI2IrNv/Gsm55qOGS3VsmSNlco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
 b=T/fpx4aJya+krx+CIpsDBt4XA5NYIhlo9iDbMp+MOXvkkuwaGM4KOze7uWijADfBXv
 um7eUoDuaWmPznLDc8/sCvYWLqJImU7zQsYndATXIUWbcWI6AtwZpLf4pQ271PfT27b/
 jtq0mgMFW/puND/AKT5qbZ+O7+6/t8PprPu1Y1ALPoUWeeXNTlb7I0PwjpH+e5zkocn8
 7jmHEANGbRJqBrkmclDtKtbcw0Xk4AXVRFo7jNgsGJjDvgTfDOcD+T57izejrhMISvV7
 yXlLcZI3V6jdomw0QUdOgFK3alpOgNrlzw9M4utXsuVW0N7/BeHUKR+xwlYezQQ8HbMZ
 1Yqw==
X-Gm-Message-State: APjAAAUZV1unxI4cCv7gRwivtqW2Wf91xIxvBHw0W5QGfgqUde6aUKT1
 WKW69gfQNJn8xkIK07NJqKyUH2cnd+A=
X-Google-Smtp-Source: APXvYqxrBnWpQPabqg6AQ286WJMiIOxpse+eS/SDJoxv2dP3D4jES/OorUMbhW3NkgTGuoAWgyHzEg==
X-Received: by 2002:a1f:2443:: with SMTP id k64mr19924381vkk.47.1557945038434; 
 Wed, 15 May 2019 11:30:38 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id s136sm391710vss.3.2019.05.15.11.30.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id q13so598538vso.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr13692401vsm.144.1557945037046; 
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org>
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:30:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dts: rockchip: raise GPU trip point temperature for
 veyron to 72.5 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_113040_386193_C0F5A9BE 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 8:31 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> This value matches what is used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 1252522392c7..169da06e1c09 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -446,6 +446,14 @@
>         status = "okay";
>  };
>
> +&gpu_thermal {
> +       trips {
> +               gpu_alert0: gpu_alert0 {
> +                       temperature = <72500>; /* millicelsius */
> +               };
> +       };
> +};
> +

This should be sorted alphabetically.  Thus this should sort right
after this in rk3288-veyron.dtsi

&gpu {
  mali-supply = <&vdd_gpu>;
  status = "okay";
};

Also you don't need to replicate the whole structure?  I think the
above should just be:

&gpu_alert0 {
  temperature = <72500>; /* millicelsius */
};

NOTE also that that gpu and cpu critical is 100 C downstream.  Should
we do that too?  Ah, but before we do that I guess we'd need to also
override the "rockchip,hw-tshut-temp" to 125000 to match downstream.
I guess that could be a separate series?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
