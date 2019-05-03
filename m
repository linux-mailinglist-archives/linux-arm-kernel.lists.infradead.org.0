Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922C8131B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ImFyx88ReAO1Yq9WFwHO94ROz269l81KMapttOAPYU=; b=LBGgDrQ7W2Bl3M
	THu7ucTfsftOvt1+XsMTwJmgdaj+gT5JO1R8Sf3iZvMo9/6eHpbsMK7eB/RZqFxu9dfcYpViZwLa1
	cq8bUryyLiLEYW0azj/5P8AgCCKdrr1ANLFpSxT6oHyPretHVHVn/oM2X5qzo5P1/8YLwDmIZUO/R
	X3VQbsJBFhmuJ4U17oIUVgquQTPYX4JdDCd8Lhde9GUuusIA6/mNL8GC0UX1aaK+XjPGFk88r29ed
	6N4IoyDEoUjxEJigre6VE9WKziE2ETowtmsIe6TXHKgYsbthwX28mLa2z7/2Kj6EbAl6i4b4bdUWi
	xnS/nOc9Fog8szKTpw/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMac8-00005K-S5; Fri, 03 May 2019 16:00:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMac0-0008WQ-T8
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:00:38 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C7052075C;
 Fri,  3 May 2019 16:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556899236;
 bh=bxhQFwkgb1/uTuKhOvqyOxk9Lk21qkxoVsIO9wm62ck=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=yFM/I+fhaz7lElaS0OEcAC+wiUgGonipKNEnUXd4yrkSEaqXrPiupuYAVH4b64cCm
 RgTH++volK8HAZPU112kb+cNaVRWb7k2tFgdL+o5gXYJZbg6lVUW8juUaK6+DigEgh
 BC3mGnRa23ci6dfKCRgQp69kqR8R4ogVNbke/280=
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
Message-ID: <155689923561.200842.16988174858654134777@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 09:00:35 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090037_154377_A69B0BA0 
X-CRM114-Status: UNSURE (   9.49  )
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

Also, if you look at the one for linux-clk mailing list you'll see
base64 CTE: https://patchwork.kernel.org/patch/10921115/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
