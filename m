Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D8CCDA7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 03:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrwrdU6A+2O2bfmhiJF/Cl3mOI3N2AA6JWvno9fqbgc=; b=PKlYBchQ5/O+Js
	G23BywG9cX3Xfl3bQ7chnDEbjXizTmH2e1n56Ti/jkhfWxqgz2We3Cf0YIkmkqpx51IBnqr+rGLPb
	GXDaWQ2lTALYZJY7Ehzgbt2ARUQjT65IDm7V3JDN/odzPvnYeFnnetytn8wsE9MyUg0IVN3KNNlx3
	t2SkH0BzBpJqOKDx3VsoiYbFyKeWcnXoSC3ImxOSuhIGauWE5JcFmbrWohftzKIlBun0lklJdGWjU
	bh0LVP8OiCSxXhy2RgnchZH5dNZE17cHpbVdmUTr2FbAUnGfJKBMWT3ZpF0YQvNNcfErMMxWQVxWV
	4qfXFI7RHTqwaG7ek/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuzD-00035c-5V; Sun, 06 Oct 2019 01:05:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuz5-000359-2c
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 01:05:16 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C714A222C8;
 Sun,  6 Oct 2019 01:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570323914;
 bh=Pf9/d5vVjnlPKk6M1od3ctC5DpBEelEq+hMSLuWLdo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D++bcTh4Glu+CeOeynzWo+wszaZBx85Jj7nV1Ao4qOPw6b3eHywudNpI8d4YvXA1/
 BjFcBhPuIoMo2iKwG0l9zxHQfksHelul20GxBhJljPPWIBpyyqiknUM50dzAgQWcRF
 xWYK5P21Olnl4Atk09kJhpv05/G5hgeGyLp5sTxA=
Date: Sun, 6 Oct 2019 09:04:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: Fix quick switch of S/K parameter
Message-ID: <20191006010456.GG7150@dragon>
References: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_180515_146231_8683C9F0 
X-CRM114-Status: UNSURE (   8.29  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, Viorel Suman <viorel.suman@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 12:49:18PM +0300, Leonard Crestez wrote:
> The PLL14xx on imx8m can change the S and K parameter without requiring
> a reset and relock of the whole PLL.
> 
> Fix clk_pll144xx_mp_change register reading and use it for pll1443 as
> well since no reset+relock is required on K changes either.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
