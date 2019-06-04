Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95528340DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv7A9oJiRDlE10Mm5oHDAh+w7xRCjReGMJjc0w5Siqc=; b=FI3m/ub6cBr+Ye
	53OrjxFWtjemLuoZAyTQqrwp3GhneriEnrC3iP030JxujHb7W4aQ7t/TbxuVsZ2YDspBV1yaD1pQ6
	+04XTV+eARGBVIzCclN9Jyy8N2b/BVbbNbFb8g0OnDKqSokRPbGf7YlXjSFlOLAEGVeAsq7ye20E/
	j4vUioAHEMbAit7C1xNYRpBBZHZwlt/s0WFV4BtLg2F8nkIvf5r/Wn56BuCvbEvy3LvPMtciZuVNY
	pSg1ksf9ToNjM+fuW3+CHmBVuNePqxKanuZnbNgXSfI1hOZ9Aingjay12tC0yUkkCAFJermxVr9gB
	5k8RHc+yGD2lBtVxUcog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Jl-0008SL-Bd; Tue, 04 Jun 2019 07:57:13 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Jd-0008Ri-UT
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:57:07 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 39F2220BC5;
 Tue,  4 Jun 2019 09:57:03 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 26D1020109;
 Tue,  4 Jun 2019 09:57:03 +0200 (CEST)
Subject: Re: [PATCH] ARM: configs: Remove useless UEVENT_HELPER_PATH
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <1559634833-19980-1-git-send-email-krzk@kernel.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <b5f2ad6a-cccc-9ca9-557f-0ce13e2ccc87@free.fr>
Date: Tue, 4 Jun 2019 09:57:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559634833-19980-1-git-send-email-krzk@kernel.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Jun  4 09:57:03 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005706_279786_10FACA97 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2019 09:53, Krzysztof Kozlowski wrote:

> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
>    CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
>    made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
>    [...] creates a high system load") and was kept only for ancient
>    userland,
> 3. Certain userland specifically requests it to be disabled (systemd
>    README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/configs/acs5k_defconfig          |   1 -
>  arch/arm/configs/acs5k_tiny_defconfig     |   1 -
>  arch/arm/configs/am200epdkit_defconfig    |   1 -
>  arch/arm/configs/aspeed_g4_defconfig      |   1 -
>  arch/arm/configs/aspeed_g5_defconfig      |   1 -
>  arch/arm/configs/at91_dt_defconfig        |   1 -
>  arch/arm/configs/axm55xx_defconfig        |   1 -
>  arch/arm/configs/cm_x2xx_defconfig        |   1 -
>  arch/arm/configs/cm_x300_defconfig        |   1 -
>  arch/arm/configs/cns3420vb_defconfig      |   1 -
>  arch/arm/configs/colibri_pxa270_defconfig |   1 -
>  arch/arm/configs/colibri_pxa300_defconfig |   1 -
>  arch/arm/configs/corgi_defconfig          |   1 -
>  arch/arm/configs/dove_defconfig           |   1 -
>  arch/arm/configs/em_x270_defconfig        |   1 -
>  arch/arm/configs/ep93xx_defconfig         |   1 -
>  arch/arm/configs/eseries_pxa_defconfig    |   1 -
>  arch/arm/configs/ezx_defconfig            |   1 -
>  arch/arm/configs/gemini_defconfig         |   1 -
>  arch/arm/configs/h3600_defconfig          |   1 -
>  arch/arm/configs/h5000_defconfig          |   1 -
>  arch/arm/configs/imote2_defconfig         |   1 -
>  arch/arm/configs/imx_v4_v5_defconfig      |   1 -
>  arch/arm/configs/iop13xx_defconfig        |   1 -
>  arch/arm/configs/iop32x_defconfig         |   1 -
>  arch/arm/configs/iop33x_defconfig         |   1 -
>  arch/arm/configs/ixp4xx_defconfig         |   1 -
>  arch/arm/configs/jornada720_defconfig     |   1 -
>  arch/arm/configs/keystone_defconfig       |   1 -
>  arch/arm/configs/ks8695_defconfig         |   1 -
>  arch/arm/configs/lpc32xx_defconfig        |   1 -
>  arch/arm/configs/magician_defconfig       |   1 -
>  arch/arm/configs/moxart_defconfig         |   1 -
>  arch/arm/configs/multi_v5_defconfig       |   1 -
>  arch/arm/configs/mv78xx0_defconfig        |   1 -
>  arch/arm/configs/mvebu_v5_defconfig       |   1 -
>  arch/arm/configs/mvebu_v7_defconfig       |   1 -
>  arch/arm/configs/nhk8815_defconfig        |   1 -
>  arch/arm/configs/nuc910_defconfig         |   1 -
>  arch/arm/configs/nuc950_defconfig         |   1 -
>  arch/arm/configs/nuc960_defconfig         |   1 -
>  arch/arm/configs/omap1_defconfig          |   1 -
>  arch/arm/configs/orion5x_defconfig        |   1 -
>  arch/arm/configs/palmz72_defconfig        |   1 -
>  arch/arm/configs/pcm027_defconfig         |   1 -
>  arch/arm/configs/prima2_defconfig         |   1 -
>  arch/arm/configs/proceq_vf_bck_defconfig  | 255 +++++++++++++++++++++++++++
>  arch/arm/configs/proceq_vf_crc_defconfig  | 278 ++++++++++++++++++++++++++++++

I don't think these 2 should be in this patch?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
