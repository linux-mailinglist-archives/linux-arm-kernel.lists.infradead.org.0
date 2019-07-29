Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8941378EB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZeBxtcCuJosUiRt0GC7GAPhRISr0wq4K7Bb5k5Himo=; b=Fb3PgE6tb4oqfg
	I2/vv5cm5WYJGCLhb9AMpWdJs3UYqEGeSJESMKJYXhMpiE9SWQ41z68Xu9MHFcXNlobRk8X4QgTqR
	DgslKr4NzTqkLcPwa0A5bMDatWqngklXdb5P1HZXD+tq+KGNbIIZ9i2IK7IU/L79MYDvEmZVpwrWA
	BZ90Tv8udH87JTPIOb1B+lm39inDfVfP//MHOart9+RX7EyyL3wU2/MelCTl37ExXnC+3WtfUCaQa
	YWUhnL8pYucSUQYqO3lD7VSx66148a+VPiiR599ulxeT7pdehG34cOzE/7ad1/yzRoJZUlos9Iath
	PLgZE1esnsmthzRCuoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7FL-0006Lf-0r; Mon, 29 Jul 2019 15:07:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7F8-0006Kz-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:07:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 08FEF1A0241;
 Mon, 29 Jul 2019 17:07:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F084F1A0157;
 Mon, 29 Jul 2019 17:07:12 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D19D52060A;
 Mon, 29 Jul 2019 17:07:12 +0200 (CEST)
Date: Mon, 29 Jul 2019 18:07:12 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2] clk: imx8mq: Mark AHB clock as critical
Message-ID: <20190729150712.3ah2ayeonhdfrt5n@fsr-ub1664-175>
References: <1564384997-16775-1-git-send-email-abel.vesa@nxp.com>
 <CAOMZO5C0WbaDzFcjeXeS1PivWUme=bzPur6Hj_xNz1oVzvpW2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5C0WbaDzFcjeXeS1PivWUme=bzPur6Hj_xNz1oVzvpW2Q@mail.gmail.com>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_080718_655008_5C5E5386 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Guido Gunther <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On 19-07-29 09:19:01, Fabio Estevam wrote:
> Hi Abel,
> 
> On Mon, Jul 29, 2019 at 4:23 AM Abel Vesa <abel.vesa@nxp.com> wrote:
> >
> > Keep the AHB clock always on since there is no driver to control it and
> > all the other clocks that use it as parent rely on it being always enabled.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >
> > Changes since v1:
> >  * added comment in code why this clock is critical
> >  * added T-b by Daniel
> >
> > This needs to go in ASAP to fix the boot hang.
> 
> Which boot hang exactly? Are you referring to the TMU clock hang?
> 
> On the TMU clock hang, the issue was that the qoriq_thermal needs to
> enable the TMU clock.
> 
> Please always provide a detailed description in the commit log.
> 
> Also, if this fixes a hang it should contain a Fixes tag.

Please have a the explanation here:

https://lkml.org/lkml/2019/7/28/306

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
