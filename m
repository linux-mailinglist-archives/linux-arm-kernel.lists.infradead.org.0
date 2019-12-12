Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6620F11C1CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=022DXPg/TUGFkSuYS8q+/6ns5Y3dPVVQJ/Vc9ZpODtE=; b=YqMZTmb6TCxoZB
	ezhJ+Y6+4wUi8NjmwDantzRZYnctl5buHsOVWopukT+z8+52DZJW5rQZlOY/3uM9A/UKkSQQ82sOV
	eJlh0j8ZbjYEr+7NX3vFjMG0RPur8ByDlNM5lRXIP9PldNwKU2BLgd7PANVLBNT/D6R9zcUQ70gz4
	CwNlHo6uS2AT8CVfxHLJHa4k6RkLFFXv/c8heyIfp+dop6UbzsC2ROTCchy1M7xxDBVhrLd8zgapo
	r5/E+ObrPxIm55ough9t4CiVrS674bjQswUJDvA0/5cDxl+WoYzPaSgAjXRkYCl89hwvj106/rdv+
	FTwmMVqg3o41i0t8t/xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCsU-0002eh-LR; Thu, 12 Dec 2019 01:02:50 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCsM-0002dz-PG; Thu, 12 Dec 2019 01:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576112550;
 bh=jn+uo4Cqpx1ozQR3B2KC5B3J+RoGsXHD7RZoPdcq0nU=;
 h=X-UI-Sender-Class:Subject:Cc:References:To:From:Date:In-Reply-To;
 b=L9ydTcdnRJrw9gBXCFSp39/6F4PqkOI1mV5NtJlDVgKwnuD7uf7ZhBPUrHV+eEVs7
 8rlfbWcscTZHp8s6Bybzh1921thpQkMbsT8iyrwukvHuRpmJNLzPk5UaQExBkMvSgP
 aYxoNlWI1onySK1XhCQ9PVUaahHlQEY/JDbRvq2c=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.139.166]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Ldn6l-1hxNjC2bPH-00izDK; Thu, 12
 Dec 2019 02:02:29 +0100
Subject: Re: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-6-smoch@web.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
From: Soeren Moch <smoch@web.de>
Message-ID: <56de6321-bfc5-a66c-23c0-8928221c2a7f@web.de>
Date: Thu, 12 Dec 2019 02:02:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191211235253.2539-6-smoch@web.de>
Content-Language: en-GB
X-Provags-ID: V03:K1:Qvea2KHNf/g2y1Ioev+CHDSFFOxPHdl3xf9+z6TwJCNrGKeu3DC
 N5JpsCsR16tn96j9rG5iSRCPi5IzfAIwr8q8n237lCSdFK9bcCs8pIVHxkP72scLzpIh4s8
 QLzbpBz2pnIO/Dfkwqax6PEfK+4psyx9Opexgc52ANnihUeQLz83ik/KTC1HqPH7ITwkTKK
 ESRdXx9zbmH8XtthjV1Ig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LJbS0jdVLI8=:ATWbHxULlQjn6MOGYVh1va
 k8DOWElK6UqGaBsIs04vtExB6xn8PWwJfJjjLs8HFwGLLuYzwSOhytFFDxGnC6b5qfItgr2qR
 2m3O2kjZJ9kWRkIjfNaqyA/eUwKGVoKyWwbLIoIBpWDlWX1KcFlnKQLm/MpM5Vm6DTwIRLW1p
 cz9YcX0qrKY62ABDP4bJoW8UxGqOgfgsDg53OlyyHikmruCLxfPPOn1qYfV/xoxONcjJYZGKu
 SN+QowbsuqAAefygQgl+nXv5qiFDs70bnISUGQa2/aGiAJt3ynZ7edeoyZqbevvzVy/FvX2c8
 wP0HqPca3/cAthgB6aCJDy6ds1CbK+Sn/6cJZtE26dUgDSpPB4X6llqqYRwq5D64+/emgGM3b
 tlYUgqZyGDYAjGVHPMth5r7frtzJ0UWM7LWl//N/hlyDW9aRL/49jrew/He9aowsQpIp9XAcI
 9+nK5EdVNpIexu5hpgKz9KeOHv7WELHDo+qIuDmrX0KWcGdl9thhxcjMCx28wMDc+j50rN5yB
 AKk7zlr6p7nqH195717o9gXvNGw3KMdY4ywsHGi8+0qr0op6DFdMOV+zJdK1NS/EQQQsZVDfA
 cUZzYsvO6zkQGxbUbDlLK3v+LYvtQuZ9zARAgY+VMqcSAWw0aLKin8x3EKSRCLnf9nWlwQPhm
 48JmWWzP2MMO76v5PDqOv84iVPyvQEgPw1vaH8CrOFix9Gapqe2O3CeQC2KcnE88TI6Uqs/Ix
 oCYef2L1N96qK4ftlg/ZJX5g+2S73iNA9w+9nyCmwEiLag8q0qu/3PMqw9tBHKroZi+KKdLny
 /anTRBANHdpmGPFYpJWS1+L/GTJRx2wMnDB7joX1QZ6XfElOHZCVfNVrl9yDHiJ83wLwjfjYS
 sEBAPcyaB48UFKNFtOfa7g5zLhEYLUTTOOtQZfiWw36gC/cQpQlBGUlWr0+7fGyuqHIHSfknH
 jBPk1IQlPooiiJ+mT5VtpoFFUxafHlwa/6yxcuVII4NN8P/6JZReAPYltNSoUwVMtpGc08tkV
 YH2ijg6zw7B9B6hYlr9OG0xqsY9MxwzQ/HnvgzRpAhwIRRTJmkoYOwhNOirxa4fllGyS/k7AN
 fn40VpMf5a4L8ybR+kzHwR2ziY7fmbmCWUEpMxHXsZ2q3OlNxL+dTdY+u57+DZ4ix8TjI+J0m
 pR7h8rACGdVUxJpJZA91wY05WqF51vVfgOeE4xFMB5IA45ciclxlvg5ZfOh0V34VoN4d4wN87
 sWeffHekji1J7qb+gJSSJesyCznUA8H7XCc3Q+A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_170243_154869_4528269E 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Wright Feng <wright.feng@cypress.com>, linux-mmc@vger.kernel.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

This patch is part of a series [1] to add support for the BCM4359
chipset with SDIO interface to the brcmfmac wireless network driver.

I just realized that this patch touches
include/linux/mmc/sdio_ids.h
and therefore I need an Ack from MMC folks. Can you please look at this?

Thanks and sorry for not including you in the original patch series
submission,
Soeren

[1] https://lkml.org/lkml/2019/12/11/1958

On 12.12.19 00:52, Soeren Moch wrote:
> BCM4359 is a 2x2 802.11 abgn+ac Dual-Band HT80 combo chip and it
> supports Real Simultaneous Dual Band feature.
>
> Based on a similar patch by: Wright Feng <wright.feng@cypress.com>
>
> Signed-off-by: Soeren Moch <smoch@web.de>
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
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_43455),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4359),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
>  	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_43012),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_89359),
>  	{ /* end: all zeroes */ }
>  };
>  MODULE_DEVICE_TABLE(sdio, brcmf_sdmmc_ids);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index baf72e3984fc..282d0bc14e8e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -1408,6 +1408,7 @@ bool brcmf_chip_sr_capable(struct brcmf_chip *pub)
>  		addr = CORE_CC_REG(base, sr_control0);
>  		reg = chip->ops->read32(chip->ctx, addr);
>  		return (reg & CC_SR_CTL0_ENABLE_MASK) != 0;
> +	case BRCM_CC_4359_CHIP_ID:
>  	case CY_CC_43012_CHIP_ID:
>  		addr = CORE_CC_REG(pmu->base, retention_ctl);
>  		reg = chip->ops->read32(chip->ctx, addr);
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
>  	BRCMF_FW_ENTRY(BRCM_CC_4345_CHIP_ID, 0xFFFFFDC0, 43455),
>  	BRCMF_FW_ENTRY(BRCM_CC_4354_CHIP_ID, 0xFFFFFFFF, 4354),
>  	BRCMF_FW_ENTRY(BRCM_CC_4356_CHIP_ID, 0xFFFFFFFF, 4356),
> +	BRCMF_FW_ENTRY(BRCM_CC_4359_CHIP_ID, 0xFFFFFFFF, 4359),
>  	BRCMF_FW_ENTRY(CY_CC_4373_CHIP_ID, 0xFFFFFFFF, 4373),
>  	BRCMF_FW_ENTRY(CY_CC_43012_CHIP_ID, 0xFFFFFFFF, 43012)
>  };
> diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
> index 08b25c02b5a1..2e9a6e4634eb 100644
> --- a/include/linux/mmc/sdio_ids.h
> +++ b/include/linux/mmc/sdio_ids.h
> @@ -41,8 +41,10 @@
>  #define SDIO_DEVICE_ID_BROADCOM_43455		0xa9bf
>  #define SDIO_DEVICE_ID_BROADCOM_4354		0x4354
>  #define SDIO_DEVICE_ID_BROADCOM_4356		0x4356
> +#define SDIO_DEVICE_ID_BROADCOM_4359		0x4359
>  #define SDIO_DEVICE_ID_CYPRESS_4373		0x4373
>  #define SDIO_DEVICE_ID_CYPRESS_43012		43012
> +#define SDIO_DEVICE_ID_CYPRESS_89359		0x4355
>
>  #define SDIO_VENDOR_ID_INTEL			0x0089
>  #define SDIO_DEVICE_ID_INTEL_IWMC3200WIMAX	0x1402
> --
> 2.17.1
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
