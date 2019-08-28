Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB69FE4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmWWE3eNf5voqlU0RSvC23w3ZCOilM+a8b7G2JmBMUg=; b=MsEuNfLngtV72r
	9UIGm380mxuFxfqyDFzaMEFnxqaDAXYGyt+KRw8BVDprnE4bWJsHXTz4wBxjWeTvFiTiL5ivzBRKY
	+SwiF4ZOnxvQDClgtjRWTzSGabTx7hWz9hLCh8Mbs45O6JYytMOIDDNzmgNn18RPG1ZRv4HOm+4fN
	prDPMZw/CKW17/qVkBb4kqnAJpfl3pDBM2UL7Xph9ajqyGoxfmUQ7kbr1NSWa3C/xIMWjwR/zxXKq
	wiuQLi5JY6vNSTg18Z45AVIg1G/HA+aUa+Yt1A/ElNT4rnXsowCmHGCjYW2hIAfgz1pi+C6FCURcr
	t3w7M5aaZRQhlNkP8oqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2u5u-00081E-Ms; Wed, 28 Aug 2019 09:18:22 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2u1q-0003zh-6U
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 09:14:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 02:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; d="scan'208";a="381218667"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
 by fmsmga006.fm.intel.com with ESMTP; 28 Aug 2019 02:14:00 -0700
Message-ID: <ff3fd0ab2ba659e98070760be8e7c0f223e921f9.camel@intel.com>
Subject: Re: [PATCH V15 1/5] dt-bindings: fsl: scu: add thermal binding
From: Zhang Rui <rui.zhang@intel.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>,  "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,  "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>,  "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,  "edubezval@gmail.com"
 <edubezval@gmail.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>,  Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, "mchehab+samsung@kernel.org"
 <mchehab+samsung@kernel.org>,  "linux@roeck-us.net" <linux@roeck-us.net>,
 Daniel Baluta <daniel.baluta@nxp.com>,  "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "olof@lixom.net" <olof@lixom.net>, 
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>,  "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Date: Wed, 28 Aug 2019 17:14:09 +0800
In-Reply-To: <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190618021820.14885-1-Anson.Huang@nxp.com>
 <DB3PR0402MB39162C5B5AF828B127DD871EF5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162EB555CD7AE75D58C582F5C60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021410_397132_0E9FA775 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Anson,

We're missing ACK from the maintainers for patch 4/5 and 5/5, if we
want to shipped the patch via thermal tree.

For patch 2/5, as it introduces a new API for OF_THERMAL, I'd like to
get Eduardo' feedback before taking them.

thanks,
rui

On Wed, 2019-07-24 at 03:16 +0000, Anson Huang wrote:
> Ping...
> 
> > Hi, Daniel/Rui/Eduardo
> > 	Could you please take a look at this patch series?
> > 
> > Anson
> > 
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > 
> > > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> > > system
> > > controller, the system controller is in charge of system power,
> > > clock
> > > and thermal sensors etc. management, Linux kernel has to
> > > communicate
> > > with system controller via MU (message unit) IPC to get
> > > temperature
> > > from thermal sensors, this patch adds binding doc for i.MX system
> > > controller thermal driver.
> > > 
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > ---
> > > No change.
> > > ---
> > >  .../devicetree/bindings/arm/freescale/fsl,scu.txt        | 16
> > 
> > ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > > 
> > > diff --git
> > > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > index a575e42..fc3844e 100644
> > > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > > @@ -155,6 +155,17 @@ Required properties:
> > >  Optional properties:
> > >  - timeout-sec: contains the watchdog timeout in seconds.
> > > 
> > > +Thermal bindings based on SCU Message Protocol
> > > +------------------------------------------------------------
> > > +
> > > +Required properties:
> > > +- compatible:			Should be :
> > > +				  "fsl,imx8qxp-sc-thermal"
> > > +				followed by "fsl,imx-sc-thermal";
> > > +
> > > +- #thermal-sensor-cells:	See
> > > Documentation/devicetree/bindings/thermal/thermal.txt
> > > +				for a description.
> > > +
> > >  Example (imx8qxp):
> > >  -------------
> > >  aliases {
> > > @@ -222,6 +233,11 @@ firmware {
> > >  			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-
> > > wdt";
> > >  			timeout-sec = <60>;
> > >  		};
> > > +
> > > +		tsens: thermal-sensor {
> > > +			compatible = "fsl,imx8qxp-sc-thermal",
> > > "fsl,imx-sc-
> > > thermal";
> > > +			#thermal-sensor-cells = <1>;
> > > +		};
> > >  	};
> > >  };
> > > 
> > > --
> > > 2.7.4
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
