Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD445617B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 23:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2TCKKUZbOedZjQ49N5wJkzi8bSwfHlwdL+hvS5RSbc=; b=sikRiwg7rpifBL
	qbbT2AVsHlFFrMeAsHti+2pbnKtjNExOUt5bNYyMw8sSvzoIfH9jaEps3EeND5JU8C0hERbFUw/4b
	8Ay+b9i1eA1EsmUyTqrlrd6Jn0qOasxeva1nneuh3ZvMDx8H4l2Qf2jBg+gbXHOULO/lXFkTeWBkE
	lOuJvz4LwuDL8rrAu5U+EDBfGlg8ADoEEOUEyaFJT3ttkDKL/e2UY1Kjbqaz4WR81obh2/+PPEQM9
	fC+GDioOIlJV1H2gm97tb79rKrMXCA9Bxj/qaHFm+59FFsd0+MePxCGjj1lBCdrahjWoP+jQ7FfDf
	ksFYGrKbXIvBAWDxUIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkEXA-0001S7-Dt; Sun, 07 Jul 2019 21:17:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkEWx-0001Po-Nu
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 21:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J1AsJEIufpRhGORIP8/m8+bEjdZ1gb5yfcoigm6hbkQ=; b=c9bcNRfbPcuvxoMrJD5NZb15o
 Vl8FRGO9zA7UdhR5PH9mrBtalgNJpPkb5rd8TPgR1fLGNTp1GjPvBXnNvM88WzK04r0I+kXG4dvgu
 WiulszIyn5fb39830jvnfM7xCPwD14/j9Qz3cpA+rf7o8l8szjss6m93m8Uy86ZQFd6JBjkD2XBE6
 4SpHfaZfYvKPR0+A8hbQLffiCvc31G5BCC9zgf0J7uTp5b/K7mJhhv6upaMkBVwmMEOufa6nfXWGz
 BH5Ozrd07WoeU6Y0T1pj2neuyf23naUQAKwZBFjgpltCYDqp/paa21k8hSNtNO0x79Fia+LAszfsc
 z6cnMUpaA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59266)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hkEWb-0007lG-I8; Sun, 07 Jul 2019 22:16:45 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hkEWU-0001Oh-Nd; Sun, 07 Jul 2019 22:16:38 +0100
Date: Sun, 7 Jul 2019 22:16:38 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] rtc: stm32: One function call less in
 stm32_rtc_set_alarm()
Message-ID: <20190707211638.sehikkear25dffah@shell.armlinux.org.uk>
References: <f04277da-8a98-473e-2566-ac7846f9f8e1@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f04277da-8a98-473e-2566-ac7846f9f8e1@web.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_141707_941898_63356131 
X-CRM114-Status: GOOD (  11.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 10:17:11PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Fri, 5 Jul 2019 22:10:10 +0200
> 
> Avoid an extra function call by using a ternary operator instead of
> a conditional statement.

... and a totally pointless use of the ternary operator.

> @@ -519,11 +519,7 @@ static int stm32_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
>  	/* Write to Alarm register */
>  	writel_relaxed(alrmar, rtc->base + regs->alrmar);
> 
> -	if (alrm->enabled)
> -		stm32_rtc_alarm_irq_enable(dev, 1);
> -	else
> -		stm32_rtc_alarm_irq_enable(dev, 0);
> -
> +	stm32_rtc_alarm_irq_enable(dev, alrm->enabled ? 1 : 0);

If we look at stm32_rtc_alarm_irq_enable():

static int stm32_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
...
	if (enabled)
		do A;
	else
		do B;
...
}

alrm->enabled is an unsigned char.  So, the above can be simplified to:

	stm32_rtc_alarm_irq_enable(dev, alrm->enabled);

without any need what so ever to use the ternary operator.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
