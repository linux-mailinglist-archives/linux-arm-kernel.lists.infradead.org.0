Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A21AAF60B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 08:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35BKmuO3SpxkzX0aSVI8PV7YD7t8LRjpTp7UwxjYasA=; b=h3j1TYR1tS3bXL
	M2VvgjKltKLWgQdDr6dy2OXC8cqCSzeUFOmzl7k6I023qotKGImt2V475yuSpvD9tgVnnVUSgn+EP
	a9jgfOCu+gSLGLnFfu7PifCGqzL54x++U4ZJ/O0l2Hdp4uI1N7nJnDQlhqTVE6V/uadT/rahIlo9x
	AKUmFBJihHLhI4ByT7F/4LNcR8OLM2TikZ7yhIms18qxPnJAPEeutvJgmlxC4IbjL0bsO8lRdoQqX
	utjUjnzQN5O2MIKCb6gTKyu+8Ise9mGlA48N7MleN/cGJUdjQ0GYmPgcxKWggh9irc8/TzsnegV4c
	5DtPmZs/K3K80Xl4xOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wM6-0003of-VS; Wed, 11 Sep 2019 06:43:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wLD-0003FJ-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 06:43:01 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EC7D21A4C;
 Wed, 11 Sep 2019 06:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568184179;
 bh=5fDkxYy4jOJS/+QkDeYxCAE8Sxo/JVPofcF3L2N5Fic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y9IQJVh4gWWvNhP69nMQB9GqIa6147EQg+yKHp+8dtZOLWPT0SiiubwSFtWogeqKb
 WBEs+sFuXPJJjJZ36g1A4MkIszLObdh7dyzQ2eOGo5JR1AGBR69g4Vv5VuL/C+GNKX
 p3dFw6HxfOqh/ZGsP7fIeBC23ZkyR+j34Wmie6sw=
Date: Wed, 11 Sep 2019 14:42:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fancy Fang <chen.fang@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx7ulp: remove mipi pll clock node
Message-ID: <20190911064246.GC17142@dragon>
References: <20190823003600.8317-1-chen.fang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823003600.8317-1-chen.fang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_234300_122410_4E2905F8 
X-CRM114-Status: UNSURE (   8.74  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Jana Build <jana.build@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LnxRevLi <LnxRevLi@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 12:37:30AM +0000, Fancy Fang wrote:
> According to the IMX7ULP reference manual, the mipi pll
> clock comes from the MIPI PHY PLL output. So it should
> not be defined as a fixed clock. So remove this clock
> node and all the references to it.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
