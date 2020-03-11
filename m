Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5716F18120B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdjLWzmBuf95l1xu5Yo16pjaFTTd4vERirgP0ME4z28=; b=VZQkQvvoRJ37Rc
	Y+4qWqJ2PZGLqQrfRWOJgT2MemJT6wKLKfwrrJ/aFDZQMF+7Ko0yedf7Mf3C2Ds1hXsZCuorq9sEP
	1NaGv4xxmARz6X7GbLI+L6GYzO81ORh5f61fr9LwGbHhkRF8Nfe5UYGb8F7xvZyR4eB3JfDWmKV2R
	ZCDliKpJf1pjRIPs8GxuIGZ89oIaI1osgKdXn9eifDfUdJgBGCi4ESrjj9fRENNXZfDXZaptBN5MN
	WDAV61oyOORebL6O7YXwqzXYOeziicPEnGXWd1ONBkqOL6JifvH9FRTrY6UUFkkDYePTD4mW2qaqS
	9nz2oph1m7L+niE2mOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvve-00016F-Oc; Wed, 11 Mar 2020 07:37:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvvW-00015n-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:37:15 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6163320873;
 Wed, 11 Mar 2020 07:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583912234;
 bh=5P3Z06UnZqQEfWkPH8dglufqa0E6mtXAEl5e9YrDhiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XOMKUeTdZ9QQpbji94SkTaHYey9IZBZcXWcohVRGyBgCZr70BGTxsiXebdw+uKvL5
 jkQ0YUp45q9w7hSjexmzUBL+Rn2wRNZ7Vj0wRmskvD8zDGoQhB7CsG9seNfqkKULhy
 OBAWlH+FFEOdanwGB/N/UO+KNT9B+l+VLBPpH9ho=
Date: Wed, 11 Mar 2020 15:37:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx6: phycore-som: explicit disable pmic
 watchdog during suspend
Message-ID: <20200311073707.GQ29269@dragon>
References: <20200227110605.22144-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227110605.22144-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003714_369350_D80919B7 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: s.riedmueller@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 kernel@pengutronix.de, c.hemp@phytec.de, contact@stefanchrist.eu,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:06:04PM +0100, Marco Felsch wrote:
> By default the phycore-som has support for two watchdog devices: 1st the
> internal imx6 watchdog and 2nd the DA9062 PMIC watchdog. According [1]
> the PMIC watchdog is used as boot watchdog. It is common to use this
> watchdog during "system up" time too. Furthermore the PMIC watchdog can
> be used to address ERR007117 since the phycore-som can be equipped with
> NAND or eMMC storage.
> 
> The PMIC watchdog can be enabled/disabled by the PMIC itself if the PMIC
> enters POWERDOWN mode or by the host. The PMIC powerdown mode can't be
> used due to the PCB design. So the watchdog is still enabled during a
> suspend which causes a system reset. We need to tell the driver to
> disable the watchdog during a system suspend and to reenable it upon a
> resume to fix this.
> 
> [1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi#n73
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
