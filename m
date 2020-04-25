Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826591B830B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 03:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48bn5pqH1JhMDKjpLwocKZMTjZBchRE8rWkf7nVFYu8=; b=eeX3jLG0GYk/wt
	0BlpAvXAuH2PDaZZMIq54v+jsHSrEA/xvLnIb2oZ9cjLvv4xRumIm4W6FEEmxd77HPiwrxCkrEOd1
	7ztTM1pLXsU2QyczBnNQs5xf448pedshoehQXFD0KwxLS1FHxv9H6I0jD8ZdirnVSLj+/EmqRaH20
	VM8v0+MaqOB9Q3KSGftk1acn8iYOs+dqKogMbP9mu6BCDXGC4YmHz4s8d2cZSCUa5h5x3JR5Qeyd/
	tR4tjdcuZCzX/CtPbw8ivRzIL77ZAG4nC5k6EU5laFIc9k+oXIzIjTbLIuhKE85ArHPKcOBT+OewX
	y11X+N1AO2Xi3ZhWc/cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS9jg-0001Pc-5u; Sat, 25 Apr 2020 01:36:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS9jW-0001PF-Ql
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 01:35:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D5F220736;
 Sat, 25 Apr 2020 01:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587778554;
 bh=NuUXrLv2uLvTteae+JnaWLYHig2mTbcSLJKImdqctg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VVaL+kZvrA4R1fWA5oOSC8VfR3CiEJUMMEDGiV7KVeKbFwchH4aPX12X/QtCm0uRb
 ISSN+zqr/FILTvRCOl5GzNlhRJwxtX1vW19t9GGO6gKAZLRzuGi7ePqRZbcKzt6Z1y
 FrFXGQS2nqV/ym3+Yv44jIBny7i8Z/7wzvcMHHYI=
Date: Sat, 25 Apr 2020 09:35:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8m: Fix AIPS reg properties
Message-ID: <20200425013546.GK8571@dragon>
References: <20200331183725.25255-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331183725.25255-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_183554_885600_84C41223 
X-CRM114-Status: UNSURE (   8.26  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:37:25PM -0300, Fabio Estevam wrote:
> Commit dc3efc6ff0d5 ("arm64: dts: imx8m: fix aips dts node") caused several
> dtc warnings like these when building with W=1:
> 
> arch/arm64/boot/dts/freescale/imx8mm.dtsi:265.23-542.5: Warning (simple_bus_reg): /soc@0/bus@30000000: simple-bus unit address format error, expected "301f0000"
> arch/arm64/boot/dts/freescale/imx8mm.dtsi:544.23-602.5: Warning (simple_bus_reg): /soc@0/bus@30400000: simple-bus unit address format error, expected "305f0000"
> arch/arm64/boot/dts/freescale/imx8mm.dtsi:604.23-862.5: Warning (simple_bus_reg): /soc@0/bus@30800000: simple-bus unit address format error, expected "309f0000"
> arch/arm64/boot/dts/freescale/imx8mm.dtsi:864.23-909.5: Warning (simple_bus_reg): /soc@0/bus@32c00000: simple-bus unit address format error, expected "32df0000"
> 
> Fix them by using the correct address base and size in the AIPS reg
> properties.
> 
> Fixes: dc3efc6ff0d5 ("arm64: dts: imx8m: fix aips dts node")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
