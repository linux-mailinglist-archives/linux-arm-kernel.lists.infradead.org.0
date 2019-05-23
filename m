Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D500728CB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z9cnjeazTCYyZNZMlRsrSrFYz7Sc9+c5ULLPjqibAjA=; b=b+nk3WWKJLzYHYNZraJU/xUKm
	cP1G3BQnk9pMAwFFwxoz1TkWu8lVMM2QXLeosP26niVuLPplTJcizKvh5acaqjKiE4Ro4ZiWPxIrT
	A2WX2Hlqgg8Tgmr9hvp1+fspKLFSllcJZ2zeAvI22ylxdXzWfOamHvKLwMnSEtngzihzJrEUsX91U
	NXFJ9pTvC1mDgzyHAyq8OeH3ru2zc9lExMSdeFUkOmTzTjlWggklOpGhFcO6ct0Wgi37OkNht+QBy
	4BslOi+iUYX7z3p56Q4pGRxnFjAEgEI5Jg39Pvor1BPTEcZOq++GbrlkGMDpAGqHwevYN9namX2cT
	5/hfsBlWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTve5-0006kt-Ty; Thu, 23 May 2019 21:53:05 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvdy-0006k5-Ma
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:52:59 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id EE1D44E204B; Thu, 23 May 2019 21:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558648376; bh=EEx6+r+EW8Gn9LAjThkYPyrhI3Zs+zGHNmTtqinmKv4=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=lydjv4HV77oK6COWSrTB1aH1fzxQCpWZn3f9c5YJdUPbwSs9j4jrs+wewljakLQ7n
 SuVyaPb07lQ5iHRWYIVaoMcXhR2PcSdEsn9Gj4eL9enTjgl4octPYeaEFmGc7eJJ+x
 uVBAjCgayvFpSuhgomr0JoIhmwvSb+a0fFBEHF90=
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v13 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Thu, 23 May 2019 14:52:56 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190523191922.GA3803@xo-6d-61-c0.localdomain>
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-3-angus@akkea.ca>
 <20190523191922.GA3803@xo-6d-61-c0.localdomain>
Message-ID: <9626cd324eaaab2b49c37cf3c824aa5e@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_145258_780367_797AB838 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel-owner@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,


On 2019-05-23 12:19, Pavel Machek wrote:
> Hi!
> 
>> This is for the development kit board for the Librem 5. The current 
>> level
>> of support yields a working console and is able to boot userspace from
>> the network or eMMC.
>> 
>> Additional subsystems that are active :
> 
>> - haptic motor
> 
> Haptic motor is not a LED. It should be controlled by input subsystem.
> 
>> +	pwmleds {
>> +		compatible = "pwm-leds";
>> +
>> +		haptic {
>> +			label = "librem5::haptic";
>> +			pwms = <&pwm2 0 200000>;
>> +			active-low;
>> +			max-brightness = <255>;
>> +			power-supply = <&reg_3v3_p>;
>> +		};
>> +	};
> 
> You can take a look at N900, that has reasonable interface.
> 

I wanted to control the haptic with the pwm-vibra driver but 
"fsl,imx27-pwm" doesn't seem to respect the PWM_POLARITY_INVERTED flag 
so when I start the system the vibrator is full on.

I could use gpio-vibrator but that seemed like a waste when the device 
is connected to pwm.

I figured the using the pwm-leds interface was a reasonable compromise 
until I had an opportunity to make changes the the imx27-pwm driver.

Thanks
Angus


> Thanks,
> 										Pavel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
