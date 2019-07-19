Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A537B6E14F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8/cY/0LIELVyrztAEthtV3vxhwY3fHF34VPnGWSs1w=; b=TcaE77d7BOb6ri
	cuYRxbo+HzI227yafaKI1Tpv4jrZjdNaxnAFOw5tE14CDAyV2v0zFlwy9ickxpyosxWpLELk9urzl
	zN/c829evRQCESwQI6c/bFUyacF5o2OHM8zVALGXFPG9FQcHGEo5Sm40ChYjMGFDyHVx1mEyE884S
	iiAterNde0VA0s7cwUv8iGtfo2yMmLaO3ELHEjjCUj4GPhi/eHZM0z14qT6I4seB4JErAh2pVuFlP
	5FGS/wdM+I9U+StQ2bdimiOCLrSyn9kyxk7BoJmMC0SF9iqFfzdwXC6JRXoFVgxnPgBMY4mlUIqmY
	q3CZyQjp/iVLDOaXCKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMt3-0005Qt-Ap; Fri, 19 Jul 2019 07:01:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMsO-0005Ps-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:00:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1hoMsB-0007Ad-DF; Fri, 19 Jul 2019 09:00:07 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1hoMs9-0003lG-Hi; Fri, 19 Jul 2019 09:00:05 +0200
Date: Fri, 19 Jul 2019 09:00:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH 0/3] Add DSP node on i.MX8QXP board
Message-ID: <20190719070005.mkqvfhjras2jmo52@pengutronix.de>
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718151346.3523-1-daniel.baluta@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:55:39 up 62 days, 13:13, 49 users,  load average: 0.14, 0.13, 0.07
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_000021_040487_68F7BD66 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, Frank.Li@nxp.com, linux-kernel@vger.kernel.org,
 paul.olaru@nxp.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, shawnguo@kernel.org,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

thanks for your patches :) but it's quite common to bundle the driver
related and the dt related patches. Can you add the firmware related
patch to this series in your v2?

Regards,
  Marco

On 19-07-18 18:13, Daniel Baluta wrote:
> i.MX8QXP boards feature an Hifi4 DSP from Tensilica. This patch series
> adds the DT node.
> 
> Note that we switched to the new yaml format for bindings documentation.
> 
> The DSP will run SOF Firmware [1]. Patches adding support for Linux DSP
> driver are already sent for review to SOF folks [2].
> 
> This patch series also contains a patch introducing DT related clocks.
> 
> The patch was already reviewed here:
> 	https://lkml.org/lkml/2019/7/17/975
> 
> but I added it in this patch series because it wasn't yet picked by
> Shawn so patches 2/3 will not compiled without patch 1.
> 
> [1] https://github.com/thesofproject/sof
> [2] https://github.com/thesofproject/linux/pull/1048/commits
> 
> Daniel Baluta (3):
>   clk: imx8: Add DSP related clocks
>   arm64: dts: imx8qxp: Add DSP DT node
>   dt-bindings: dsp: fsl: Add DSP core binding support
> 
>  .../devicetree/bindings/dsp/fsl,dsp.yaml      | 87 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  4 +
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 32 +++++++
>  drivers/clk/imx/clk-imx8qxp-lpcg.c            |  5 ++
>  include/dt-bindings/clock/imx8-clock.h        |  6 +-
>  5 files changed, 133 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
> 
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
