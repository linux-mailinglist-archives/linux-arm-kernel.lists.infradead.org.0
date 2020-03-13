Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ABF18504D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVxW422+4jKLY5UR7Wo8dwz1bTXTftyLV8aMYIAtfAw=; b=H3Y1i656AJGkZd
	9Tk7fvgrz9aeYWQQbERdhFuGubMm8yxl1OEZLC3MEG8NIyJXoBVAe/C9npPR23PvcVhz6EmNXJQss
	V3FYJwHbnv6tpMKjOZkGbUjtubRxlE/qmcbd0tCIeHabrwdA8ob6kVLfZza5WwscGMsNqGa4lADNn
	tQtNdOoOHri2CBiEs5nsLOdRfr9Dm5D65TaYU8SNbbtgyo0wXEqlJ8zJgToxViDh+nyM5g7x3pAhu
	5GoEzFEsPYpAic2JMwnricu1tH3hTV9Q7Xa9DbGnwLNVJpcZSRh//3W+IeF0iqOCmtIc/kLEpdMUb
	GF5YIu22wsA0vOFhjWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqva-0005pS-Jd; Fri, 13 Mar 2020 20:29:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqvT-0005p7-A8
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:29:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D01DF20751;
 Fri, 13 Mar 2020 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584131338;
 bh=ewU3LIoKJn4Z7Q9nQiPnlGO0QOpvzahcRhd6C5AzF6Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=u195MHvV74rlYOaXnwZfY3UnBWbwaTuKjKQfyT6BYzkX5iwxKhwroTo/TMOW1QOHk
 PTSY9ihggk0jpmnmV+9py+EdRf1K+WVefjTjh/cJMY941awMd1ppCms4mimg2chS8R
 a8PuvXkVdb4TCRK2khd/2I1IkAfi8yo9+3Z/WVQU=
MIME-Version: 1.0
In-Reply-To: <1584115819-17778-1-git-send-email-abel.vesa@nxp.com>
References: <1584115819-17778-1-git-send-email-abel.vesa@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-gate2: Pass the device to the register
 function
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Date: Fri, 13 Mar 2020 13:28:58 -0700
Message-ID: <158413133801.164562.8872574647056817277@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_132859_372571_DF6BEDE7 
X-CRM114-Status: UNSURE (   7.44  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2020-03-13 09:10:19)
> The device needs to be passed on to the clk_hw_register.
> 
> Fixes: 1f9aec9662566189 ("clk: imx: clk-gate2: Switch to clk_hw based API")
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
