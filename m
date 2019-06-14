Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD2846729
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 20:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cF1J764gnCYAJkugex210UKGEnZBQcTH6IuK6I0EbI=; b=AfX6sVU+EGWO3Q
	29l9sSZuk3pAgtA9UrwbImSmpJ+ubsiS/yZmeFQkD69vGvDrTXjjajJg0NJGb/btXJLx/3AUxvIQR
	bSJeocj60XX2bDHmR6iN/1QDuC4Mqk3gCtnmRgnrre90to7TVKruQdeck0mDN6dvLvGKVlRpbV1Sw
	Fue5i59UHX9QNz4+DQBBebpWzf62SV+QLYjRp4UT06oa5geQ7Y5Wb8mi0PU6DFMLQWxdtILAt5bOM
	ZqzBjAfutX/H4g2Zh+TbZyMe0CBY1S88QIeYaotBH8W/Ml/+sXwh/9YuB+Ho2ntL1zLhM1r55kjOQ
	vqrsaFbrwKgI+1yQ081Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqds-0007U3-8j; Fri, 14 Jun 2019 18:09:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqdi-0007TP-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 18:09:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1hbqdY-00054m-Sl; Fri, 14 Jun 2019 20:09:16 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>)
 id 1hbqdV-0004US-KX; Fri, 14 Jun 2019 20:09:13 +0200
Date: Fri, 14 Jun 2019 20:09:13 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Message-ID: <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
Mail-Followup-To: Sven Van Asbroeck <thesven73@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vinod <vkoul@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 dmaengine@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 19:38:35 up 27 days, 23:56, 60 users,  load average: 0.02, 0.08, 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_110926_136052_E2D93C5B 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vinod <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 09:25:51AM -0400, Sven Van Asbroeck wrote:
> On Fri, Jun 14, 2019 at 6:49 AM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > According to the original report from Sven the issue started to happen
> > on 5.0, so it would be good to add a Fixes tag and Cc stable so that
> > this fix could be backported to 5.0/5.1 stable trees.
> 
> Good catch !
> 
> However, the issue is highly timing-dependent. It will come and go depending
> on the kernel version, devicetree and defconfig. If it works for me on
> 4.19, that
> doesn't mean the bug is gone on 4.19.
> 
> Looking at the commit history, I think the commit below possibly introduced the
> issue. Until this commit, sdma_run_channel() would wait on the interrupt
> before proceeding. It has been there since 4.8:
> 
> Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
> interrupt handler")

I think this is correct. Starting with this commit, the interrupt status fr
channel 0 is no longer cleared in sdma_run_channel0() and
sdma_int_handler() is always called for channel 0.
During firmware loading the interrupts are enabled again just before the
clocks are disabled. The interrupt is pending at this moment so on a single
core system I think this will always work as expected. If the firmware
loading and the interrupt handler run on different cores then this is racy.
Maybe something else changed to make this more likely?

With this new change sdma_int_handler() is no longer called for channel 0
right, so you should also remove the special handling there.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
