Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12216E9FC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KvvVcv4m94ptBRCxdXUJ2WH6+Rg25vGDzDAHhWBkOo=; b=DKHU7UlYPQ4Dny
	URMQdSZq2zyqAUvFYdcFJkECegh4ZgUz092ggOTMsDlwOIchomL9ovzGmMMi+ZbJPNC4SA7vTUiP4
	A+TOPGfsx7R+le5V2JMDA24t6xtptMEjsEMZ1iQFL4dUhwZdzQ4UFp/N1hYlDMkDRJLOHVrv2d6m0
	W08uJWX0uYxLsxweQ/cp03VWRGijyFf/2vrbaP2E71UoVrV/2dj/3P7H/NH8/ixh426zCnFJhrs+e
	3WZ1f/K1o25ZgN+MWZ9T3a7x4yIvClHu1F2Tg2jDkRapAF5+4KjhzVTTpJ4lu/GPB4vHaqEi7lsXX
	03eFWvhLJQV1TOEBEItw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqGZ-0002VM-89; Wed, 30 Oct 2019 15:52:11 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqGI-0002UE-So
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:51:56 +0000
Received: by mail-vk1-xa44.google.com with SMTP id 70so596318vkz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MM8FYPP/M/qSGLzrMimtzxUAQYpF/zt1wu6EL2luqtE=;
 b=g63vcrfvchtAY5Rd4CuFqJnAncPsp38RdAVZRNM9WTGTq5FdrGZl2oMdK24C0ouZMv
 Zx3My7Upbfwkqdu1ZF5cDQ1kc66k/jp8wegkgxnQ/ALeyvgSeFHS/snQ/xWL75V7Phqp
 4MalfrNRHwi4CpIylLOnmzj9sdkHNkEDYEmmwx+aVxrHD+QCV51Rzzl6vHtIJ3iMO30J
 kFpmzeq4jWbaxsqwIjDZZneLyXJaaJdjcH+c/BSSTf8iRjl2gNc5j54vOdQqJfw/rePZ
 P3cKjDCcYPbQxJlN9cpB5CkBmYD/3vyML4pHLz4SnMVneG80kChlnAC6NwFHN0uFm/d2
 8DyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MM8FYPP/M/qSGLzrMimtzxUAQYpF/zt1wu6EL2luqtE=;
 b=MCY0FawiAj06qR1lGSsqZ8ymSsz297rhFLnkYQf+8ftOyp8c7EeEevyAM98iCMNz7g
 8e/TYSmkIbxa7+P5GT7ebVva8ahwASg+/KsqxV4iJ+Mf0Rdel7dTTZUoLSjOhg1EVkO6
 I1OYWHfV+ScT9BlFvUQcAOd9ZIbeo4y4baaBVyh7BLwFIsk+0U5K7EPWEQU0NOruJrHo
 xN+CKScj7LeEWS/nf9hv6m0IvP7/WzwPoAv99i0hGUKM6s90jHB0L0xQgz/NdyrCB50D
 JIuT4LujUb5Yi+ZaTPAj8xqHdkcNc608EEX4oM70VpPbUbYFMohGRUMxcp3w/uvpZwTZ
 zkiQ==
X-Gm-Message-State: APjAAAWTFouf4VmrZHnYUMQyxUWDl17xTqXNu2M/gEK3cVWNOpjKZjJc
 Y/ultrPjhKi5UxUCwp/nGQCMW6LuTI0DAUO2HH71gw==
X-Google-Smtp-Source: APXvYqyHupdgWHa7qCIjuf/ufG4zCQRus8URSrYdV3I3LkSUfaiNNDW1LPfNwtjXqRaPr+zQbaPiggFXKTik4rvlgIk=
X-Received: by 2002:a1f:2f51:: with SMTP id v78mr15055854vkv.101.1572450713564; 
 Wed, 30 Oct 2019 08:51:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com>
 <0887d84402f796d1e7361261b88ec6057fbb0065.1571510481.git.hns@goldelico.com>
In-Reply-To: <0887d84402f796d1e7361261b88ec6057fbb0065.1571510481.git.hns@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 30 Oct 2019 16:51:17 +0100
Message-ID: <CAPDyKFp3EjTuCTj+HXhxf+Ssti0hW8eMDR-NrGYWDWSDmQz6Lw@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] mmc: host: omap_hsmmc: add code for special init
 of wl1251 to get rid of pandora_wl1251_init_card
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_085154_935717_BF91E6D2 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 19 Oct 2019 at 20:42, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Pandora_wl1251_init_card was used to do special pdata based
> setup of the sdio mmc interface. This does no longer work with
> v4.7 and later. A fix requires a device tree based mmc3 setup.
>
> Therefore we move the special setup to omap_hsmmc.c instead
> of calling some pdata supplied init_card function.
>
> The new code checks for a DT child node compatible to wl1251
> so it will not affect other MMC3 use cases.
>
> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Cc: <stable@vger.kernel.org> # 4.7.0
> ---
>  drivers/mmc/host/omap_hsmmc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/drivers/mmc/host/omap_hsmmc.c b/drivers/mmc/host/omap_hsmmc.c
> index 952fa4063ff8..03ba80bcf319 100644
> --- a/drivers/mmc/host/omap_hsmmc.c
> +++ b/drivers/mmc/host/omap_hsmmc.c
> @@ -1512,6 +1512,27 @@ static void omap_hsmmc_init_card(struct mmc_host *mmc, struct mmc_card *card)
>
>         if (mmc_pdata(host)->init_card)
>                 mmc_pdata(host)->init_card(card);
> +       else if (card->type == MMC_TYPE_SDIO || card->type == MMC_TYPE_SD_COMBO) {
> +               struct device_node *np = mmc_dev(mmc)->of_node;
> +
> +               np = of_get_compatible_child(np, "ti,wl1251");
> +               if (np) {
> +                       /*
> +                        * We have TI wl1251 attached to MMC3. Pass this information to
> +                        * SDIO core because it can't be probed by normal methods.
> +                        */
> +
> +                       dev_info(host->dev, "found wl1251\n");
> +                       card->quirks |= MMC_QUIRK_NONSTD_SDIO;
> +                       card->cccr.wide_bus = 1;
> +                       card->cis.vendor = 0x104c;
> +                       card->cis.device = 0x9066;
> +                       card->cis.blksize = 512;
> +                       card->cis.max_dtr = 24000000;
> +                       card->ocr = 0x80;

These things should really be figured out by the mmc core during SDIO
card initialization itself, not via the host ops ->init_card()
callback. That is just poor hack, which in the long run should go
away.

Moreover, I think we should add a subnode to the host node in the DT,
to describe the embedded SDIO card, rather than parsing the subnode
for the SDIO func - as that seems wrong to me.

To add a subnode for the SDIO card, we already have a binding that I
think we should extend. Please have a look at
Documentation/devicetree/bindings/mmc/mmc-card.txt.

If you want an example of how to implement this for your case, do a
git grep "broken-hpi" in the driver/mmc/core/, I think it will tell
you more of what I have in mind.

> +                       of_node_put(np);
> +               }
> +       }
>  }
>
>  static void omap_hsmmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
> --
> 2.19.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
