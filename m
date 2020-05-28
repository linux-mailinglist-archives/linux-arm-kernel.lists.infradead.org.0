Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDC01E5EA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyyH5hT2Oc/1F5+A5TRi04jVxQVXrVT1frECQQRyzXU=; b=T9Dd/Q4Y2TrYOP
	iKvwAU2VoDojaLNuSvuqiX5+Zo8fECKImIFsEAgtrLhQKwpHLJXg3F2Q/BmWfgJ6dcYW5/nYfOTj/
	nDt8Y3OCudHhQuUYZU7iqYbETK5pmYQ7jhSd/ppqAjs8/e/7ScSwJ50zGsMZqtUgLT5VVQSCBoSmJ
	ulqI0oo34vy1BgBNAb4mrQhBqVkMKEKohsTBitF89RhfISnDAryVPcd0A1T0VzKqIdHODB4LX5JDg
	A6WOs64S2eq505RxP72U7UcTa5Fle/4epp1KxKqCdkkPMswZuFYgEA707hwOPF5jNY1ewiSkZgGoS
	nEQD+Yckro6Rd45WWurA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGzQ-00043q-57; Thu, 28 May 2020 11:46:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGzF-000432-IS
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:46:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeGz2-0002tO-Rx; Thu, 28 May 2020 13:46:00 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeGz0-0001oA-7h; Thu, 28 May 2020 13:45:58 +0200
Date: Thu, 28 May 2020 13:45:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [RESEND PATCH v11 2/3] drivers: input: keyboard: Add mtk keypad
 driver
Message-ID: <20200528114558.5decxsun2o65k2fr@pengutronix.de>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
 <20200528090144.54033-3-fengping.yu@mediatek.com>
 <20200528102730.GK1634618@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528102730.GK1634618@smile.fi.intel.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:44:39 up 195 days,  3:03, 196 users,  load average: 0.02, 0.07,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_044613_607872_52AF8325 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Fengping Yu <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On 20-05-28 13:27, Andy Shevchenko wrote:
> On Thu, May 28, 2020 at 05:01:47PM +0800, Fengping Yu wrote:
> > From: "fengping.yu" <fengping.yu@mediatek.com>
> > 
> > This adds matrix keypad support for Mediatek SoCs.
> 
> ...
> 
> > +config KEYBOARD_MTK_KPD
> > +	tristate "MediaTek Keypad Support"
> > +	depends on ARCH_MEDIATEK || COMPILE_TEST
> 
> > +	select CONFIG_REGMAP_MMIO
> 
> This is wrong.

Why is this wrong? The driver uses the rmap-mmio functions.

Thanks for the explanation =)
  Marco

> 
> > +	select INPUT_MATRIXKMAP
> 
> ...
> 
> > +	ret = devm_add_action_or_reset(&pdev->dev, kpd_clk_disable,
> > +				       keypad->clk);
> 
> I would leave on one line (only 81 characters).
> 
> > +	if (ret)
> > +		return ret;
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
