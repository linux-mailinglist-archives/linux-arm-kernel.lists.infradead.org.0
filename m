Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D10114A32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 01:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+ld3KY+JiD6BV423+kZmm7vwitzqcaH81geT3H053Q=; b=lL1L6Ngk6SZtXF
	4QEHgCcYKFugeKsKuLRseEVR5Q4JSzegBRJocBzUI64o+Usg5PrAvR4E8bAgwvOhmNr4ATrhPd/Z0
	ZpKJUi9PpZMwNbYyhpRzlyyqFykbHOpANqM64xAdeb0SmjKC9zCCHAZ5zxtrOZw7Sy4tKTt1hXWkk
	YtFAQo++CM+XYn1/ISff2tO62xk3Ilv0eCImK7AfesprnHDWfl2XfgnJHOmi8pBM7KdVtWKJa5cde
	rU995+Opfked2sbis/TDCMd7IVxNxCTXwlycRgYw7RHFFZ0Biqn3DFIAT9g2tU5deuPOlfd+VZcom
	N/2fJvyrmKjNroK1IEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id1OZ-0001Ke-D4; Fri, 06 Dec 2019 00:22:55 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id1OO-0001Jr-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 00:22:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id i6so3187311edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 16:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HVEngqNE+n/9b4VUg5UGRzlN7Ot2kbLWrq3boRtIV5I=;
 b=cYYF3XwM9qP5vPXClZMz2i3tp3pvYkhLKHLMk5N5NuKHrKy5PWIFn72/czidLwdTuz
 njwte+qyIOscbDPRii6RnWKdnOe8RNwLLx7l8jUVRQUiRQ/sfsZUkff3sNMeTzfQ0d38
 n6elSn1mCIaSlSx0PswgXyMPfIIV98Kon/VAt0dWUXgjpfc1vxZ+OuYg1Z8gjUrEOT71
 hKfJd0IwvU+VqFivrFFLH92zZXG29t8do8OuFlfHf30LnvBs55KI/F2M8ddZd5Ewbqk5
 82NsU5YmR7XZtasvHvduAfjnJ0EH2+EcJ74YX9bsQzoiXstscogtV5ZmZfdHlCflOnSy
 RRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HVEngqNE+n/9b4VUg5UGRzlN7Ot2kbLWrq3boRtIV5I=;
 b=BkFat+muQgr0gQ5b2Q6LkaWg2r0IyFBb8Xf6oVZchKvGxH3DtdNclQZcCENwBeuyZ/
 GCu74w2Mwur6Hv+2VmA68le04SpDoFJmc9yuDdVU4tfef26SVhEVY8aw+rxzgAswBuID
 VW+X7BeaLoABeH5HA8i4ljoifK4yViwEBjj6tHEflLYUZ9o0Gn/lcmwLnR8j2mHiub/L
 5tBMuMausQ2r2lOgetfCJvwMvyONK7FtSX0TK0dX3HE/bYSdwetq3RNMAYxy+rPc6VGZ
 AkDSu0z8maYSH/+NFqq6rZRP2VTr62UykjDIqvRSqchf9uyiMV9/yMg+MO86gQP22z4H
 hLYA==
X-Gm-Message-State: APjAAAXzNzJPdiJwD1o0L7MNAmbL9cSIkCIHW3kVeT4i7jtAFzyMBL0J
 sBmGZm+SRXxa2rIGVgjzEz4=
X-Google-Smtp-Source: APXvYqwj/YV3hU8I5FQqoLnfFROxjn81FACe+B9HETblKOYse6Ggfb6LzNs4d3o8WfLF58CGLnHNoQ==
X-Received: by 2002:a17:906:339a:: with SMTP id
 v26mr12571251eja.2.1575591758851; 
 Thu, 05 Dec 2019 16:22:38 -0800 (PST)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id f7sm452380edu.38.2019.12.05.16.22.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 16:22:38 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To: Ray Jui <ray.jui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
Date: Thu, 5 Dec 2019 16:22:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191202233127.31160-3-ray.jui@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_162244_923947_8846CAD4 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/2/19 3:31 PM, Ray Jui wrote:
> Add Broadcom iProc IDM driver that controls that IDM devices available
> on various iProc based SoCs for bus transaction timeout monitoring and
> error logging.
> 
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---

Looks good to me, just a few suggestions below

[snip]

> --- /dev/null
> +++ b/drivers/soc/bcm/iproc/Kconfig
> @@ -0,0 +1,6 @@

You would want an

if SOC_BRCM_IPROC

> +config IPROC_IDM
> +	bool "Broadcom iProc IDM driver"
> +	depends on (ARCH_BCM_IPROC || COMPILE_TEST) && OF
> +	default ARCH_BCM_IPROC
> +	help
> +	  Enables support for iProc Interconnect and Device Management (IDM) control and monitoring

and endif here to make this a nice menu.

[snip]

> +
> +static int iproc_idm_dev_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct platform_device *elog_pdev;
> +	struct device_node *elog_np;
> +	struct iproc_idm *idm;
> +	const char *name;
> +	int ret;
> +	u32 val;
> +
> +	idm = devm_kzalloc(dev, sizeof(*idm), GFP_KERNEL);
> +	if (!idm)
> +		return -ENOMEM;
> +
> +	ret = of_property_read_string(np, "brcm,iproc-idm-bus", &name);
> +	if (ret) {
> +		dev_err(dev, "Unable to parse IDM bus name\n");
> +		return ret;
> +	}
> +	idm->name = name;
> +
> +	platform_set_drvdata(pdev, idm);
> +	idm->dev = dev;
> +
> +	idm->base = of_iomap(np, 0);
> +	if (!idm->base) {
> +		dev_err(dev, "Unable to map I/O\n");
> +		ret = -ENOMEM;
> +		goto err_exit;
> +	}
> +
> +	ret = of_irq_get(np, 0);
> +	if (ret <= 0) {
> +		dev_err(dev, "Unable to find IRQ number. ret=%d\n", ret);
> +		goto err_iounmap;
> +	}

Since this is a standard platform device, you can use the standard
platform_get_resource() and platform_get_irq(). If you ever needed to
support ACPI in the future, that would make it transparent and almost
already ready.

> +
> +	ret = devm_request_irq(dev, ret, iproc_idm_irq_handler, IRQF_SHARED,
> +			       idm->name, idm);
> +	if (ret < 0) {
> +		dev_err(dev, "Unable to request irq. ret=%d\n", ret);
> +		goto err_iounmap;
> +	}
> +
> +	/*
> +	 * ELOG phandle is optional. If ELOG phandle is specified, it indicates
> +	 * ELOG logging needs to be enabled
> +	 */
> +	elog_np = of_parse_phandle(dev->of_node, ELOG_IDM_COMPAT_STR, 0);
> +	if (elog_np) {
> +		elog_pdev = of_find_device_by_node(elog_np);
> +		if (!elog_pdev) {
> +			dev_err(dev, "Unable to find IDM ELOG device\n");
> +			ret = -ENODEV;
> +			goto err_iounmap;
> +		}
> +
> +		idm->elog = platform_get_drvdata(elog_pdev);
> +		if (!idm->elog) {
> +			dev_err(dev, "Unable to get IDM ELOG driver data\n");
> +			ret = -EINVAL;
> +			goto err_iounmap;
> +		}
> +	}
> +
> +	/* enable IDM timeout and its interrupt */
> +	val = readl(idm->base + IDM_CTRL_OFFSET);
> +	val |= IDM_CTRL_TIMEOUT_EXP_MASK | IDM_CTRL_TIMEOUT_ENABLE |
> +	       IDM_CTRL_TIMEOUT_IRQ;
> +	writel(val, idm->base + IDM_CTRL_OFFSET);
> +
> +	ret = device_create_file(dev, &dev_attr_no_panic);
> +	if (ret < 0)
> +		goto err_iounmap;
> +
> +	of_node_put(np);

Did not you intend to drop the reference count on elog_np here?

[snip]

> +static struct platform_driver iproc_idm_driver = {
> +	.probe = iproc_idm_probe,

Do not you need a remove function in order to unregister the sysfs file
that you created in iproc_idm_dev_probe() to avoid bind/unbind (or
rmmod/modprobe) to spit out an existing sysfs entry warning?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
