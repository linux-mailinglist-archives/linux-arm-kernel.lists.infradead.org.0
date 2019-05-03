Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E78213198
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJH9xdIj1A8PrdiDf9J0m7FkzL/buDxWXAsFomw5ecA=; b=MNJU0auIq9YZm5
	EdIvhqOGgMi01jStNLRZJg5Yab5q7EwIElX06ajqNL/csAWucOMSDZJ7lWelBM9ApINa05Mg/qp/1
	TsxqyeRdJ55zrndM8DKJW0JH+HdFfJYZUGxoihvV03zj9j1ySZEliXLFSJfXNH9x6NueA+deQyIyz
	W+QitB3svWlIruWkxUNtkXUJtMSBuWH89YvXn1Qgmvup2J7HxBMq6LDQOXUPJlI19PwNZXzYNx23l
	/CFpO/bfZ0zWU9i/0RkjyarpB9q//sX0HFtRZlawseDYHho/bbTliXo+LTcORpzvA6C6n7iGffbtZ
	YUyzVYLms6QjpluwdSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaZJ-0006gg-5M; Fri, 03 May 2019 15:57:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaZB-0006gN-LE
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:57:43 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E136A2075C;
 Fri,  3 May 2019 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556899061;
 bh=AUKU07ZUFBcme7h7KpoCXxRbhp++Lt8tHdh+MTSYDRU=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=iI/v3AxYZ3PJnJf9fEElJ2Nayg2jbyzgtTKyeB6wlFN+K94YWkHAx/BRhkDtU21h9
 PgnpcxZOLaP0pqK/8Zixe3GJVBZwSih16RDfnV+iabXZLPjyUNmtVPxruD55BWUB3d
 BuTjUxT025pMKA56mDZaoNKJObKLJYbIfOkqv0rw=
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4211B63333AB7C50497AE17680350@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
 <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
 <AM0PR04MB4211B63333AB7C50497AE17680350@AM0PR04MB4211.eurprd04.prod.outlook.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: RE: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Message-ID: <155689906009.200842.4702575036187120025@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 08:57:40 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085741_721327_B6006716 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Aisheng Dong (2019-05-02 19:38:34)
> > From: Stephen Boyd [mailto:sboyd@kernel.org]
> > Sent: Thursday, May 2, 2019 5:01 AM
> > 
> > The Content-transfer-encoding header is still base64. I guess it can't be fixed.
> > 
> 
> How can we know it's base64?
> As I saw from the 'Headers' in patchwork, it's:
> "Content-Type: text/plain; charset="us-ascii"
> Content-Transfer-Encoding: 7bit"
> https://patchwork.kernel.org/patch/10922657/
> 
> We'd like to fix it this.
> 

I see:

Content-Type                                      text/plain; charset="utf-8"                                                                                                        
Content-Transfer-Encoding                         base64               

Maybe that's because I'm getting the mail directly instead of from the
mailing list?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
