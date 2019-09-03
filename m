Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E997A60C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h0TM2H7FS1k9ONPX9bRfuCqLGu2rjVAaitVNUu+U+70=; b=sCP+D2jDjHlND0x5hEQ50nglO
	CWY7m8kul16gsKNEwi89IgR+yODN9ZYsnobNBXQ5+MshwNc+H2c4TauU0Nze8/+EYvavqeVykuAhm
	cJews2WTZa/nYIRkP3XEHMuC42UalXYofMxFVrvH9D8RUoET8FD2XOJLz8MCJIpDrY6TJNfxZEBt8
	OdNYCkbr8uPYG5gEJG8LPuMeSWmjTEGzL7LwVlUx1OQZrp6aa0BLOTBKpc7qvNlra9J7q+VUaqNdU
	tov3tb5Z8AnrqctY/GsQ/kF1WIF4AlTyjlqNErPM1ukJf069N7WM7hPz7UVfzG95I4yAIpYYKpv89
	moOPCvclQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51Zw-0004Dd-Iw; Tue, 03 Sep 2019 05:42:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51Zj-0004CZ-8C
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:41:56 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1i51Za-0005vB-Fx; Tue, 03 Sep 2019 07:41:46 +0200
Subject: Re: [PATCH] ACPI: support for NXP i2c controller
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190711102601.20582-1-chuanhua.han@nxp.com>
 <CAJZ5v0hY2sL+XfN_4v07_hjvoxgCAt+Q89+wNg5Pky6XKP-mqA@mail.gmail.com>
 <CAHp75VfFtMMQhetRFHrx=Ft7OWwyMqLrwP3sPjT6YVtr8xCHoQ@mail.gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <896b88d4-9d1b-922b-1784-55ef9a1a1830@pengutronix.de>
Date: Tue, 3 Sep 2019 07:41:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VfFtMMQhetRFHrx=Ft7OWwyMqLrwP3sPjT6YVtr8xCHoQ@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_224155_291986_4C62B7F1 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Udit Kumar <udit.kumar@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>,
 linux-i2c <linux-i2c@vger.kernel.org>, Chuanhua Han <chuanhua.han@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 02.09.19 23:16, Andy Shevchenko wrote:
> On Mon, Sep 2, 2019 at 11:58 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>>
>> On Thu, Jul 11, 2019 at 12:35 PM Chuanhua Han <chuanhua.han@nxp.com> wrote:
>>>
>>> Enable NXP i2c controller to boot with ACPI
>>>
>>> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
>>> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
>>> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
>>
>> Wolfram, any objections to this from the i2c side?
> 
> May I propose amendment(s)?
> 
>>> @@ -44,6 +44,7 @@
>>>   #include <linux/pm_runtime.h>
>>>   #include <linux/sched.h>
>>>   #include <linux/slab.h>
> 
>>> +#include <linux/acpi.h>
> 
> If it's kept in order, better to go with it. (Yes, it is as I have checked)
> However, property.h should be included instead, see below.
> 
>>>          const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
>>>                                                             &pdev->dev);
>>> +       const struct acpi_device_id *acpi_id =
>>> +                       acpi_match_device(i2c_imx_acpi_ids,
>>> +                                         &pdev->dev);
> 
> 
>>>          if (of_id)
>>>                  i2c_imx->hwdata = of_id->data;
>>> +       else if (acpi_id)
>>> +               i2c_imx->hwdata = (struct imx_i2c_hwdata *)
>>> +                               acpi_id->driver_data;
> 
> 
> The above altogher may be replaced with
> 
> const struct imx_i2c_hwdata *match;
> ...
> match = device_get_match_data(&pdev->dev);
> if (match)
>   i2c_imx->hwdata = match;
> else
> ...

Instead of "may be replaced", I would say: it should be replaced :)

>>> +               .acpi_match_table = ACPI_PTR(i2c_imx_acpi_ids),
> 
> Since there is no #ifdef guard no need to use ACPI_PTR().
> 

What iMX/(other NXP?) SoCs are with ACPI support?  Where I can get one? I would like to 
know more about it.

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
