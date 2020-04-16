Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194481ACBD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YzUO9w2eKOMVIgdDiLesEuW7msLJO9J0d0M3+/955Gk=; b=oeuWmanAe+OoExtsw+Fizw3OV
	WZ79VFRAJ1jn3Jmy31X9GKYmIXZ6/rxyxsDSwSfYdNZZjKczoUTkvQGdqYm0z4XMdm8jHPygdGpct
	7Cudh5zwb5ENuRqkVYSLWhWw8FRg1YeOLouO3DWp1+nDIyLoRlo84xDx/ftepqsStb2zqZFEOd0bU
	NN1Oe3AY5EdEYtLN3IQxeq5ipT4GngCMfEhhXX/5P8oGRtGd6wfehvk/Gqb6QmoEYoSCtdKAbypEk
	BP03q6IxeUQn5YPS8oXsAzdKMlZmAxl+I0dJkyQFY7Hpksdcsp9WbU2aeX5T5X9MXQxKjVIs36pMa
	ST/kvhtjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6rt-0006ey-Ha; Thu, 16 Apr 2020 15:55:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6rl-0006eF-Nr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:55:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D78930E;
 Thu, 16 Apr 2020 08:55:48 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 19F1B3F237;
 Thu, 16 Apr 2020 08:55:45 -0700 (PDT)
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
 <20200416145517.GK25745@shell.armlinux.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <010ccb32-42f1-cc32-0527-e608fc91a879@arm.com>
Date: Thu, 16 Apr 2020 16:55:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416145517.GK25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_085549_820663_EF2171F8 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-pwm@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-16 3:55 pm, Russell King - ARM Linux admin wrote:
> On Thu, Apr 16, 2020 at 03:37:40PM +0100, Robin Murphy wrote:
>> On 2020-04-16 2:50 pm, Andrew Lunn wrote:
>> [...]
>>> Clocking with Marvell devices has always been interesting. Core IP
>>> like this gets reused between different generations of SoCs. The
>>> original Orion5x had no clock control at all. Latter SoCs have had
>>> more and more complex clock trees. So care has to be taken to not
>>> change old behaviour when adding support for new clocks.
>>
>> FWIW, that sounds like a good argument for encoding the clock requirements
>> of each variant in the of_match_data, so the driver doesn't have to simply
>> trust the DT and hope.
> 
> Please read my patches.  This is exactly what I'm doing.  I'm preserving
> as closely as possible the current driver behaviour while adding support
> for the Armada 8040 PWM while keeping compatibility with older DT.
> 
> And I'm doing that by keying off the match data, exactly as you're
> suggesting above.

AFAICS you're encoding the *PWM capability* in the match data and using 
that to extend the existing behaviour, which comprises using soc_variant 
to maybe treat the stashed error code as fatal somewhere else much later 
if CONFIG_PWM happens to be enabled, and is subtle enough that at least 
two reviewers overlooked or failed to make sense of it.

Compare and contrast with how self-contained and obvious this is:

-	mvchip->clk = devm_clk_get(&pdev->dev, NULL);
-	/* Not all SoCs require a clock.*/
-	if (!IS_ERR(mvchip->clk))
-		clk_prepare_enable(mvchip->clk);

+	/* Not all SoCs require a clock.*/
+	if (data->needs_clock)
+		mvchip->clk = devm_clk_get(&pdev->dev, NULL);
+		if (IS_ERR(mvchip->clk))
+			return PTR_ERR(mvchip_clk);
+		clk_prepare_enable(mvchip->clk);
+	}

If achieving the same end result by very different and roundabout means 
constitutes "exactly the same thing", does me having written this email 
mean that my house is exactly the same as the Arm office and someone 
else will be along to clean the kitchen shortly? Here's hoping... :D

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
