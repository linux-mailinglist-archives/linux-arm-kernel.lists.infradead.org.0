Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72B7B5B59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 07:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNa4TSSyVBrgOJ5C1C8CfR3wclS8lxiJpq8iGGdQto4=; b=OPRkOyDPgMtFW9
	qoJ9d068Z6TUi2mdgHkJmzyer31Ay0ZXmmmyVJSjz3vl39G5+Bh3QXUbPg8CArTBMVYJeV1JH9BMr
	adrQ2aogTpNwYcISPntl2B8EgksHvZGuaj2evwukQ2X57RI7Qr42MqcJlcPs9DUqMwI68o10zbZIZ
	FPvivTCZp48aVlasTXaPBLNGULC2CQpRS5gFX1yR1Fy3kq55haDpedC+qJ9NewuxHedXLNsMZJXX/
	gZHi+tDAiA7sLYn27y2/HOb42mxX0br8XYc1RtJkgo0Pr6NOcr5lAlxLHYrK1WsmArmTgcOu8h3iA
	XZYNtBpq8d/+7oPMo4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASuG-0002Y3-5F; Wed, 18 Sep 2019 05:53:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASty-0002XJ-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 05:53:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EF6E214AF;
 Wed, 18 Sep 2019 05:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568785997;
 bh=HBh0qOHnVIY+RKDV01ik+wwHQTg6ypDerBR3WXnw6nI=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=hTHYmX++O88o26Nb3TxPY1SHRqgFZk+yOUfmagmW5DahK+67NNVPcrjrWDo3cCqrh
 I73dLNgd0vuZDvDcjMZjICEnpZBwZnmAyDYp+40NiLla5PXGP9zcF1clA0pbaNiZm/
 bedvjC6jvSL9otTeBIWkw7C864Ztymk1Lz8ww564=
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4481D54C4508152E458BA9BE888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481A31DD68C3C3409E95339888F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190917162820.8DC542067B@mail.kernel.org>
 <AM0PR04MB4481D54C4508152E458BA9BE888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 22:53:16 -0700
Message-Id: <20190918055317.8EF6E214AF@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225318_371235_D03CBBEC 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-09-17 22:45:20)
> Hi Stephen,
> 
> > Subject: RE: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
> > 
> > Quoting Peng Fan (2019-09-16 23:20:15)
> > > Hi Stephen, Shawn,
> > >
> > > > Subject: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
> > >
> > > Sorry to ping early. Is there a chance to land this patchset in 5.3 release?
> > >
> > 
> > No, it won't be in 5.3 because that version is released. Shawn already sent the
> > PR for 5.4 too so this will most likely be in v5.5 at the earliest.
> 
> Thanks for the info. But this patchset is bugfix, so hope this could be accepted in 5.4.
> 

Ok. Then let's throw it into 5.4 PR and see what goes wrong.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
