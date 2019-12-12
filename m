Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2417111C849
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEL/+HE51w+hxzQ2bMRPEuNM4P1yzorH5EB61Edd4hQ=; b=DI0Vr3EgOX3yLg
	QBa+J3MHERL/9xH6Vg0Y8sLQ0YVASgnKueEg4Lo2WG3VG9AkITtL9+AEi9827pAhQL66J+q3VXGFr
	+3mTSVPY3uHCkZRRq9lrxQOu1BQ5e485Y51Ijp8F8GbxmXqB+N/YL+Vl86QooUMphkwb2iTaH7Cwp
	sjn7ryhaRJ+bqC4AGYcPNCfDu4eCeOOjDDoW2VHFZYiSHa+PAdpTNTuNhtaNaw4oodqf65RdawPA+
	jkbKZRoIvEElKMaTSQhiuUb3bJEH2uSpWWKm593NywnZiaE8hD7zHhSvxoKbbwwoawCWObpQ6s4oL
	MEbXr9da6QaTvmL3nF6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifJvi-0007WZ-HJ; Thu, 12 Dec 2019 08:34:38 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifJvV-0007V4-Gy
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 08:34:27 +0000
Received: by mail-ua1-x944.google.com with SMTP id d8so528583uak.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 00:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7UHi4BJ1RU7e2Qqap02HTsnKWPKQhPRzj+3IJpyS25I=;
 b=CazqmSjeTmhzl/T12C6gcLYS78AV26Bg70XLZn0tfPlbRO0xZA1iYgJxjWgyvbKkYM
 fqV5h9oeUZn2BR/O8OFlfjMF2ZBJkAoH7qEN8CgXpr3Yx5caJxkU3c/jv7Vkdkn1kQcW
 0VvbmS0LJs31VYHSUKL+UOKderGSIrcaDzMIwLQ4gBxSZQntQeVK8YxgGb7cUKPqWdPE
 td3UK3ak3il/JVLcA4/pZvdsHY2kEG9/lPeK3G6OUwgjdD041nqzE1Eh4w2pulwEskla
 yziHm1/CNTbjVgTqoFg/JwFFwNiQOrzY+AwZ/Y0nQ49mgMp66XvA+LVRVVinF77kDisu
 B4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7UHi4BJ1RU7e2Qqap02HTsnKWPKQhPRzj+3IJpyS25I=;
 b=qth9uvgjvusvnMJvpShMGtn19NxjTQ3q+errS2n/sLtdD8E1Z0Ln8mFG4Sd6uth0Ev
 q7Y2CPKDq6E2lPB+ydAyeGb296ZD0UzTX9WM0ameW239lr2lWfbLExSJfJ1LmSfwvln1
 whE6n9SZmcez3sNbGcfSOTEttwAlM6lS4YX9gIjD7+uzJ1R1ivJGTylV9sn5dKc7UhjR
 p7v5/k/bAk0jABuQJX5fVF4IA1SrHeCauZkw4adUVv/utXSAizO7FIYk3oXTmE4ZQI0l
 UVcTAU5Hww+GJB2TkqhGBlqNxySH2HVy1kQhf/vhUsQLLAVBeiutZcZflcv/zuDCa06Y
 Ka5Q==
X-Gm-Message-State: APjAAAWusdL2q5YrNwmTW1bWA5TRIEgpKgfys/xaZ97QdIr/LxHAsd36
 H31ZhtAz6kO3H5WMSQ/8K+bs7JW4OmhDrWBSaNaS8Q==
X-Google-Smtp-Source: APXvYqynopALtn3p4wqILJgjiXAeEzWwP6jaNx08xBuWSale2Uc+wFkAq1aVL/iomN6MiJTwLqjwY+vVT8KlCKpstMw=
X-Received: by 2002:ab0:4ea6:: with SMTP id l38mr7262273uah.129.1576139663793; 
 Thu, 12 Dec 2019 00:34:23 -0800 (PST)
MIME-Version: 1.0
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-6-smoch@web.de>
In-Reply-To: <20191211235253.2539-6-smoch@web.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Dec 2019 09:33:46 +0100
Message-ID: <CAPDyKFoE7g0XsyTkbSYBRE0=JraPCxCP+wyZ2PQFVpAvvQvCfg@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_003425_561295_97A9E9FC 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Heiko Stuebner <heiko@sntech.de>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 at 00:53, Soeren Moch <smoch@web.de> wrote:
>
> BCM4359 is a 2x2 802.11 abgn+ac Dual-Band HT80 combo chip and it
> supports Real Simultaneous Dual Band feature.
>
> Based on a similar patch by: Wright Feng <wright.feng@cypress.com>
>
> Signed-off-by: Soeren Moch <smoch@web.de>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
> changes in v2:
> - add SDIO_DEVICE_ID_CYPRESS_89359 as requested
>   by Chi-Hsien Lin <chi-hsien.lin@cypress.com>
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
> Cc: Franky Lin <franky.lin@broadcom.com>
> Cc: Hante Meuleman <hante.meuleman@broadcom.com>
> Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
> Cc: Wright Feng <wright.feng@cypress.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c | 2 ++
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c   | 1 +
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 2 ++
>  include/linux/mmc/sdio_ids.h                              | 2 ++
>  4 files changed, 7 insertions(+)
>
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> index 68baf0189305..f4c53ab46058 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> @@ -973,8 +973,10 @@ static const struct sdio_device_id brcmf_sdmmc_ids[] = {
>         BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_43455),
>         BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
>         BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
> +       BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4359),
>         BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
>         BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_43012),
> +       BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_89359),
>         { /* end: all zeroes */ }
>  };
>  MODULE_DEVICE_TABLE(sdio, brcmf_sdmmc_ids);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index baf72e3984fc..282d0bc14e8e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -1408,6 +1408,7 @@ bool brcmf_chip_sr_capable(struct brcmf_chip *pub)
>                 addr = CORE_CC_REG(base, sr_control0);
>                 reg = chip->ops->read32(chip->ctx, addr);
>                 return (reg & CC_SR_CTL0_ENABLE_MASK) != 0;
> +       case BRCM_CC_4359_CHIP_ID:
>         case CY_CC_43012_CHIP_ID:
>                 addr = CORE_CC_REG(pmu->base, retention_ctl);
>                 reg = chip->ops->read32(chip->ctx, addr);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 21e535072f3f..c4012ed58b9c 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -616,6 +616,7 @@ BRCMF_FW_DEF(43455, "brcmfmac43455-sdio");
>  BRCMF_FW_DEF(43456, "brcmfmac43456-sdio");
>  BRCMF_FW_DEF(4354, "brcmfmac4354-sdio");
>  BRCMF_FW_DEF(4356, "brcmfmac4356-sdio");
> +BRCMF_FW_DEF(4359, "brcmfmac4359-sdio");
>  BRCMF_FW_DEF(4373, "brcmfmac4373-sdio");
>  BRCMF_FW_DEF(43012, "brcmfmac43012-sdio");
>
> @@ -638,6 +639,7 @@ static const struct brcmf_firmware_mapping brcmf_sdio_fwnames[] = {
>         BRCMF_FW_ENTRY(BRCM_CC_4345_CHIP_ID, 0xFFFFFDC0, 43455),
>         BRCMF_FW_ENTRY(BRCM_CC_4354_CHIP_ID, 0xFFFFFFFF, 4354),
>         BRCMF_FW_ENTRY(BRCM_CC_4356_CHIP_ID, 0xFFFFFFFF, 4356),
> +       BRCMF_FW_ENTRY(BRCM_CC_4359_CHIP_ID, 0xFFFFFFFF, 4359),
>         BRCMF_FW_ENTRY(CY_CC_4373_CHIP_ID, 0xFFFFFFFF, 4373),
>         BRCMF_FW_ENTRY(CY_CC_43012_CHIP_ID, 0xFFFFFFFF, 43012)
>  };
> diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
> index 08b25c02b5a1..2e9a6e4634eb 100644
> --- a/include/linux/mmc/sdio_ids.h
> +++ b/include/linux/mmc/sdio_ids.h
> @@ -41,8 +41,10 @@
>  #define SDIO_DEVICE_ID_BROADCOM_43455          0xa9bf
>  #define SDIO_DEVICE_ID_BROADCOM_4354           0x4354
>  #define SDIO_DEVICE_ID_BROADCOM_4356           0x4356
> +#define SDIO_DEVICE_ID_BROADCOM_4359           0x4359
>  #define SDIO_DEVICE_ID_CYPRESS_4373            0x4373
>  #define SDIO_DEVICE_ID_CYPRESS_43012           43012
> +#define SDIO_DEVICE_ID_CYPRESS_89359           0x4355
>
>  #define SDIO_VENDOR_ID_INTEL                   0x0089
>  #define SDIO_DEVICE_ID_INTEL_IWMC3200WIMAX     0x1402
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
