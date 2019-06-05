Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CE535D31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2xQVdqjWFBgQytZaUoL+jiLQUj01FKzliYuIh1kbKRs=; b=YFg9rmCLL6FKpQF/nA8OgwA5F
	xogNWNgx03dOjXFhjXduB5LuNuVbVSCpkxQdViYk+1Mv5ChR90ESI+oAZM+kDSWP1bIRzitGf1Du3
	JpfMvgCNnnSg2ueFqiLSc7dyyVFMxgKQgpeKy3RthpRJ3ifMGBY00eTqhoH5kDXIFn2Z/T95UF1Gl
	7F1oGf+UZyO2tBF6TqeSXv+2HVq0Tcf1Vjf/q2UJWJyNsQPGMPstGlRd/cKXRvanqoI+ELBH+Lfpi
	j6yzW4acvVs0IVveLKDw8S6ittINa9Vqgh99Z2nkgpcGwuAEPya6k9YXmvZwESyH4bc5KgVEo1Ks+
	p1D8TJzmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVKy-00072o-EF; Wed, 05 Jun 2019 12:48:16 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVKq-00071h-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:48:09 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 845294E204B; Wed,  5 Jun 2019 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1559738885; bh=4G8drEWVDsSUxde1v/aWuPz/7AuCPQhGSOON2KqYldk=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=jFQJ8sWWVPCGuuW1hRarwNc71Ru0ltSSMcPhNDMGafPukBNxobGa/Wu3rNqnYq7Y5
 8OY2bpF5/RSBgxKes0C1GdxbehX0TI8GFOaeJfbI0mMQJz8m+TAp1IFvVZirOxCftB
 iIC5UnAfmCCrXMf/yM4RCrZm4gwhrckIT0fahs+s=
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v15 0/3] Add support for the Purism Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Wed, 05 Jun 2019 06:48:05 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190605090315.GJ29853@dragon>
References: <20190528125747.1047-1-angus@akkea.ca>
 <20190605090315.GJ29853@dragon>
Message-ID: <db174b0173d0bcdb9ab5ff4e2e1cc4bc@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_054808_571284_FB359A04 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pavel Machek <pavel@ucw.cz>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-05 03:03, Shawn Guo wrote:
> On Tue, May 28, 2019 at 05:57:44AM -0700, Angus Ainslie (Purism) wrote:
>> The Librem5 devkit is based on the imx8mq from NXP. This is a default
>> devicetree to boot the board to a command prompt.
>> 
>> Changes since v14:
>> 
>> Add regulator-always-on for the SNVS regulators.
>> Added pgc nodes.
>> Fixed charger pre-current.
> 
> Since Pavel was reviewing your patches, you should copy him on the new
> version.  Has this version addressed all his review comments?
> 

Sorry I had meant to include him in the CC.

I believe so but don't want to speak for him so we should see if he has 
anymore.

Angus

> Shawn
> 
>> 
>> Changes since v13:
>> 
>> Moved haptic motor from pwm-led to gpio-vibrator.
>> Cleaned up regulator node naming.
>> Whitescpace cleanup.
>> Re-indent pinmux stanzas.
>> Drop pwm2 node.
>> Drop MAINTAINERS patch.
>> 
>> Changes since v12:
>> 
>> Updated patch to vendor-prefixes.yaml.
>> Dropped always on from regulators.
>> 
>> Changes since v11:
>> 
>> Added reviewed-by tags.
>> Fixed subject typo.
>> 
>> Changes since v10:
>> 
>> Moved MAINTAINERS entry to "ARM/FREESCALE IMX" section
>> 
>> Changes since v9:
>> 
>> Added a MAINTAINERS entry for arm64 imx devicetree files.
>> 
>> Changes since v8:
>> 
>> Fixed license comment.
>> Changed regulators to all lower case.
>> Changed clock frequency for NXP errata e7805.
>> Dropped blank line.
>> 
>> Changes since v7:
>> 
>> More regulators always on for USB.
>> Add vbus regulator.
>> Drop vbat regulator.
>> Replace legacy "gpio-key,wakeup" with "wakeup-source".
>> Add vbus-supply to get rid of warning
>> imx8mq-usb-phy 382f0040.usb-phy: 382f0040.usb-phy supply vbus not 
>> found,
>> using dummy regulator
>> 
>> Changes since v6:
>> 
>> Dropped unused regulators.
>> Fix regulator phandles case.
>> Dropped extra whitespace.
>> 
>> Changes since v5:
>> 
>> Added reviewed-by tags.
>> Moved USB port links to USB controller node.
>> 
>> Changes since v4:
>> 
>> Compiled against linux-next next-20190415.
>> Added imx8mq to the arm yaml file.
>> Re-arrange regulator nodes to drop undefined supplies.
>> Additional ordering for aesthetics.
>> Split some long lines.
>> Added lots of blank lines.
>> Moved pinctl muxes to where they are used.
>> Cleaned out reg defintions from regulator nodes.
>> 
>> Changes since v3:
>> 
>> Freshly sorted and pressed nodes.
>> Change the backlight to an interpolated scale.
>> Dropped i2c2.
>> Dropped devkit version number to match debian MR.
>> 
>> Changes since v2:
>> 
>> Fixed incorrect phy-supply for the fsl-fec.
>> Dropped unused regulator property.
>> Fixup Makefile for linux-next.
>> 
>> Changes since v1:
>> 
>> Dropped config file.
>> Updated the board compatible label.
>> Changed node names to follow naming conventions.
>> Added a more complete regulator hierachy.
>> Removed unused nodes.
>> Removed unknown devices.
>> Fixed comment style.
>> Dropped undocumented properties.
>> 
>> Angus Ainslie (Purism) (3):
>>   arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit
>>   dt-bindings: Add an entry for Purism SPC
>>   dt-bindings: arm: fsl: Add the imx8mq boards
>> 
>>  .../devicetree/bindings/arm/fsl.yaml          |   7 +
>>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>>  .../dts/freescale/imx8mq-librem5-devkit.dts   | 806 
>> ++++++++++++++++++
>>  4 files changed, 816 insertions(+)
>>  create mode 100644 
>> arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
>> 
>> --
>> 2.17.1
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
