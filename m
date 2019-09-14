Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BB7B2961
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 04:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaO7WTQ1ytialv++mpPEhP7+u9hvhfoEOdMtTu961wA=; b=YPcmy+lGHaCyea
	+/10+8zTJIdN+0pQjcDNG22AyckI3y1S0D0itVZ3EFmupequ7nqQZOHMtSEGTlwVxjCJVgzkwy0su
	vG+bdPurzv6LjgM2YxAHJuzhawCk2x0TiTPa9F2BFBRaGGEhvUiqy9VKhkuiTE7JVb/GV9EhhDti0
	RbOy46cCn83pSROSyFbkbbdSXFjCuA1K17FlAoN+RtOWMCaxZU/xRI6uLilqpMkhsCV3LHVo30kCB
	PxxxbxzgDAJYPZN+Kg3OTfZG8utB2ZcvTpzUs6c8k7/a38/5lr5sd1VYaAwAcfYF1H9myCbrlYRGm
	0b+ARRMX8OzNJyL6YvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8xpQ-0006f2-GF; Sat, 14 Sep 2019 02:30:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8xpJ-0006eh-DQ
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 02:30:18 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19FD720717;
 Sat, 14 Sep 2019 02:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568428213;
 bh=SmCg3dZf3LJ6WJN5//nawR5IgYMlBzdTkJhmOH6UDe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1Xhco409vITvYR9NuYdOO+zjmi3muTEfUi9ctzCj55lTpeK7zpJ3ZtME23rrIS34Z
 gPi7JunWRp5q1mfc85VM25m8eZyarwNIn7RjKresSf375POU6ISQWEjvcC138ezy/q
 CXDAuUNnfkmt/SK5R4O52p5SEW0k92/6q270cgKQ=
Date: Sat, 14 Sep 2019 10:30:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v5 00/13] Common patches from downstream development
Message-ID: <20190914023004.GA3425@dragon>
References: <20190827131806.6816-1-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827131806.6816-1-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_193017_499665_4BCA98D9 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>,
 Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan @ agner . ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 01:18:16PM +0000, Philippe Schenker wrote:
> 
> This patchset holds some common changes that were never upstreamed.
> With latest downstream kernel upgrade, I took the aproach to select
> mainline devicetrees and atomically add missing stuff for downstream.
> 
> These patches I send here are separated out with changes that also
> have a benefit for mainline.
> 
> --------------------- Update version 4 and later -----------------------
> Patches that got pulled in an earlier patchset version got dropped in
> this patchset.
> ------------------------------------------------------------------------
> 
> Philippe
> 
> Changes in v5:
> - changed legacy gpio-key,wakeup to wakeup-source
> - Add note in commit message about disabled status
> - Added Olek's reviewed-by
> - change group name
> - Add pinmux to iomuxc
> - Adjusted commit message
> - Switched to consistent naming: pinctrl_xxx: xxxgrp
> - Added Olek's Reviewed-by
> - Added Olek's Reviewed-by
> - Added Olek's Reviewed-by
> - Added Olek's Reviewd-by
> - Added Olek's Reviewed-by
> - Add Olek's Reviewed-by
> - Added note to commit message about disabled status
> - Add Olek's Reviewed-by
> 
> Changes in v4:
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Add Marcel Ziswiler's Ack
> - Move can nodes to module deviceteree include imx6ull-colibri.dtsi
> - Add Marcel Ziswiler's Ack
> 
> Changes in v3:
> - Add new commit message from Stefan's proposal on ML
> - Fix commit message
> - Fix commit title to "...imx6-apalis:..."
> 
> Changes in v2:
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Better comment
> - Changed commit title to '...imx6qdl-apalis:...'
> - Deleted touchrevolution downstream stuff
> - Use generic node name
> - Put a better comment in there
> - Commit title
> - Removed f0710a
> that is downstream only
> - Changed to generic node name
> - Better comment
> 
> Max Krummenacher (2):
>   ARM: dts: imx6ull-colibri: reduce v_batt current in power off
>   ARM: dts: imx6ull: improve can templates
> 
> Philippe Schenker (9):
>   ARM: dts: imx7-colibri: Add touch controllers
>   ARM: dts: imx6qdl-colibri: Add missing pin declaration in iomuxc
>   ARM: dts: imx6qdl-apalis: Add sleep state to can interfaces
>   ARM: dts: imx6-apalis: Add touchscreens used on Toradex eval boards
>   ARM: dts: imx6-colibri: Add missing pinmuxing to Toradex eval board
>   ARM: dts: imx6ull-colibri: Add sleep mode to fec
>   ARM: dts: imx6ull-colibri: Add watchdog
>   ARM: dts: imx6ull-colibri: Add general wakeup key used on Colibri
>   ARM: dts: imx6ull-colibri: Add touchscreen used with Eval Board

Applied all, but except this one which uses base64
Content-Transfer-Encoding.

Shawn

> 
> Stefan Agner (2):
>   ARM: dts: imx7-colibri: add GPIO wakeup key
>   ARM: dts: imx7-colibri: fix 1.8V/UHS support
> 
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 39 +++++++++++
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 27 ++++++--
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 17 +++++
>  .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 38 +++++++++++
>  .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |  2 +-
>  arch/arm/boot/dts/imx6ull-colibri.dtsi        | 64 +++++++++++++++++--
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   | 38 +++++++++++
>  arch/arm/boot/dts/imx7-colibri.dtsi           | 30 ++++++++-
>  12 files changed, 280 insertions(+), 16 deletions(-)
> 
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
