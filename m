Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4241CCF60
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVUUTLU/bQtrY44AXzJA4Zd0yAFS+8ye2cRhpKxX2h4=; b=jhglqKyN9wq643
	JnW/eiPa8bX8o3VvmJZ6+3omHhmXu58GogbucDOot0nWVsrbhPfd7/9ovT4452UYvU7F0+X235Yz7
	ybHAyHoHMeCL1hXqNWBK6MHcdh7dqmc4vGPtPr6kWHq3qzTeb5fNP10Y6QUW6yL5YesFFAu/dIlPI
	MSgsVFKuavbXQUrHgPH32DEswb19q4T9jCr4xY2KsCUtvJRptqLWzuUCn0gVlvZn5B2nFOGYF7enx
	QAbhAZAfETiV8NKqxsfudzBnEWp1fWXLmTn5aYA+jdQVss2BoYQG+2Fq0k/f79GvHwS4x5r6rha9s
	FjiDdOMdrNVfLo2znx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH1gb-0001h4-7P; Sun, 06 Oct 2019 08:14:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH1gT-0001gk-U1
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:14:31 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 318A32133F;
 Sun,  6 Oct 2019 08:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570349669;
 bh=wLFIswgun0P1s4n7yOGXtZqeAdGWjgCn4WGDCzbNC9Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1b2LJYirZSUaREtzlOrzRTLT1gmSETrt7ry+ItMjKfiWuPJCso+VN133fKS+FREhP
 KNZfK9CDg6dbyKR36ttT44SziwVBwaNnZTIctjDRRNoZRCG9fKs0emI5W5b/sJphC7
 9ohUfpMaVeqXaM5jdzol+qCiE5Uvoa1zFWMPThtQ=
Date: Sun, 6 Oct 2019 16:14:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Message-ID: <20191006081413.GZ7150@dragon>
References: <e4cc32cf4814aa0d63e72a824fb09f6b637b792c.1568290456.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4cc32cf4814aa0d63e72a824fb09f6b637b792c.1568290456.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_011429_983803_37A3B6B8 
X-CRM114-Status: GOOD (  13.54  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peter Chen <peter.chen@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 03:16:39PM +0300, Leonard Crestez wrote:
> Some imx chips don't have chips 

I cannot parse this.  Do you mean 'don't have Ethernet controller'?

Shawn

> and a limited number of USB controllers.
> For such cases NXP suggests configuring the USB controller as an
> ethernet gadget for network boot testing.
> 
> Switch USB_CONFIGFS to be built into the kernel so that we can configure
> the ethernet gadget without also deploying modules.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
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
