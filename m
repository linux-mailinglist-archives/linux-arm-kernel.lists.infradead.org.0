Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84E11A4C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anKTukuyDZisSOKWINmbuqDVVfp/A61LLCpxmq7DO10=; b=Wxd+tX0AJPt3rL
	hvlO+7at6arL57r6YnMlP56Lgb4T9N2ip5FZIjfBpMAxpMdulcrr20/N2d4q4/Uzn5Chn8d8bwZpQ
	30tZj8JfasGDxl38rBsNasvbbKKhK/oJp2hqqKu2Za8WkU9TvnAM7JL+orUNyi5f/IBzor5fACXcu
	aRGvR+PEpeliosQ92QyHgS7wZ/Y++ZJXSH5m8xMKand1fPhIybBm80PcCvdXJw/OaTCPZfwT5bH2C
	3xBpOyrX50+1dG+NAy1GpluW0rtG8oZ/X2ATuSbFUgUknk9GCxa7EBkAN3WpuwC0nSarMKxaASTYT
	HE36egT+Ah0uEJI5VZeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ievyl-0006Oy-Tn; Wed, 11 Dec 2019 07:00:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ievyW-0006OZ-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 06:59:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5747208C3;
 Wed, 11 Dec 2019 06:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576047591;
 bh=6GLtMXS+G+Ht9d7EmWPI5rE/8Oxbu9v46EQe0N/1rDE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QI9OwsZ408h915W152RbTCFwJ+JOXthdPtq1+aNh7jLMSKcGLyyb2xU8kGd1I/aRg
 +Br/LfivScrJ1yGbDUdErIjZfml6LM4M90yUGo0fWOtoJTqjyAfZcQXBl8K9MgnK3I
 mCARqjIKnDpViWur2YNbQ7jd4HbJP4z2UTMhYmGA=
Date: Wed, 11 Dec 2019 14:59:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Subject: Re: [PATCH] ARM: imx: Correct ocotp id for serial number support of
 i.MX6ULL/ULZ SoCs
Message-ID: <20191211065940.GK15858@dragon>
References: <20191205092713.58314-1-cniedermaier@dh-electronics.com>
 <f4fdca95dfe54569b4e2b430c69d56c3@dh-electronics.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4fdca95dfe54569b4e2b430c69d56c3@dh-electronics.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_225956_943032_3FB061BB 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:38:51AM +0000, Christoph Niedermaier wrote:
> After the commit 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> the kernel doesn't start on i.MX6ULL/ULZ SoC.
> Tested on next-20191205.
> 
> For i.MX6ULL/ULZ the variable "ocotp_compat" is set to "fsl,imx6ul-ocotp", but with commit
> ffbc34bf0e9c ("nvmem: imx-ocotp: Implement i.MX6ULL/ULZ support") and commit
> f243bc821ee3 ("ARM: dts: imx6ull: Fix i.MX6ULL/ULZ ocotp compatible") the value
> "fsl,imx6ull-ocotp" is already defined and set in device tree...
> 
> By setting "ocotp_compat" to "fsl,imx6ull-ocotp" the kernel does boot.
> 
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
