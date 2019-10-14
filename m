Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CE5D631B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aRt9IzpoGW5aWkoiG9Q4oXGk51MMlM1IV/Ihmi393Y=; b=qv42vSftkkR8rE
	IpWHHnmBdX4zNojRzyL6A3odUMKxmjDY9kgfjQvvibcIFEtQtJp7kG+x6WxTM1zcJE5KZdNKqh6Oq
	5zhP3v9WZMK9lGMBp9afjJ23SKvKoJXkpDCkVna+Y5nyE1gIlQd3c1Yas3D8RwDFGXAMQpui6p7ay
	0lGPoI0PSQcGX6vrqGpTYojCsRvT3QcNqypcUKeBIclZ/EM4t68npG6HVhGcXGnnsiSsa6PP/lSjD
	rnhFtXp1k5fhc4HJEpqKoKuOANsxH/Cc0+jpc+zUebxUd6U+dsMLChhuTM+6nAvXpqpdo0tio8tti
	5tJjBnSkEph6gSmoVjIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzqc-0000HL-9U; Mon, 14 Oct 2019 12:53:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzqP-0000Gx-43
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:53:02 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 229B921835;
 Mon, 14 Oct 2019 12:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571057580;
 bh=qVOi3JyHSd01H1fa203b6eMwDVUsCmyS1NI5RF7xiYs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2m6YDdH02ahNJecJJVFgAsW3P+qT2q+WVLN/M2a793kcXEBYfb0P6cWUiXTL4TsuB
 dUyRVvfM1VOwXUzXAXnhEkX1fjG6kNLevdYiNQ5A5aQRQOnZNsE8W3l7jUU9BPodR+
 daJOHP0Ap8LTrVzVktnXNGvBPPjt+ntDTzchDb2k=
Date: Mon, 14 Oct 2019 20:52:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Message-ID: <20191014125238.GS12262@dragon>
References: <a0820cfcfa4bc2d9a3949a2b57e72c23d574deb2.1570460874.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0820cfcfa4bc2d9a3949a2b57e72c23d574deb2.1570460874.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_055301_188383_06015201 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 06:09:44PM +0300, Leonard Crestez wrote:
> Some imx chips (6sll, 6ulz, 7ulp) don't have ethernet support and only a
> limited number of USB controllers. For such cases NXP suggests
> configuring the USB controller as an ethernet gadget for network boot
> testing.
> 
> Set USB_CONFIGFS to be built into the kernel so that we can configure
> the ethernet gadget without needing modules.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Peter Chen <peter.chen@nxp.com>

Added missing 'ARM: ' prefix and applied the patch.

Shawn

> ---
> Changes since v1:
> * Improve commit message (sorry for messing it up)
> Link to v1: https://patchwork.kernel.org/patch/11142935/
> 
>  arch/arm/configs/imx_v6_v7_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
> index ade4a2dd1a18..5debac5b038e 100644
> --- a/arch/arm/configs/imx_v6_v7_defconfig
> +++ b/arch/arm/configs/imx_v6_v7_defconfig
> @@ -325,11 +325,11 @@ CONFIG_USB_TEST=m
>  CONFIG_USB_EHSET_TEST_FIXTURE=m
>  CONFIG_NOP_USB_XCEIV=y
>  CONFIG_USB_MXS_PHY=y
>  CONFIG_USB_GADGET=y
>  CONFIG_USB_FSL_USB2=y
> -CONFIG_USB_CONFIGFS=m
> +CONFIG_USB_CONFIGFS=y
>  CONFIG_USB_CONFIGFS_SERIAL=y
>  CONFIG_USB_CONFIGFS_ACM=y
>  CONFIG_USB_CONFIGFS_OBEX=y
>  CONFIG_USB_CONFIGFS_NCM=y
>  CONFIG_USB_CONFIGFS_ECM=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
