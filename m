Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20B248065
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGkYxYfdTP/RsvWlrDo/5z2D2qWMV8K7WeYkPnW2Dtk=; b=tzNCyNopsZ7b2K
	vaNh7nlG9mrwxEf2xCpPYcA5O/WRuE9NuZV7fy/yffhuEfiRsdEy1Hlsq0wstdPRBcp4tDXn+OyTa
	6iTbMiUZYhul2ufavHc/QmDSQGpiDLLW8SLNQJb1Gwdkz3M67pF3cfQ2UlRlZKwFXp0Rj78CYc3EH
	l++fcAJvl9Pcs64sgB1pXyUlVGQB3VWi0SPSrKPN6wDOUrMEO+yCerII4tNEOr+MtkU5upPAvEoez
	laOjCU7tqnzmcmiqE6jEzMiBU0KU6XWI7kux7irwNSdI6+GLCRmIzgJnvLQJ3o8CiEkfovBoo7z1A
	2ERbMaCfzFmiYRmNAN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpcA-0005Iv-Pp; Mon, 17 Jun 2019 11:15:54 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpbx-0005I3-LC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:15:43 +0000
Received: by mail-ua1-x943.google.com with SMTP id 89so2551683uab.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BOF08Kd8gvLLYtfWI0cYTkenEuQri7zpLz/JSt4v/xU=;
 b=MrRsLl9iUyiGYQSxAwc33dWM+RzxbM3wFsTH5CBlrji4IGCyYk4yvEI4xS/tT1pecu
 phYWdunoDqyMQqR070S4GpgR9DOPQLjoFadBG8NVfMYy952a4K6CGQndKArGugLNxFep
 /yHSIvX6Q3G2+rMDf9N/s//pJ7cnuLDlt7eWetwok+6pEJY18i0rTWiotZpQf02W6IZc
 yRAfTukTRHU9G+fRfKa7f+u46zlVnABmyX61MjigfFm3xNJMsMVtZwS5r2N+dpbqvvyd
 K4zaHdnkj/LsUC+egcdnik73LxiuKJ+GFV4wzuUg4x1vyWMNMN07WJWZNmqb5iTHlF1L
 qvMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BOF08Kd8gvLLYtfWI0cYTkenEuQri7zpLz/JSt4v/xU=;
 b=UqmNZeV5ifdbw5hfHp3j2vLnz9kj0cRTVxnWGkIWCk1W9eRXrk+w4Rt7SBo25NLqjj
 ILu7HNAV8s0pc75zJXujSkTNV/8Hn6VzU8XIsHXI4BAR0gTk4REd1cr6IYZuoT++HlfP
 reZzLZBKsjZMmng/BEQAmhYvuAFEeVBG412Z6KA7b74WKJ8jZyODS03SzlNpYvpyTF60
 lxj7pRlb0PFBRUO9iHPIdcdtW9uHv/1urtL5Ad/McuQQARaeaGs6mZPygHIm4/jyymEY
 /ggYkQD5hPHgoJmZjv/v6aqZMBmlZusrt9dWyMuAXULm2G/bRBjg7oc6zCZ+XiBu7NKr
 8Knw==
X-Gm-Message-State: APjAAAVfmFJVSjHe8xC+OI/hFlesO42ALpodtizPJyC3BfTAJlcv3QPu
 I2fHnKfVWdxebfphSU4xCDULsYNmkKfjOcZB4BfdwA==
X-Google-Smtp-Source: APXvYqxv6PbqDpP2z9ZJaq9ci5jvEg3N87A4/Iy7u5CfHBbTDRRzt5ZE8iMU00CAEVVAIhmuBcVjHxA+PnfMsn6ngA4=
X-Received: by 2002:ab0:60ad:: with SMTP id f13mr8692794uam.129.1560770139986; 
 Mon, 17 Jun 2019 04:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 13:15:03 +0200
Message-ID: <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041541_704432_EFFD22D0 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Olof Johansson <olof@lixom.net>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, jolly.shah@xilinx.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 at 11:57, Manish Narani <manish.narani@xilinx.com> wrote:
>
> Apart from taps set by auto tuning, ZynqMP platform has feature to set
> the tap values manually. Add support to read tap delay values from
> DT and set the same in HW via ZynqMP SoC framework. Reading Tap
> Delays from DT is optional, if the property is not available in DT the
> driver will use the pre-defined Tap Delay Values.
>
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 173 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 172 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index b12abf9..7af6cec 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -22,6 +22,7 @@
>  #include <linux/phy/phy.h>
>  #include <linux/regmap.h>
>  #include <linux/of.h>
> +#include <linux/firmware/xlnx-zynqmp.h>
>
>  #include "cqhci.h"
>  #include "sdhci-pltfm.h"
> @@ -32,6 +33,10 @@
>
>  #define PHY_CLK_TOO_SLOW_HZ            400000
>
> +/* Default settings for ZynqMP Tap Delays */
> +#define ZYNQMP_ITAP_DELAYS {0, 0x15, 0x15, 0, 0x15, 0, 0, 0x3D, 0x12, 0, 0}
> +#define ZYNQMP_OTAP_DELAYS {0, 0x5, 0x6, 0, 0x5, 0x3, 0x3, 0x4, 0x6, 0x3, 0}
> +
>  /*
>   * On some SoCs the syscon area has a feature where the upper 16-bits of
>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
> @@ -81,6 +86,7 @@ struct sdhci_arasan_soc_ctl_map {
>   * @sdcardclk:         Pointer to normal 'struct clock' for sdcardclk_hw.
>   * @soc_ctl_base:      Pointer to regmap for syscon for soc_ctl registers.
>   * @soc_ctl_map:       Map to get offsets into soc_ctl registers.
> + * @of_data:           Platform specific runtime data storage pointer
>   */
>  struct sdhci_arasan_data {
>         struct sdhci_host *host;
> @@ -101,6 +107,15 @@ struct sdhci_arasan_data {
>  /* Controller immediately reports SDHCI_CLOCK_INT_STABLE after enabling the
>   * internal clock even when the clock isn't stable */
>  #define SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE BIT(1)
> +
> +       void *of_data;
> +};
> +
> +struct sdhci_arasan_zynqmp_data {
> +       void (*set_tap_delay)(struct sdhci_host *host);
> +       const struct zynqmp_eemi_ops *eemi_ops;
> +       u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input delay, */
> +                                               /* [1] for output delay */
>  };

Please use two different structs, one for the clock provider data and
one for the mmc variant/platform data. This makes the code more
readable.

In regards to the mmc data part, I suggest to drop the
->set_tap_delay() callback, but rather use a boolean flag to indicate
whether clock phases needs to be changed for the variant. Potentially
that could even be skipped and instead call clk_set_phase()
unconditionally, as the clock core deals fine with clock providers
that doesn't support the ->set_phase() callback.

[...]

Otherwise this looks good to me!

When it comes to patch1, I need an ack from Michal to pick it up.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
