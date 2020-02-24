Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0805B169F22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcRJ+w/U0o+AlbkXIm/4PMyrLAxS1yshJEUorNyI1J4=; b=Vpn3dvGrzlG5sJ
	/R+8C+7n1tGfYT/LUC3ydwLHZfF59NczkTdbz7LyZg+1cHkrst9HRu8dZtauXLlYM01HFWTHq5aCN
	gpHSMHWqDoWypgInSJZUVvANVX6Yi9RJ2pNLPRhiCS3usj9/NKR7gIxrygeeM9Z5tvniR2aP3QTBN
	bTlv6RPEHy7E6KAIFFe4Ri5au8GYFiJRDGuvua9mUipssJIN84dgZCKhQi0O6c8gfC69CTjnAQMfE
	jtUUA0x1V13PUfiHBy8gXSaAE/QCP3J54jn03S+74xtez8UaH1y38yFpPmcd8QbQJx+CCzwQEGR9f
	JPQtprd9jPLJQsEGnIeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j685w-0007l5-27; Mon, 24 Feb 2020 07:24:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j685m-0007ko-P4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:23:51 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67C7420578;
 Mon, 24 Feb 2020 07:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582529030;
 bh=o0jeyadt12zgAsbuQin5BGy34nmDODXNaFHsP/wsmN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B30hbfpMvPLhoBfzPQASet/MSSsjARo+qHFxRHniBRloC+LIWJCDxrh8Y8Z71eNAP
 3RsBI//5m/MztiryJmeushxDbfju2Vtfl+FfbFsGJ6IZPwb1unwK3nk7LgZ2z0zgSC
 2ZL5z9ExZFTdgN6U38mYcQ9aD/4xLkhhHjkQwXjs=
Date: Mon, 24 Feb 2020 15:23:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 2/8] clk: imx: Align imx sc clock parent msg structs
 to 4
Message-ID: <20200224072340.GS27688@dragon>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <aad021e432b3062c142973d09b766656eec18fde.1582216144.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aad021e432b3062c142973d09b766656eec18fde.1582216144.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_232350_835208_D60FF3B4 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>, linux-clk@vger.kernel.org,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 06:29:33PM +0200, Leonard Crestez wrote:
> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have odd sizeofs.
> 
> This produces many oopses with CONFIG_KASAN=y.
> 
> Fix by marking with __aligned(4).
> 
> Fixes: 666aed2d13ee ("clk: imx: scu: add set parent support")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
