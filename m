Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEC169E59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:23:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ+/XNzUu06vKOXbuyBKqA8aBiNXTnj4h6baT8ubuME=; b=EJASaGUa0HPMnH
	dK0IHPQJ8F202exS64fz5V6eNj1aacuEaL94UiNFTmGwpbCVXmmdBgoQww9HCCIG9l/Jby6lMA8TU
	hNSc/PJDRNSDTdRjDGHF7m2bh1x19mOwZQUbaSV8AOyiW5SiAcr64SEF+QH3DzRWVPhv42P62YGUf
	ZQTU5k671fLzJDAJbAYhxd8ZVTtdCsuG9CUoxg1QSEFy7wU5DEgk/EJxWeKYPAX3N5z/WDcO+k5eg
	AGt+K+ZCZago9mYnDznZNG354692EzbF5q38UtN8cZNnNZo+DsIfz86uLO3tQgfd8OgJFHZX1WhRR
	xDWoIxM6PEy9F19wHutA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j679d-0001US-1x; Mon, 24 Feb 2020 06:23:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j679U-0001U9-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:23:37 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEB9B20661;
 Mon, 24 Feb 2020 06:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582525415;
 bh=OsPgg0jY2d2muGW/C79n94xMbYStT13zHqGcvLqf3y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ejxIowobUWbHpDL2VqIuu3+29xFVJ+OL41TWpQKVnsKCAYGEpPCD+FwlzgrC96Ex4
 GAOGDEWGYbTb+Lqf4csoXeytrZidb0hD1l5KOm5ggy+pH2Gb/0h6XPPzO6KFkpduDr
 RPA3HYPUHQ52qztTPqBcCnzXQ7niO0upLNQNplus=
Date: Mon, 24 Feb 2020 14:23:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [PATCH v2 0/3] Add Aster carrier board support for Colibri iMX7
 CoM
Message-ID: <20200224062326.GJ27688@dragon>
References: <20200219130043.3563238-1-oleksandr.suvorov@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219130043.3563238-1-oleksandr.suvorov@toradex.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_222336_206943_9AB75A86 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Robert Jones <rjones@gateworks.com>, Anson Huang <Anson.Huang@nxp.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Michael Walle <michael@walle.cc>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 01:00:48PM +0000, Oleksandr Suvorov wrote:
> 
> This series adds devicetrees for the Toradex Aster board along with
> Toradex Computer on Module Colibri iMX7S/iMX7D.
> 
> Changes in v2:
> - Change X11 license to MIT
> - Change X11 license to MIT
> - Sort nodes alphabetically
> - Document compatibles for an Aster board in the separate commit of
>   the series
> - Drop the undocumented device (spidev-around work will be sent in
>   the separate patchset)
> 
> Oleksandr Suvorov (3):
>   ARM: dts: imx7-colibri: Convert to SPDX license tags for Colibri iMX7
>   dt-bindings: arm: fsl: add nxp based toradex colibri-imx7 bindings
>   ARM: dts: imx7-colibri: add support for Toradex Aster carrier board

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
