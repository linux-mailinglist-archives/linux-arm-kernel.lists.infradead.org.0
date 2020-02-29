Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F92174559
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 07:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d94hNv2Lqn+S6IH35rkWQgyK48m7MDLZ3EenElUDk2I=; b=j7Jcrrp/UHnabV
	21LWno2ocerHUztOplrEOQ/kCJhFyFPIptaruifniQ8qPkpvQqOG0DExsVo6cx0Nn0ncstHHcDECV
	2dv9nIFqcUC4GcBATM6pjX8qyaPudhCVVcYUqaPybZHSb+SJBg76UiKmY81H8Zy/9KHm4slhsXu9B
	JrkrT3Jj64e8oSG4RENHq6Ci3dL1KbuH85+OCwec7P3d4AIIx60Kc3UmhCN00EhflBu+FQej38XBF
	gaH1/W0aaQZTpjEMEZ1Per10ZNDT8+7YPPwPie/DO/ui5x4Csgqotj07/yuq8DD5JZvP+/7+tG7iJ
	uJ1euB/mXrjMXm5zTIfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7vKM-0007J8-AE; Sat, 29 Feb 2020 06:10:18 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7vK7-0006jI-4T
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 06:10:04 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 01T69Vgi018859
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 15:09:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 01T69Vgi018859
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582956572;
 bh=T4mYF9PdGCCx51/8tVnGLpffkqtEkPRbg0ZE1yEu3Y4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a6JQ1jn+SkINLjt7ka4hUO0gyE6mJjW8w8OnpOBaf7xBexOx5lszzunIF+RIHIiuA
 IbL0jzmT5xrFxvk+yW0OW/TxspNz5E94KtI7Q0yLXyge68JlD9NAMYSawd6uhApdQS
 z5j3gYbz7WjDj0kbELA/MCUSm9R1wFbfAQISzVdP91rGqHPQr6KSZgEQrnaoFSDJtP
 P7VEgy8GkrA5WAVkU3IfmR+4+jqUV8Qcj5kqPQ0YY9isnoZ23MkJletch+RUtHEjcp
 ZZ7oZ8fiq6EBdD2YQm/Au57QY8bGyzKn7IUPfrlcjuKGwcL663g5Y/9F8zsLW3/0JN
 5OnxJlEUVFS2g==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id w142so3375713vsw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 22:09:32 -0800 (PST)
X-Gm-Message-State: ANhLgQ13/MrTQ+iPePcCUdLktTx1SjphAJ4ULcDVcMx2k6ETF0TZeqNZ
 fB1XZwQVbmn0FK1HMVGhPgqL51Pwi10iQi4VmIc=
X-Google-Smtp-Source: ADFU+vsR9iQ5EQp9E08EzMVqnnAyJbA3o2T746m95TMOkWDqb0XZcmG/9wqU7G7zK2SepSJ2NLe8WJ7qnxEt63Cbwek=
X-Received: by 2002:a67:fa4b:: with SMTP id j11mr4500806vsq.155.1582956571084; 
 Fri, 28 Feb 2020 22:09:31 -0800 (PST)
MIME-Version: 1.0
References: <20200226035914.23582-1-yamada.masahiro@socionext.com>
 <20200226035914.23582-2-yamada.masahiro@socionext.com>
In-Reply-To: <20200226035914.23582-2-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 29 Feb 2020 15:08:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQzYMbZwyt75yWbrVgj-4cOHC20RFLVz7kqnx8vUa-baA@mail.gmail.com>
Message-ID: <CAK7LNAQzYMbZwyt75yWbrVgj-4cOHC20RFLVz7kqnx8vUa-baA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: uniphier: rename NAND node names to
 follow json-schema
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_221003_416300_11E52209 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
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

On Wed, Feb 26, 2020 at 1:00 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Follow the standard nodename pattern "^nand-controller(@.*)?" defined
> in Documentation/devicetree/bindings/mtd/nand-controller.yaml
>
> Otherwise, after the dt-binding is converted to json-schema,
> 'make ARCH=arm64 dtbs_check' will show a warning like this:
>
>   nand@68000000: $nodename:0: 'nand@68000000' does not match '^nand-controller(@.*)?'
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


Applied to linux-uniphier.


>
>  arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 2 +-
>  arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 2 +-
>  arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> index 2e53daca9f5c..d61da3a62712 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
> @@ -621,7 +621,7 @@
>                         };
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5b";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> index be984200a70e..98f0f4eb0649 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
> @@ -925,7 +925,7 @@
>                         socionext,syscon = <&soc_glue>;
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5b";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> index 994fea7b12c1..4c6cd3ec541d 100644
> --- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> +++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
> @@ -783,7 +783,7 @@
>                         socionext,syscon = <&soc_glue>;
>                 };
>
> -               nand: nand@68000000 {
> +               nand: nand-controller@68000000 {
>                         compatible = "socionext,uniphier-denali-nand-v5b";
>                         status = "disabled";
>                         reg-names = "nand_data", "denali_reg";
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
