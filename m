Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B2E1B5E51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dMfeg4y4GwnvQB9BirxSUVcMPmt/sBkjSOIEEAofpA=; b=dZACyqRcy35BDX
	PnUnjBbtFQFCvAeVh2JYW9ccGIzR3dY2b2k6t0pZ5CXm6QJUiYhylKbBsD3zISf9SIVKl3I0K3zqL
	sW+OfgifXTGjSeESbbywgHc2A147vV6Sab96LQ7xYeYwbKXL/0i4j5xHUPJzex21pHH0AEgthODi5
	70tUWPceZ9qGDaDwqil6X8eSgnfuCO94yAkh25ODbyD0gMO3fD/gboyi8Mhj/7UpGDlKIIKYfJVJm
	5L22Pq+wxfAg4eZX2G+x4mSZ4873xE1V4gd00dToYb8txErndwSLt0IXCuA0lkNApgkbCL5vVqphi
	htg8wDPIUt27XPKlWu6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdC5-0000AB-HE; Thu, 23 Apr 2020 14:51:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdBw-00009E-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:51:05 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 602502074F;
 Thu, 23 Apr 2020 14:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587653464;
 bh=5S49h93wmsXbBI+Y0llES4okyh5R+bJPk/y1sqqW1QY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gEVE+0SHh/PiSIUhOEKJyoSjM1wFkcPS7wEWb5IeTvPp/U5RnP2mo+KLLH/XRTuib
 usLre+kBywfYAEawA4ZZ+USGciyt9mrF+h7rwE8d9qTRBPbeW/cniS1DBRGvYc5WBP
 16DRO1oiaeQ+anqeHdpoO9WVV0ExxVeXqt67RkIw=
Date: Thu, 23 Apr 2020 22:50:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn: Change SDMA1 ahb clock for imx8mn
Message-ID: <20200423145056.GG9391@dragon>
References: <20200328023353.156929-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328023353.156929-1-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_075104_555969_E317332F 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 09:33:53PM -0500, Adam Ford wrote:
> Using SDMA1 with UART1 is causing a "Timeout waiting for CH0" error.
> This patch changes to ahb clock from SDMA1_ROOT to AHB which fixes the
> timeout error.
> 
> Fixes: 6c3debcbae47 ("arm64: dts: freescale: Add i.MX8MN dtsi support")
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
