Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC55C77B11
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 20:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXFBgr5aFC+XdWAzRoB0xv1qScaaOTFmpo1fNFMT3ks=; b=necF5k241dziGx
	cbLG/7v7Nl5C3a7RYKlNMX2Cgj5Zcg+82Rx1SKw63n/7NV57aDOiLY8jjFSmpyrMKp0TGJkcEvcHy
	KnlR0/As+VCxEK4O3p59k8mRALB51c3l/I5pogLiq5DCKMi0jBCTQ/E2pvLgtm6aKf9OoF1q1Bdtp
	W6lQXHO7KFI8oriFrxSs+ewzqFiPBNCdE9zvpqUwUVbHAqtyBY2VEEMH8OvwF1wexLmPgD7zfEfLL
	B+mV9+Sw6B8ZeZhC6+suQ1dM5bturxoDDFTJDGh/W1jY/4WclQPqFgKbcjKyuRfQk6pimvd89T3+J
	nbJRdBoWCRriIeWwB2eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRPZ-0007Bp-9u; Sat, 27 Jul 2019 18:27:17 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRP1-00079a-UJ
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 18:26:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 442EEFB03;
 Sat, 27 Jul 2019 20:26:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRGa6_JKtNHm; Sat, 27 Jul 2019 20:26:37 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id DDD4B46B22; Sat, 27 Jul 2019 20:26:36 +0200 (CEST)
Date: Sat, 27 Jul 2019 20:26:36 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
Message-ID: <20190727182636.GA7170@bogon.m.sigxcpu.org>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_112644_145221_A63EDC8D 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 daniel.lezcano@linaro.org, dl-linux-imx <Linux-imx@nxp.com>,
 rui.zhang@intel.com, Devicetree List <devicetree@vger.kernel.org>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 edubezval@gmail.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,
On Sat, Jul 27, 2019 at 01:26:50AM +0300, Daniel Baluta wrote:
> Hi all,
> 
> latest linux-next hangs at boot.
> 
> commit fde50b96be821ac9673a7e00847cc4605bd88f34 (HEAD -> master, tag:
> next-20190726, origin/master, origin/HEAD)
> Author: Stephen Rothwell <sfr@canb.auug.org.au>
> Date:   Fri Jul 26 15:18:02 2019 +1000
> 
>     Add linux-next specific files for 20190726
> 
>     Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> 
> 
> I know this is crazy but reverting commit:
> 
> commit 431bdd1df48ee2896ea9980d9153e3aeaf0c81ef (refs/bisect/bad)
> Author: Anson Huang <Anson.Huang@nxp.com>
> Date:   Fri Jul 5 12:56:11 2019 +0800
> 
>     clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT
> 
>     IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
>     should manage this clock, so no need to have CLK_IS_CRITICAL flag
>     set.
> 
> 
> 
> makes the boot work again.

I noticed a boot hang yesterday on next-20190726 when loading the
qoriq_thermal which I worked around by blacklisting it. The
fsl,imx8mq-tmu node specifies a clock (IMX8MQ_CLK_TMU_ROOT) but does not
seem to enable, shouldn't it do so?

Cheers,
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
