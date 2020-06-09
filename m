Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F81F453F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNeTfNaDkR0EyYpreabY7WsgxZZHafrvUfCXx1RDWNI=; b=CR5ifgPDdYzTp4
	PWsjeTX7+kbV5paxOH4CPSogMMmuCcioVDs4jutvPLiMt1mdX3ynB2GowoShkQ9iGpwkt9tf9RPKc
	uYShtrqBQxqSLijTfl4T4CBNK7TiZ50iHjIrz7MZd4ZP4Z2lNVI1RMbLghsiOgtkkVtVL6KVrOmDc
	nV8wMo82/+/BRy0lnJqoxwKfR85ZrHzxx56xG1ehQRRKlyDwPdN72jZaqz0WJAJKA1ijxyEvyLBCT
	UuzVpEAx5SRlTeQJa795dv8tQyGMh4+vaotspZ7C8XR1OGrTK88Py7yFYLkM2RatKL0DSfjcq9ImT
	y4CYrrDF6mC3DSpbCtXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiikv-0003WQ-2G; Tue, 09 Jun 2020 18:13:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiikm-0003Uw-FT; Tue, 09 Jun 2020 18:13:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so4107139wmi.2;
 Tue, 09 Jun 2020 11:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HvCHrSiZhJmADjuwF4pBq6CIXD97v5dk3vK3Zip2OOk=;
 b=p0GOKJhY6wvvU2KcdvgSuWvIVOpAzgRnrkvFSIxYIkGFk6IoPtNOKV+/C18Ll29uPz
 nBqyZLreTeWkUgSZWSIcnYIAhnHW5oWpyoqdX+3R9a2ibqgr6MRGrcI6Ffk8WxHwJ8aL
 DdL+01t0CyzWPLd6BCGSvgJybzf8+fQoFv3/xgOUXuXrNnzO0VKYTPNmbNe/1WV/HE3q
 jw1+BE07aYnrIqUEBD64HiQX69YOWyTRCM9Hdu4pzqb2nezJyq3ReuRBk+owjEdTOpDN
 2gSAi6PvxDCAZsHw+ndUGZqll3ZwBtsP1Opa0hBcnGKJg+eLzNZKoTdC8dV0o4aIYTOE
 o1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HvCHrSiZhJmADjuwF4pBq6CIXD97v5dk3vK3Zip2OOk=;
 b=SQQ10tKyNo3RsD7Ec5s6AHDtH7//MmxFMomra0Qe4I6SwO0PwZnHb5g+b4sgDNgPbr
 yxNMGXMQ9eU1yU5iXrygEtJa1gNBb7UDYaI0J3CvsNmhNJ85sdczLK8mUzd/8bwV0KA/
 B4cHhVHwSzS01jbNjxtEvuGKKhzt6WW6xoG0TeUpLWjWAHovGQbFHrG9Xm3J0gp9N0OQ
 /YP6+7ahwibmiHn2Pm3pL6vyQY1YtCG3XvAm+k3Eg50G94/bje/jaSjvL2//gjPJSMOy
 9ECbYFFpVCBH1NKx0K1G5v1Nu+QDEQjfe9ZlhPEli+u3/8FIwSItTvd7/ycJBDuM/CTB
 yRxg==
X-Gm-Message-State: AOAM532lnylunHta4mckNkISHRKCYzZoL3h5RAtbkoTWhkPlxj6lftRb
 tdVyW0ON4SYd0TRNlLHyQVI=
X-Google-Smtp-Source: ABdhPJxhpOaX7J8Q3M/gSS5Xp3Uaihda4VDb5vi94Gott9/Hfou31WEbAepReRxcUx6Qz/aimAEscQ==
X-Received: by 2002:a05:600c:4102:: with SMTP id
 j2mr5191612wmi.48.1591726414843; 
 Tue, 09 Jun 2020 11:13:34 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 l204sm3904721wmf.19.2020.06.09.11.13.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:13:33 -0700 (PDT)
Subject: Re: [PATCH v2 5/9] usb: xhci-pci: Add support for reset controllers
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-6-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d452ddb8-cd30-1bfc-7b72-af3412e22ed4@gmail.com>
Date: Tue, 9 Jun 2020 11:13:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609175003.19793-6-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111340_516168_2950FA8F 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> Some atypical users of xhci-pci might need to manually reset their xHCI
> controller before starting the HCD setup. Check if a reset controller
> device is available to the PCI bus and trigger a reset.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>  - Use proper reset API
>  - Make code simpler
> 
>  drivers/usb/host/xhci-pci.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> index ef513c2fb843..6e96affa4ceb 100644
> --- a/drivers/usb/host/xhci-pci.c
> +++ b/drivers/usb/host/xhci-pci.c
> @@ -12,6 +12,7 @@
>  #include <linux/slab.h>
>  #include <linux/module.h>
>  #include <linux/acpi.h>
> +#include <linux/reset.h>
>  
>  #include "xhci.h"
>  #include "xhci-trace.h"
> @@ -339,6 +340,7 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  	struct xhci_hcd *xhci;
>  	struct usb_hcd *hcd;
>  	struct xhci_driver_data *driver_data;
> +	struct reset_control *reset;
>  
>  	driver_data = (struct xhci_driver_data *)id->driver_data;
>  	if (driver_data && driver_data->quirks & XHCI_RENESAS_FW_QUIRK) {
> @@ -347,6 +349,11 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  			return retval;
>  	}
>  
> +	reset = devm_reset_control_get_optional_exclusive(&dev->bus->dev, NULL);
> +	if (IS_ERR(reset))
> +		return PTR_ERR(reset);
> +	reset_control_reset(reset);

Sorry for not catching this earlier, since this is a generic integration
with the reset controller API, should not you also add a
reset_control_reset() to hcd_pci_resume() for symmetry?

> +
>  	/* Prevent runtime suspending between USB-2 and USB-3 initialization */
>  	pm_runtime_get_noresume(&dev->dev);
>  
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
