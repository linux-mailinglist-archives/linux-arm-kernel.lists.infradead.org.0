Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A588195678
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:37:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQjScH8cOYDVAF/ygGSHPyJymxqy3eZ2NZTgPCvRbIM=; b=SCAtMIk9EbotGR
	xVUxtm1OiejuSGSff9Qe10gGIHkPobvHC6yXX6jctesAgjGc8clv224EesRP6My3L1Jz0TBB/Hb1T
	JEUWLJIDokiGpVSmcUgIviAzX2lg6bddTMZ494gnD9tEdr5E3gcQAv73dUxYx272NpY/Qla4bRWh8
	KWzOTwZnOF1dE9mJ+zhuDwfVHQxCarohVA/g6VmbskY4AwZzgzJkBM0md5c2U+gIERk1+dGyaCudr
	GaA6kgc0yqIXUdMwxWtZDLoHkCunI8VV1IFeiIalHz5ALRiPFUvy3ll/j1s99DrXLTRProDCWj8eW
	xNFsCaDhaYQQv3uk6wGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHnIP-0007kV-Ue; Fri, 27 Mar 2020 11:37:05 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHnIF-0007jg-Ot
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:36:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 87BA5FB03;
 Fri, 27 Mar 2020 12:36:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0BdVK_tdadbL; Fri, 27 Mar 2020 12:36:47 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 6456A40514; Fri, 27 Mar 2020 12:36:46 +0100 (CET)
Date: Fri, 27 Mar 2020 12:36:46 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [PATCH 0/8] interconnect: Add imx support via devfreq
Message-ID: <20200327113646.GA93181@bogon.m.sigxcpu.org>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <1ae21355-df95-44e5-b8f6-14af7aa4fcc3@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ae21355-df95-44e5-b8f6-14af7aa4fcc3@posteo.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_043656_124481_5159B143 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,
On Thu, Mar 26, 2020 at 02:55:27PM +0100, Martin Kepplinger wrote:
> On 26.03.20 03:16, Leonard Crestez wrote:
> > This series adds interconnect scaling support for imx8m series chips. It uses a
> > per-SOC interconnect provider layered on top of multiple instances of devfreq
> > for scalable nodes along the interconnect.
> > 
> > Existing qcom interconnect providers mostly translate bandwidth requests into
> > firmware calls but equivalent firmware on imx8m is much thinner. Scaling
> > support for individual nodes is implemented as distinct devfreq drivers
> > instead.
> > 
> > The imx interconnect provider doesn't communicate with devfreq directly
> > but rather computes "minimum frequencies" for nodes along the path and
> > creates dev_pm_qos requests.
> > 
> > Since there is no single devicetree node that can represent the
> > "interconnect" the main NOC is picked as the "interconnect provider" and
> > will probe the interconnect platform device if #interconnect-cells is
> > present. This avoids introducing "virtual" devices but it means that DT
> > bindings of main NOC includes properties for both devfreq and
> > interconnect.
> > 
> > Only the ddrc and main noc are scalable right now but more can be added.
> > 
> > Also available on a github branch (with various unrelated changes):
> > 	https://github.com/cdleonard/linux/tree/next
> > Testing currently requires NXP branch of atf+uboot
> > 
> > Martin: I believe you should be able to use this to control DRAM
> > frequency from video by just adding interconnect consumer code to
> > nwl-dsi. Sample code:
> > 	https://github.com/cdleonard/linux/commit/43772762aa5045f1ce5623740f9a4baef988d083
> > 	https://github.com/cdleonard/linux/commit/7b601e981b1f517b5d98b43bde292972ded13086
> > 
> 
> Thanks for updating this series Leonard! A few questions for my
> understanding before trying to test:
> 
> Isn't the ddrc_opp_table missing in these additions to the DT? That's
> what I want to scale after all.
> 
> If I want to keep calling the "request", now icc_set_bw(), in nwl-dsi:
> I'd add an "interconnects" property to the node, but what would be my
> interconnect master? i.e.: interconnects = <&noc master? &noc
> IMX8MQ_ICS_DRAM>; At least it's not obvious to me from
> interconnect/imx/imx8mq.c

The NWL DSI host controller is fed by DCSS or mxsfb so any bandwidth
requirements should (as far as I understand things) go into the display
controller driver since that's what fetches from RAM.
Cheers,
 -- Guido

> 
> the interconnect framework seems to be powerful indeed, but I still need
> to fully wrap my head around it.
> 
> thanks for the help so far,
> 
>                                martin
> 
> 
> > Changes since RFCv6:
> > * Replace scalable-nodes stuff with just a fsl,ddrc property. Future
> > scalable nodes can be added as additional phandles on the NOC
> > * Allow building interconnect drivers as modules
> > * Handle icc_provider_del errors in imx_icc_unregister (like EBUSY).
> > * Rename imx-devfreq to imx-bus, similar to exynos-bus
> > * Explain why imx bus clock enabling is not required
> > * All dependencies accepted (some time ago).
> > Link: https://patchwork.kernel.org/cover/11244421/
> > 
> > Changes since RFCv5:
> > * Replace scanning for interconnect-node-id with explicit
> > scalable-nodes/scalable-node-ids property on NoC.
> > * Now passes make `dtbs_check`
> > * Remove struct imx_icc_provider
> > * Switch to of_icc_xlate_onecell
> > * Use of_find_device_by_node to fetch QoS target, this causes fewer probe
> > deferrals, removes dependency on devfreq API and even allows reloading ddrc
> > module at runtime
> > * Add imx_icc_node_destroy helper
> > * Remove 0/1 on DEFINE_BUS_SLAVE/MASTER which created spurious links
> > Link: https://patchwork.kernel.org/cover/11222015/
> > 
> > Changes since RFCv4:
> > * Drop icc proxy nonsense
> > * Make devfreq driver for NOC probe the ICC driver if
> > #interconnect-cells is present
> > * Move NOC support to interconnect series and rename the node in DT
> > * Add support for all chips at once, differences are not intereseting
> > and there is more community interest for 8mq than 8mm.
> > Link: https://patchwork.kernel.org/cover/11111865/
> > 
> > Changes since RFCv3:
> > * Remove the virtual "icc" node and add devfreq nodes as proxy providers
> > * Fix build on 32-bit arm (reported by kbuilt test robot)
> > * Remove ARCH_MXC_ARM64 (never existed in upstream)
> > * Remove _numlinks, calculate instead
> > * Replace __BUSFREQ_H header guard
> > * Improve commit message and comment spelling
> > * Fix checkpatch issues
> > Link to RFCv3: https://patchwork.kernel.org/cover/11078671/
> > 
> > Changes since RFCv2 and initial work by Alexandre Bailon:
> > * Relying on devfreq and dev_pm_qos instead of CLK
> > * No more "platform opp" stuff
> > * No more special suspend handling: use suspend-opp on devfreq instead
> > * Replace all mentions of "busfreq" with "interconnect"
> > Link to v2: https://patchwork.kernel.org/cover/11021563/
> > 
> > Leonard Crestez (8):
> >   dt-bindings: interconnect: Add bindings for imx8m noc
> >   PM / devfreq: Add generic imx bus scaling driver
> >   PM / devfreq: imx: Register interconnect device
> >   interconnect: Add imx core driver
> >   interconnect: imx: Add platform driver for imx8mm
> >   interconnect: imx: Add platform driver for imx8mq
> >   interconnect: imx: Add platform driver for imx8mn
> >   arm64: dts: imx8m: Add NOC nodes
> > 
> >  .../bindings/interconnect/fsl,imx8m-noc.yaml  | 138 ++++++++
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  24 ++
> >  arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  24 ++
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  24 ++
> >  drivers/devfreq/Kconfig                       |   9 +
> >  drivers/devfreq/Makefile                      |   1 +
> >  drivers/devfreq/imx-bus.c                     | 181 +++++++++++
> >  drivers/interconnect/Kconfig                  |   1 +
> >  drivers/interconnect/Makefile                 |   1 +
> >  drivers/interconnect/imx/Kconfig              |  17 +
> >  drivers/interconnect/imx/Makefile             |   9 +
> >  drivers/interconnect/imx/imx.c                | 298 ++++++++++++++++++
> >  drivers/interconnect/imx/imx.h                |  62 ++++
> >  drivers/interconnect/imx/imx8mm.c             | 108 +++++++
> >  drivers/interconnect/imx/imx8mn.c             |  97 ++++++
> >  drivers/interconnect/imx/imx8mq.c             | 106 +++++++
> >  include/dt-bindings/interconnect/imx8mm.h     |  49 +++
> >  include/dt-bindings/interconnect/imx8mn.h     |  41 +++
> >  include/dt-bindings/interconnect/imx8mq.h     |  48 +++
> >  19 files changed, 1238 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> >  create mode 100644 drivers/devfreq/imx-bus.c
> >  create mode 100644 drivers/interconnect/imx/Kconfig
> >  create mode 100644 drivers/interconnect/imx/Makefile
> >  create mode 100644 drivers/interconnect/imx/imx.c
> >  create mode 100644 drivers/interconnect/imx/imx.h
> >  create mode 100644 drivers/interconnect/imx/imx8mm.c
> >  create mode 100644 drivers/interconnect/imx/imx8mn.c
> >  create mode 100644 drivers/interconnect/imx/imx8mq.c
> >  create mode 100644 include/dt-bindings/interconnect/imx8mm.h
> >  create mode 100644 include/dt-bindings/interconnect/imx8mn.h
> >  create mode 100644 include/dt-bindings/interconnect/imx8mq.h
> > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
