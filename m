Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9981B072B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNtte+dWxm1Fq4+YVs4VjR6D1/rdDsI3bz8daL69QMI=; b=OAvO0ZM++8P02r
	Ysg31TecqRko4cd+M4NNaZi181j3LKuEBlDxbgZ9OA2PcKyKdwEuMXmA+V7DxJel3vmn+9PfkHPBl
	rrijoFmLSIVZZBX77cAvjZpjFdEBp4NprY+tKxOBB7Tkw556S/OgHz7KLUuEC4ZfR36v+OYDCefmT
	OhTwVfXq0v3rXgVtsYDvuo8XYmqRvC/iPvD69NYPFhzCub/gUhnUjbi1eFqopJ5IjTJeIenpNAhEX
	4+5x1tJ5nXRKRRPWlBtFjqT66WMGYTdoZ0ums95cfji+M/9kcsWVa7YXy7cyHnsN3PSg2DCUkH2zb
	jK28gQcKAVxHLSHFfGjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUPX-0002FB-Jl; Mon, 20 Apr 2020 11:16:23 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUPP-0002Cx-27
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:16:16 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 03KBFowY031324
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Apr 2020 20:15:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 03KBFowY031324
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587381351;
 bh=N6l3+df54Z7OPs8bFrk6kGISVsr2ALvPYKeiEaN5x4A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zRewF2Qwx1qSYCq/7weEGGSFxV4KVmU5LmtMeMJghp0P16k3Eg0xPU/wqFFDc1V5t
 tKlk4dtnSYfkS/BrtKYtGtz0U/M/dtrtCHLxVkDJs06inEYHOf1JOSVUUsoe2TL2HT
 ybaZobTWShXpEQ1ISYZXqEuVO1cxKrE5RAqfxrWmvMbYYGaRS9+dxCiN9It7J5/o7o
 nGzJTxzWyIKzp+4ZcHQJ+MF78q+QjjSXofy8yA0tPY5lCopEfsAIlGoWZsjS96YVW0
 /xEI7JSfv42NLaQ9HQSeaUrAsG/5M1ZgzCas+EPiXl+NFEBU8mGF1vG2BTszo+qkkc
 7Gs+0qqsJTOLg==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id z1so5677358vsn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 04:15:50 -0700 (PDT)
X-Gm-Message-State: AGi0PuZm9YAt6MceL+o3R75Tv9/N0lzJdWP8gkhKQXjrTbsOckBk2Lcm
 Hnf+qj5oSyqdEn5vqDz4+PFm37vT8qpFzOYtSRc=
X-Google-Smtp-Source: APiQypKwhM2QJcFYRL36WyEAeGCTWkeUMtYH2nxWOLM3hMfSzawHXXii5nhIbdVM7VgOf7AVVjKrSNAWx9Kt0hMDXxI=
X-Received: by 2002:a67:6542:: with SMTP id z63mr11103919vsb.179.1587381349800; 
 Mon, 20 Apr 2020 04:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <158737719165.27947.6617937231903079086.stgit@localhost>
 <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
In-Reply-To: <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Apr 2020 20:15:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
Message-ID: <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_041615_440062_F4FD976F 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 7:08 PM Masami Hiramatsu
<masami.hiramatsu@linaro.org> wrote:
>
> Add the device tree for Akebi96. Akebi96 is a 96boards certified
> development board based on UniPhir LD20.
> ( https://www.96boards.org/product/akebi96/ )
>
> This board has;
> - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port)
> - Simple frame buffer with 1080p fixed resolution.
> - I2S port which is connected to aout1b instead of aout1.
> - 3 serial ports, only serial3 has CTS/RTS.
> - No NAND, only eMMC on the board.
> - OP-TEE support.


I did not know "OP-TEE support" was board spec.

Anyway, I decided to not worry about that.


You are adding lots of redundant code.

Delete as follows.


diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
index 84ff98d96751..aaf86162da84 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
@@ -113,7 +113,6 @@ &serial2 {
 &serial3 {
        /* LS connector UART0 */
        status = "okay";
-       pinctrl-0 = <&pinctrl_uart3_ctsrts>;
 };

 &spdif_hiecout1 {
@@ -155,11 +154,6 @@ &i2c1 {
        status = "okay";
 };

-&audio {
-       pinctrl-0 = <&pinctrl_aout1b>,
-                   <&pinctrl_aoutiec1>;
-};
-
 &spi3 {
        status = "okay";
        #address-cells = <1>;
@@ -187,14 +181,10 @@ xirq10 {
        };
 };

-&pinctrl {
-       pinctrl_aout1b: aout1b {
-               groups = "aout1", "aout1b";
-               function = "aout1";
-       };
+&pinctrl_aout1 {
+       groups = "aout1", "aout1b";
+};

-       pinctrl_uart3_ctsrts: uart3-ctsrts {
-               groups = "uart3", "uart3_ctsrts";
-               function = "uart3";
-       };
+&pinctrl_uart3 {
+       groups = "uart3", "uart3_ctsrts";
 };
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index f93519793bfb..afa90b762ea9 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -337,7 +337,7 @@ gpio: gpio@55000000 {
                                                     <21 217 3>;
                };

-               audio: audio@56000000 {
+               audio@56000000 {
                        compatible = "socionext,uniphier-ld20-aio";
                        reg = <0x56000000 0x80000>;
                        interrupts = <0 144 4>;





Lastly, is the pin-setting "aout1", "aout1b" correct ?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
