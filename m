Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7D3593B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YW36/ON3HnHDhbSoEt5c2v9qTg1g2gNh0ZtFsQKB5i4=; b=GSLW7HFqt7sjL/
	FTsN4izrEQOv170d3W+qtlRMq5oLalKdDqRp1D5yW/Xv0vbgsj25aBtZPtgLe6FtedemwCuALCpNl
	+IpWH15zwvP4Z1F+uFguzbz7PIXSja/Q71Wgqoq1uW7cd/lA5y5aXoPr1+DDLD41uYuZPs77/sI71
	ZFeTBr9hD1YUYtHiXZUTH/B3dPCWuz4/qyiBnLb+vsY8uqqTI39qF61/2mxsQzzzXMNTVzEmlL+nv
	yWYAThNN0GoVzCarzInl3iOkDbRwcgXxeqf3jHbh9B0Z3fcjNKCitoVP7CMdYL8UFYqWRrskpwHDO
	Z91zk8iDU5rrROfr/u7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRpk-0006Aw-1Z; Wed, 05 Jun 2019 09:03:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRpZ-0006AD-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:03:41 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3040D2075C;
 Wed,  5 Jun 2019 09:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559725417;
 bh=7oQg41xcoj3dVt4T0jDLoKl6UKw+TwF7gFJVO8yYM2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uda6dfzApaEOc6glLrFxNX04FrsXa228DHOmHCZKa5g2jB0yJIgdCfsk3qeKfPJxb
 DhqgFJc/VX40B205oj92vcNpBHaGWqO53DcrWCY5YUk0D9CkGg8z0KlROlsHjim1m4
 NuwxUqRx3jlIp0nPlfuFgNDa2ftIs4IT183v+lCM=
Date: Wed, 5 Jun 2019 17:03:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v15 0/3] Add support for the Purism Librem5 devkit
Message-ID: <20190605090315.GJ29853@dragon>
References: <20190528125747.1047-1-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528125747.1047-1-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_020340_084968_9FF9A779 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 05:57:44AM -0700, Angus Ainslie (Purism) wrote:
> The Librem5 devkit is based on the imx8mq from NXP. This is a default
> devicetree to boot the board to a command prompt.
> 
> Changes since v14:
> 
> Add regulator-always-on for the SNVS regulators.
> Added pgc nodes.
> Fixed charger pre-current.

Since Pavel was reviewing your patches, you should copy him on the new
version.  Has this version addressed all his review comments?

Shawn

> 
> Changes since v13:
> 
> Moved haptic motor from pwm-led to gpio-vibrator.
> Cleaned up regulator node naming.
> Whitescpace cleanup.
> Re-indent pinmux stanzas.
> Drop pwm2 node.
> Drop MAINTAINERS patch.
> 
> Changes since v12:
> 
> Updated patch to vendor-prefixes.yaml.
> Dropped always on from regulators.
> 
> Changes since v11:
> 
> Added reviewed-by tags.
> Fixed subject typo.
> 
> Changes since v10:
> 
> Moved MAINTAINERS entry to "ARM/FREESCALE IMX" section
> 
> Changes since v9:
> 
> Added a MAINTAINERS entry for arm64 imx devicetree files.
> 
> Changes since v8:
> 
> Fixed license comment.
> Changed regulators to all lower case.
> Changed clock frequency for NXP errata e7805.
> Dropped blank line.
> 
> Changes since v7:
> 
> More regulators always on for USB.
> Add vbus regulator.
> Drop vbat regulator.
> Replace legacy "gpio-key,wakeup" with "wakeup-source".
> Add vbus-supply to get rid of warning
> imx8mq-usb-phy 382f0040.usb-phy: 382f0040.usb-phy supply vbus not found,
> using dummy regulator
> 
> Changes since v6:
> 
> Dropped unused regulators.
> Fix regulator phandles case.
> Dropped extra whitespace.
> 
> Changes since v5:
> 
> Added reviewed-by tags.
> Moved USB port links to USB controller node.
> 
> Changes since v4:
> 
> Compiled against linux-next next-20190415.
> Added imx8mq to the arm yaml file.
> Re-arrange regulator nodes to drop undefined supplies.
> Additional ordering for aesthetics.
> Split some long lines.
> Added lots of blank lines.
> Moved pinctl muxes to where they are used.
> Cleaned out reg defintions from regulator nodes.
> 
> Changes since v3:
> 
> Freshly sorted and pressed nodes.
> Change the backlight to an interpolated scale.
> Dropped i2c2.
> Dropped devkit version number to match debian MR.
> 
> Changes since v2:
> 
> Fixed incorrect phy-supply for the fsl-fec.
> Dropped unused regulator property.
> Fixup Makefile for linux-next.
> 
> Changes since v1:
> 
> Dropped config file.
> Updated the board compatible label.
> Changed node names to follow naming conventions.
> Added a more complete regulator hierachy.
> Removed unused nodes.
> Removed unknown devices.
> Fixed comment style.
> Dropped undocumented properties.
> 
> Angus Ainslie (Purism) (3):
>   arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit
>   dt-bindings: Add an entry for Purism SPC
>   dt-bindings: arm: fsl: Add the imx8mq boards
> 
>  .../devicetree/bindings/arm/fsl.yaml          |   7 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 806 ++++++++++++++++++
>  4 files changed, 816 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
