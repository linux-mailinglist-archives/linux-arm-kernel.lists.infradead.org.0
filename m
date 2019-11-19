Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D30102164
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:58:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7g7LV/wfe9ijD5ZvqWrT7niQjTo9p36Uhlg553Yrpo=; b=OOxotmtJbXUjp3
	eCx99ftgcQDo7Z3LHFSgLTIXf9XPlmDUeVGD2vyNSacMUDedXgXddBuwTZEBdPL7lkqunNtqFL+BI
	PoP7ZFzo4Lw9uFu3VET2UFbmhkttgut/qt8mgS1xUrED+TnR8hzdW1WGkSVtWlrTGcXzGV5xfMSY8
	+6VEH83t2LcJNSqaPudvnCRa2aekOhxWXgVAVaFz3h7dVd7ggQEeUcOw1SXDrLRnkO2i3OjjInvEq
	AAPMIoRooDra78+nsyQglfC5P10COYjGt8tc40OfURzMQSCQjcPZ0c7op4jUR2lAwWeOpO2uqB1y7
	+ufvw3fzUaEUjPVm34og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0H0-0003fF-98; Tue, 19 Nov 2019 09:58:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0Gn-0003eb-Gd
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 09:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZElBFP+ZpH77PfQXR56bEvjt6aoOvjVgweRa6xnEqM=; b=JTI0qAU20VpGo/fITm907fTqS
 TZ52bT2HAr949tARrT+hadXSfUWbZAb+Tu46W7mFWDVijXLEZ6+POf6rXOnay9iUPwhxx6DDANLdc
 On7PMrFnFnkjABHsiv8M8HENcH4iSGyS42/i+/epbkuPDJoeCK/8hpwPK4tCKM1S2B1LRY2vBkt0K
 AIRVsSplF3l0W/B7eEWA9/Vos00yB4ASzAV74ki6deetynL6YobtEpOd1NFAtWrWeOkOLhW8R3O1O
 D2pAN7n9hF64PgKK/KTwcilclE9BKJI1DV7cXhpFJWUwWVpbR2wdE9FEo19asR5FkZIoV64fA8//A
 htRzD9IJw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37516)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iX0Ge-0000UC-Bm; Tue, 19 Nov 2019 09:57:52 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iX0Ga-0000ch-Hs; Tue, 19 Nov 2019 09:57:48 +0000
Date: Tue, 19 Nov 2019 09:57:48 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: Using a GPIO as an interrupt line
Message-ID: <20191119095748.GX25745@shell.armlinux.org.uk>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_015801_745549_06DAF93B 
X-CRM114-Status: GOOD (  12.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, GPIO <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
> Hello,
> 
> The board I'm working on provides a TCA9539 I/O expander.
> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
> and Configuration Registers"
> 
> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
> 
> The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt
> 
> I have some doubts about the interrupt output, described as:
> 
> Optional properties:
>  - interrupts: interrupt specifier for the device's interrupt output.
> 
> In my board's DT, the I/O expander is described as:
> 
> 	exp1: gpio@74 {
> 		compatible = "ti,tca9539";
> 		reg = <0x74>;
> 		gpio-controller;
> 		#gpio-cells = <2>;
> 		reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
> 		pinctrl-names = "default";
> 		pinctrl-0 = <&top_exp_rst>;
> 		interrupt-parent = <&tlmm>;
> 		interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;

This specifies an interrupt signal, number 42, on the tlmm interrupt
controller. It isn't a GPIO specification. Not every interrupt is a
GPIO, and some SoCs can have dedicated interrupt pins that are
exactly that.

Hence, needlessly limiting an external device to requiring a GPIO for
its interrupt is detrimental.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
