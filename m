Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8548F1290AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 02:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eUg4J/kII5v+vfVnXmvO+NtR2SEp1JoUfoodKGOTu0=; b=MBKSnu5qfebATm
	ZafxBcMRyX07eQsd89OTMKKs+0/EJf11+xFQgdgxFbHtncPwrZH4rrCAExXRQNKT9Va+xRZCXSUGH
	31JgFcS1tf+3Qp5piagxEGt1VEQhRTJLb7p0x+vRtzzrcPpcH/SSXHAngmYJSAaZbIJVvfjrQaFSN
	C5mq7bUoWBccx9tPIf0Fh7MZVuRBwwIrOMTTgwYCVbvrZrEAyMBovEVYvvzpEC+z9gZBtxh1AybyV
	YkrYr7atTk6YcFVt2bpKxU0un/2wWO4/nQBaTL1f5Tz7sURjqf/tq6D4UArqUt68d82lDR/EVrZmw
	9WIjgp9jvZYwXFoI1iCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijCd6-0005Ho-PY; Mon, 23 Dec 2019 01:35:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijCcx-0005Ga-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 01:35:20 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58163206B7;
 Mon, 23 Dec 2019 01:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577064916;
 bh=jQLYVwMMyYcEWqK6/IFzR9AduPaoKnyANcTsHakSj9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pOfCSlmgZbNgN0s0MwtUZUTBnVJDpD7si/VSXf+mKY6hxK2+7U9JaqoqJbLUbhkJ0
 J4XHl1AMtvjKcSBxuc41z4RercNfc3q3Q3X6x1hokywtQFTTMzXw3SVFP120X4sS7u
 nQcHplv5uA5fEpq6tU4WKWRchoYZwSZFVSU8G8Vw=
Date: Mon, 23 Dec 2019 09:34:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH v2] ARM: dts: imx: Add GW5907 board support
Message-ID: <20191223013451.GB11523@dragon>
References: <20191205220825.22915-1-rjones@gateworks.com>
 <20191212195212.30433-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212195212.30433-1-rjones@gateworks.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_173519_667167_86217D16 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Tim Harvey <tharvey@gateworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 11:52:12AM -0800, Robert Jones wrote:
> The Gateworks GW5907 is an IMX6 SoC based single board computer with:
>  - IMX6Q or IMX6DL
>  - 32bit DDR3 DRAM
>  - FEC GbE Phy
>  - bi-color front-panel LED
>  - 256MB NAND boot device
>  - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
>  - Digital IO expander (pca9555)
>  - Joystick 12bit adc (ads1015)
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Signed-off-by: Robert Jones <rjones@gateworks.com>

It doesn't apply to my imx/dt branch.  Please rebase and resend.  Also
could you make a patch series to include this one and the other 3 adding
GW5910, GW5912 and GW5913 support?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
