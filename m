Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD50DF89C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:39:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+C+R/cUbdYei+hCmxPfYbwQBcUmqZQyiq5PYS/k6eWU=; b=IZKF7bUy/793MJLuUL9r2JAIri
	P+3fMIRwtDtc52wYSI+DB9YiZnTeAC9VpEUMx3/3dJbT/Jtg3UsPC0WZJhUgyOGBu56fuIMcxcdcf
	DdaBqrxBtBNUxu3IhWkPwOXjdvOrsqKIpU02R090sIXlfCpQ9klhcjUptIe1YGp9IU3AOmdwiVYvq
	X8SNK/hcH2DaUDrypkgdPZi0QksdRTukSc7yuu93qYaPNVaGbp0CcP1BbVmJQ6Yo8m4S4m/U8iw6/
	56aGZJW20uaJ+EccjJt7yK6IU6h/5rM7Nvqq00cObTbWopk1TnwX4Vca4Il8wYOZPSXTmuyCwPZxY
	hu7nLJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQlK-0002cr-QV; Tue, 12 Nov 2019 07:38:54 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQlB-0002c4-Jt; Tue, 12 Nov 2019 07:38:47 +0000
Received: by mail-ot1-x343.google.com with SMTP id z6so13524106otb.2;
 Mon, 11 Nov 2019 23:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=LYwXn2wDJ/t906ceQ84HTpG6OQ0aMpCTjyUpk+qqT9Q=;
 b=dJt5I+jwVZhkK0y/I3bKHdNpPlveRMW+JVFfpsUVkwgx4iQhuImWgMlsTyUe3+rx1Z
 OHyAwBDF5GqFxY6Ym40g3r7xnT+JDSIgbLhZvzyzLjcJXuFR5/lBBU90Wkd/COqqg/Aa
 VInUbxcH4q+N7ZoaLlMr1KTPpJvfgQRU04d2xWrSxsxo2SbRuieKJigYo/4dEacll9qX
 E47i1THS/DgWCjThyaOcnhfIIr0F1u1lgVWGW8U02Fgq2hSSYhWaRW6AqxUQKVPtoFaF
 yL5098idTxHUoF6kaU9aQKG42M1vUYcXpafAE+Vol9P5JtpNdX61AsjfnCKGScnrHDAq
 JTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=LYwXn2wDJ/t906ceQ84HTpG6OQ0aMpCTjyUpk+qqT9Q=;
 b=HKpiSct1TKDdhY45el9ib5gYkGb0zNd6B30kntZ4JLFuQ78Q54KnRG9OhBx8UpqL3s
 /rv6GwFAAfyhXX3ze8b1ts2Bm5qeCYCZctI6zGikyIUkX7kLwxZpx+7BjASicKw7FnzR
 nxKeYrpkoYmvVIsGxQP9KeRIFdpUZtoRQ2oQ/4N5/4AHifM/zPcpCK+Yhx0J3gzjM71E
 YJxZjitVEemkki7iaek/Ml4rhYRCzo2GS76fxElPGpgRqUn7mH2MatF2/Fvyvx2rYQH/
 EMl3OsK7OL8ZdNQpk1+bmAZliLDcSVJVqBc0E5anfDg6X+Yj2BgMgZ36BUZrSaYWCZWp
 eGUw==
X-Gm-Message-State: APjAAAXynppSMyp18BYSdUvqkvXOyPvny/jITrVcrntvYAzLuX9LtlS/
 94uYWMY9fUd3hJ+cBs3vX4CRKwplrmwaWr2jV1k=
X-Google-Smtp-Source: APXvYqxai8BzwvjzK/jdGkp5vdi4N2wR8OwpCZJs9mV8OHZisCAlPNHUhLhlNHiUNV9XfQBpv5mV5UCQKMNuviqIztQ=
X-Received: by 2002:a9d:4b86:: with SMTP id k6mr23252891otf.353.1573544324493; 
 Mon, 11 Nov 2019 23:38:44 -0800 (PST)
MIME-Version: 1.0
References: <20191112011521.3155504-1-anarsoul@gmail.com>
In-Reply-To: <20191112011521.3155504-1-anarsoul@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 11 Nov 2019 23:38:18 -0800
Message-ID: <CA+E=qVc+yzVj7dyp9jpeuif5K3dVMEDSiCTG-zSuzLt0intMsw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rockpro64: fix ES8316 i2c address
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Heiko Stuebner <heiko@sntech.de>, Akash Gajjar <Akash_Gajjar@mentor.com>, 
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_233845_674080_D3945DA0 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 5:15 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> According to Rockpro64 schematics [1] CE pin of ES8316 is wired
> to ground, so codec address should be 0x10.
>
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Please don't merge it yet, it appears that on Katsuhiro's board codec
is at address 0x11.

> Fixes: 6860769ea771 ("arm64: dts: rockchip: add analog audio nodes on rk3399-rockpro64")
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 7f4b2eba31d4..18bbe548839b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -477,9 +477,9 @@
>         i2c-scl-falling-time-ns = <15>;
>         status = "okay";
>
> -       es8316: codec@11 {
> +       es8316: codec@10 {
>                 compatible = "everest,es8316";
> -               reg = <0x11>;
> +               reg = <0x10>;
>                 clocks = <&cru SCLK_I2S_8CH_OUT>;
>                 clock-names = "mclk";
>                 #sound-dai-cells = <0>;
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
