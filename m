Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9513E174550
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5+9XZUt+u943Z+CtYUkGUaQ0jq5N64I3A9cyR7WqkY=; b=YKchI8A0//XCxr
	0GLWjzaQ/ufwbLyeIIUnbx96QDtw/IBjr+ZDGQnNORJRm389GLM/iQAdQklah5u8VHvkkeUGcHeOB
	grGGlxAou3OWbqi14LrWfBjFfou/wzp9poftbZOHbDKryOzYMBDHit+cjFVgQGy4YXg/GpKU97xjh
	5dA4C8w//CUDL2uyGJP+a9ju9xjCgqjkrrl23+nix79IT/egsUTD3pQMjqaslDhJAtIR0/Kogqh2W
	yDd6L+rycHbsUoKntZcPf/PF0d/JzHQrwF//CBevTM4Ybl252Se7IMqC8WWNRXU1tyq3OcGy8coCa
	xx6CL/WFWpqPshFdz1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vJ6-00063c-11; Sat, 29 Feb 2020 06:09:00 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vIs-000626-LL
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:08:48 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 01T68M6h027168
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:08:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 01T68M6h027168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956503;
 bh=95vNS0xn/eFKDybsHRSqqk5phkc9D+D3QFZNdZ879ek=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p7TgclhQ+8fSOvUZ5hHOL4QrYI4+LN7TQdECQR4jAFZMdd7nimJJApm9Sb0BWnijA
 Qx/N56OqAbDFqR6P61LJ76q998HRWy7Q6hCMGg/VkfzRMRFClBxdyxoN8BqL4qN+hZ
 mK3wLWpF4T8MPD8HvZ6Xe37Ix3ZqL4agdtB3huEVVmCo7cq9ULmJP9T3E9NP1lj4gg
 U0y/WWCqrsuFMUWWeY/M/FWsVpQVEzpfpEZaTQyiv0GZZ5zGcTzG7Akw+Iy1Hx5Bo9
 7hN6RlIMysi5N7hG8vc7nk8YCvsTpN+dYl92tmGQamEh0hRfi3qoON/rWz3mRC+Zts
 3kHMP2Uf0GIKQ==
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id 7so3371353vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:08:23 -0800 (PST)
X-Gm-Message-State: ANhLgQ1RjXwUK5NOjsL1GVZW0ZTNO4y9i/gXmmRTVpA1K5X79rjGK0uw
 2wM45eVnX2K9W4kPBDyru4LYWz7108NvhvQcEaE=
X-Google-Smtp-Source: ADFU+vvxW8SJz2gH69lHFxo7XkMiEDpyKKnR/h+JhkIcmJrnuvfSEvmzW8wve+//6tnaLVoygUEpD2rAg1urn6bq0s4=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr4335852vsh.179.1582956502271; 
 Fri, 28 Feb 2020 22:08:22 -0800 (PST)
MIME-Version: 1.0
References: <20200228122055.17008-1-yamada.masahiro@socionext.com>
In-Reply-To: <20200228122055.17008-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:07:46 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQzXD55UxOpVPhu=m24oPbG6gwLgq5g23Nxu=zGJLyNRA@mail.gmail.com>
Message-ID: <CAK7LNAQzXD55UxOpVPhu=m24oPbG6gwLgq5g23Nxu=zGJLyNRA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: uniphier: Add one more generic compatible
 string for I2C EEPROM
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_220846_933700_276617F7 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 9:21 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Commit 73f9de0c7f5d ("ARM: dts: uniphier: Add generic compatible string
> for I2C EEPROM") did not touch this node.
>
> Add the compatible string prefixed "atmel," so that this matches to the
> OF table.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>


Applied to linux-uniphier.


> ---
>
>  arch/arm/boot/dts/uniphier-ref-daughter.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/uniphier-ref-daughter.dtsi b/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
> index 04e60c295319..a11897669c26 100644
> --- a/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
> +++ b/arch/arm/boot/dts/uniphier-ref-daughter.dtsi
> @@ -7,7 +7,7 @@
>
>  &i2c0 {
>         eeprom@50 {
> -               compatible = "microchip,24lc128";
> +               compatible = "microchip,24lc128", "atmel,24c128";
>                 reg = <0x50>;
>                 pagesize = <64>;
>         };
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
