Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBA5A6180
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JXpuY3Z7SOTvo1/nQ/uKCI9cPC7Q+yyse+kE/Stzh8c=; b=Lj12CXvsUvhAvNTUDRCT+e2Gd
	oR/vF/aCUeGm3wCM91A/+c7vxEfR56ql1YQ1j4IQKzzx+zxdbIMRO5VI2NFvEBIfkO6SniGz+XLOC
	o/uSFBS4kJZqdcBITNCwlKsYSaalAY19SkUHimVjhE+BON0sX9i5MSM9cD7ZZZt8ZGDn5fqqr64Vy
	kVgaiuqtzWi0J5BmIA5Kw+6y1OwN2TU31SPWUJ3g0xqiv/6O4zS0ZH+4y9EBb67g+lC9xl7rsiOko
	R0OixqWBiscI2uphob/5V/0Z4nvXFBzPAFLze6xv7JjTO0aqVqTd0slZEHikkFN4z9sw45Tik+8Ba
	6Mw7N5Lrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52Mo-0006Xu-C6; Tue, 03 Sep 2019 06:32:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52MU-0006Vw-AU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:32:19 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1i52MR-0002QC-PT; Tue, 03 Sep 2019 08:32:15 +0200
Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, dmitry.torokhov@gmail.com, aisheng.dong@nxp.com,
 ulf.hansson@linaro.org, fugang.duan@nxp.com, peng.fan@nxp.com,
 daniel.baluta@nxp.com, leonard.crestez@nxp.com, mripard@kernel.org,
 olof@lixom.net, arnd@arndb.de, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, stefan@agner.ch, gregkh@linuxfoundation.org,
 andriy.shevchenko@linux.intel.com, yuehaibing@huawei.com,
 tglx@linutronix.de, ronald@innovation.ch, m.felsch@pengutronix.de,
 ping.bai@nxp.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <21d2e400-976a-35c3-6875-4cc0c476fdf2@pengutronix.de>
Date: Tue, 3 Sep 2019 08:32:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233218_358436_9DE393DC 
X-CRM114-Status: GOOD (  18.06  )
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.09.19 16:03, Anson Huang wrote:
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller, the system controller is in charge of system
> power, clock and power key event etc. management, Linux kernel
> has to communicate with system controller via MU (message unit)
> IPC to get power key event, add binding doc for i.MX system
> controller power key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- remove "wakeup-source" property, as it is NOT needed for SCU interrupt;
> 	- remove "status" in example.
> ---
>   .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index c149fad..f93e2e4 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -157,6 +157,15 @@ Required properties:
>   Optional properties:
>   - timeout-sec: contains the watchdog timeout in seconds.
>   
> +Power key bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +
> +Required properties:
> +- compatible: should be:
> +              "fsl,imx8qxp-sc-pwrkey"
> +              followed by "fsl,imx-sc-pwrkey";
> +- linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt

linux,keycodes is required parameter. So, this kay cab be anything. Why the compatible is 
called pwrkey? Probably it is better to call it "*-sc-key"

> +
>   Example (imx8qxp):
>   -------------
>   aliases {
> @@ -220,6 +229,11 @@ firmware {
>   			compatible = "fsl,imx8qxp-sc-rtc";
>   		};
>   
> +		scu_pwrkey: scu-pwrkey {
> +			compatible = "fsl,imx8qxp-sc-pwrkey", "fsl,imx-sc-pwrkey";
> +			linux,keycode = <KEY_POWER>;
> +		};
> +
>   		watchdog {
>   			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
>   			timeout-sec = <60>;
> 

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
