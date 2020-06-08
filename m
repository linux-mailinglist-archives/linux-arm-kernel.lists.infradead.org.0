Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B041F2041
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keQjUXLE6v23+U+QQ1s0ZfScf+rXuKRy5HHCvf0cNNk=; b=HSNqE8Q81w6mfH
	iZE0KvVkIR73A6gjxkCVWp70Jh3Sws4shNQ/W2KauSYZviwyncCSlSw2zAthBZau1TJ6lQHeaMx4K
	/5cUWUouVn/OyCS6auMceRvGhE+LHm/k619wTqa9Kxocy06DTEzrfKv3oflr4hmPo8ZtELv1FZyoA
	NQ4j8OUprGkbdyoHslqo13LiSFqs7EGsRbxH1TG8sTrupZn2hR4Cx8L3xDc1QVlHMgACk0buCVutW
	aQuBH7pxNHIMb6T9lhXSZ0+/qqOPXrYC5XcAKtxrVVj7HqCR3rVYaYKp4reSeRqCY4vNLqPmKLDtC
	Nlg5N5Rfb1O/0LpXrDXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNgp-0005cA-M7; Mon, 08 Jun 2020 19:44:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNgV-0005Vt-Dn; Mon, 08 Jun 2020 19:43:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id x14so18769472wrp.2;
 Mon, 08 Jun 2020 12:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eEhDs2ggMl3f7hmWAszT3Wg5EUHjiX8ZgjgQtEPz3Ew=;
 b=SeSuA/P6scbWq1Qmh2zpCSo7IcLTN9rnSoi07mfc7qWyYZK3Q3DYVo1VijgnOfNSdj
 r3vywNV9pCi0Afub1pOlwByjOut9ps2B/DjTMiU5XIHXPtx+bTupvONWl3wUj4GIE7XN
 7jmRn6U7u8Pw/6rqoy/LtoA1lwlByDxJbr48VQnlu+vjMfCDHjLY9HJJNEbvNCOb1HQq
 TYmx6d3y0qxRkn+koJEEJZLsxEDTZ7IqpiKn8n2+Si8QeluqpJvK+HQ9Jdmp0U6KjUMa
 Kdj9DY+26aXNWHArUb4TSzFok6Mz7H+tkNNgznU8lsMAe76hlbeSdAtfqawe6Y879Sf8
 khgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eEhDs2ggMl3f7hmWAszT3Wg5EUHjiX8ZgjgQtEPz3Ew=;
 b=nuqnd4q6juqoe7VRTOLH0YfzPnxQEKMVLog7/1EFShG7MrDKHPuIVeGcEKSzAOPf7s
 2uLpfMWzMGCW3joyuyxVlBviASEYBsp6IVe+F8VGb/tza59Ss+MlFrr+X4Sn6imKS9gB
 eP3mfzchoFEgP2ddm9xRTSjkYcZHwfXcIQNejLZg8f3bXiofAOANGeI1MxEtA/pB60pL
 tj37HPRiS4yG2LgvRlc5vhAqBxR/UlwRcc6Xj+Acag99DSPDGcq/FckoMmJXoVnG7IzO
 BC9elUeZvrFsDYaoNFB0hEu7a6L6Sy3RuXWtGWoCPX/IQ1u8ElBRQ/1s8899uHSr0de1
 km8A==
X-Gm-Message-State: AOAM531HzNqEU/Mp4ke8j78+G2cnqqpsAesTMcWKSsCyln/4Y7XYRAb5
 rFiy0EbxUoS12Z4BFLpRZvo=
X-Google-Smtp-Source: ABdhPJzbDt2pJwcpzdBFvHOLRZ0TDUp8Aq/TBRc5TkHGktIAfaGaZUxUEu/MKNMBoXEBH6K2qQduMg==
X-Received: by 2002:a5d:4b47:: with SMTP id w7mr385678wrs.234.1591645429157;
 Mon, 08 Jun 2020 12:43:49 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 t129sm538664wmf.41.2020.06.08.12.43.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 12:43:48 -0700 (PDT)
Subject: Re: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, robh@kernel.org,
 mathias.nyman@linux.intel.com, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-6-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5d3200cc-17cc-026f-1dfe-c10ec949f9ad@gmail.com>
Date: Mon, 8 Jun 2020 12:43:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608192701.18355-6-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_124351_491562_FDCF3D56 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> Some atypical users of xhci-pci might need to manually reset their xHCI
> controller before starting the HCD setup. Check if a reset controller
> device is available to the PCI bus and trigger a reset.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/usb/host/xhci-pci.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> index ef513c2fb843..45f70facdfcd 100644
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
> @@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  			return retval;
>  	}
>  
> +	reset = devm_reset_control_get(&dev->bus->dev, NULL);

Should not this be devm_reset_control_get_optional()?

> +	if (IS_ERR(reset)) {
> +		retval = PTR_ERR(reset);
> +		return retval;
> +	}
> +	reset_control_reset(reset);
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
