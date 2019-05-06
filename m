Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEF81447F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYT7O5V7WaaSXDcJUUw0QnMPljlsqf+p1MwfU7U/4Bg=; b=i5kqvm2X+UzU6s
	/rJqB+BiWylSUsZ2hwEOUv+gULoQwimpMQQ00NGWHXpmoUB+ulx5EHEUho3QYcS9UJFwZrejabbi0
	8gX8j0VEmBbj4GESxGDnSIpWQXbBmd+fB1aKHTEK+r78mAh0gvCSGLHffNm4o7grApV7Bl4w6/eto
	1kvpLhniMCKVDWYBXBanYw4wh1mvXWGnL6+BfyyNk+Wy4DOhLaFz6OXPGupmQIiGOjmyhfaf5i4VE
	fqkVMVcla5rqNOajlq+b+L7OJDXuUEIHavAKql3wMuB2Hc8iRIYtW79KcQORAhmInD6M4QCuoVAZv
	moob6o3rKKv/JoPLYKMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXFS-0008LW-7U; Mon, 06 May 2019 06:37:14 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXFJ-0008Iz-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:37:07 +0000
Received: by mail-oi1-x242.google.com with SMTP id w197so8763741oia.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 23:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AsWrneXTR0dVmh3/0SghuMR1v5mpMf18phXdK8FnXQk=;
 b=frf8920IMdLHYA/tNXNdbO5znbdlL6YbO1Vla6P0uim8zVqGlJzdIdUoD9WDeJS6R8
 /s2Rt9jsQT/VZreSzLBh/1i1eBSmy3l3eHLvsSbEvK4Lgh1idRMTIPi0Z0JPe0rH4ybS
 s5pg63tEF90wA1Dlko0cr/SnnAAMkGfWeP1OOqGYkrles+0m21rVkBrpgS/tmXcJ5e9W
 XU7Dr5OGCdaMBI2txRDcgyJMb1dHaJiqoA32A0XpwSC5HhrYet6oFf5W4dHDv/jus9cM
 7e9xPoBFDurVIDAXFUmnJWqlfxY28c5ML7kuJ7sANzrCi4znsOpJZHVEpgmvLIfgHo4K
 QOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AsWrneXTR0dVmh3/0SghuMR1v5mpMf18phXdK8FnXQk=;
 b=TlaIhsdTsQj/6azZ5vDI9Pvy6aFy45pl5P2+emYZJSa7GDqYQCkrFY1gUyLS3rhKTS
 MPj44tQYTNJ+0bqBLXkSk6VS85L1kuu2fo3koHS0lEWzQ91GV1EqCdzkbvQWZnEMi4cf
 n6lKo2WJhngl+k+PpPwJQPn8VtmvVn42en7K3u9Cih8ojqX2es8YLVIyS6TWmYzq/xhs
 sHjk8CfK9GBDCX/mZ+j2TVFCVgEzxGzoIJhZ5zVEFuVAJRBaGX7B/aVeOGVBZnW+HA43
 rZWpaxRzseLwPhzZzwjs6U35hoXwW5cSwvdyruNpLClKheuCDijzYekRO3cD3EEgyEBz
 Cm8Q==
X-Gm-Message-State: APjAAAUKIzr2bBLY/rDB2J8V12ZFaRJileHPyZImXxxNOy73WCcbkXGH
 9rqmWzsuogxksvf6idzIyKm76e2hZXrxzj82wgaftA==
X-Google-Smtp-Source: APXvYqwfACU3oJMu1A/L3M8/Z8X5tpHYCsDugmBY2FX4wctU4dLdhD5XkYMiUU6ywBQrmX0xNHQIVr4RhVDekURBAXk=
X-Received: by 2002:aca:ba0b:: with SMTP id k11mr171531oif.57.1557124620939;
 Sun, 05 May 2019 23:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
In-Reply-To: <1246f7a9ce912458ea3b889b0c0e392897a664c8.1554879978.git.baolin.wang@linaro.org>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Mon, 6 May 2019 14:36:49 +0800
Message-ID: <CAMz4ku+1-w8va__JNkBME5tPuG0AdhzksVbNbYomqY94JggPVg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sprd: Add clock properties for serial devices
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_233705_973066_39F38B88 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Wed, 10 Apr 2019 at 15:23, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> We've introduced power management logics for the Spreadtrum serial
> controller by commit 062ec2774c8a ("serial: sprd: Add power management
> for the Spreadtrum serial controller"), thus add related clock properties
> to support this feature.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> ---

Could you take this patch through the arm-soc tree if no objections
from you? Thanks.

>  arch/arm64/boot/dts/sprd/whale2.dtsi |   16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/sprd/whale2.dtsi
> index 34b6ca0..b5c5dce 100644
> --- a/arch/arm64/boot/dts/sprd/whale2.dtsi
> +++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
> @@ -75,7 +75,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x0 0x100>;
>                                 interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART0_EB>,
> +                                      <&ap_clk CLK_UART0>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -84,7 +86,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x100000 0x100>;
>                                 interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART1_EB>,
> +                                      <&ap_clk CLK_UART1>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -93,7 +97,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x200000 0x100>;
>                                 interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART2_EB>,
> +                                      <&ap_clk CLK_UART2>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>
> @@ -102,7 +108,9 @@
>                                              "sprd,sc9836-uart";
>                                 reg = <0x300000 0x100>;
>                                 interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> -                               clocks = <&ext_26m>;
> +                               clock-names = "enable", "uart", "source";
> +                               clocks = <&apapb_gate CLK_UART3_EB>,
> +                                      <&ap_clk CLK_UART3>, <&ext_26m>;
>                                 status = "disabled";
>                         };
>                 };
> --
> 1.7.9.5
>


-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
