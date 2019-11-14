Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E29FC889
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvjeCUW3lzBO+Aiwth1s2HghkvblEXZr3QruVD2zlhc=; b=AbAkRVG5SnRcFu
	Cv8+jenJOK2wnyFlcO0BTURBhJ+ETuGOsP6TReBhqrtwq71lyMwcC7vY7zTlSqoOsMtrH/hIK1+4s
	rbOPTQNuav39OucChRDUne9gMOy6+HMLXni1edBDb5Si9T/9FAbr6htucXQXIrkLzX2jTQ2T7nG9A
	0twzH8TRm73dXOkMp2Wzm+g6g/Z7oh+rA/32cNhmvcJR1dSTLKTMowUHRCkjM4srRRlptVaSho3Go
	AKkGr8HUEdthKky5HZRdodv7rw0DjNqk388URtGCa7MtOBo2Oajfya1ezvF5l9zcS9mj4/U02iuNQ
	GSHW7GKcxvA2lWD8Ymmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFsN-0003sW-Iv; Thu, 14 Nov 2019 14:13:35 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFsD-0003rp-H1
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:13:26 +0000
Received: by mail-ua1-x942.google.com with SMTP id z9so1905213uan.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FJX4pImmW+1dIAMZK03BtkAIeMegqqUoxzHSgtg4Ca4=;
 b=kTe0B79e9Q3wfvE896/JqCWZWDPTHUnKJF3MXGJCz0VulZPNVJNms03VWhWhosu0r5
 65u5iTmqWQfZhZU6bZ43HtCH3t9odmp08GyQa+kXxDCOH1M9z2/nD017md8ls95KA8VP
 ScIOnZqRoEAnVGwumKypo7R1jHWTsqOLnL6eBU/RaI2+hdZynt2GBCuBi/hTtG43ri6w
 rXa5aWAOZxBY1H9M1Y57rS3KQgGaa/rz8QLbkYvZ2P8SjOkhJh96iSXBPr0zCcnFlfWj
 USwGVkvBZ+QWGkRyEY9OPWD6vy6WDksT8kV8rKsKHSBpk+Gwww5b9A0D0ZRiHDza1Lch
 oI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FJX4pImmW+1dIAMZK03BtkAIeMegqqUoxzHSgtg4Ca4=;
 b=YnneHc1qnawIY9SARxMabHtRTUXAQAgnri/G1zEB/ABSOXrNsSC7FZMBhI6Y7qODQz
 netyWEFPlNXHCuDdhO+8QHQS5vC0MQFPAuD2aA49kobEP1Qa+4RDvWuqALIz7zQFNgG7
 nKzj6Q7mzJGSK7Ny9eJMqq6WLoJDSFl/UUSiQEcNq84+vXBY26+BOR6KlV4cG3zHsJxJ
 rYbB5jmsHtDv3vsq3X3Mn3YvT2bYlRmmkdMRB2SJ2v1mPtedWMsf8J4ovun+/nqcseZD
 3g2gWgctj4AJmkct6hZrtDCh/7E4fNU4CY1w9XCo10ihAIs4PYDpm76bKOMkjVXSyEKR
 Vq2g==
X-Gm-Message-State: APjAAAXx41iYwsrfLe5FYxzbF1dLismzl0zZmHeDQqiFcwNQfLHI4Tqt
 IkFv+0iNOw0rGPcShrcqU9v1r0ynrczyTO0nwqZY2Q==
X-Google-Smtp-Source: APXvYqx4RK4gWYtCk+erym1uLlCEMYfvmcIf3PPkVWWUkOMrPhdQcGSzRSUDsyWVm4ZWkUAyeM62b0wXUC2Rr+arkK8=
X-Received: by 2002:ab0:3399:: with SMTP id y25mr5562495uap.100.1573740804146; 
 Thu, 14 Nov 2019 06:13:24 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573122644.git.hns@goldelico.com>
 <c128cf34cf3858538eac8abffa02a2af8ce845b2.1573122644.git.hns@goldelico.com>
In-Reply-To: <c128cf34cf3858538eac8abffa02a2af8ce845b2.1573122644.git.hns@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 Nov 2019 15:12:48 +0100
Message-ID: <CAPDyKFomoH5U0XevwKcaHRjf1hEyyqZfv4K_DZhCB7kpuXda2g@mail.gmail.com>
Subject: Re: [PATCH v3 02/12] net: wireless: ti: wl1251 add device tree support
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_061325_574020_EEF2FFE2 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, netdev <netdev@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 at 11:31, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> We will have the wl1251 defined as a child node of the mmc interface
> and can read setup for gpios, interrupts and the ti,use-eeprom
> property from there instead of pdata to be provided by pdata-quirks.
>
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  drivers/net/wireless/ti/wl1251/sdio.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/net/wireless/ti/wl1251/sdio.c b/drivers/net/wireless/ti/wl1251/sdio.c
> index 677f1146ccf0..c54a273713ed 100644
> --- a/drivers/net/wireless/ti/wl1251/sdio.c
> +++ b/drivers/net/wireless/ti/wl1251/sdio.c
> @@ -16,6 +16,9 @@
>  #include <linux/irq.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/gpio.h>
> +#include <linux/of.h>
> +#include <linux/of_gpio.h>
> +#include <linux/of_irq.h>
>
>  #include "wl1251.h"
>
> @@ -217,6 +220,7 @@ static int wl1251_sdio_probe(struct sdio_func *func,
>         struct ieee80211_hw *hw;
>         struct wl1251_sdio *wl_sdio;
>         const struct wl1251_platform_data *wl1251_board_data;
> +       struct device_node *np = func->dev.of_node;
>
>         hw = wl1251_alloc_hw();
>         if (IS_ERR(hw))
> @@ -248,6 +252,15 @@ static int wl1251_sdio_probe(struct sdio_func *func,
>                 wl->power_gpio = wl1251_board_data->power_gpio;
>                 wl->irq = wl1251_board_data->irq;
>                 wl->use_eeprom = wl1251_board_data->use_eeprom;
> +       } else if (np) {
> +               wl->use_eeprom =of_property_read_bool(np, "ti,wl1251-has-eeprom");
> +               wl->power_gpio = of_get_named_gpio(np, "ti,power-gpio", 0);

This isn't needed as it seems. Perhaps remove or keep it as optional?

> +               wl->irq = of_irq_get(np, 0);
> +
> +               if (wl->power_gpio == -EPROBE_DEFER || wl->irq == -EPROBE_DEFER) {
> +                       ret = -EPROBE_DEFER;
> +                       goto disable;
> +               }
>         }
>
>         if (gpio_is_valid(wl->power_gpio)) {
> --

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
