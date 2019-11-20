Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D605C103F07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KKLmPNecZDNvbgwChCQ6nWj2MSLi/hrqXPBNIwKB1Go=; b=sbg1TuiPpAUjT3C3V4ERdV7oK
	zlLPq++D/WYbaxCWNZEbUc79q71D4AWAVNKHxfkcYFXaqgjBPwnN0C1UUKET7+wFpGBmnee3AMwKe
	3eUnOdFaPheBkv55fDfCcU5U0t5X9cY92EazCX1Zx7dOxbud+293XRbjdmhFZRhb1lyv0/gB0oYic
	N2cQu8AwrVwW4tSI5uYr2lGqnCDttqzVYuEtG5M8TuJ8wLn5tkmL7NfjoxLv4EsLhk7fVItL0PlZV
	6hFMg9KPHEK0oGjgFKhwwzuz9MTyxdFB+WyHw8XXysgZ3gRK6TqhvED2smYBGqbcmc6I0l5lrrk8U
	aaDcj++pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXS6Z-0000lg-SD; Wed, 20 Nov 2019 15:41:19 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXS6Q-0000k7-FB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:41:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id A14614E200E;
 Wed, 20 Nov 2019 15:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574264467; bh=c1bwvGZ3DtvSeRPrVEI/eLrZgFbhGdVgFlrw3H+Ljmg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=W8kQw5TiUDaohToYRNY47L6bmIwZ1V9gB2GsTL8ZcnBCvzYIuFzBsu+ZWC1RTl495
 tg8GMEM99IGqVzCmA4BeIqefw7g9e3VbBVJXEmkeJ/3TNBQcU7FPDLD6pd6c8ywVaH
 KwtpqvqJvQZgB3SVwvpxgvnc2Nl3VhGbNm6NOG3g=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzL7GrYHn4P7; Wed, 20 Nov 2019 15:41:06 +0000 (UTC)
Received: from www.akkea.ca (node.akkea.ca [192.155.83.177])
 by node.akkea.ca (Postfix) with ESMTPSA id 7E7C64E2003;
 Wed, 20 Nov 2019 15:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574264466; bh=c1bwvGZ3DtvSeRPrVEI/eLrZgFbhGdVgFlrw3H+Ljmg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=mwzIUaLoFOmzPRRwdy6cZm1S1cVC3dxyuglKyfH2imk2OPl2aFZgClNXZ2MoQsSd5
 5zvMyZw2rWcC0Beme8vIYyQW/vw+JDYhY4bDgw/OMjbULDuW7HH1JjI/W6X0x/Rryn
 S3ySlOmYGvbtcHZ+5OWyQotpdiB131AG7YWtTqDw=
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 07:41:06 -0800
From: Angus Ainslie <angus@akkea.ca>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
In-Reply-To: <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
 <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Message-ID: <008f2fa973b23fc716d678c5bd35af54@akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_074110_551347_D90AA014 
X-CRM114-Status: GOOD (  13.22  )
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
 Michael Turquette <mturquette@baylibre.com>, linux-pm-owner@vger.kernel.org,
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

Hi Leonard,

On 2019-11-20 07:04, Leonard Crestez wrote:
> On 20.11.2019 16:08, Angus Ainslie wrote:
>> Hi Leonard,
>> 
>> On 2019-11-14 12:09, Leonard Crestez wrote:
>>> Add initial support for dynamic frequency switching on pieces of the
>>> imx
>>> interconnect fabric.
>>> 
>>> All this driver does is set a clk rate based on an opp table, it does
>>> not map register areas.
>>> 
>> 
>> Is this working with mainline ATF or does it still need to be used 
>> with
>> your modified ATF code ?
> 
> This series doesn't perform SMC calls, that's done by the imx8m-ddrc
> driver: https://patchwork.kernel.org/cover/11244283/
> 
> This particular patch allows switching NOC frequency but that's just
> clk_set_rate.
> 
> DDRC frequency switching requires the imx branch of ATF (v2.0 + ~200
> patches) otherwise you will get probe failures. Source for imx atf is
> published here: https://source.codeaurora.org/external/imx/imx-atf/

Ok I was under the impression that the imx_2.0.y_busfreq branch below 
was based on this. Shouldn't those patches be added to the imx ATF ?

> 
> For your particular 8mq B0 case slightly different setpoints are used
> and the fix is not in any public release yet so you need this:
> 
> https://github.com/cdleonard/arm-trusted-firmware/commits/imx_2.0.y_busfreq
> 

We also have 2n14w ( is that B1 ? ) imx8mq's that we are working with.

> Is "mainline ATF" an important criteria for Purism?
> 

Yes we intend to bring all of our patches to mainline and were hoping 
that NXP would be doing the same. Shouldn't a mainline kernel run on a 
mainline ATF ?

Thanks
Angus

> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
