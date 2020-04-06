Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BB319FDFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 21:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTM0ok9ZfJFshUvzGNpg90xNfrNq/7ua4w09ljk21P4=; b=MuyjipHiOY6gfP
	8rusKSN0lOYqGnY3NNaNoN4Se+lSaKu7QJYMXks2puVUMxfjb5Kb+rEDdzValAw75Vg7fjnrtCepQ
	8zTA8jHgqhWN2HQoYnOdN71x+f8UDMc8c+NQshwTxffC1a9Mtq8dwCcE8pQ+lo+b+4pVyB+Xddfca
	PmDAGiU6UMYWfirFI9Ki2Nh0GKoxc1IPB1NYtmAqdtvcDel404tAVf+HAlw6YpOpS9Mo5ODh93W8C
	ZMR++Jf5gUhK5aJLVJiftqt8fM08/AEsVvsq5MEfMMpLuA0zRU2+59/XwNd2E9DwIAn4sedLL2IFe
	EnhFmchOK6C2x9Fou0rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLXH2-0004Ls-Ec; Mon, 06 Apr 2020 19:19:08 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLXGw-0004LW-MH
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 19:19:03 +0000
Received: by mail-ua1-x941.google.com with SMTP id y17so355432uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 12:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XjAfYfpfwR/Uhuxu4iW+Imv0nmFvljHi7SshWdYw2xM=;
 b=IhTkbg/YrdV9CWgF4LU1QM5yNI9PoTaAT/lHfXx7ntA1TFAbRqF07o4m4oVedDzL09
 RRdK3/5Jb+Ep18uOnJkJGm74pLTDz0AcFcX3dGrKDhjpWT87aCFU/cJBnZgJAMzYQKX6
 U1OGTTEbogXxeCfMhfLykTt6nJeDmulQWt1m7CYKeu/QKsl0F/xbYK77Abf2jh2TwXb1
 eedchPfzMERpZVeSRlEA1jTVZGgA0d/o7yzMaxBo1TJfqOzcmzbmS5BkrOuoUBYLFvlQ
 bAa865MDmFZAXeIgNhXIJwdnZ0/x/z9HYK4hEiSBwJVpF45lVJZoe3kTwNpLNRNzOkq9
 0hXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XjAfYfpfwR/Uhuxu4iW+Imv0nmFvljHi7SshWdYw2xM=;
 b=FTrYG1PbK3xg3FXT3ulx2AAa3s+KSfub3VYJ/kwqwUJsFXkf85RTLVqK8yIidG55cL
 T03fskI5+tAOl3C1E7SLZFP7+nvBoCZV0g3TYnEUxUGxCfBencbkA3LsipmTFcziUshc
 7o8tf1x/c0bQx83v/x5+Ncvz/bW1AJPrg18Ye0TOYup0973LKFsVB22ijqgjdSCDUvrN
 VvM0bFV22fz7RXTuM1kCLe+RBG/3lzGPlFhB/MRQkTxQrGkRo8wyZLuDN41jyqHApqUN
 DBBwMq8RH5CzmHu60GX1CfvQqmnaGCiSQ8wKThHiCvK6m6jH0bPsVXmNIySXDI44KnpY
 8oIw==
X-Gm-Message-State: AGi0PuapDP7o+ijPBb0dsTvRyfIxyCK+LFvWwMQM57MtFelhXMCPUitZ
 pmYGUbsw5FhAKHw/25EalfjcAtnVUFPklKz9Jn9d+HJAVZ/bYm5R
X-Google-Smtp-Source: APiQypLHaO/009rtrIIFj+TOpL4Oald+Q5Coyb4NlVmf9tNta8n6ctHnGaUajSTwxn4kl/rUSiWPoeWQfNaKQ7MNrOA=
X-Received: by 2002:ab0:654c:: with SMTP id x12mr963381uap.48.1586200741414;
 Mon, 06 Apr 2020 12:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-5-j-keerthy@ti.com>
In-Reply-To: <20200331075356.19171-5-j-keerthy@ti.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Tue, 7 Apr 2020 00:48:49 +0530
Message-ID: <CAHLCerOyo0D=A14wmRGZqSSAmDj0X1AF1Ht1zV0ODDZcW0YqFg@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: ti: am6: Add VTM node
To: Keerthy <j-keerthy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_121902_728540_3A835BE1 
X-CRM114-Status: GOOD (  14.52  )
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

Hi Keerthy,

Should the subject refer to am65x instead of am6 since your dtsi file
is called k3-am65-wakeup.dtsi?

Regards,
Amit

On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
>
> VTM stands for voltage and thermal management. Add the vtm node and
> the associated thermal zones on the SoC.
>
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index f4227e2743f2..54a133fa1bf2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -89,4 +89,15 @@
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
> +
> +       thermal_zones: thermal-zones {
> +               #include "k3-am654-industrial-thermal.dtsi"
> +       };
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
