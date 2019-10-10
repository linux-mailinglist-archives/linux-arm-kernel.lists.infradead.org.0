Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AC6D2866
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rcKqpYpbC2ENd6/pv6720eU+etkuaMUg2ByY5qaU1RA=; b=iSirVRhO3RHsZ8YxIzSM6iz2fe
	dRi1e8Zxd7thupJhbr3R3xiuS2dorQNGkTzb7+v7ZjzmA+AhzDZdPxYyCA+0h9ebvV/5AW3NV8GqI
	UKfQLYfrtFcQxA/q8f00VS3iEIL65Cdw77fEwxLUEMcboSpN5ELgF0XTLgoDgExvVgbNxsuV52HWE
	TecSBjSAJkJob9gjNIj9POjENB7IOWrooJB3kEJXnxAj5KzS5haLfuxyqie01ohF/3S6UVQW6rgzA
	pfOfNGckwY1ghNTeLfZLvQLIElMfVw2JXA0eHBAzwOczMnIomZL7+SzFJHG+jmglniHDIMFAXqqOX
	50mPxZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWyF-00025S-Se; Thu, 10 Oct 2019 11:51:03 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWy7-00024E-5R
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:50:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 8C7B44800
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 13:51:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1LFrksY4Apl for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 13:51:17 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id E086F468F; Thu, 10 Oct 2019 13:51:17 +0200 (CEST)
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NO_RECEIVED,
 NO_RELAYS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
 version=3.4.2
From: Alexander Dahl <ada@thorsis.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: configs: at91: unselect PIT
Date: Thu, 10 Oct 2019 13:50:43 +0200
Message-ID: <1920271.Hgx7Y6QaZs@ada>
In-Reply-To: <20191009194814.15034-1-alexandre.belloni@bootlin.com>
References: <20191009194814.15034-1-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_045055_373006_164EF9ED 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 9. Oktober 2019, 21:48:14 CEST schrieb Alexandre Belloni:
> The PIT is not required anymore to successfully boot and may actually harm
> in case preempt-rt is used because the PIT interrupt is shared.
> Disable it so the TCB clocksource is used.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Alexander Dahl <ada@thorsis.com>

> ---
>  arch/arm/configs/at91_dt_defconfig | 1 +
>  arch/arm/configs/sama5_defconfig   | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm/configs/at91_dt_defconfig
> b/arch/arm/configs/at91_dt_defconfig index 63d09e61b6dc..7e5ffdab47da
> 100644
> --- a/arch/arm/configs/at91_dt_defconfig
> +++ b/arch/arm/configs/at91_dt_defconfig
> @@ -18,6 +18,7 @@ CONFIG_ARCH_MULTI_V5=y
>  CONFIG_ARCH_AT91=y
>  CONFIG_SOC_AT91RM9200=y
>  CONFIG_SOC_AT91SAM9=y
> +# CONFIG_ATMEL_CLOCKSOURCE_PIT is not set
>  CONFIG_AEABI=y
>  CONFIG_UACCESS_WITH_MEMCPY=y
>  CONFIG_ZBOOT_ROM_TEXT=0x0
> diff --git a/arch/arm/configs/sama5_defconfig
> b/arch/arm/configs/sama5_defconfig index 7255709d46ea..ee7db6cedaa6 100644
> --- a/arch/arm/configs/sama5_defconfig
> +++ b/arch/arm/configs/sama5_defconfig
> @@ -20,6 +20,7 @@ CONFIG_ARCH_AT91=y
>  CONFIG_SOC_SAMA5D2=y
>  CONFIG_SOC_SAMA5D3=y
>  CONFIG_SOC_SAMA5D4=y
> +# CONFIG_ATMEL_CLOCKSOURCE_PIT is not set
>  CONFIG_AEABI=y
>  CONFIG_UACCESS_WITH_MEMCPY=y
>  CONFIG_ZBOOT_ROM_TEXT=0x0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
