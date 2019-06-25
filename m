Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6283355B50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdK6a/bzelfFTk+Oz0cBgqmljg1hxMihAWCUZbZaqRc=; b=E7LIJYsI7ax57J
	yoICNLa7QD1zSTQonMXZXg/JXWLyxJyYDtC1lRgtcUrdYWIG5m6ff85e1ay0GAFUheqOm3HMULrfq
	DH9HqmFSSeyp8cruNnPh15sOoepgFvWnE+V20fmEv9rZN5CpITcDrYmR6UCXphtjaSPzVShmF73vS
	KLh/dLxCo6K2x6qEQ/J8ZVdaZJc7GUOVtE8AbA1WoaOsDg6ERng7CmZvkJJ2hP50mV1s+SshX4eDp
	hyN3EXJEUc0NDwcVosgVocKZVVzpOJr0BJD12bTTfAdW6M6Xb+1uC6235XATfgVnmWRvM3d6pPFgZ
	VXCJCYC3+7Z3jUeN/zqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfu2E-0002WU-4l; Tue, 25 Jun 2019 22:35:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfu1h-0002U7-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:34:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FCBF205ED;
 Tue, 25 Jun 2019 22:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561502097;
 bh=/kwIgl7T7RUB6O8AVjTRLgNL7U9K6Zhd50WUYjJcszk=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=TJcRicsuQdvPQg9FeTYbsi/IhN1JdT58h299gkXyrGdyEDhz+ZXUCdRDp0ABWeF67
 mfNgTTWW7vB2AB93S1BledWN7Ici0mXVLEkXdh1PtPnaCLdWvIrJvmKCZN0+p9w5ew
 eHnOpg3F3NLVVen8lN7NjAb6z6kZ0nPHR1rtx0d4=
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916F7F7D7CA801F5C0D0610F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
 <20190604015928.23157-3-Anson.Huang@nxp.com>
 <20190606162543.EFFB820645@mail.kernel.org>
 <DB3PR0402MB391625A0B3D838CE88C53E33F5100@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190607180039.611C7208C0@mail.kernel.org>
 <DB3PR0402MB391678C245944942EA2A7F62F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190610151425.D8139207E0@mail.kernel.org>
 <DB3PR0402MB3916F7F7D7CA801F5C0D0610F5ED0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
To: "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "olof@lixom.net" <olof@lixom.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix
 .de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH V3 3/4] clk: imx: Add support for i.MX8MN clock driver
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 15:34:56 -0700
Message-Id: <20190625223457.1FCBF205ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_153457_723155_0F022957 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-06-10 19:06:22)
> > >
> > > Sorry, I am still a little confused, all the clock
> > > register(clk_register()) are via each different clock types like
> > > imx_clk_gate4/imx_clk_pll14xx, if using clk_hw_register, means we need
> > > to re-write the clock driver using different clk register method, that
> > > will make the driver completely different from i.mx8mq/i.mx8mm, they
> > > are actually same series of SoC as i.mx8mn, it will introduce many
> > confusion, is my understanding correct? And is it OK to just keep what it is
> > and make them all aligned?
> > >
> > 
> > Ok, the problem I'm trying to point out is that clk registrations need to be
> > undone, i.e. clk_unregister() needs to be called, when the driver fails to
> > probe. devm_*() is one way to do this, but if you have other ways of
> > removing all the registered clks then that works too. Makes sense?
> 
> Yes, it makes sense. Do you think it is OK to add an imx_unregister_clocks() API, then
> call it in every place of returning failure in .probe function? If yes, I will add it and also
> fix it in i.MX8MQ driver which uses platform driver model but does NOT handle this case. 
> 
>         base = devm_platform_ioremap_resource(pdev, 0);
> -       if (WARN_ON(IS_ERR(base)))
> -               return PTR_ERR(base);
> +       if (WARN_ON(IS_ERR(base))) {
> +               ret = PTR_ERR(base);
> +               goto unregister_clks;
> +       }
> 
>                 pr_err("failed to register clks for i.MX8MN\n");
> -               return -EINVAL;
> +               goto unregister_clks;
>         }
> 
>         return 0;
> +
> +unregister_clks:
> +       imx_unregister_clocks(clks, ARRAY_SIZE(clks));
> +
> +       return ret;
> 
> +void imx_unregister_clocks(struct clk *clks[], unsigned int count)
> +{
> +       unsigned i;
> +
> +       for (i = 0; i < count; i++)
> +               clk_unregister(clks[i]);
> +}
> +
> 

Yes, looks better.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
