Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE10C15F35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxKmmEFVYfR491bj68jopQqm2BjN547g4DyQBKjXnuk=; b=a2oSLXc/W3kYj7
	dbMAJF5dXD/Y2Zc5srvRJuQEWgUVAqs2bgRSRCdnTFbKVjO3AVdRWquJwPmwkX8DOi9aEE+e5wSA7
	6Fjg4gUyilEIZ1RSCakeyeh5Rw5DmJOyQWTpaAJerTbUFc955oGG1s38YusGda3WcLjrNU1Z2qjUF
	9JcFxSRRFP/mIK9qCwngBKwwjZVISMWd9G09qwXwTU/pHB3q/9dt4axe7UEm0TRfC3D6I8xRFHlcz
	97+2sOXIVH+0KmlPBmH80VvwRKtfgXE2Wyq4EStoCRIPr0+GS4qtkMD7NguSJfor0HFnPZHQBY8Ix
	gqTKFPHrBB3N9zfqBUtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvHz-00065z-7W; Tue, 07 May 2019 08:17:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvHR-0005Va-SJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:17:19 +0000
Received: by mail-ed1-x542.google.com with SMTP id a8so17859571edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i82xr2EsuukErIRTU6lGqQp8LGTcAV2m8UfvNPxsxAE=;
 b=Sbu+9oCJ/wBbto+UKEk/JC844sC4lSQSDtnfK/FbOVBlY+avDG/Acl3X0W+gxUkvaJ
 /+jfe+feBBoojpqmyVwP4xoHjBBg1fslysrqrUQc+o5aSuyD5ckNiXE72V0DzfxoO31j
 rZAkMKvp+tcEoMC/Rt75NpxpKz8XrayWCgpxgNg+PJAUcqgafkp8uONkqi8fH847E4L4
 T/9i7hegOClCVXY9i1hh8syCQuVNow0pM9sgKA3Bk1aHHICgDzkqeCAdJlA0FyjnjKuw
 A6WuCX7OXUDJBp8owJFAKk9RPbFf03aPocvR6kei3Cx8PmFH8B0qICnN7QH/9iM/zzVm
 JUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i82xr2EsuukErIRTU6lGqQp8LGTcAV2m8UfvNPxsxAE=;
 b=V/+4SzjVdNwJH579tV2JxAhmTOJJ6yqPd2CAA7FZFxA0RnaRWGgORkXVYa95mZPXja
 j7C7VEzzdKyspqflKyeFsdscAcp6vdbaWo2Axh7GBepks8tdDRNToTNaqcyNwWeBOkLL
 kLZs1wgJZnJQqn7marLUu6nkpHxHqXFwzG/UDp9O0E3wU/hVIHEA3QBw0aZ2vroiIjBv
 eHtIoB4RwaUcSrJbevXAlWvSNudxkT1VYjSL1kDF0gBY6Tr4Gv/jAkuPe9qHiGfcWJNT
 SPsWuGMkAiMUW8KxMjTTqicacNmTBbfMv4cIjn+Y6MpgaX2sQpmyoR15almgSbitA9Of
 WEug==
X-Gm-Message-State: APjAAAXPMzG7MZ+LGYKrZ0a8l3TWl9l/YN6vyTsZ1139vP939ZxY3mWQ
 1/UeptvHYVVC+HayP8kpC3JvZWgrbcmXnmmN4/Ay1g==
X-Google-Smtp-Source: APXvYqwDw3S+y/L++3s0nXASlEKgGQloipNZPTY+DyESQJYh9Bt7/hT3Xb7Bce/QRpLCDG0gJfldbhHh68DYHKso4zo=
X-Received: by 2002:a50:b797:: with SMTP id h23mr31550869ede.133.1557217010458; 
 Tue, 07 May 2019 01:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-18-leo.yan@linaro.org>
In-Reply-To: <20190507034734.20622-18-leo.yan@linaro.org>
From: Chunyan Zhang <zhang.chunyan@linaro.org>
Date: Tue, 7 May 2019 16:16:39 +0800
Message-ID: <CAG2=9p887cb2ORE3oHzvp6=g24dKpCd7K=H4FzMqraFuQqsZaQ@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] arm64: dts: sc9860: Update coresight bindings
 for funnel
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_011654_493107_EC7D2F6F 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Baolin Wang <baolin.wang@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 11:49, Leo Yan <leo.yan@linaro.org> wrote:
>
> Switch to the new CoreSight dynamic funnel bindings.

Acked-by: Chunyan Zhang <zhang.chunyan@linaro.org>


>
> Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
> Cc: Orson Zhai <orsonzhai@gmail.com>
> Cc: Baolin Wang <baolin.wang@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm64/boot/dts/sprd/sc9860.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/sprd/sc9860.dtsi
> index b25d19977170..e27eb3ed1d47 100644
> --- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
> +++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
> @@ -300,7 +300,7 @@
>                 };
>
>                 funnel@10001000 { /* SoC Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x10001000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -367,7 +367,7 @@
>                 };
>
>                 funnel@11001000 { /* Cluster0 Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11001000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -415,7 +415,7 @@
>                 };
>
>                 funnel@11002000 { /* Cluster1 Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11002000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> @@ -513,7 +513,7 @@
>                 };
>
>                 funnel@11005000 { /* Main Funnel */
> -                       compatible = "arm,coresight-funnel", "arm,primecell";
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
>                         reg = <0 0x11005000 0 0x1000>;
>                         clocks = <&ext_26m>;
>                         clock-names = "apb_pclk";
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
