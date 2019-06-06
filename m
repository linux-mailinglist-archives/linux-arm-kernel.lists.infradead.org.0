Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE1B37C45
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrXzwkVxxSoX7ftHS5c0jk4cRFA0p3IF1inJMdAkWaM=; b=oUAQfdBqvazTTc
	gqkM2pN+Iuz7MPao8h9m13EpOKM8BuWMdToJ2p1TyymheWwBMO3RkXseBMj9GQ5fAyYmUAVprbjjz
	jRUFw877fGkwNRp5+ZnmeC2SsfvTKcLYMWLxNyDTa0MmZ1zP3tfKdNReDF4lEYu3BOGOsKT+5k9Dp
	ZRLQhBgyEJ6LuwIWeOXFByGLTr4xWbQsDypfvsUch+s2dBXuwmA+ub/AJZUw3gBf68nyaDxnI0Dtk
	IxLTREl+ph40nKkXhTK3g/8LNwMfRlG1YUdS5uxfJHYlX+F8Dx39ZbawImGsqe8S+rod/oDYPfaCY
	51kiT2AaGlJ57brekvdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYx93-0007mx-3X; Thu, 06 Jun 2019 18:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYx8v-0007mL-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:29:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0D8C20872;
 Thu,  6 Jun 2019 18:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559845781;
 bh=OoC4nuWJqWE5iN/x6Gw9nBBptIg/ze0etoB1mALTSr8=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=P94sqtESM6b3xMQNPs2CjFLVowQJbk6VUGVSpv8guH7GwtldZ6lxKUVT+sP2mIDVj
 iwvC1wIFrZn6j796btdt+p6I/JHv9PyFivw6RXrRx8dq91v3LSpB9w5J/Sc8Xsn0QG
 lWrA74hFBsg/O/8mabbl8C3pIsOAZlwnyBQNQmmE=
MIME-Version: 1.0
In-Reply-To: <1559132773-12884-1-git-send-email-abel.vesa@nxp.com>
References: <1559132773-12884-1-git-send-email-abel.vesa@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Mike Turquette <mturquette@baylibre.com>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RESEND v2 00/18] clk: imx: Switch the imx6 and imx7 to clk_hw
 based API
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 11:29:40 -0700
Message-Id: <20190606182940.F0D8C20872@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_112941_427197_F1D46429 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-05-29 05:26:38)
> Resend for the following:
> 
> https://lkml.org/lkml/2019/5/2/170

What's left after this series to convert over to clk_hw based APIs? I'm
happy to see this merge as long as we eventually delete the clk based
versions of the code in the imx driver so that we can complete the task.

I took a look over everything and nothing stuck out, so:

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

for the series.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
