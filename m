Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718421040F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:39:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p0jGQskHbXzeckJQQ5sKZ+vvK2nNs2ZTvU3Ns8S37ZU=; b=iM5S3RxVD6JnHIGUi7Cv/pwo/
	qfvVq/wChqpMdEYKzYuAK87S/ZY3nMVCQ9SH/MzMm27DjiPWtKo3D3eMjRO476mthbh+G0ihmISTB
	fwO7vEzm6jf/euaZaGPQeQR8W+s2xMV5mWbkVBmMmSFg80tDopSTLAxnCzN6illLP4sRAYW/wa4B8
	+p8Qt6Z6SLjIR1C9xGvRW4JSOh78aEawWtVA+0xRRXkACtZtVzqDmv+6tJ7MCMgiDoG+q48vxebcj
	0jilc27qXs3crtkYU4pJhjJr2UHcCUpjevhDxkU6ibmMEn9tHrsmxuAiJWziprRv1w7yfRE5PycqV
	ETT0ePhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT0P-0008NU-Nb; Wed, 20 Nov 2019 16:39:01 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT0E-0008Mz-1H
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:38:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 03FA34E2006;
 Wed, 20 Nov 2019 16:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574267929; bh=yczOZvIA0pLja/5G0e638pMmagqLwd3PNzd2MZu2vOU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=lj/jZgQOfWzo9rVMjutg1sXICkp8Vk+49zefmARb4JwXgRKj9s5c6+gchibOiHVPG
 hDUmJj7Dr0KagVFA3OWk5o6jj3NEqqumnSzXnkGzPwjYpudUCZOvf7BlwDkwX7X7ld
 GHbVRZYi+SPyduIMwtZG8YVI/XdIdE3vVLZHtwMI=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iv-fRhyZHsij; Wed, 20 Nov 2019 16:38:48 +0000 (UTC)
Received: from www.akkea.ca (node.akkea.ca [192.155.83.177])
 by node.akkea.ca (Postfix) with ESMTPSA id E6FDA4E2003;
 Wed, 20 Nov 2019 16:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574267928; bh=yczOZvIA0pLja/5G0e638pMmagqLwd3PNzd2MZu2vOU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=tqbElT9ZO2tAyJD7l5bEkeiJteKz2XWL4JyNFyLBz88DyiD0eVQXerb8ql0O48ffK
 xgojrMoXhpEhRz/OHGmIuaytixs1dmK3j24oeZC3DJ+klFXGUfbAicDEHn49eVfL4O
 21kp12ypXZVGw+Aso2Y3V/SWfFPZb5lTz41hGhcs=
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 08:38:47 -0800
From: Angus Ainslie <angus@akkea.ca>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
In-Reply-To: <VI1PR04MB7023E7C380EFA956629EEB67EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
 <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <008f2fa973b23fc716d678c5bd35af54@akkea.ca>
 <VI1PR04MB7023E7C380EFA956629EEB67EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Message-ID: <d1ca09bdeb7580c9b62b491c6eb30148@akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_083850_125325_4BFD09F3 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Artur_=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-pm-owner@vger.kernel.org,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Aisheng Dong <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-20 08:30, Leonard Crestez wrote:
> On 20.11.2019 17:41, Angus Ainslie wrote:
>> Hi Leonard,
>> 
>> On 2019-11-20 07:04, Leonard Crestez wrote:
>>> On 20.11.2019 16:08, Angus Ainslie wrote:
>>> Is "mainline ATF" an important criteria for Purism?
>> 
>> Yes we intend to bring all of our patches to mainline and were hoping
>> that NXP would be doing the same. Shouldn't a mainline kernel run on a
>> mainline ATF ?
> 
> You can still use mainline ATF (tested right now) but the imx8m-ddrc
> driver won't probe.
> 

Sorry I was talking about the DDR frequency scaling specifically.

> The ability to mix and match different branches of firmware and kernel
> is very useful for testing. There might be slight incompatibilities but
> in theory if a feature depends on both firmware and kernel support then
> it should gracefully degrade rather than crash or hang.

I saw the check you put in for the correct ATF version and that's very 
helpful thanks.

> 
> ATF support for this feature will be mainlined eventually, I picked the
> linux side first because review is more challenging and changes are 
> much
> larger relative to what we have in our internal tree.
> 

Do you have a patch against mainline ATF that we can test this feature 
with ?

Thanks
Angus

> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
