Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DB6116E20
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGoGk5q/9dipMtOjII6/GP/3bMUNDeMikCUo+I+Ctl8=; b=eA9RoThUcFdZx6
	nLgQXEY/+rgilPWasFHC2mzMq+MXkYJlhTV5oIqkUKQHOwT6sQUwxVQPwvWE99M9PhqU5zhTMG4ri
	Tk8oHa7pWy3bgIDE/C5sG/I+CBVUFfll9Avzv36pCel2qqx+KwARFhosZmG/DstTctsEgbirG+JJB
	9xIGvFYobsCGdP6ITg2/3ddQYk/zgqY/STSS5Woe8jNJ8NdesGK+edjWnek1IHQfULXjKIsacy+Xx
	6ptWcAxaJttUOUAi9ipJ9+cXHykKIUq8Sfs0KR8iAqaPzgveKxAV0AnYolS7bSbyngyUSolN7idvQ
	d5DSKnJHwkC0CG8FrCeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJLh-0005P0-KB; Mon, 09 Dec 2019 13:45:17 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJLZ-0004Uy-B6
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 13:45:11 +0000
Received: from kb-xps (lfbn-1-1480-129.w90-65.abo.wanadoo.fr [90.65.102.129])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id DA35120000B;
 Mon,  9 Dec 2019 13:44:59 +0000 (UTC)
Date: Mon, 9 Dec 2019 14:44:58 +0100
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3] power: reset: at91-reset: add sysfs interface to the
 power on reason
Message-ID: <20191209134458.GA47233@kb-xps>
References: <20191209094329.45638-1-kamel.bouhara@bootlin.com>
 <14a9f500-3f4a-2b6b-cd27-f48c6cb73cce@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14a9f500-3f4a-2b6b-cd27-f48c6cb73cce@microchip.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_054509_689804_02BF6279 
X-CRM114-Status: GOOD (  29.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, sre@kernel.org,
 Ludovic.Desroches@microchip.com, thomas.petazzoni@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 11:33:23AM +0000, Claudiu.Beznea@microchip.com wrote:
> Hi Kamel,
>
> On 09.12.2019 11:43, Kamel Bouhara wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > This patch export the power on reason through the sysfs interface and
> > introduce some generic reset sources.
> > Update the ABI documentation to list current power on sources.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > ---
> > Changes in v2
> > =============
> >         - Be less specific on the crystal oscillator value
> >         - Add an Acked-by
> > Changes in v3
> > =============
> >         - Really be less specific on the crystal oscillator value
> >
> >  .../sysfs-devices-platform-power-on-reason    | 14 ++++++
> >  drivers/power/reset/at91-reset.c              | 44 +++++++++++++------
> >  include/linux/power/power_on_reason.h         | 19 ++++++++
> >  3 files changed, 64 insertions(+), 13 deletions(-)
> >  create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> >  create mode 100644 include/linux/power/power_on_reason.h
> >
> > diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> > new file mode 100644
> > index 000000000000..83daeb9b1aa2
> > --- /dev/null
> > +++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
> > @@ -0,0 +1,14 @@
> > +What:          /sys/devices/platform/.../power_on_reason
> > +
> > +Date:          October 2019
> > +KernelVersion: 5.4
> > +Contact:       Kamel Bouhara <kamel.bouhara@bootlin.com>
> > +Description:   This file shows system power on reason.
> > +               The possible sources are:
> > +               General System Power-ON, RTC wakeup, Watchdog timeout,
> > +               Software Reset, User pressed reset button,
> > +               CPU Clock failure, 32.768kHz Oscillator Failure,
>
> Crystal oscillator value is still present here.
>

Indeed, thanks.

> > +               Low power mode exit, Unknown.
> > +
> > +               The file is read only.
> > +
> > diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
> > index 44ca983a49a1..3cb2df40af37 100644
> > --- a/drivers/power/reset/at91-reset.c
> > +++ b/drivers/power/reset/at91-reset.c
> > @@ -17,7 +17,7 @@
> >  #include <linux/of_address.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/reboot.h>
> > -
> > +#include <linux/power/power_on_reason.h>
>
> As far as I know, headers in include/linux are only visible in kernel.
> Although you may use this header, in future, in other drivers (as Alexandre
> specified in a previous email), at the moment it is only used by
> at91-reset.c. So, why not keeping them in at91-reset.c or leave it as is
> for the moment and introduce it when this will be necessary?
>

Well, It's been a while now the idea was proposed, I've just submitted
it here.

> Moreover, you are doing 2 things on a patch:
> 1/ export the reset reasons through sysfs
> 2/ introduce the reset reason defines
>
Ok, I shall split it in two patches, if it could clarify things ?

> Thank you,
> Claudiu Beznea
>
> >  #include <soc/at91/at91sam9_ddrsdr.h>
> >  #include <soc/at91/at91sam9_sdramc.h>
> >
> > @@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
> >         return NOTIFY_DONE;
> >  }
> >
> > -static void __init at91_reset_status(struct platform_device *pdev)
> > +static const char *at91_reset_reason(struct platform_device *pdev)
> >  {
> >         const char *reason;
> >         u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
> >
> >         switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
> >         case RESET_TYPE_GENERAL:
> > -               reason = "general reset";
> > +               reason = POWER_ON_REASON_GENERAL;
> >                 break;
> >         case RESET_TYPE_WAKEUP:
> > -               reason = "wakeup";
> > +               reason = POWER_ON_REASON_RTC;
> >                 break;
> >         case RESET_TYPE_WATCHDOG:
> > -               reason = "watchdog reset";
> > +               reason = POWER_ON_REASON_WATCHDOG;
> >                 break;
> >         case RESET_TYPE_SOFTWARE:
> > -               reason = "software reset";
> > +               reason = POWER_ON_REASON_SOFTWARE;
> >                 break;
> >         case RESET_TYPE_USER:
> > -               reason = "user reset";
> > +               reason = POWER_ON_REASON_USER;
> >                 break;
> >         case RESET_TYPE_CPU_FAIL:
> > -               reason = "CPU clock failure detection";
> > +               reason = POWER_ON_REASON_CPU_FAIL;
> >                 break;
> >         case RESET_TYPE_XTAL_FAIL:
> > -               reason = "32.768 kHz crystal failure detection";
> > +               reason = POWER_ON_REASON_XTAL_FAIL;
> >                 break;
> >         case RESET_TYPE_ULP2:
> > -               reason = "ULP2 reset";
> > +               reason = POWER_ON_REASON_LOW_POWER;
> >                 break;
> >         default:
> > -               reason = "unknown reset";
> > +               reason = POWER_ON_REASON_UNKNOWN;
> >                 break;
> >         }
> >
> > -       dev_info(&pdev->dev, "Starting after %s\n", reason);
> > +       return reason;
> >  }
> >
> >  static const struct of_device_id at91_ramc_of_match[] = {
> > @@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
> >         .priority = 192,
> >  };
> >
> > +static ssize_t power_on_reason_show(struct device *dev,
> > +                                   struct device_attribute *attr,
> > +                                   char *buf)
> > +{
> > +       struct platform_device *pdev = to_platform_device(dev);
> > +
> > +       return sprintf(buf, "%s\n", at91_reset_reason(pdev));
> > +}
> > +
> > +static DEVICE_ATTR_RO(power_on_reason);
> > +
> >  static int __init at91_reset_probe(struct platform_device *pdev)
> >  {
> >         const struct of_device_id *match;
> > @@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
> >                 return ret;
> >         }
> >
> > -       at91_reset_status(pdev);
> > +       ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "Could not create sysfs entry\n");
> > +               return ret;
> > +       }
> > +
> > +       dev_info(&pdev->dev, "Starting after %s reset\n",
> > +                at91_reset_reason(pdev));
> >
> >         return 0;
> >  }
> > diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
> > new file mode 100644
> > index 000000000000..9c44baa52911
> > --- /dev/null
> > +++ b/include/linux/power/power_on_reason.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
> > + */
> > +
> > +#ifndef POWER_ON_REASON_H
> > +#define POWER_ON_REASON_H
> > +
> > +#define POWER_ON_REASON_GENERAL "General"
> > +#define POWER_ON_REASON_RTC "RTC wakeup"
> > +#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
> > +#define POWER_ON_REASON_SOFTWARE "Software"
> > +#define POWER_ON_REASON_USER "User"
> > +#define POWER_ON_REASON_CPU_FAIL "CPU clock Failure"
> > +#define POWER_ON_REASON_XTAL_FAIL "Crystal oscillator Failure"
> > +#define POWER_ON_REASON_LOW_POWER "Low power exit"
> > +#define POWER_ON_REASON_UNKNOWN "Unknown"
> > +
> > +#endif /* POWER_ON_REASON_H */
> > --
> > 2.24.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
