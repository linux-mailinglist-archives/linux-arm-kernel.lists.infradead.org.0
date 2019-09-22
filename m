Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD0FBA31A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 18:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+VkvOaZ2VvvzqoVsj38i1V4ojVny3WeFsCxIwRKzq0=; b=aHy29l92fcN9St
	Hz1wSMRkzBoLWwTbzXc8kBaW/fFFpN1yiabsDOM+jmTfKjb6WvR9zMGlN+qDtXxfiF3ErGv48MRck
	Xy8uO4K3430H8ID/Hpc9hVZo6MxdVcUaA/qGgLlpG27Fq4pg5bSP82HUzulj4Cxc8+iVxtqjAXDyF
	B4D5w2BG3XkXGu3vk3+RenZjdK5P+hyNhUL0zm3fvCJDqdhN38CmG9KqF5elxo2NcN/kHoO1hMfhX
	jasCaeJZeWTO2K7+WuBJvNT9mxvCoE2aPHuZA3dzwb7u+SMhkoPQGCSzP8XnsP8l0vMceA8YQSf4W
	+Pk09Y/uTGFG9RSV5opg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC4VX-0001vp-At; Sun, 22 Sep 2019 16:14:43 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC4Uu-0001uP-CI
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 16:14:06 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 98F198031F; Sun, 22 Sep 2019 18:13:39 +0200 (CEST)
Date: Sun, 22 Sep 2019 18:13:47 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Message-ID: <20190922161347.GB1999@bug>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_091404_571179_6304BB3C 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 festevam@gmail.com, yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 jagan@amarulasolutions.com, linux-input@vger.kernel.org, ronald@innovation.ch,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, arnd@arndb.de,
 s.hauer@pengutronix.de, mripard@kernel.org, m.felsch@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller, the system controller is in charge of system
> power, clock and power key event etc. management, Linux kernel
> has to communicate with system controller via MU (message unit)
> IPC to get power key event, add binding doc for i.MX system
> controller power key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -157,6 +157,15 @@ Required properties:
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

Actually there's no reason for having "linux,keycodes" property when it is always
a power button.

Best regards,
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
