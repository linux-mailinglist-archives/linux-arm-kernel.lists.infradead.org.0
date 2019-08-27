Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23E59EA1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWta+vc7FT7mRo5XLUij2ocZNFoX8HnhPjOm1gyYdvs=; b=Pr0CFdgJY7j7/I
	b2imJnzXfQ2Q8EHfUfy2arCDM7YmhwQx9EMnp6I3murOejX5MAoZp6JoBp2I5Uziylq7F12S3awSQ
	eAzprhPU3v7l+82AYTZ34wsAJjZdr3crDlV8RXTCrRKHpOOXmNouXwjEFCYMRxKjxvbJBf31Jt4J/
	LIxgeCZx+1XwJI8001v8mfvJJSm2jX+FCO5AUh3P9DQsEI0GvLFOKuCHQHo2quzBPNH1nUJpUNKkm
	saBmbhjt6NvzO40HYuNjJ7jZMPT7/nXTbLZwoe6g0fzLbcZ80p9wxHc6mmgnlSKtQ60LdRMou1Tnv
	Lc6t7y1PU3qFjG/9eeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bsg-0007yP-8O; Tue, 27 Aug 2019 13:51:30 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2brc-0006oK-9Z
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:50:26 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q16so13498057vsm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Guoi8CEbmiEQL58vlM08bbKsHwcExynBojoPctnPZQ0=;
 b=RNPb/Pp8yJsUTuHGjh2jKkjRQX2ljYb0W/XDYEKzB+FhQFV/R9HrN1fiHznv3QWbKj
 Sfd084Ajkfy+zKTBO5aQ2HlSsn9KYya3GZOoRN3sYZH5EVfrOacXSA/eLCUABkDBHKXZ
 HgqNEhQmz+aS3sqpEDAM2LtMimWH6XbNE2mBn+KZLBTctvkTxjSop/G8s5bxTh87Pmg2
 A1wtOHfHfMQHdDckfH10h05OH6i8sQIEV+tUZMfc5hVtF6P2OBv1dYt6xLONVHGNsDU2
 bS1kXes0awjw9J6ilPUG5rjU9w2U5rtdNq2fBPyBxzS1s68byE4UVzQKn5aIaggg37LH
 sg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Guoi8CEbmiEQL58vlM08bbKsHwcExynBojoPctnPZQ0=;
 b=c0K+0qK/p9Uo4BvEsGXuOdRqq0cA2YjF/z9MPLu5KB1wXqZvIPLMSHd7BfIwhJ3g3R
 xID6HIREYeNoLzwR8t4QLWwvwP+ms69pzrE6Y1rnjF6dLJthbXxjn7cIiqfN0As6nMe/
 UbVYfmV7dcX54MdFSke0D2Tn4N5jXr/T81do0ztMmYBCxdrbozEVpQa9B3bHF0OqgFFs
 lcrGTKu/fF3eozgwuG5tlifn4TG5Ir5vH90RfWg2LA0ptzdzK/t8876u1VWP0nk/abX3
 HxPO+tSv8yR+plUXB+lI7V3k8nHb/8pJhG0nf1Yj9DA5ErpUT3Ou4wAdsn8KPRwsyiz5
 I/IQ==
X-Gm-Message-State: APjAAAXeHOfHsr9OWHpEpPPyljLOJcqh5pkFLgkT4GfndjH6HvBGZxYP
 lqG0hEJPc8TYbQMAiBKvv16PH5/jTcW5qAg2CatMtg==
X-Google-Smtp-Source: APXvYqzncKmxLayhEBMLlhwrVoNiyd8CgMvPymu/cA3tDurKWXmJDQS8p/pR1gGiwmMXm8tlrZoSHbCz53D4HFxX4k4=
X-Received: by 2002:a67:347:: with SMTP id 68mr13733195vsd.35.1566913822835;
 Tue, 27 Aug 2019 06:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:49:46 +0200
Message-ID: <CAPDyKFpsvZ+LEwY91LiSExgm=4g=BhWNpkkJMniBNff+qch-QA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: mmc: sdhci-of-arasan: Add new
 compatible for Intel LGM eMMC
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065024_685847_C00E1E82 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 qi-ming.wu@intel.com, andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 at 09:28, Ramuthevar,Vadivel MuruganX
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>
> Add a new compatible to use the sdhc-arasan host controller driver
> with the eMMC PHY on Intel's Lightning Mountain SoC.
>
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index 1edbb049cccb..7ca0aa7ccc0b 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -17,6 +17,8 @@ Required Properties:
>        For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>      - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
>         Note: This binding has been deprecated and moved to [5].
> +    - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
> +      For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>
>    [5] Documentation/devicetree/bindings/mmc/sdhci-am654.txt
>
> @@ -80,3 +82,18 @@ Example:
>                 phy-names = "phy_arasan";
>                 #clock-cells = <0>;
>         };
> +
> +       emmc: sdhci@ec700000 {
> +               compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
> +               reg = <0xec700000 0x300>;
> +               interrupt-parent = <&ioapic1>;
> +               interrupts = <44 1>;
> +               clocks = <&cgu0 LGM_CLK_EMMC5>, <&cgu0 LGM_CLK_NGI>,
> +                        <&cgu0 LGM_GCLK_EMMC>;
> +               clock-names = "clk_xin", "clk_ahb", "gate";
> +               clock-output-names = "emmc_cardclock";
> +               #clock-cells = <0>;
> +               phys = <&emmc_phy>;
> +               phy-names = "phy_arasan";
> +               arasan,soc-ctl-syscon = <&sysconf>;
> +       };
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
