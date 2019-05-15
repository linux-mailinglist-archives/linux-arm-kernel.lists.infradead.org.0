Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8651F9AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 19:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y67ju/cU1u5swMLH9hon3v4wwWkf0vT52P+Y9mng8rg=; b=L3kCjoAZNonR7o
	u+CDNzjxXXOzANFLtWAVYdmYOqPKIBUyp+TG9npT4LR017xaHZhOcdJ5xIB+6qr95gya0gA6EvHxa
	MVtZmONz9Htqazl/sQY42y8qODZ0nfK336Ell92ns0X2x1tgVmJqsRL3piFas4UNpXquuA0f7M6qv
	eJ6RMDOi3uFmuatTNmoqwPnXdEE62VnC9RkGrkktm2PmYnSHaT2fTE3//XnIoeFXGfR5In12jkEfB
	YTpNQiigFxKNmLITQnHSzaKV363AFfzKORSbfzqUh32cBFs/vSoism9FjuyBK60KvDl5lUWJf/Zy/
	QdBz9e/FwhyX6NJvDB1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyBu-0001Ai-9p; Wed, 15 May 2019 17:59:46 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyBn-0001A5-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 17:59:40 +0000
Received: by mail-ua1-x942.google.com with SMTP id s30so194919uas.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 10:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
 b=eMSKiMkGDiPhEV6MfHv/8lqxI0ZIJwgTFHaLe+9m7kHkPBaae8ncl6ySq7O3M6a5pL
 mh4fcV39mHessqaqiXbT86R8AQRmrn+GjnwD1D4DsYF3IXresr7LwJhlyrk7UX9qQFsq
 yb4nLY9TjQf6qjO/OLDuqrTfslgVfMW0QzmSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
 b=ZJCzM6OVqkjWwJRv4APECENGd+Br/zEBtY1fkbOlZmY0LGqyTjE6GuoY8LK9mzfN+J
 6GhmPKYAdKzoCWM3LXscKJvqb8M8sFV3m07J6HVORQ0X1FAj2UN8bYg37/mWjpQunMP9
 yclUufFZ0WQoqBnOud2nWIxzPgwpAoIsfHNqAtLWHlJ6slWg1sLfCcmJcWHNo5hbwJnN
 MCgsr5x3IkMbbnnjKfI2VdHNn66Z3JthYD/goo/5R20UcgX/QmkF6doLWVV3ayib43OM
 k2S89EJjGawV++DYSNmSYlu7gExzw3Zy6H2VIfrwA9GnFnf+VFkhsxdCuK5tTkaPwVJP
 8DIQ==
X-Gm-Message-State: APjAAAWKTo4lziUWTccJo7nCPyjlFado+emYuPA0EM7cpckc/LcpQK4J
 uH9yUcAuIz2RvOfxh03k+pscHLEYTL4=
X-Google-Smtp-Source: APXvYqzYt9qKcybzxInlD/F8YON13HRqPAy3zn2xhTnX6vMdkF9QQdZSxOugUH1BWpSFph+egY9Cmg==
X-Received: by 2002:ab0:484c:: with SMTP id c12mr17294729uad.57.1557943177613; 
 Wed, 15 May 2019 10:59:37 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com.
 [209.85.221.177])
 by smtp.gmail.com with ESMTPSA id g21sm2726393uam.13.2019.05.15.10.59.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:59:36 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id p24so260540vki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 10:59:36 -0700 (PDT)
X-Received: by 2002:a1f:d884:: with SMTP id p126mr20080140vkg.70.1557943175846; 
 Wed, 15 May 2019 10:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org>
In-Reply-To: <20190424162827.5297-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 10:59:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288
 GPU
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_105939_203659_E02133A9 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
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

On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The Mali GPU of the rk3288 can be used as cooling device, add
> a #cooling-cells entry for it.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index ca7d52daa8fb..767e62908a6e 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1275,6 +1275,7 @@
>                 interrupt-names = "job", "mmu", "gpu";
>                 clocks = <&cru ACLK_GPU>;
>                 operating-points-v2 = <&gpu_opp_table>;
> +               #cooling-cells = <2>; /* min followed by max */
>                 power-domains = <&power RK3288_PD_GPU>;
>                 status = "disabled";
>         };

Seems like a good idea to me.  Presumably we should also add this to
the bindings?

Reviewed-by: Douglas Anderson <dianders@chromium.org>


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
