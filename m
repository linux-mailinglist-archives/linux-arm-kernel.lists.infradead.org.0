Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593A71A1CB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 09:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjeLClQSroT9TzbYb/ABMjIJEX1M8hrpf5bohgoa2Zo=; b=lzl6Zfpy5xZZ3j
	/nJQHBFCbuQRFhHmAF3lcj8kSFQtZflsPW4HO25THlJXBK0VjD/lkM+dNCvhRTTBStbBkFpGBO7oB
	J3uqdPs3K2V/wnYWGHyt/qMZ3ds2JOvedrUUmmE4DcUAbprH+bvmDD1HnCDyxW/W6qX+leTjm+Swz
	fQt8mtxv30hDc2Yid8Qi99dl7oHHSBQn2gYtXI4Rg817la6jUsOZXVlIvMIPnXuPBXhs3laSQojSe
	bwzAWAfipNfd8ZtpL+uCgb2I0Ar6fniUyokazt2ZB1Qaq0KpcgfPmUs8jfngAtBabb6t90nROHr2j
	70he2EzAVKafbxWV83sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5Bc-00089D-0z; Wed, 08 Apr 2020 07:31:48 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5BF-0007zu-Hi
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 07:31:28 +0000
Received: by mail-ua1-x941.google.com with SMTP id m18so2321338uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 00:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JCVp9cQtOdkPaCURq2lbHA0T3kiz0brcw8uKYGlf6rE=;
 b=GJyBXQjX1Zxk4QMXXm55+mVCa0T6jEynLfonSJhvT/PhtYJY5aHXll0K16TXLyYzxW
 wB2TYqrKi7jcrZs6mOOiL530et3RVXg5+vXx3v4/DT3FJAhEc64g+odV/VaUZTNgddsw
 06fEeBgcv3HLCy1NLRcuRaxVii7yS+OB8d+nwJ7h8Sy9I2O3rnAqftNuSdnf9xcU6PKU
 AEyK529xCrWBpMDN8b3r4zWYg2rDo0+YOFL6qb/8wd6EYmN6SmEMqYtcaIKQ8ADWX9qC
 xJ6g83KNqBNbeogF1wjE4tDrcbabIAiqN690IUMRi53qR8A3M0c93vQzDdJ2iL8InRPi
 JM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JCVp9cQtOdkPaCURq2lbHA0T3kiz0brcw8uKYGlf6rE=;
 b=Hqc0wc9YJnMMFXA6vm6n7zDsvy7Z6SSPlNdHSLG4Qp5oig+NPUnNwSSfuNiV/F2qhF
 f76bIgvAUmunk03iW+h+hYBI4ejSdeDZRAQR4C9IHpPJrNY7OW65o9QjCs478SKIAH9C
 arfJLfeF6UZ8oBLhvGq8ECRlfh0MrSqaP63AYH/Qos55DL7ZAqyRU5O/SOeTJgjfa+2r
 wMQnfr4G8idD8zN3Z+sBW4zqFKZ9jeaRb2K1gxFsgv+uXL45fEi8QABvn+6PxuMZyCid
 OEO3hWe1Y57OfzjfkpBsEiyYRcp6z28itiKStSc1Ksbw/9Xa3htGsrJKWJGV+IbFHYyO
 4VkQ==
X-Gm-Message-State: AGi0Pua/N0wH2J1WJ0edQ+AWiqiE6lIBhRhvrUboMseJmfzyQq7TKivI
 U7Vdgn1+BQzFvC6YsFREIGiQL2Ffidg1cZAWjncQ5Q==
X-Google-Smtp-Source: APiQypLd/k1ADI3b3/7gpiUW51OxpbWTZC3P4zU2FxImWXd0zUYVWWqtRdMeSEaxTnp+5juiZP/Es7UhrHsCpLo20M8=
X-Received: by 2002:ab0:608b:: with SMTP id i11mr4339623ual.94.1586331084097; 
 Wed, 08 Apr 2020 00:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <20200407055116.16082-4-j-keerthy@ti.com>
In-Reply-To: <20200407055116.16082-4-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 8 Apr 2020 13:00:00 +0530
Message-ID: <CAHLCerN4m4um2w1rfKut=R8FX_maDfvLebRcyiSL+=FzJsp1zA@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: dts: ti: am65-wakeup: Add VTM node
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_003125_600539_8CAC8FA8 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:21 AM Keerthy <j-keerthy@ti.com> wrote:
>
> VTM stands for voltage and thermal management.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index f4227e2743f2..98b89cf0ccdf 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -89,4 +89,11 @@
>                 clocks = <&k3_clks 59 0>;
>                 clock-names = "gpio";
>         };
> +
> +       wkup_vtm0: thermal@42050000 {
> +               compatible = "ti,am654-vtm";
> +               reg = <0x42050000 0x25c>;
> +               power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +               #thermal-sensor-cells = <1>;
> +       };
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
