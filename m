Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7976418863D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8V+ujuyH5uTSE9zUlpLNhd6v7mJkYB0ECr4Pyo4+TM=; b=TleWyV1V25aP9O
	2xIUTKhqZiZEWnBOLYmG3BehAHrUHas8Y0mx/limsEa3M0s2Hw4A5DC7aJQsQL6v61qpAhQv3DSCg
	bfsNv7PwLQDDO11hqZN0Lyun55EIq3uNuGHwm8NeHY75FT5EarMEwr+o1IEDvLI3C4lKh3esBHBTY
	w5shoPJGCE1A+66lX3kWs1Zw5kx8Oq6uSOVxmtsrpzEMS7OvsbEDoFol0CQdopH+IZj/4qfeDjDNc
	SM1sy7o/P+J7RfPXSzV5KEYWucoKjAe0cI5MFdbjeRM2b+FOQfM8mixKzDRFbdAtDts77aSO/SmrZ
	w5EuDAJfHviDVR4ok7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECaC-0004mU-D0; Tue, 17 Mar 2020 13:48:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECa3-0004mA-FD
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:48:29 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 836CD20768;
 Tue, 17 Mar 2020 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584452906;
 bh=rCO+UV0SMy75dHmmKruSDqVSDZVRCAwWZSWTLRHw9hI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZvZB2iYWqd3xsGEOgO6V9FzgjlgZuhfVnj8xGbqKb82ZhgveOAr6Eq/HPXQt2z/yR
 PhJbD3s7qfH8YLqgJZOaAVUqEODkR3CJlgadw5MslnLhlxzY7k1Ngo5tsDavcUFUJX
 4a6wMeAGGzBbfGGaHwWtq/Iu38eRswUWnaZG5LDo=
Date: Tue, 17 Mar 2020 21:48:13 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Waibel Georg <Georg.Waibel@wiedemann-group.com>
Subject: Re: [PATCH] clk: imx: imx6ul: change flexcan clock to support CiA
 bitrates
Message-ID: <20200317134810.GA2884@dragon>
References: <1583928220724.65021@wiedemann-group.com>
 <20200316013040.GP17221@dragon>
 <1584352502593.54297@wiedemann-group.com>
 <1584352708854.43164@wiedemann-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584352708854.43164@wiedemann-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_064827_530970_A3CF36D9 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Michel Alex <Alex.Michel@wiedemann-group.com>,
 Appelt Andreas <Andreas.Appelt@wiedemann-group.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 09:58:28AM +0000, Waibel Georg wrote:
> On Mon, 16 Mar 2020 at 02:30, Shawn Guo <shawnguo@kernel.org> wrote:
> > On Wed, Mar 11, 2020 at 12:03:40PM +0000, Waibel Georg wrote:
> > > Setting a CAN bitrate of 800kbit/s fails with a bitrate error of 1.3% if the
> > > flexcan module is clocked at 30MHz (CAN_CLK_ROOT). This patch changes the clock
> > > frequency from 30MHz to 40MHz which allows to support all bitrates recommended
> >
> > But code changes IMX6UL_CLK_PLL3_60M to IMX6UL_CLK_PLL3_80M?  Or
> > IMX6UL_CLK_CAN_SEL is different from CAN_CLK_ROOT in the context?
> 
> Correct. The patch sets CAN_CLK_SEL to 80MHZ. There is a post-divider
> CAN_CLK_PODF which is set  to /2 by default which makes the 40MHz
> CAN_CLK_ROOT.

Could you add this into commit log to make it clear?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
