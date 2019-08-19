Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCCD91E4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjkgtLh6npAao3x+mK0sMRsG713rb4Swtrqs9ayALNI=; b=Myh3vBaFpSDl90
	rrrSF15+hhfKtxzlt12uNWTUv07G3Ap/LKnOb9vQFLO8i/YSCgPoM+Qj81dkgOsqjUJcMp3rUnnea
	GuEzAc1HUJThrWqXBkH/Mnh/fitViDjL8JEGXqee0SabBGG46XdYKzQKorMSc+KdOBkkCFEQQF2l9
	JU+eMJnE5Z+pD/L6zpATWYMlFz+W93zSBToOAhRQtjAHWY/8FTFL76Ig2uUsxgcHtXltOvq4KraW1
	MFOn9yc4a9/8rCGH1hyo/Eg75izPItxhXxRSE1Bkl9jmR2yT0VmVTpQaDWKGGmNZK7uPq+6MJbfm2
	KXFEZZgoZzxHK/dD4ruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcSB-0000mo-DI; Mon, 19 Aug 2019 07:51:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcRy-0000mO-QB
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:51:36 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 119D92082C;
 Mon, 19 Aug 2019 07:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566201094;
 bh=YYr+sOzCSeA4C3uJqftbtG0MGcaU4L5Jif35BaA4Eeg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XkPMjR9kuQYoRQFea2vw8zhFvepVrwta4FDt0MBDl3vuCiPOXC9CX+uxyms8h9ObM
 lVnSTdfyABWFjGSXGqiaA7jEMJha02Ui/xq8ZZldXeCRmhMMnlHr8KDrN1Yxy+kBPk
 P3spAEPt2fVETl5G5eZQoUISn2kecFpSHI+5s3Zs=
Date: Mon, 19 Aug 2019 09:51:22 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH] ARM: dts: imx7d: cl-som-imx7: make ethernet work again
Message-ID: <20190819075121.GE5999@X250>
References: <20190809031227.3319-1-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809031227.3319-1-git@andred.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_005134_869880_363491C3 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 04:12:27AM +0100, Andr=E9 Draszik wrote:
> Recent changes to the atheros at803x driver caused
> ethernet to stop working on this board.
> In particular commit 6d4cd041f0af
> ("net: phy: at803x: disable delay only for RGMII mode")
> and commit cd28d1d6e52e
> ("net: phy: at803x: Disable phy delay for RGMII mode")
> fix the AR8031 driver to configure the phy's (RX/TX)
> delays as per the 'phy-mode' in the device tree.
> =

> This now prevents ethernet from working on this board.
> =

> It used to work before those commits, because the
> AR8031 comes out of reset with RX delay enabled, and
> the at803x driver didn't touch the delay configuration
> at all when "rgmii" mode was selected, and because
> arch/arm/mach-imx/mach-imx7d.c:ar8031_phy_fixup()
> unconditionally enables TX delay.
> =

> Since above commits ar8031_phy_fixup() also has no
> effect anymore, and the end-result is that all delays
> are disabled in the phy, no ethernet.
> =

> Update the device tree to restore functionality.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> CC: Ilya Ledvich <ilya@compulab.co.il>
> CC: Igor Grinberg <grinberg@compulab.co.il>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Mark Rutland <mark.rutland@arm.com>
> CC: Shawn Guo <shawnguo@kernel.org>
> CC: Sascha Hauer <s.hauer@pengutronix.de>
> CC: Pengutronix Kernel Team <kernel@pengutronix.de>
> CC: Fabio Estevam <festevam@gmail.com>
> CC: NXP Linux Team <linux-imx@nxp.com>
> CC: devicetree@vger.kernel.org
> CC: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
