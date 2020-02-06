Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DB3154A40
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 18:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6l64g4eYZZPLYDMtsiozI0tvX5iisxfGoTdf5bNwmA8=; b=An7dgP2sCru5v7
	RDTI58spKQlo+uUYQfWyAm3XUQuij/EjOmDkBX/7qRujUkB/lbbLI4mP5mNdckLlFtIpH2smz6OaY
	HuGUqoPmTC58QzB9sQpYskvtUgpFTIbK20hwXfTtkN+FRLMaEfKuxNm8kxgd/sHNw78EoTTGibuJr
	c3ivO9XvB2zg4dY2ZDDulBA1jYrl9vbzrrhJiBwO80QFq09y+7TJOekP3APGZcjihCx0oRDJrnyed
	iDY9dX44NNFpCuJNfSyzkPh9RPm21dNqcXArKS05/fo3IRC0VVu8SzCTQArLUG/p8R1cOJ037SOgN
	+3fuQEDf/t1m1thInyuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izl1Z-00052T-Sb; Thu, 06 Feb 2020 17:33:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izl1S-000525-HI
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 17:33:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=16yVoO8YcvaXJGbA4lWuthbVZcFqy2u6ClQXENMo6T0=; b=1yF7zH8KgPrg8IMK0xuG2iAD2
 6ZG8kmyQRU3F63d1R9VcZ5rYP9W4Ju8TVnrpUkHCUDkdPovSeMxtQpyh7S2n/iQdsUgNM2JBtRQBB
 y441NhtFfLY4HfzC6sHM+04/fwSIny9xe5IEcbQnlRJ+o6p55wQX1Nbs2jYwkig4YGAMoadgY/XJQ
 xUABt+VWJNgHTQGKruqvzpxJYSzI8UDjA1Fu8NIFwBw4f6yPZkc1QEE5wxL95Oeh1kxyS92FpsGBI
 utwBaAiIzMx33QJApn8qpM9zZk8p/ZrSr26eSAPofUT0ViZqZf//tudjDH7tpZAbh3bdnO7Qc8DD7
 1bQzh0QYg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36796)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1izl1M-0000Sm-GD; Thu, 06 Feb 2020 17:32:56 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1izl1D-000326-Ea; Thu, 06 Feb 2020 17:32:47 +0000
Date: Thu, 6 Feb 2020 17:32:47 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
Message-ID: <20200206173247.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_093302_732948_F5A25311 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Linus,

It seems that sometime between 4.20 and 5.5, something has broken the
ability to specify gpio-hogs in DT for GPIOs that are written around
pinctrl drivers.

For example:

        gpio6: sx1503@20 {
                compatible = "semtech,sx1503q";
...
                phy_rst {
                        gpio-hog;
                        gpios = <9 GPIO_ACTIVE_HIGH>;
                        output-high;
                        line-name = "10g-rstn";
                };
        };

fails with:

gpio gpiochip7: (sx1503q): setup of own GPIO 10g-rstn failed
requesting hog GPIO 10g-rstn (chip sx1503q, offset 9) failed, -517
gpiochip_add_data_with_key: GPIOs 480..495 (sx1503q) failed to register, -517

It appears that the reason for this failure is that the hogs are
requested in gpiochip_add_data_with_key(), called from
devm_gpiochip_add_data(), but as the set_config method points to
gpiochip_generic_config, it wants to look up the pinctrl pin range
via pinctrl_get_device_gpio_range(). However, that has not been setup
yet, as the following call to gpiochip_add_pin_range() has not been
reached:

        ret = devm_gpiochip_add_data(dev, &pctl->gpio, pctl);
        if (ret)
                return ret;

        ret = gpiochip_add_pin_range(&pctl->gpio, dev_name(dev),
                                     0, 0, pctl->data->npins);

and so pinctrl_get_device_gpio_range() returns -EPROBE_DEFER.

Consequently, adding a gpio-hog to DT for this driver results in the
driver endlessly returning -EPROBE_DEFER.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
