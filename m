Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B14AB60A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m3XfIXySAvyJeqXDIVYHuMlvVyheS2gClcVUM0Os0to=; b=d565EO8vBUQQUO
	DJuuPPdDaYyie8KMOxaSZ9ZL76M4XrD4tlxFqpkyYhSOU1RDEU5d2D4ESFTITqtf79GgrYbmIJbUn
	WnOjpTo5JrDJ77ijLICdR+oH3AWSt7ZV6PdGogq6GzYa3wAMLRhNkMFPgqcDgQbCgkPIEsC72oM6V
	HRHQCmwFF5AFIJvwl4QZhB1SkTnPKvxH/inOJ7sD5ktHGUGBzQ/V+zm23Rvs5iBQS3cwsPYtp1baD
	8qS9p6k/Zts2hvE6zCbAqUG4XQO40nSrSBaXL7OVxDaJF69LQHjsyc6WvX1Sr0vGSG1epOFk3/jVG
	UQTTdoppTdSxV25M8b2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BZx-0005Mb-M7; Fri, 06 Sep 2019 10:34:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BZF-0004wj-2s
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:34:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i6BZ3-0002uq-AS; Fri, 06 Sep 2019 12:34:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 0/2] i.MX GPC DMA warning fixes
Date: Fri,  6 Sep 2019 12:33:59 +0200
Message-Id: <20190906103401.22294-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_033413_144212_BD81F0CF 
X-CRM114-Status: GOOD (  10.60  )
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
Cc: kernel@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

those two patches get rid of an annoying boot warning on all i.MX6+
devices, as the generic OF DMA code tries to forcefully configure the
DMA capabilities for the virtual GPX power domain devices, which will
never do any DMA.

This solution isn't the most elegant, as we are making up a 0 DMA mask
to silence the warning instead of skipping the DMA configuration
completely. A previous submission of this change for just the GPC v1 [1]
was shot down for this reason. But then we haven't made any progress in
fixing this in a better way, as other systems depend on the forceful
OF DMA configuration to work correctly. So we are stuck between a rock
and a hard place here.

IMHO we should accept the slight uglyness of this solution in order to
get rid of the warning now, as it is confusing users into thinking their
kernel configuration or system setup is faulty, while everything is
perfectly in order.

Regards,
Lucas

[1] https://patchwork.kernel.org/patch/10621589/

Lucas Stach (2):
  soc: imx: gpc: set DMA mask for PD platform devices
  soc: imx: gpcv2: set DMA mask for PD platform devices

 drivers/soc/imx/gpc.c   | 1 +
 drivers/soc/imx/gpcv2.c | 1 +
 2 files changed, 2 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
