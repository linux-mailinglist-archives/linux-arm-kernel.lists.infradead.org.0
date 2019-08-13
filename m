Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8666A8B75F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEfPtJ8i0QCz5w6hzHtr2dwQ9vjRV+urYNU+uYqFp7M=; b=h+hGJl1sNV8clZ
	4UDnGevTQnAl/SYdEwrsxS7Z7hLKDxzXCozKEJ9B8lMVRO6FPNpe8OYxaujRkiIi07o2WSPrSD4wW
	3SPWLonz0dOihxBMNQ99J72hVk3TdMizz4W0PYeXN9rqMbn+R0jU7+2RCIlFxSqK0mHPL0IFgbNSE
	SjVBTBtYyapp/9oVr1v5M993E+tff7J2dtrgUeEx8+t8GeVGT1FmX71offw41uj4qc2fTugYuRdDa
	SkE+SH1XMUUY7iPB5/qwgx7Kt4JswY3cdqy0YqZyiweVsopp+6zIFF7bydnZQ8dUzuWwzC4yxStDu
	UJKDg9HrBIGpToS7nyqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVB3-0005mi-Tg; Tue, 13 Aug 2019 11:41:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVAn-0002gk-Qm
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:41:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhLDQQN+hbiEAG1TpQP8a/y4fpxqsnBJK9G3iQ2C2s4=; b=hR9C8SdbOHH8WqJOQWEwqSr9I
 lwLZSuUVnKR8i72bzk8GJ87wf6D5jPsRm8eA88Skhp56CD9oCqXvvC7ed9eX0kBjNeOR52PaU749P
 oofDaSOufoispmGRH8UprhrwSFfOakR0EJWiCgwg9BgNEsGKIWUmv0CHxNqsPu2ixQ+wuA7aQDJCf
 AZ8EhtXC/8XV9OGEHWNz5tSohTsDaYmGbvTJIJPxr7cb7u7e8DWbvk8ciX5NR8wnxebry9pwuv7W3
 ruzfmL+qbDeCKTpXkC9O8p1A0oyTqaS9KvxNRNwcoD28dpo7fOdWlXIyca66wqUQLDqglMufmZmut
 pNT+hXJkg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44432)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hxV8a-0008Tv-Jc; Tue, 13 Aug 2019 12:38:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hxV8Y-0007T9-Pj; Tue, 13 Aug 2019 12:38:46 +0100
Date: Tue, 13 Aug 2019 12:38:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813113846.GG13294@shell.armlinux.org.uk>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_044105_862344_D5CB04B9 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> +Required Properties:
> +- compatible: Should be "sony,imx290"
> +- reg: I2C bus address of the device
> +- clocks: Reference to the xclk clock.
> +- clock-names: Should be "xclk".
> +- clock-frequency: Frequency of the xclk clock.

Driver code:

+       ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);+       if (ret) {
+               dev_err(dev, "Could not get xclk frequency\n");
+               return ret;
+       }
+
+       /* external clock must be 37.125 MHz */
+       if (xclk_freq != 37125000) {
+               dev_err(dev, "External clock frequency %u is not supported\n",
+                       xclk_freq);
+               return -EINVAL;
+       }

So, only 37125000 is supported - is that not worth mentioning in this
description?  Is this a hard requirement of the sensor?  If so, why
does it need to be mentioned in the DT binding?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
