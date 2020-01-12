Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4268513881F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 21:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sutUjgP3W6MhVTy7AS21lfdTNdRC5upL08MJSRq8Fio=; b=kE+CDqJ/4C6a6P
	hG3PV8IGS7g5jZf/quSdOwKZ3C5kqbbap8BAbCsTo6zs79aypQewJOWQ6iHrCuph/pBPjPT5DswpV
	TF83LwHHMOUo1ZZKLEK14LBn5PvVNP9XSNuzgQ+K9t0KW3FQwmysrPXe2KCND9+R9dayaXpsOe5wV
	2WRq3sXV2vzyjz6xOXhcQGyOG6jrlylMJQebRRvaSJuNHupP61GeurBe4vrY+zjwPEMBPs3P6M1Ml
	ftvILQWxAWg7JVOk5gweM3dCdSlSF9pwkqOTvLulKvJITziCARg2OT4tUjSqYa145Zd/8ZJcitfOF
	M3+/VFd8G555LqZx+nXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjQ9-0003mp-Pt; Sun, 12 Jan 2020 20:01:13 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjPz-0003jm-RG
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 20:01:06 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 288D083646;
 Mon, 13 Jan 2020 09:00:55 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1578859255;
 bh=IL1PdJcKPjwwEdc8J7wiAsXAM3GoztCVHbvafOTX1zQ=;
 h=From:To:Subject:Date:References:In-Reply-To;
 b=CSIf8zzef7dEYp1DL6QhYthfJZu/dlT6Ctgg0s6NR4HbVeIvHatiwZ7die+7XNVjr
 CC4+GikPKHqO+1pvUroGu/Qon2OI/M3TVNyl91GckDt2Qc3Jmfzx4j9cGizptbPJmd
 9avqT1OeHSxnUw1ll+it/3j9/K0MQ7eGBsC4SDHND/YPUQKAmftd4T4mg4TE1BW/9h
 5F910XTXZ9/Ax+tO+Y+jaj9GMkZo0JaW81jUje+JrntmyqWXOBPRfjdOUVURJ3oSDe
 SljtZkXPv7N2ZWVSTBlyPdzbrAMK51cpYCEOR7lW2hNLLQOczvRuBt6q+iXE5478dy
 QHhZ6xQRLO0LA==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e1b7af70000>; Mon, 13 Jan 2020 09:00:55 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Jan 2020 09:00:54 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Mon, 13 Jan 2020 09:00:54 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "rjui@broadcom.com" <rjui@broadcom.com>,
 "rayagonda.kokatanur@broadcom.com" <rayagonda.kokatanur@broadcom.com>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "li.jin@broadcom.com"
 <li.jin@broadcom.com>
Subject: Re: [PATCH v1 1/1] pinctrl: iproc: Use platform_get_irq_optional() to
 avoid error message
Thread-Topic: [PATCH v1 1/1] pinctrl: iproc: Use platform_get_irq_optional()
 to avoid error message
Thread-Index: AQHVx2nXfGk87Uyk9UmbQT0PK/pn36fmnTwA
Date: Sun, 12 Jan 2020 20:00:54 +0000
Message-ID: <f9ea8a877194fb0a928ab4f41171a5a7ef3233f0.camel@alliedtelesis.co.nz>
References: <20200110035524.23511-1-rayagonda.kokatanur@broadcom.com>
In-Reply-To: <20200110035524.23511-1-rayagonda.kokatanur@broadcom.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:d1a1:ea74:6baa:5aa3]
Content-ID: <B700B6FD4109D04A82F8CC6910E30027@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_120104_354843_E74E191E 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-10 at 09:25 +0530, Rayagonda Kokatanur wrote:
> Use platform_get_irq_optional() instead of platform_get_irq() to avoid
> below error message during probe:
> 
> [ 0.589121] iproc-gpio 66424800.gpio: IRQ index 0 not found
> 
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

> ---
>  drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> index 831a9318c384..0d2bdb818d41 100644
> --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> @@ -843,7 +843,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
>  							"gpio-ranges");
>  
>  	/* optional GPIO interrupt support */
> -	irq = platform_get_irq(pdev, 0);
> +	irq = platform_get_irq_optional(pdev, 0);
>  	if (irq > 0) {
>  		struct irq_chip *irqc;
>  		struct gpio_irq_chip *girq;
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
