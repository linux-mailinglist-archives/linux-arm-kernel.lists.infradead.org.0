Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ACD17CD59
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 10:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vff6I0nElsUlwlXZvfKd2udrnGV+A7SZvJIBhJ4ww+4=; b=ZJ6nWWAcAJLl9CUVO4SRyIup5
	9LWFlrKb+X2GyYpp9JueSdM8B71psjzPeTHlewwWm6N2q1zoSr6PjcIGwnaOyiEsdXkEmeASoJ3bZ
	ooHLlCTN7s9ctScQZxQ6+Px8CPFomoX9NcZxeB7RZvmKSDDDVt8bqqb/pFtNFVWcnpCEBTL3FkO0e
	GJWds6cRiQmLYItH64cP3fWPSxbjtMK5DFzu5QjRMlaUXS9tPxj6qCc+caRnC+NLiA7LX3ofdTnQP
	GeJVNVeG6H08k+iYcI8GLDXDaBarHr0+JYH1ZvZahs5R1ORaQaltUCqT7zqN1P9kw5ZvLagE6hGl4
	OoGqkpeYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWAO-0001Qn-Qb; Sat, 07 Mar 2020 09:54:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWAG-0001PJ-AC
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 09:54:38 +0000
Received: by mail-lf1-x142.google.com with SMTP id t21so3831903lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 01:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+iY7vg8Db28lbZpkj8YbZ4nAiqLqC1ZkxS8MIhuLcMU=;
 b=ylpat4kRdMth3tgWlvM26uho69yQ9OBDlJqz9C4W2FP/opded7R33Gs9dCZ441sDeE
 XXcCUprakY2Zx3bRayE+q+uD4obMIAircprbTxdJYpe0/qTADFTqpBe8JJ2igckRHAvT
 dP4JYIuo8Y/qjWN7nj4ykCDfVsEOCmPMALohd4iLGEzL4XbxBtw8A+esMWN4Y62zJU9t
 eGNr4baLxZ2rUHx2gNf2f5QIze1ZEoBsuHtfznFaQerUm+yB8zo/NKsh2ibjgx4tEY6e
 Hd8Xp1eCtoOc1T7H4kcg3+4wc1scUop9Bh1WiUdxKbXAe3XK/R1Nx3UcKD5Hdmv6qH/1
 whIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+iY7vg8Db28lbZpkj8YbZ4nAiqLqC1ZkxS8MIhuLcMU=;
 b=JnYeyW54B4Iwcz99eUQwxi0xW0a42ukZWjVCB2DCycZNch+VcTZc/Pg7SUWI/pufUz
 1hm674+TRYELiQtD1t3DVRx6JKF9TBOODTB9PKe8RyJi9jCcibo6fKvcQ0BHwuzhL9/o
 XS1p5CVo79QX/4gPrRVslJx3kWAP0jHIyFKq7Lbd6ZjW+zsxyC/MqrenYXtu3C/cV503
 3S1HSgLLGbAOT1QwfYCEASGvRs94KGRM2vLaYbFkRAqr+8lts/+8PRu/rox0nFahjTai
 32X54UXM0YbPzFSF/YDETpiB6UqT/VFyAWuCea4Nr94q7AAtPQbgjW96DJaIKMceDRKI
 s9cw==
X-Gm-Message-State: ANhLgQ393sYzYg+OVPkPHwTm8U0rjeRllZh953EIVWg6Dxrwuz98V+vy
 Tn0J5yolMhyIXxQZJ6NoYIr7pg==
X-Google-Smtp-Source: ADFU+vv6OIWzoXOg4mWHENdK4mbxgfXz8v6v9hX1jJMwhRRBJ60rFJUXuMg07DvgtCrrYsNkhjdr7Q==
X-Received: by 2002:a05:6512:692:: with SMTP id
 t18mr4284908lfe.212.1583574870677; 
 Sat, 07 Mar 2020 01:54:30 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:402:864b:dd24:504:68eb:a9fe?
 ([2a00:1fa0:402:864b:dd24:504:68eb:a9fe])
 by smtp.gmail.com with ESMTPSA id j17sm2554029ljc.0.2020.03.07.01.54.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Mar 2020 01:54:29 -0800 (PST)
Subject: Re: [PATCH v4 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>
References: <20200306114348.5172-1-nsaenzjulienne@suse.de>
 <20200306114348.5172-5-nsaenzjulienne@suse.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <b4fb58f0-6d51-657b-bcf6-5f4b0c798312@cogentembedded.com>
Date: Sat, 7 Mar 2020 12:54:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306114348.5172-5-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_015436_776604_30A95E8F 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 06.03.2020 14:43, Nicolas Saenz Julienne wrote:

> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideCore. Inform VideCore that VL805 was just reset.
> 
> Also, as this creates a dependency between XHCI_PCI and VideoCore's
> firmware interface, reflect that on the firmware interface Kconfg.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
> 
> Changes since v3:
>   - Add more complete error message.
>   - Add braces around if statement
> 
> Changes since v1:
>   - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
>     gets compiled when needed.
> 
>   drivers/firmware/Kconfig      |  1 +
>   drivers/usb/host/pci-quirks.c | 16 ++++++++++++++++
>   2 files changed, 17 insertions(+)
[...]
> diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
> index beb2efa71341..452f5f12b042 100644
> --- a/drivers/usb/host/pci-quirks.c
> +++ b/drivers/usb/host/pci-quirks.c
> @@ -16,6 +16,9 @@
>   #include <linux/export.h>
>   #include <linux/acpi.h>
>   #include <linux/dmi.h>
> +
> +#include <soc/bcm2835/raspberrypi-firmware.h>
> +
>   #include "pci-quirks.h"
>   #include "xhci-ext-caps.h"
>   
> @@ -1243,11 +1246,24 @@ static void quirk_usb_handoff_xhci(struct pci_dev *pdev)
>   
>   static void quirk_usb_early_handoff(struct pci_dev *pdev)
>   {
> +	int ret;
> +
>   	/* Skip Netlogic mips SoC's internal PCI USB controller.
>   	 * This device does not need/support EHCI/OHCI handoff
>   	 */
>   	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
>   		return;
> +
> +	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483) {
> +		ret = rpi_firmware_init_vl805(pdev);
> +		if (ret) {
> +			/* Firmware might be outdated, or something failed */
> +			dev_warn(&pdev->dev, "Failed to load VL805's firmware: %d\n", ret);
> +			dev_warn(&pdev->dev, "Will continue to attempt to work, "
> +				 "but bad things might happen. You should fix this...\n");

    Don't break up the long kernel messages (checkpatch.pl should not complain 
about them).

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
