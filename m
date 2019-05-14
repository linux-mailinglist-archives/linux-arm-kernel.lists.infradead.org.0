Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489FF1CBBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 17:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyxXX4HeO5FQ9yZRIIOsZ3HcxPTMqE3npd2RgTAanpE=; b=JYt+ncrimyXfoC
	sB/9/M+lo9J6En7Lzs0zXlk8P8N/wDyOTNlS3WoyAE87NrBGZWMOww3LnkQsHbcq72w3nO63LdOhU
	eor+a6+jxfQ1mP0Hld6+zNwpMlHMq+xUSGIndeJNZa4H+qSvVeQCIqK2p7Th81HDuvjqZgFlVG3vp
	U6o6gkCTy/OHD7gcZa+V5EyqHQZK4DnqQKlHFw9ygJ4X9rNiWDI9hzRSMBQRflg53d3VWbzQQxdWA
	i9D+gSaFx38ypGJOOwTx4o2KUc1auw0k4HPWOyFn7MdlNVRYjr3G1npoel+XvXY9zLUI/e7R+ei8z
	l7RcTG0Nm0kfAMCSENvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZGe-0000nj-G6; Tue, 14 May 2019 15:23:00 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZGX-0000nI-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 15:22:55 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hQZGN-00028S-Sn from George_Davis@mentor.com ;
 Tue, 14 May 2019 08:22:43 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Tue, 14 May
 2019 08:22:41 -0700
Date: Tue, 14 May 2019 11:22:40 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
Message-ID: <20190514152240.GB18528@mam-gdavis-lt>
References: <20190403221241.4753-1-festevam@gmail.com>
 <20190513171826.GA18591@mam-gdavis-lt>
 <20190514004539.GG11972@sasha-vm>
 <20190514011606.GA18528@mam-gdavis-lt>
 <20190514020742.GJ11972@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514020742.GJ11972@sasha-vm>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: SVR-ORW-MBX-05.mgc.mentorg.com (147.34.90.205) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_082253_759660_0C698357 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, baruch@tkos.co.il, Fabio Estevam <festevam@gmail.com>,
 ken.lin@advantech.com, stable@vger.kernel.org, smoch@web.de,
 stwiss.opensource@diasemi.com, linux-imx@nxp.com, kernel@pengutronix.de,
 aford173@gmail.com, Marc Kleine-Budde <mkl@pengutronix.de>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sasha,

On Mon, May 13, 2019 at 10:07:42PM -0400, Sasha Levin wrote:
> On Mon, May 13, 2019 at 09:16:07PM -0400, George G. Davis wrote:
> >On Mon, May 13, 2019 at 08:45:39PM -0400, Sasha Levin wrote:
> >>On Mon, May 13, 2019 at 01:18:27PM -0400, George G. Davis wrote:
> >>>Hello,
> >>>
> >>>On Wed, Apr 03, 2019 at 07:12:41PM -0300, Fabio Estevam wrote:
> >>>>Commit 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> >>>>exposed an issue on imx DTS files using AR8031/AR8035 PHYs.
> >>>>
> >>>>The end result is that the boards can no longer obtain an IP address
> >>>>via UDHCP, for example.
> >>>>
> >>>>Quoting Andrew Lunn:
> >>>>
> >>>>"The problem here is, all the DTs were broken since day 0. However,
> >>>>because the PHY driver was also broken, nobody noticed and it
> >>>>worked. Now that the PHY driver has been fixed, all the bugs in the
> >>>>DTs now become an issue"
> >>>>
> >>>>To fix this problem, the phy-mode property needs to be "rgmii-id",  which
> >>>>has the following meaning as per
> >>>>Documentation/devicetree/bindings/net/ethernet.txt:
> >>>>
> >>>>"RGMII with internal RX and TX delays provided by the PHY, the MAC should
> >>>>not add the RX or TX delays in this case)"
> >>>>
> >>>>Tested on imx6-sabresd, imx6sx-sdb and imx7d-pico boards with
> >>>>successfully restored networking.
> >>>>
> >>>>Based on the initial submission from Steve Twiss for the
> >>>>imx6qdl-sabresd.
> >>>>
> >>>>Signed-off-by: Fabio Estevam <festevam@gmail.com>
> >>>>Tested-by: Baruch Siach <baruch@tkos.co.il>
> >>>>Tested-by: Soeren Moch <smoch@web.de>
> >>>>Tested-by: Steve Twiss <stwiss.opensource@diasemi.com>
> >>>>Tested-by: Adam Thomson <Adam.Thomson@diasemi.com>
> >>>>Signed-off-by: Steve Twiss <stwiss.opensource@diasemi.com>
> >>>>Tested-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >>>>Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >>>>---
> >>>>Changes since v2:
> >>>>- Also fixed imx6q-ba16
> >>>>- Removed stable tag as it does not apply cleanly on older
> >>>>stable trees. I can manually generate versions for stable
> >>>>trees after this one hits mainline.
> >>>
> >>>Please add this commit to the v5.1.x stable queue to resolve NFS root breakage
> >>>in v5.1. I can confirm that it applies cleanly to v5.1.1 and resolves NFS root
> >>>breakage that occurs on i.MX6 boards in v5.1.x, tested on imx6q-sabreauto.dts
> >>>and imx6q-sabresd.dts. Although the fix should be backported to pre-v5.1.x
> >>>stable series as well, it does not cause problems for pre-v5.1 but results in
> >>>NFS root breakage for v5.1.x.
> >>
> >>What's the commit id in Linus's tree? I don't see it.
> >
> >Er, um, sorry, it was deferred to linux-next commit 68e9c97161b3 ("serial:
> >sh-sci: disable DMA for uart_console"), which quite frankly rather annoyed me
> >personally since linux-next commit 68e9c97161b3 is required to fix a regression
> >caused by v5.1 commit 6d4cd041f0af. In my opinion, linux-next commit
> >68e9c97161b3 really should have been pushed to the v5.1 release, earlier, due
> >to the noted regression, but I'm happy to wait for linux-next commit
> >68e9c97161b3 to make it to Linus's tree before propagating it to linux-stable.
> 
> We'll happily take it once it makes it into Linus's tree and into a
> release.
> 
> >Meanwhile, I wanted to let you know that v5.1.x is rather broken, in this
> >regard, on i.MX6 as-is for now.
> 
> This would be something we can't do much about, but given it's an
> important fix it should make it into Linus's tree very soon, right?

Yes, it will hopefully reach Linus's tree soon. Apologies for my impatience. :)

> 
> --
> Sasha

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
