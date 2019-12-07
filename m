Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C111A115A95
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 02:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fV9hawZBXax3L1PX1wGuLRrAaPWR8AZHPBtapE7w8NY=; b=EoZhqsBdHs8XbRYls2ubeyG9m
	srkCGw4ZpjTNEseVBKWe+e+SHsnfaR+sANyFa70sh526c/IUhsJT4qs1u0Fq7mfZjx98vmkSwl8b4
	DK/Q3UB75WuRPLYmak5ZLmS3ApRb2cG6oYLoFRvAeDnDSALVaXmLRt1S6P90e1rHu4qxJaZPMox3q
	IuG1rxjrR0hngYhr7x9M4k0H+RXLMATlYv+d9hn67o2fo/5MNu/KkN81oeYR8HCO1P7blp5FDAO5M
	eyAdOBatVl7GClNuo/NqA+ZKqu632EN54lOROVtkBjDThL3bc2pvIKA8tQk1Zv+NnxgL192hmAntK
	IYGI8gSCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOhR-0001xu-LC; Sat, 07 Dec 2019 01:15:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOhJ-0001xF-Ko
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 01:15:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id o8so3443127pls.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 17:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TcZXle/krhNKj/2nCJEOVs7pK4S6zGjMn5udHE26v1Q=;
 b=AVgm9cJg4CCfoMONrJFzWfj47YnxNdM9F5PgW1gRRX14Ghm9zM0ebEM7SUfRIJ7xZQ
 beAYp5bts+KNIc9ymPPn/2gkHHhQxExNAQuTvYAgE+GyWvwFHzp4AUkvEleKdekssNPp
 xoAmhxRSSTP8EtK3pcuGeacPe+ZC2YHAtnZWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TcZXle/krhNKj/2nCJEOVs7pK4S6zGjMn5udHE26v1Q=;
 b=kwkwB6U7ataqfFBjwtpdGnNABWvZDBsrgz1v5e1hrgDnatSi1AURp59sT17yTqJVG1
 6xnVpOJ85DCyrz+mRj3AQp0fejBA6kJt/3ZG7HBNefuW32HTtPeRNJUQPWXx3qKGvIiz
 2jfNK+WE75rRuNrzfPLL/cfqIXKS9ZFNVkEjYp3BsiWMfBv3DzzGusWq7Xa89sJlDw+R
 AgCHEXOrgjv6n7raV//K4ApP6Dkj0je6M+T0YjWPfqcajcWWRUZa8KKpxsqcQAzSUpVO
 NYawBUA6JXO4shxc4Am2JjDTs+SudnvEcvYrkZUOCqYHECtAXnCYTQSvZhJptvI707SP
 3Y/A==
X-Gm-Message-State: APjAAAV2IFgwqCaknLU/HwlMw2Hi4ii7W3P0rVWNk+QaADdCwBVuEdzZ
 r77DQMRtUuIN88W/5vrmneANHg==
X-Google-Smtp-Source: APXvYqzGBIwdDxGqw2dMGU7hGmbzVbaXRN+CoQEemqNI1oALAfa+1Gp/CBftGs0e4dkz0zN6NOIrYQ==
X-Received: by 2002:a17:90a:a386:: with SMTP id
 x6mr5661494pjp.116.1575681348558; 
 Fri, 06 Dec 2019 17:15:48 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id z26sm16072334pgu.80.2019.12.06.17.15.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 17:15:47 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
 <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
Date: Fri, 6 Dec 2019 17:15:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_171549_688495_66BF5ECE 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/5/19 4:22 PM, Florian Fainelli wrote:
> On 12/2/19 3:31 PM, Ray Jui wrote:
>> Add Broadcom iProc IDM driver that controls that IDM devices available
>> on various iProc based SoCs for bus transaction timeout monitoring and
>> error logging.
>>
>> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
>> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
>> ---
> 
> Looks good to me, just a few suggestions below
> 
> [snip]
> 
>> --- /dev/null
>> +++ b/drivers/soc/bcm/iproc/Kconfig
>> @@ -0,0 +1,6 @@
> 
> You would want an
> 
> if SOC_BRCM_IPROC
> 
>> +config IPROC_IDM
>> +	bool "Broadcom iProc IDM driver"
>> +	depends on (ARCH_BCM_IPROC || COMPILE_TEST) && OF
>> +	default ARCH_BCM_IPROC
>> +	help
>> +	  Enables support for iProc Interconnect and Device Management (IDM) control and monitoring
> 
> and endif here to make this a nice menu.
> 

Sure I'll add SOC_BRCM_IPROC at one layer higher and use the if here.

> [snip]
> 
>> +
>> +static int iproc_idm_dev_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *np = dev->of_node;
>> +	struct platform_device *elog_pdev;
>> +	struct device_node *elog_np;
>> +	struct iproc_idm *idm;
>> +	const char *name;
>> +	int ret;
>> +	u32 val;
>> +
>> +	idm = devm_kzalloc(dev, sizeof(*idm), GFP_KERNEL);
>> +	if (!idm)
>> +		return -ENOMEM;
>> +
>> +	ret = of_property_read_string(np, "brcm,iproc-idm-bus", &name);
>> +	if (ret) {
>> +		dev_err(dev, "Unable to parse IDM bus name\n");
>> +		return ret;
>> +	}
>> +	idm->name = name;
>> +
>> +	platform_set_drvdata(pdev, idm);
>> +	idm->dev = dev;
>> +
>> +	idm->base = of_iomap(np, 0);
>> +	if (!idm->base) {
>> +		dev_err(dev, "Unable to map I/O\n");
>> +		ret = -ENOMEM;
>> +		goto err_exit;
>> +	}
>> +
>> +	ret = of_irq_get(np, 0);
>> +	if (ret <= 0) {
>> +		dev_err(dev, "Unable to find IRQ number. ret=%d\n", ret);
>> +		goto err_iounmap;
>> +	}
> 
> Since this is a standard platform device, you can use the standard
> platform_get_resource() and platform_get_irq(). If you ever needed to
> support ACPI in the future, that would make it transparent and almost
> already ready.
> 

Will do, thanks!

>> +
>> +	ret = devm_request_irq(dev, ret, iproc_idm_irq_handler, IRQF_SHARED,
>> +			       idm->name, idm);
>> +	if (ret < 0) {
>> +		dev_err(dev, "Unable to request irq. ret=%d\n", ret);
>> +		goto err_iounmap;
>> +	}
>> +
>> +	/*
>> +	 * ELOG phandle is optional. If ELOG phandle is specified, it indicates
>> +	 * ELOG logging needs to be enabled
>> +	 */
>> +	elog_np = of_parse_phandle(dev->of_node, ELOG_IDM_COMPAT_STR, 0);
>> +	if (elog_np) {
>> +		elog_pdev = of_find_device_by_node(elog_np);
>> +		if (!elog_pdev) {
>> +			dev_err(dev, "Unable to find IDM ELOG device\n");
>> +			ret = -ENODEV;
>> +			goto err_iounmap;
>> +		}
>> +
>> +		idm->elog = platform_get_drvdata(elog_pdev);
>> +		if (!idm->elog) {
>> +			dev_err(dev, "Unable to get IDM ELOG driver data\n");
>> +			ret = -EINVAL;
>> +			goto err_iounmap;
>> +		}
>> +	}
>> +
>> +	/* enable IDM timeout and its interrupt */
>> +	val = readl(idm->base + IDM_CTRL_OFFSET);
>> +	val |= IDM_CTRL_TIMEOUT_EXP_MASK | IDM_CTRL_TIMEOUT_ENABLE |
>> +	       IDM_CTRL_TIMEOUT_IRQ;
>> +	writel(val, idm->base + IDM_CTRL_OFFSET);
>> +
>> +	ret = device_create_file(dev, &dev_attr_no_panic);
>> +	if (ret < 0)
>> +		goto err_iounmap;
>> +
>> +	of_node_put(np);
> 
> Did not you intend to drop the reference count on elog_np here?
> 

Sorry, I'm not following this comment. Could you please help to clarify 
for me a bit more? Thanks!

> [snip]
> 
>> +static struct platform_driver iproc_idm_driver = {
>> +	.probe = iproc_idm_probe,
> 
> Do not you need a remove function in order to unregister the sysfs file
> that you created in iproc_idm_dev_probe() to avoid bind/unbind (or
> rmmod/modprobe) to spit out an existing sysfs entry warning?
> 

This driver should never be compiled as a module. It's meant to be 
always there to capture IDM bus timeouts.

But you are right that I cannot prevent user from trying to unbind it 
for whatever reason. I'll add a remove routine to take care of this.

Thanks!

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
