Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4893F913EC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 03:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jNIqI9REmEiyK6Qxb6N3W9RkHuX8fagcEaj6rpgbRk=; b=lmL0gQBnyzhw+t
	ksL4kGf4xDhctj+gMg1qBZQN7rUieu0db3XL2tnXrlaVmzUDpDwGeyH9C+6d8vWXlKyY8+dAWJnRC
	uazhRzvOcdCPXTD5MfphXdcQh8kDhOzYXSWEg7eY4WojDQIEhXxqympYNnwwgPH5ogldhkO4iJSJl
	2dztIk9mfNnJJfT8PIkJzvtgnv0X5gtfdHF5LU5Tq1NiW22obw4A84XeMk070AMZE4OzJF341R7ur
	FUVsrvOn5mxXMb1ovLptJVD2VWjKqpr+Lcg9mYbogRcGhsl0s1aP+rIC/g2iG+RqIMcpuUTw45U5z
	Mp6tXxEbYbnMG9l6HS+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz9jj-000769-GQ; Sun, 18 Aug 2019 01:11:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz9jK-00075j-V2
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 01:11:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE6F52173B;
 Sun, 18 Aug 2019 01:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566090693;
 bh=HEk8XIpEA4mKu9ETPAtTenyB9qoVj6YJR6owDZIimHs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=sK9Zf/ugbsO75h1nHUNXz44KUjY5aEA9MnyjFVsDNwQTo4GWK7FXrVcl8buP+RkpQ
 IKARSoCV5i/ZRLTSA7Vx7M11YUQKMWzMqPd4RQkrPe05z/EE9Ib+ZloogrWcWnN5cW
 u/2QgfCMRzjgHcPCupHFUaAQ6csiw5Muyoa2MIyY=
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916D320EB51B2D9E28D55E1F5AE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
 <1565866783-19672-5-git-send-email-Anson.Huang@nxp.com>
 <20190817035220.268F32173B@mail.kernel.org>
 <DB3PR0402MB3916D320EB51B2D9E28D55E1F5AE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Subject: RE: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
From: Stephen Boyd <sboyd@kernel.org>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
User-Agent: alot/0.8.1
Date: Sat, 17 Aug 2019 18:11:33 -0700
Message-Id: <20190818011133.CE6F52173B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_181135_024944_9204180A 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-08-17 15:22:01)
> Hi, Stephen
> 
> > Quoting Anson.Huang@nxp.com (2019-08-15 03:59:42)
> > > diff --git a/drivers/clk/imx/clk-imx8mn.c
> > > b/drivers/clk/imx/clk-imx8mn.c index ecd1062..3f1239a 100644
> > > --- a/drivers/clk/imx/clk-imx8mn.c
> > > +++ b/drivers/clk/imx/clk-imx8mn.c
> > > @@ -82,6 +84,7 @@ static struct imx_pll14xx_clk imx8mn_dram_pll = {
> > > static struct imx_pll14xx_clk imx8mn_arm_pll = {
> > >                 .type = PLL_1416X,
> > >                 .rate_table = imx8mn_pll1416x_tbl,
> > > +               .rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
> > 
> > Why is rate_count added? That's not described in the commit text.
> 
> rate_count is necessary for table search during set_rate, it was missed previously,
> I will add it into commit text in V2.
> 

Right, isn't that a more critical fix to make by itself instead of
rolling into this change that adds a few more frequencies?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
