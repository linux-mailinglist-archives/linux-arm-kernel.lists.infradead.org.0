Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B7119F263
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRzIt9Y1slIeps4T4syOZL2LYH72wWpmAiQPdhix2FQ=; b=YnT3lJZXbN9mug
	wiCo9DSyFjxc0PMJaw/So4TVlLbmbsAtIIPyNDaCeS88iC0upzCdXmHLffzrqHczb3TvFYPkOlbsC
	bc4T+SBw+2kykT3AdyNwtp79alWrtL7wrGVKvLIxsTVcPbF/LvLNt8hr3hMWof/s5xo6i48GXxEmR
	JQ1d6FSYOpQO0xhRwIxsiSgAoRLCuR0/iQehjtH9iV1xebSnDwXGsSPDxVfFG1AH8kY1EALuEZZJM
	Viy7kt/S15bu7Tw2MjxLH6D0riExlwVW5IPzGnbN7WGMAYE7VEnuBJBjrTy1xp+fw2F2zx544d8OS
	oTM5fuqhAIR27ISGES8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNxP-0005gS-M0; Mon, 06 Apr 2020 09:22:15 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNxF-0005eR-FL; Mon, 06 Apr 2020 09:22:06 +0000
X-AuditID: c0a8fbf4-489ff70000004419-ce-5e8af4b822d0
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 0A.0D.17433.8B4FA8E5; Mon,  6 Apr 2020 11:22:01 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0487.000; Mon, 6 Apr 2020 11:21:49 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "sebastian.reichel@collabora.com" <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v8 05/10] power: supply: bd70528: rename linear_range to
 avoid collision
Thread-Topic: [PATCH v8 05/10] power: supply: bd70528: rename linear_range
 to avoid collision
Thread-Index: AQHWCZRhRl8G/gTlrkKi+UdcJY9RU6hpwTIAgAHzw4A=
Date: Mon, 6 Apr 2020 09:21:48 +0000
Message-ID: <cff0cda33a8ab5c2633b05dec7dbe3d548af0fa9.camel@fi.rohmeurope.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <7a6727838bcc93f443c993d91d21d9306dee22be.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <20200405033316.bhafrtorxzwev24z@earth.universe>
In-Reply-To: <20200405033316.bhafrtorxzwev24z@earth.universe>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <338742FC545A6B4AB29D6F20A7FC04D0@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxTVxjHc+47lLJrRTh044ONySJOmZnZnhi3uSWLdyZzLu7DYjbYBa6U
 DAppi8pIJkProAaHDiIUyggDrawRaJcMGK6O1OBwo1bet5KMlyy8bECw4JS33UtV+HT+5/yf
 //N7PjyHIzUzrJZLN5glo0HM0DHh1C3HUvPu1qA18WVHP4L62XoSuseWKLD9Vk/BxflaEooL
 rhDgrVogobm8kYb5/F4SgvYuCu56ZijwD35DQtnIOAO9FheCb73dNJz9rpGBKkcurI1O01BR
 eAZ+mm4gwOdrYmGxt5CA0uVrBLjG+mm45PmdhZ62KgZ6zvoRVNZ9TcGDYi+Cct/PBEx6/5Nn
 GvATUHDuFaiqvyObsx4a7MEyEv4NXJHx5T4SLDe9LPgdQQKGp4/ATYufBLdLrvD0HobWwB0S
 HnX4iIO7BWe1EwmLC5cpYXbQwgrVzjyhZbgOCU2j39OCYz5B+CNwRmi1DbNCjStHcDvihfOP
 TgoTThcruBqKGCHQ384IM93d7NHY46oDyaL55LH0NEPCG5+q9O66V7PLI04H24NEPppTWVEY
 h/l9eKjuBmFF4ZyG70d45ep9FLp0Ilw4Uc1YEccx/AFsHWIVGcUfwhWlglJC8tYo3DLeRyiN
 tvKJ2P/PHKPoKD4J9y3+Qob0fuwacrOKpvgd+Nzji7Si1fwR/Phe6xPwAMKVy33rRhj/Ou5p
 WllvhPg4XJQ/sw4g+Rjs+vshHZqax3XtPjKkt+HJsdUn79vxjw9vUMqgJL8TN7YlhKIH8XhX
 IR3S23HphRE2NMMW/GvFOFWCom2bCLaNtG1T2rYpbduUrkF0A8KZYnpGmmiW9u4xSjl7jFn6
 TPlIycp0odD+BlvQWse7HYjgUAeK5QjdNnXZhDVRE5mclZqrF036JGNOhmTqQJgjdVFqbXFR
 okadKuZ+LhmznlrPc5QuRv3iyKVPNLzC+kySsiXjU/cFjtNhdfy83HSLUUqTTp9IzzBv2AQX
 pjQP10aZJEOqZBRzzPokZT2STPJ+KFaEzK2ZkeNqU7aYKb+Gol1oF1cyaa8lOa+9vpbUUIYs
 g6SNUS88kEt5pVSfY3gGmkIxHNJtVX+puBHyJ37WZ0pGEDKCMXylIMzihqXNR0eJQMHO27Gd
 U0O3Pequ93orB1adk553Po6J+2J6cfnER42X37pnf63z7UM+C3Hq2L62476rFDH/YYr+gx+i
 n3OvHd7hW3Fb80ucqpQLsZH2/bfim9uduXE1FUvRc94/zyenDSa+NPr+X3Tk3SCrsTS8KTWf
 slzPU90v2pXHrTLaMJWOMunFvfGk0ST+DxZr4U2BBAAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_022205_660625_FB44EA7B 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "andrei.stefanescu@microchip.com" <andrei.stefanescu@microchip.com>,
 "heiko@sntech.de" <heiko@sntech.de>, "rafael@kernel.org" <rafael@kernel.org>,
 "tony@atomide.com" <tony@atomide.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "brendanhiggins@google.com" <brendanhiggins@google.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "kholk11@gmail.com" <kholk11@gmail.com>,
 "hsin-hsiung.wang@mediatek.com" <hsin-hsiung.wang@mediatek.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "axel.lin@ingics.com" <axel.lin@ingics.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "m.reichl@fivetechno.de" <m.reichl@fivetechno.de>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "andreas@kemnade.info" <andreas@kemnade.info>,
 "agross@kernel.org" <agross@kernel.org>, "Laine,
 Markus" <Markus.Laine@fi.rohmeurope.com>,
 "Adam.Thomson.Opensource@diasemi.com" <Adam.Thomson.Opensource@diasemi.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mutanen,
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sebastian,

Thanks for all the reviews :)

On Sun, 2020-04-05 at 05:33 +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Apr 03, 2020 at 11:46:30AM +0300, Matti Vaittinen wrote:
> > Follow-up patches in this series will add a generic struct
> > linear_range. Rename bd70528 internal struct to avoid collision.
> > 
> > Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> > ---
> 
> Actually the patch is before this one. But since the include is not
> yet used in the bd70528 charger driver, it should be ok to do it in
> this order.

You are correct. Just a thing to note (you suggested rebasing the
regulator stuff and linear ranges to be first patches in the series):
This patch still needs to be applied before
[PATCH v8 06/10] regulator: use linear_ranges helper

because the regulator header definitions get included via MFD headers:

linux/mfd/rohm-bd70528.h => linux/mfd/rohm-generic.h =>
linux/regulator/driver.h

And linux/regulator/driver.h will be including the linear_range
definitions when "regulator: use linear_ranges helper" gets included.

Br,
	Matti Vaittinen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
