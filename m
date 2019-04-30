Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAA3F943
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 14:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX7hpcMGOfOoLynBiNsQeN1r9Z6LXCltsOf3fCWm000=; b=IpFzKqC+geg9g3
	lFRdsFZNkEm75BvlBEGUJu8+J749f8CcTutNjpLQ0FhAqDtIdQzzH4WqgFn1ziyb5v9kGWagFACh4
	SuxR+ZYkN/raWJLaZ4IYvPxbna+eoHCVXyYAS1Plr6pic/e4E7H7hrp+CNnMA7vk4Tq/c+F0ZFea+
	nHNsa87USKa0vcWyPYlP0TCG4t3Qga9OkWViVbBMfkFWpENambCAOnJo9oPVv+TkMlEUcbTK03mcM
	gxn2nwXXFdNn3R3MmMVtrrHahXf2vxK71QMANKGm4xWs7It4m6M5I+DQJRxCOIxHA4wbNnNgyQg4C
	IwQwH+JOirM0SrLCcwkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSDt-0004B3-37; Tue, 30 Apr 2019 12:51:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSDl-0004AW-Mz
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 12:50:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hLSDe-00022T-2M; Tue, 30 Apr 2019 14:50:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hLSDb-0001O9-43; Tue, 30 Apr 2019 14:50:43 +0200
Date: Tue, 30 Apr 2019 14:50:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/2] i2c: imx: I2C Driver doesn't consider I2C_IPGCLK_SEL
 RCW bit when using ls1046a SoC
Message-ID: <20190430125043.weqwzim4gpsvtkfe@pengutronix.de>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430044719.30720-1-chuanhua.han@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:47:42 up 42 days, 23:58, 86 users,  load average: 1.11, 1.13, 1.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_055053_988605_A05F1428 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sumit.batra@nxp.com,
 eha@deif.com, festevam@gmail.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, wsa+renesas@sang-engineering.com, robh+dt@kernel.org,
 l.stach@pengutronix.de, linux-i2c@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux@rempel-privat.de, shawnguo@kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:47:18PM +0800, Chuanhua Han wrote:
> The current kernel driver does not consider I2C_IPGCLK_SEL (424 bit
> of RCW) in deciding  i2c_clk_rate in function i2c_imx_set_clk()
> { 0 Platform clock/4, 1 Platform clock/2}.
> 
> When using ls1046a SoC, this populates incorrect value in IBFD register
> if I2C_IPGCLK_SEL = 0, which generates half of the desired Clock.
> 
> Therefore, if ls1046a SoC is used, we need to set the i2c clock
> according to the corresponding RCW.

So the clock driver reports the wrong clock. Please fix the clock driver
then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
