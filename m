Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7611870CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ktsf8kTRg7mCOkazWs1hSLw7YswkmSr0bi1z6Gztuy4=; b=h42ItGxvz254qu
	dvAg0s6PUODjfB+m9Du+r2gkAm4ma0i5aLq0+e1Co9j0YbNGmKGRJlPbnqfB1TLxI6xgyJ/M76Ek0
	mAoK4G6OHP/YbrT6o21f8UcRiFaBu1Mj9m1DMEasxNRQ+5DssXWT2U/j1qII0FjLHySBe8SC9gsbH
	blExFlDywNxRNODfTACbU3sICP10D7uuKtQNb6f9NIYXZ5MQxt0+hPG4IejLxD+0pBBVB4SN97767
	SagyxMYb+nUtlFaxJh3rapo1JJJcwH7nSfKoIdg6/iJnjJXe1eOC4pio6IlUpCHr7si/8mytg5pa4
	HcHqASGqnwCgFTCn7eVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDt7M-0004aA-G1; Mon, 16 Mar 2020 17:01:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDt7D-0004ZP-Ei
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:01:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AF852051A;
 Mon, 16 Mar 2020 17:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584378082;
 bh=g5ltHYg5EhTj2wtWCAMlXfpAqekS3BHtI2oNh/PrpZY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PxAeOGBGGiJQ7k6yR8/Zbf65F61ub6JdO3hkQGdictEwYc2sQW+Raj9fjb9H37YRK
 bcvxdEi1pyTDHcwxO6/7VUm3rDkaUvs0J7jXHr1o1Oux8zxGCXlO0Rv7TaOv5FJBEn
 wlT5rqN40o1qxXGTTpNYqm5XvuKzNBbczc2e6vzU=
MIME-Version: 1.0
In-Reply-To: <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
Subject: Re: [PATCH 2/3] clk: imx: drop the dependency on ARM64 for i.MX8M
From: Stephen Boyd <sboyd@kernel.org>
To: arnd@arndb.de, linus.walleij@linaro.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Mon, 16 Mar 2020 10:01:21 -0700
Message-ID: <158437808141.88485.7392377210560087656@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_100123_527074_ACA31106 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting peng.fan@nxp.com (2020-03-12 20:27:15)
> From: Peng Fan <peng.fan@nxp.com>
> 
> Moving to support aarch32 mode on aarch64 hardware, need to drop
> the dependency on ARM64 to make the driver could be selected for
> ARM32.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
