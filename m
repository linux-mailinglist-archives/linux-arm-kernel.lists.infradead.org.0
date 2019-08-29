Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F0CA2044
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8rKf5O3KYczRpkbOISa5kvaQB1yLz+tpkTccTONBnA=; b=GoqGo5P08shJ2q
	k04kmQJ8BnQMbHqQGMUzSbFTNT12PqiHGsuRHBpw8yffiTpRfIzQhwoinZ7DtAs3UY8Xst9OkD1HT
	hzuUmtdf6a4kFYvpyGnCjELxIuVOPA93EXWHTEt4AQK7iKeP8GmaTMAy+czO6TqoT/BOXWKb5v4OG
	XxqmoW6YkB/5PmuUTa3PBBoHC5896eLTjHmrgKsgi2W4H1wH02TY29Dh2GEnxFQqGIO5HPweKNlbW
	MTRUWA7ZczCWU4K3xdGpyXmItZBl7WOmLW+19bIaYAxnrvO6A8AyA56vWvsEluwgZmwUotpu1MT2K
	ug/bTOStI13nsHB+Oy1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mrf-0001Wn-OL; Thu, 29 Aug 2019 16:01:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MrO-0001Vj-4D
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:01:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1i3MrI-0006wM-2k; Thu, 29 Aug 2019 18:01:12 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1i3MrG-0008Hy-VH; Thu, 29 Aug 2019 18:01:10 +0200
Date: Thu, 29 Aug 2019 18:01:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Message-ID: <20190829160110.6z223tmrckgx4c6b@pengutronix.de>
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
 <CAOMZO5BOYrpedOSH9fbBZkDj7n2dcVj8cG5h2U=mvw17F9hu5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BOYrpedOSH9fbBZkDj7n2dcVj8cG5h2U=mvw17F9hu5A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 18:00:46 up 103 days, 22:18, 63 users,  load average: 0.36, 0.13,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_090118_176561_72A6BFA2 
X-CRM114-Status: GOOD (  16.41  )
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
Cc: Peter Chen <peter.chen@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Schaefer <thomas.schaefer@kontron.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-29 12:58, Fabio Estevam wrote:
> Hi Thomas,
> 
> [Adding Peter Chen]
> 
> On Thu, Aug 29, 2019 at 12:49 PM Thomas Schaefer
> <thomas.schaefer@kontron.com> wrote:
> >
> > Currently the size parameter in the reg property of usbotg and
> > usbh nodes in imx7s and imx7d dts includes is set to 0x200 which
> > is wrong for the i.MX7 CPU. According to reference manual, spacing
> > of USB controller registers is 0x10000 instead.
> >
> > This patch will fix this and set the 'size' to 0x10000.
> >
> > Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
> 
> Thanks for the patch.
> 
> I would suggest adding one more sentence in the commit log explaining
> that this size mismatch caused real world problems in U-Boot.
> 
> This way it makes clear that this change was not done merely upon
> inspection, but it fixes a real bug instead.

Do we need a fixes tag too?

Regards,
  Marco


> Thanks,
> 
> Fabio Estevam
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
