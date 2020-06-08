Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E365F1F2051
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxH/Ev8A4tuaZPzdvL0V2EItKf8w5DHzGd0iuWokM4E=; b=YJNqzClhjdodmq
	CqpA3kRVBfsK6Z7AGWFbmaNhWMDcgjd8XYILrn0u7b9eAc+NfIwAGk+j6TVoE6n5MH0BqMftnh03k
	f8sNv4R/yVZUtgUtyQzqcqHaK+9uwBmfa2QT5bKM6A0IbiaAgWxDpz9v0LqavZcDJeQ2ssJu8JTai
	KY64sxTJAYDotFIl/kwNPF2pJJZGtG+3xXz58p2eDBIpPmqajOruNoPZxriypjD5Pt00OhFDISfsW
	Qtzt//IsEiMK4sx/mEux5lHAncrJDXSeYSscixG2VvG8a1Tmpmah5lwp4neejbFMF900G4R2Lvrgf
	eI3PoHluP8NLVkZgXDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNnf-0002df-BS; Mon, 08 Jun 2020 19:51:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNnW-0002dB-Q7; Mon, 08 Jun 2020 19:51:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so18807647wrt.5;
 Mon, 08 Jun 2020 12:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=o5RsBAa3pHyGyH1Nf7xqWjY4s1FOdQYE7k1GR7WvK+Y=;
 b=N3vINQBBjDhjwltCTk4vLqaHoCDmpSznY1srZ5V/zbmPxdqlnC+/pmPlQHHoAwIe9B
 oUaY7MSfZe4RcX5zuaV2XyDtBx1bR9mPWAw7K8PoLXukvY8ImPCBpiGot87xw/RFYKix
 GLxs4Af3xmFpKolPH1YeZ+Rmw0/ZrgO0S9ioEUI/Tz0SSzVEgZ2UB3KYF9jtXSk/6s7b
 ip2VxR06bCDpND0T303PPmw3GNmtaFCBLGMH08iyT3g9YBE4QSONyykzMR3Y+qwLSU60
 fd6immvVGQp9DZJhlGWE7rmFD1svntJnV4yvgdsl+NNBFAWQzIZ2CXJFWPSNtNba4wPR
 SDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o5RsBAa3pHyGyH1Nf7xqWjY4s1FOdQYE7k1GR7WvK+Y=;
 b=H2uwV4Dmy/+oUjauWl98nrFYkdzbAgtlBMQSg8Ft/Ovlz3xnwb+eajujQml4VEdtTq
 /FV1/Xa0yU+E4qSHjmXoWPJdYfTcH9sZEt9sm9rpUa6kXmASQISXkPxkgoq/u4jUcDHS
 r2gTkSeRYTe09oien0dYdL18UcwXHxg1KRPBFnt6YMCVkTndAe+0Jv623XVLE9HqkThZ
 8Ib8s6ZeEDDTE3N/nSYO6axuWEyAXvHuVU82jqKNZPiJVoX9PBVi6Rn2siO7yywkHVuZ
 321NMxTVLn+Y4lGENi5M4x+uda03X0VSPt8XlszWg15v0dKNWSfcdhHvvBMzmG3g09fY
 rBrA==
X-Gm-Message-State: AOAM533LV1wAZFGM+JuG7/M8d+tLe4rRfyyEYYrwHVoeiw8eytFzRqHl
 NQOxpm2R+7Kuq8bh0lBlgJtGLDic
X-Google-Smtp-Source: ABdhPJw+Lng+MYT9sFvOIDd5/BQc0mai6p2yW5rVQDkoQhjjOqgKoQROdpu5l2JKcDlSnSwrtuty3Q==
X-Received: by 2002:adf:b198:: with SMTP id q24mr421481wra.368.1591645865305; 
 Mon, 08 Jun 2020 12:51:05 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 s8sm772992wrg.50.2020.06.08.12.51.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 12:51:04 -0700 (PDT)
Subject: Re: [PATCH 7/9] usb: host: pci-quirks: Bypass xHCI quirks for
 Raspberry Pi 4
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, robh@kernel.org,
 mathias.nyman@linux.intel.com, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-8-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6b1084e1-05ca-5321-46fd-7b6f83224a49@gmail.com>
Date: Mon, 8 Jun 2020 12:50:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608192701.18355-8-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_125106_903702_FBF36BAB 
X-CRM114-Status: GOOD (  14.84  )
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
> The board doesn't need the quirks to be run, and takes case of its own

(if you have to resubmit) takes care

> initialization trough a reset controller device. So let's bypass it

its quirk.

> quirk.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/usb/host/pci-quirks.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
> index 92150ecdb036..4b3be05d1290 100644
> --- a/drivers/usb/host/pci-quirks.c
> +++ b/drivers/usb/host/pci-quirks.c
> @@ -16,6 +16,8 @@
>  #include <linux/export.h>
>  #include <linux/acpi.h>
>  #include <linux/dmi.h>
> +#include <linux/of.h>
> +
>  #include "pci-quirks.h"
>  #include "xhci-ext-caps.h"
>  
> @@ -1248,6 +1250,16 @@ static void quirk_usb_early_handoff(struct pci_dev *pdev)
>  	 */
>  	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
>  		return;
> +
> +	/*
> +	 * Bypass the Raspberry Pi 4 controller xHCI controller, things are
> +	 * taken care by the board's co-processor.

taken care of by.

With that:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

> +	 */
> +	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483 &&
> +	    of_device_is_compatible(of_get_parent(pdev->bus->dev.of_node),
> +				    "brcm,bcm2711-pcie"))
> +		return;
> +
>  	if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
>  			pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
>  			pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
