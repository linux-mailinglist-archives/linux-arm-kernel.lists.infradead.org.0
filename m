Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B210D7FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 16:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNofcuVetfP0HE+ftSDcjcKoAkGBnhqphjg6zUxGL90=; b=in4NFet6y4Jv9O
	ZXkuZpJEDNL1lIaRX5BOXpwBukbcyGZW237VcCJ26lsHTgP58DSsoMNgE+vW18+b+9Fk7obBOy66W
	Fy/u9Qjofoi2CvmWBcR9TCbpYatWDGBfukH29oSQhVWMXfMjwhRTegaAzDi49xCHDLqAAaXztqvuF
	XO5aoxC2Cw/7JsR5JqzaCyqX/ZBVSEl/AkVhtPUTbZ1bp+eLRRsAqFrOAbn/G50Tuf9lh8ffABIev
	NYzpVtXEHGzVeHqqH9jxa+FV8elXqKSEep0kJHr8JqEb+wbr2DJuYgr/3tT/+H9HAE+TxpNNV/kWf
	L0G0MYOavVwzRuB/QIHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaiNr-0002Sh-9r; Fri, 29 Nov 2019 15:40:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaiNh-0002Rq-VE
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 15:40:32 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B367A240006;
 Fri, 29 Nov 2019 15:40:20 +0000 (UTC)
Date: Fri, 29 Nov 2019 16:40:16 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH] power: reset: at91-reset: add sysfs interface to the
 power on reason
Message-ID: <20191129154016.GZ299836@piout.net>
References: <20191017124058.19300-1-kamel.bouhara@bootlin.com>
 <034c9d01-633a-eeaa-f61f-d185be7227f2@microchip.com>
 <20191129110253.GX299836@piout.net>
 <00f4e9a2-f6bd-9242-cafd-9c0c4f4dc619@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00f4e9a2-f6bd-9242-cafd-9c0c4f4dc619@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_074030_283119_10A4CE44 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kamel.bouhara@bootlin.com, linux-pm@vger.kernel.org, sre@kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thomas.petazzoni@bootlin.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/11/2019 11:15:18+0000, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 29.11.2019 13:02, Alexandre Belloni wrote:
> 
> > On 29/11/2019 10:57:45+0000, Claudiu.Beznea@microchip.com wrote:
> >> Hi Kamel,
> >>
> >> On 17.10.2019 15:40, Kamel Bouhara wrote:
> >>> This patch export the power on reason through the sysfs interface and
> >>> introduce some generic reset sources.
> >>> Update the ABI documentation to list current power on sources.
> >>>
> >>> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> >>> ---
> >>>   .../sysfs-devices-platform-power-on-reason    | 14 ++++++
> >>>   drivers/power/reset/at91-reset.c              | 44 +++++++++++++------
> >>>   include/linux/power/power_on_reason.h         | 19 ++++++++
> >>>   3 files changed, 64 insertions(+), 13 deletions(-)
> >>>   create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> >>>   create mode 100644 include/linux/power/power_on_reason.h
> >>>
> >>> diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> >>> new file mode 100644
> >>> index 000000000000..83daeb9b1aa2
> >>> --- /dev/null
> >>> +++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> >>> @@ -0,0 +1,14 @@
> >>> +What:              /sys/devices/platform/.../power_on_reason
> >>> +
> >>> +Date:              October 2019
> >>> +KernelVersion:     5.4
> >>> +Contact:   Kamel Bouhara <kamel.bouhara@bootlin.com>
> >>> +Description:       This file shows system power on reason.
> >>> +           The possible sources are:
> >>> +           General System Power-ON, RTC wakeup, Watchdog timeout,
> >>> +           Software Reset, User pressed reset button,
> >>> +           CPU Clock failure, 32.768kHz Oscillator Failure,
> >>> +           Low power mode exit, Unknown.
> >>> +
> >>> +           The file is read only.
> >>> +
> >>> diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
> >>> index 44ca983a49a1..3cb2df40af37 100644
> >>> --- a/drivers/power/reset/at91-reset.c
> >>> +++ b/drivers/power/reset/at91-reset.c
> >>> @@ -17,7 +17,7 @@
> >>>   #include <linux/of_address.h>
> >>>   #include <linux/platform_device.h>
> >>>   #include <linux/reboot.h>
> >>> -
> >>> +#include <linux/power/power_on_reason.h>
> >>>   #include <soc/at91/at91sam9_ddrsdr.h>
> >>>   #include <soc/at91/at91sam9_sdramc.h>
> >>>
> >>> @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
> >>>      return NOTIFY_DONE;
> >>>   }
> >>>
> >>> -static void __init at91_reset_status(struct platform_device *pdev)
> >>> +static const char *at91_reset_reason(struct platform_device *pdev)
> >>>   {
> >>>      const char *reason;
> >>>      u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
> >>>
> >>>      switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
> >>>      case RESET_TYPE_GENERAL:
> >>> -           reason = "general reset";
> >>> +           reason = POWER_ON_REASON_GENERAL;
> >>>              break;
> >>>      case RESET_TYPE_WAKEUP:
> >>> -           reason = "wakeup";
> >>> +           reason = POWER_ON_REASON_RTC;
> >>>              break;
> >>>      case RESET_TYPE_WATCHDOG:
> >>> -           reason = "watchdog reset";
> >>> +           reason = POWER_ON_REASON_WATCHDOG;
> >>>              break;
> >>>      case RESET_TYPE_SOFTWARE:
> >>> -           reason = "software reset";
> >>> +           reason = POWER_ON_REASON_SOFTWARE;
> >>>              break;
> >>>      case RESET_TYPE_USER:
> >>> -           reason = "user reset";
> >>> +           reason = POWER_ON_REASON_USER;
> >>>              break;
> >>>      case RESET_TYPE_CPU_FAIL:
> >>> -           reason = "CPU clock failure detection";
> >>> +           reason = POWER_ON_REASON_CPU_FAIL;
> >>>              break;
> >>>      case RESET_TYPE_XTAL_FAIL:
> >>> -           reason = "32.768 kHz crystal failure detection";
> >>> +           reason = POWER_ON_REASON_XTAL_FAIL;
> >>>              break;
> >>>      case RESET_TYPE_ULP2:
> >>> -           reason = "ULP2 reset";
> >>> +           reason = POWER_ON_REASON_LOW_POWER;
> >>>              break;
> >>>      default:
> >>> -           reason = "unknown reset";
> >>> +           reason = POWER_ON_REASON_UNKNOWN;
> >>>              break;
> >>>      }
> >>>
> >>> -   dev_info(&pdev->dev, "Starting after %s\n", reason);
> >>> +   return reason;
> >>>   }
> >>>
> >>>   static const struct of_device_id at91_ramc_of_match[] = {
> >>> @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
> >>>      .priority = 192,
> >>>   };
> >>>
> >>> +static ssize_t power_on_reason_show(struct device *dev,
> >>> +                               struct device_attribute *attr,
> >>> +                               char *buf)
> >>> +{
> >>> +   struct platform_device *pdev = to_platform_device(dev);
> >>> +
> >>> +   return sprintf(buf, "%s\n", at91_reset_reason(pdev));
> >>> +}
> >>> +
> >>> +static DEVICE_ATTR_RO(power_on_reason);
> >>> +
> >>>   static int __init at91_reset_probe(struct platform_device *pdev)
> >>>   {
> >>>      const struct of_device_id *match;
> >>> @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
> >>>              return ret;
> >>>      }
> >>>
> >>> -   at91_reset_status(pdev);
> >>> +   ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
> >>> +   if (ret) {
> >>> +           dev_err(&pdev->dev, "Could not create sysfs entry\n");
> >>> +           return ret;
> >>> +   }
> >>> +
> >>> +   dev_info(&pdev->dev, "Starting after %s reset\n",
> >>> +            at91_reset_reason(pdev));
> >>>
> >>>      return 0;
> >>>   }
> >>> diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
> >>> new file mode 100644
> >>> index 000000000000..9978cc757427
> >>> --- /dev/null
> >>> +++ b/include/linux/power/power_on_reason.h
> >>> @@ -0,0 +1,19 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0-only */
> >>> +/*
> >>> + * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
> >>> + */
> >>> +
> >>> +#ifndef POWER_ON_REASON_H
> >>> +#define POWER_ON_REASON_H
> >>> +
> >>> +#define POWER_ON_REASON_GENERAL "General"
> >>> +#define POWER_ON_REASON_RTC "RTC wakeup"
> >>> +#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
> >>> +#define POWER_ON_REASON_SOFTWARE "Software"
> >>> +#define POWER_ON_REASON_USER "User"
> >>> +#define POWER_ON_REASON_CPU_FAIL "CPU Clock Failure"
> >>> +#define POWER_ON_REASON_XTAL_FAIL "32.768k Crystal oscillator Failure"
> 
> Hi,
> 
> Looks rather odd to have a hardcoded crystal value inside a generic header.
> Also how is REASON_CPU_FAIL related to CPU Clock ?
> 

Yes, I also think having the xtal rate is a bit too specific.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
