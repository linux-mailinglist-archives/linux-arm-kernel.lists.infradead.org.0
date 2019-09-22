Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B4EBA31D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 18:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JTDF1R+DcN3HHWlrBFch4HEPs3X3mlco8w0i3F6FhA=; b=CqFcMMEfmjJdrI
	Qkd5I0MGMnu9cF9MZXti//iSDdprGdx/JEe9MWvK6kt8SIVorl2tyc9u/wBhlrOnQBxmXAuw5m6kN
	H61l51fxTUeeiZyiNs4VeJEevR+mew9fjmCSqdDVvJZmJdt3blpVg8Rrvx1CBjbJPxItSe6GHiBNF
	Zr7evzYx+CM6IYb64svR/09Zo2AldnD/aqBlZi6oK5SgBW5eV5/06wkSfoa5IO2M6WYNUpA0Bv3PA
	y6PoAfyi1/yk5daPrt1qf3L51H88PDru7D/RBKMDCw5fwIu4aa5IiqrqakyylZZMjWjoujzpKfIhq
	68Wqe/60+7tL2lm2jKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC4X6-0003tW-AQ; Sun, 22 Sep 2019 16:16:20 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC4VU-00027j-UU
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 16:14:43 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 5181D8039C; Sun, 22 Sep 2019 18:14:25 +0200 (CEST)
Date: Sun, 22 Sep 2019 18:14:33 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Message-ID: <20190922161432.GE1999@bug>
References: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
 <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
 <20190916235330.GI237523@dtor-ws>
 <DB3PR0402MB3916859326C76BC9BC1F781CF58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916859326C76BC9BC1F781CF58F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_091442_417381_FC99D0B2 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> > > +	ret = imx_scu_call_rpc(priv->key_ipc_handle, &msg, true);
> > > +	if (ret) {
> > > +		dev_err(&input->dev, "read imx sc key failed, ret %d\n", ret);
> > > +		return;
> > > +	}
> > > +
> > > +	state = (bool)msg.state;
> > > +
> > > +	if (!state && !priv->keystate)
> > > +		state = true;
> > 
> > This needs an explanation please.
> 
> This is to handle the quick press of button, e.g., when button is pressed and released very quickly,
> when the delay work is scheduled, the button state read from SCU FW is actually a release state (0),
> the press state is (1), so the quick press/release will be ignored.
> 
> However, after double check and test, I think this should be handled by debounce time, if the button is pressed/release
> very quickly, the event should be ignored, I will remove it and reduce the debounce time to 30mS, previous 100mS
> is too long, using 30mS as debounce time, I did NOT see similar issue no matter how quick I press/release the button.

Are you sure this is expected behaviour?

AFAIK microswitches can bounce when the button is pressed and released, but will not generate
glitches when the button was not pressed, so even short presses are real and should be
propagated...

Best regards,
										Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
