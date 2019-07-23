Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE147114A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ+h6CCYzfdx5BW01rD6q3xcdVPbQchiSPMCMGfBiv4=; b=k2vUzypJF70Tg4
	o+7MFM2ok8Q3Ypf4MAUi1sCVD06S7zJ0SGFVuKlODpOfnQdyCLQkb9CGolVCCBhAKiY9Ex0d3K9M/
	KgqLlfx7Q1hFzJ6smbpCEJzeWbLXAcUaAX7tI0vr5K6+V0dEgHWSD1FcYEqa82HVgTG3T2QWhsHgW
	YKLfEdUsiNQCQ/CvUnA/3dYN2lCfEdsvEuiKTqjzIKFh99jeHgGdO9NEIh9VBZuW9qvKQ3nX4WW5O
	D5ugqHJET3VXNVIudIjPTPGTt6YseLg0YuLCL/v7ZeyPu55jXCYWGHfO9C8npXYeaXYeldxHRLtek
	aFmOWuqPpKKb7fMBYyNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnXf-0006ju-Iq; Tue, 23 Jul 2019 05:40:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnXF-0006jS-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:40:26 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2600C2229A;
 Tue, 23 Jul 2019 05:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563860424;
 bh=+j2AOuISZmiPQxHemG/b+OJjdIwmlnQX7SnFfbIvn7E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1sE6Dd8kroxZni3hrIzECi1WLHUUBaNidsUd5f4AswbX4xlfhFmlZZwkRB0Vg+ir7
 /3ScQzQIzZFHSIJMaNljs5QPRp3XJz6hxwC1LPYwhCBUh+1yqsV2gInf1+c3lvGqik
 1dPCPFeZFHUShI9MvWE++oBb5tQeSRFU0+gxL88Q=
Date: Tue, 23 Jul 2019 13:39:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: Re: [PATCH 00/10] Add further support for PHYTEC phyBOARD-Segin
Message-ID: <20190723053951.GN3738@dragon>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_224025_532913_38E1A07B 
X-CRM114-Status: GOOD (  13.39  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 martyn.welch@collabora.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 09:19:17AM +0200, Stefan Riedmueller wrote:
> This patchstack adjusts the already existing naming for the PHYTEC
> phyBOARD-Segin to the PHYTEC naming scheme that is already used with the
> phyCORE-i.MX 6 and the phyBOARD-Mira.
> 
> Furthermore it introduces some small fixes and adds support for the PHYTEC
> phyCORE-i.MX 6ULL which also comes with the phyBORAD-Segin. It comes in a
> full featured option with either NAND flash or eMMC and a low cost option
> only with NAND flash.
> 
> Stefan Riedmueller (10):
>   ARM: dts: imx6ul: phyboard-segin: Rename dts to PHYTEC name scheme
>   ARM: dts: imx6ul: segin: Add boot media to dts filename
>   ARM: dts: imx6ul: segin: Reduce eth drive strength
>   ARM: dts: imx6ul: segin: Fix LED naming for phyCORE and PEB-EVAL-01
>   ARM: dts: imx6ul: segin: Make FEC and ethphy configurable in dts
>   ARM: dts: imx6ul: segin: Only enable NAND if it is populated
>   ARM: dts: imx6ul: phycore: Add eMMC at usdhc2
>   ARM: dts: imx6ul: segin: Move ECSPI interface to board include file
>   ARM: dts: imx6ul: segin: Move machine include to dts files
>   ARM: dts: imx6ull: Add support for PHYTEC phyBOARD-Segin with i.MX
>     6ULL

I applied the series, but please send a follow-up patch for those
undocumented board compatibles.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
