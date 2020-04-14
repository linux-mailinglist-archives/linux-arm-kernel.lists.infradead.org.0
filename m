Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C8F1A7E53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zj9lNggBpU0qs74P0p0BlqR/rFTC+XIBmdR+XQCIAJI=; b=dtaIsw8myn9bqG
	TQbhhRzIM3T3xCJK0DiN3xVtRw6es+T9GzZ+/6kNxfhosEPnrJxRLcHiv8IBtWkS6PTj2yYzQcxC2
	uVkPeX0IZRcvDkLKgw1Sv3Ggs9PzoGhHituwP9GtTAJKlxBJ5/MAkjpSOTBBS4+SXxxQrmwdVDm1r
	lzR1fu5jI0nZQGqwEPvBigOMoyGjOP//43cWVbldCXvwyKM5NvyHeDfHUk2JDLmCwCl/wCDFN3DTM
	2Z4Kfxlxk6/cGQSEdyRt+dXoIfogJi5t844/rXqvrchHtRQzOaMrg8UX09yECmZ/z9ah2zYEWhB0l
	9ojo0sQ7H9+WFR8xOnsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLlZ-00027p-JD; Tue, 14 Apr 2020 13:38:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLlO-00026i-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:38:07 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C4112063A;
 Tue, 14 Apr 2020 13:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586871486;
 bh=C+Kf5k2bXkg0Y2GPt8KYHthrWFn7YtFU07XcZSmpOcA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lg8UrALfysnSRBHKXXV3Q1Xxzbn8AW4Ku9k3w2g+ebQRb6/iDcYMxOvgkDaaN8WEf
 pgCUqux9e/oiV8wgbbo7JDm5Y25ABcj4xx1OokJupFxMQZNupuAyPpDAjWXBQZ0LEU
 hxKmI2XnHUEbx2vjT+Z0f9l7dbeyh0O5srJ0LLhQ=
Date: Tue, 14 Apr 2020 21:37:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 2/3] clk: imx: drop the dependency on ARM64 for i.MX8M
Message-ID: <20200414133756.GD30676@dragon>
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584070036-26447-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063806_458552_BCB0B766 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, arnd@arndb.de, sboyd@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, stefan@agner.ch,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 11:27:15AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Moving to support aarch32 mode on aarch64 hardware, need to drop
> the dependency on ARM64 to make the driver could be selected for
> ARM32.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
