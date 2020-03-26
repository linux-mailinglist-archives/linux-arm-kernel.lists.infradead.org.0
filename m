Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA52C194239
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6AuqI89vTnkFDpY8jlqSh8GR2OBcjyBiKWZnto9ejY=; b=INt2z7MBDoJpPg
	BHGarJSvzDnRKqpLPYaa+G+L+taYlHZwwKDQJe/2h6Aol1UhSQ8rQ39equNV7wGH9KRN3Wf+waKYB
	BuZAMIkbOV0A5iNZzdIjlzlDTMs9JYD4KcLJPrL8B7hxmsJbVUxnHRTN7Uj4hzyOzp3EmZuDc9YDH
	c4e6UHutEb98vje+nn8wZa4KT1YOoMDuI9p11/Wde9lHXUCd62krkby2nSonvzDQYrqdOsCAKaosX
	0VWSxT3wVXwjLmg+9L3BjIm04f3eU+PtO4dI0O7J2PuJe+0d/bOuP3NRWYrnUdpBAPh1C/c09NFFI
	25wmkoVpCF0BlAN6E1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU0X-0000DO-UZ; Thu, 26 Mar 2020 15:01:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTzf-00078N-In
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mTjPEJu+QkU3fI0mJj42IMjiIlzgL6R60YMdQoKc3oc=; b=KIjfvbccPd2baQQYlJVF49MvG
 g9s1orjCx5h/3/xipDgJJtLVOuqpcap6pyMWHLoUuVhKvcpIi3u38GZITMRx8Mf/7FezT6GCXnYCx
 Xyl2JtXSsu87NBBjJrIRnEUWysSenbuiPkbX3OKU6U92BJxwuO+kpL70L4kJW2VlHRfrkN7PXtRmb
 qEGiCA1wRmmmTnBO/6xQ8nxoU24GEiA5uw39wnArFcdzJTv7aae1h30QF/O00zKLio8oxWhKaTDK9
 KMiz2vpoYrl3nHOj9v2ioAXz/eaD6rfMjZ+AO4Yj1RRE3h6/cp5r/yMqNr0V+7hbdjX4hgwyBE0zO
 kz7Rmuhdg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41644)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHTxI-0003zz-Ah; Thu, 26 Mar 2020 14:58:00 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHTx8-0003Ih-PH; Thu, 26 Mar 2020 14:57:50 +0000
Date: Thu, 26 Mar 2020 14:57:50 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [RFC net-next 0/2] split phylink PCS operations and add PCS
 support for dpaa2
Message-ID: <20200326145750.GA25745@shell.armlinux.org.uk>
References: <20200317144944.GP25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317144944.GP25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080027_625569_9B8DFEBC 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 netdev@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Was there any conclusion on this 5 patch series, and whether I should
submit it for net-next?

The discussion around patch 2 seems to have tailed off, and no one
seems to have replied to patches 3 to 5.

Thanks.

On Tue, Mar 17, 2020 at 02:49:44PM +0000, Russell King - ARM Linux admin wrote:
> This series splits the phylink_mac_ops structure so that PCS can be
> supported separately with their own PCS operations, and illustrates
> the use of the helpers in the previous patch series (net: add phylink
> support for PCS) in the DPAA2 driver.
> 
> This is prototype code, not intended to be merged yet, and is merely
> being sent for illustrative purposes only.
> 
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi   | 144 +++++++++++++++
>  drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c | 226 ++++++++++++++++++++++-
>  drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h |   1 +
>  drivers/net/phy/phylink.c                        | 102 ++++++----
>  include/linux/phylink.h                          |  11 ++
>  5 files changed, 446 insertions(+), 38 deletions(-)
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
