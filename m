Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69913114CB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 08:38:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWbgOHSQ/mKHvEWrAM/3iX0TpGygTJM9L3lPayz1hNY=; b=WtX8Pc8LLXJxSk
	U0jPiaB098osHD3s3DF8yhId9o4O2xxQE/OscC7pvgGiGy5XWTb9BZWNFoMd1LeNnB1ETku+xzlDs
	9g2rxgJ+wAY67VHQosBRwlHqE5Fk34luKNURLiQl/j7MoJpLtFnsMFY5koGFrlOEcYrXbWU3eCtcY
	4X6oWmwGy48KtH5DxKbiNshweNoUv9+A5nrU1TKaXR/B8WB9ogENlwxhKjBANW872SXI42ouM5dGp
	jo65qzqUl9mriM66FbSJ0a9DZBna/nEY3fpQF+RwQ3C7SaGi43UcctObfSq/Q5+2J11a1qagmJOfv
	e1LFv9A+wlgx3e4cCGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8CB-000060-V6; Fri, 06 Dec 2019 07:38:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8C3-00005F-Fw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 07:38:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1id8Bx-0001yw-23; Fri, 06 Dec 2019 08:38:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1id8Bw-0007V9-1B; Fri, 06 Dec 2019 08:38:20 +0100
Date: Fri, 6 Dec 2019 08:38:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [v6] i2c: imx: support slave mode for imx I2C driver
Message-ID: <20191206073819.lntjjxpcjm5yrb7y@pengutronix.de>
References: <20191203114809.21226-1-biwen.li@nxp.com>
 <20191204100005.r56huywxa7h3c6zr@pengutronix.de>
 <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a1a00c1-e9fa-36a1-0e79-3492d9b98d9f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:32:55 up 151 days, 13:43, 140 users,  load average: 0.05, 0.13,
 0.13
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_233827_531828_3494F1BB 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, Biwen Li <biwen.li@nxp.com>,
 linux-arm-kernel@lists.infradead.org, wsa@the-dreams.de, shawnguo@kernel.org,
 xiaobo.xie@nxp.com, leoyang.li@nxp.com, xiaoning.wang@nxp.com,
 linux-imx@nxp.com, kernel@pengutronix.de, jiafei.pan@nxp.com,
 laurentiu.tudor@nxp.com, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 12:43:46PM +0100, Oleksij Rempel wrote:
> Hi,
> 
> On 04.12.19 11:00, Sascha Hauer wrote:
> > Hi,
> > 
> > The patch looks ok to me now, but I still do not like the #ifdeffery
> > around CONFIG_I2C_SLAVE. With the patch I just sent (You are on Cc:)
> > we could apply the following on your patch which makes it more readable
> > and increases compile coverage.
> > 
> > Wolfram, Biwen, what do you think?
> 
> 
> RCAR depends on slave:
> config I2C_RCAR
> 
>         tristate "Renesas R-Car I2C Controller"
> 
>         depends on ARCH_RENESAS || COMPILE_TEST
> 
>         select I2C_SLAVE
> see:
> drivers/i2c/busses/i2c-rcar.c
> 
> So, I would suggest to do the same in imx.

I suggested that to v1 of this patch. If we agree though that I2C slave
support deserves an extra Kconfig option we should also make the drivers
cope with that situation. Otherwise we would better make I2C slave
support non optional.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
