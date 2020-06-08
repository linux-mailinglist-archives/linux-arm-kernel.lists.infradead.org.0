Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956C81F208A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 22:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLInFwvmu+Ca2WLCCv97YYvJBek5QLxkSt/3cmRB23Q=; b=NXdZZRGf9DDxmq
	gvZVrn9WOffpP9IOoau0DGD2Q3pBMUet+iItqIvYrtfyXjqb5dNGMsA8T7a7M3A+wADSTEpJNf1SH
	4TxCwtumN0N8MKKFI5vFLP2MQo4fEuhiiFyBZN0w6aPaNUgRlOBtOsNIrVtaOKW/qJ4Bjb41J+9TT
	z17V1DNrmqZbhpEUqAaUJFJRb865h+rtUcEj+sc+qOgm6g6Xa6OKhFSoeNjXcRZeGB5UiOFE4RVkk
	nuYBn2EOvu4daevmzFyQEfDID/SN0kJbc2vD4eZ2gr9B3szi1CUkQH//9xrzB3E6DHz2CvYH0kQbi
	O9VNbx4NjcZu9CFmQlTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiO9X-0006RX-Lj; Mon, 08 Jun 2020 20:13:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiO9Q-0006R5-Oq; Mon, 08 Jun 2020 20:13:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so18867325wru.0;
 Mon, 08 Jun 2020 13:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jVlgVc/GdIbK4y0NjDmH2j1F9bPmxyBu0CijBkevcuM=;
 b=GxIa0nqH3YUvqdMVrSneYuxpK1li2NwjOC2tWa3ClFigHXItIT4pCIhWKCGPN2Bymx
 Zg62Ie4jnV1UlyOpeipP+9nzTvFNmVqLlAhssoN2o9wqGjw/otPOjhmxKV0GLj2Hc0Im
 vov50u7EGIh1TN9NEv5+NxVlULBtyE2M7GkVaBpV6vmDBNDTxAs1DFMZLQMi9R1UCNE5
 uYGxTe4vRw2mmCAenIBFOdWLTY3KL05EHCLHzKw0Oob/Sz4GJstY9gIa388V83hDUUu9
 sWlnW+1ZhVctL3goGD9+QZ8Dz3TavvBgXdQwKjqt9Gr/4K5D9C02vU0nY7XxmM+WVsSi
 k40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jVlgVc/GdIbK4y0NjDmH2j1F9bPmxyBu0CijBkevcuM=;
 b=piDyE7HlzYJEOEcg8oqMspnt+6RuNnpkihrQI3OFJ9/BN/zthNO73y4DFAOQXR6Adn
 B7dxcn1vEXCoeF1+8nkh0QQAA2U0sS4mTAe1esaFeKKJFWbvZa7k5Ts9IIndiAV9UfrI
 wg2zp2Ud5Ft1WI5AqknBOiYtyY0FIyy0EtGofmrKPKbEx/SJwMKNlFmP8/K+/Bsxo+ZX
 t6Jr8MIyXTrgaa2shWtGyHZSYgMvKEiBQqphYSenst2AtR54t5nIK9kVh+DnW1E6GVRK
 uLvaGK456ezV01nBgGBCiE6hlE0FVFK9NTrajjYKL02chs2ufF6Ku8EZ4rYXEAKzKyCe
 0QhQ==
X-Gm-Message-State: AOAM533mVBk3AmifPGvxGyRdyxgvZmBi2ROfvKUCWqp9icC1zs7jGpzD
 GSTvu1LQCZI0norNieW+m6s=
X-Google-Smtp-Source: ABdhPJz8p+SkU30y3q1K8nACUgnVpvdsIVwmKe+81wFUlwKOO2+ifmHhPj6JqE0sNud54W5ZsPxS3Q==
X-Received: by 2002:a5d:4c45:: with SMTP id n5mr474621wrt.341.1591647221781;
 Mon, 08 Jun 2020 13:13:41 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 r4sm813582wro.32.2020.06.08.13.13.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 13:13:40 -0700 (PDT)
Subject: Re: [PATCH 2/9] reset: Add Raspberry Pi 4 firmware USB reset
 controller
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, wahrenst@gmx.net, robh@kernel.org,
 mathias.nyman@linux.intel.com, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-3-nsaenzjulienne@suse.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7e88dd76-5b75-c326-6f89-42a69bfe1ede@gmail.com>
Date: Mon, 8 Jun 2020 13:13:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608192701.18355-3-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_131344_806916_70A3C8D5 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
> The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip
> that implements the xHCI. After a PCI fundamental reset, VL805's
> firmware may either be loaded directly from an EEPROM or, if not
> present, by the SoC's co-processor, VideoCore. RPi4's VideoCore OS
> contains both the non public firmware load logic and the VL805 firmware
> blob.
> 
> We control this trough a reset controller device that's able to trigger
> the aforementioned process when relevant.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---

[snip]

> +static int rpi_usb_reset_reset(struct reset_controller_dev *rcdev,
> +				unsigned long id)
> +{
> +	struct rpi_usb_reset *priv = to_rpi_usb(rcdev);
> +	u32 dev_addr;
> +	int ret;
> +
> +	/*
> +	 * The pci device address is expected like this:
> +	 *
> +	 * PCI_BUS << 20 | PCI_SLOT << 15 | PCI_FUNC << 12
> +	 *
> +	 * But since rpi's PCIe setup is hardwired, we know the address in
> +	 * advance.
> +	 */
> +	dev_addr = 0x100000;

You could encode the device address as part of the reset identifier,
such that if we ever have more devices to reset, then we only need to
define new identifiers for them, and internally within your reset
controller provide you can resolve that reset identifier 0 is PCI_BUS <<
20 | PCI_SLOT << 15 | PCI_FUN << 12 for instance.

This would make your reset controller define a "#reset-cells" property
to 1 now, such that no further DT ABI breakage would occur if you were
to extend it later on.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
