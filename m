Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3531BA5845
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDqS4PPIKCio08hHJxVPhmW/zgTNoWwT2EvEiFLkRFI=; b=qbIeOOewEO+Bzw
	d8lJpgJPZ2SvRLNEizBgE9wiXIGfUjmJQ6yZ5TRvGAZL2nvPgo43WnSwB0hBsJbV+4ePeRoRmuvNV
	T2zOzN0akJSVJsI7+9MtIFWUm76E7xJ9XKAWJXCloRaIZwgVk5gwxYzyOSkEuXiOiYk6Mv9cZxDu8
	Gs5Kb+eXQuGUUHhzqXhl5J1h0Hpc8yNZXPClBEBfk5NCN7WmJde/nWJAGOw0Vy5rOQMfyN8d2GtEA
	yZpWqP2jZTK4GXBHCC4XZ2tOcGc8lIq6/Ix/0iJW6AcTCL6GYzp0N1luf5VdKSCeFXouLz1GM/C9E
	qWDM5s1sEARNz9oOneuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mbl-0006dn-Mp; Mon, 02 Sep 2019 13:43:01 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY9-0001gE-7W
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:18 +0000
Received: by mail-wm1-f67.google.com with SMTP id r17so11991499wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M0OACsjJM/vFX4zZJBUZMzKJ/8JnqkMV5QQXF6yqIpw=;
 b=fnxSPpVy1fuT3qtO4MA1NVEekJsRKSXqY7VCPRthG5NslalXp/0bkqo/wct/OF8WoQ
 udl4vajpZ+508KSutIkY9qOsMsyW0Xc1oLNpx0xw+41MkG6sXMC+JbZaGTnjTy8wTBON
 ojEO9Zwxi3JBiq2xSVE2PWejHwLmpqf9N7uNz3CvNTosrC7HUW5AwqwbD0O0N8y+P0nP
 cUMIk1feyZ8xZzBBTt7rp7txImDV4AvF5yvNn8YHTm5Z4lAU9TqePVVtdjzlHSxUfdeN
 gU+A9z0YWIZKL0nx865Ulf1EjqQKTdCcgH5osJhpuhpBMkFc3YkAvz21bro6ioEpstxy
 FjWA==
X-Gm-Message-State: APjAAAVgI8jS1x1LkW7Ozt2rkeXZ94AHNI9I+Ap7K4O+iamyqXU9XZno
 5Rw7MLSR/fTBcuu5XWzezA==
X-Google-Smtp-Source: APXvYqypcMzdNic7ziNevmFZ8BaxYjbIqLahyGSd0YIMXh2YBwVcb/OvssGZQd+0DzdiFqCWRfYvcQ==
X-Received: by 2002:a1c:3d03:: with SMTP id k3mr37181683wma.138.1567431555922; 
 Mon, 02 Sep 2019 06:39:15 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id s19sm28771567wrb.94.2019.09.02.06.39.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:15 -0700 (PDT)
Date: Mon, 02 Sep 2019 14:39:14 +0100
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] dt-bindings: fsl: scu: add scu power key binding
Message-ID: <20190902043521.GA14143@bogus>
References: <1567198429-27886-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567198429-27886-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063917_308880_BEFC0C98 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, ping.bai@nxp.com,
 catalin.marinas@arm.com, peng.fan@nxp.com, stefan@agner.ch,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, will@kernel.org,
 dinguyen@kernel.org, festevam@gmail.com, marcin.juszkiewicz@linaro.org,
 jagan@amarulasolutions.com, linux-input@vger.kernel.org, ronald@innovation.ch,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, arnd@arndb.de,
 s.hauer@pengutronix.de, mripard@kernel.org, m.felsch@pengutronix.de,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, hsweeten@visionengravers.com,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 04:53:45PM -0400, Anson Huang wrote:
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller, the system controller is in charge of system
> power, clock and power key event etc. management, Linux kernel
> has to communicate with system controller via MU (message unit)
> IPC to get power key event, add binding doc for i.MX system
> controller power key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt      | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index c149fad..001d0b7 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -157,6 +157,17 @@ Required properties:
>  Optional properties:
>  - timeout-sec: contains the watchdog timeout in seconds.
>  
> +Power key bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +
> +Required properties:
> +- compatible: should be:
> +              "fsl,imx8qxp-sc-pwrkey"
> +              followed by "fsl,imx-sc-pwrkey";
> +- linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt
> +Optional Properties:
> +- wakeup-source: See Documentation/devicetree/bindings/power/wakeup-source.txt
> +
>  Example (imx8qxp):
>  -------------
>  aliases {
> @@ -220,6 +231,13 @@ firmware {
>  			compatible = "fsl,imx8qxp-sc-rtc";
>  		};
>  
> +		scu_pwrkey: scu-pwrkey {
> +			compatible = "fsl,imx8qxp-sc-pwrkey", "fsl,imx-sc-pwrkey";
> +			linux,keycode = <KEY_POWER>;
> +			wakeup-source;

wakeup-source implies an interrupt property.

> +			status = "disabled";

Don't should status in examples.

> +		};
> +
>  		watchdog {
>  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
>  			timeout-sec = <60>;
> -- 
> 2.7.4
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
