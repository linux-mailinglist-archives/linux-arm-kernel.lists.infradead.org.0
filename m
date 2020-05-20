Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8134B1DA83D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/jWFnch4iXgWpPmhM1ygXwnhFSBheq3dYAxTYV0t9s=; b=Lj6MDdBmGbTNFj
	nyDg2zQy8/3FmzIOmXDXSAZDXv19016vPjbR9SJFfUST1MCvBbAd9JmHHE8uiycKnhsHy+Tec6SU3
	9ZNNDFgIRxRQ7ATxyuOHPLv1jsNQ27eUWhfX8LCV2MJsEn43J5j6GQ4tkuQ/lz/a7yprg8a4LfApc
	og/Kxqc2UbylUjAhZvNJ/qYqic63scoTHvyXQTumKEjQns5bYJkcS+E88RO3LSUwset6bIpY087aK
	NouZ45EkDUUTnuH2/L8WY1LPh0IPPPS3eGT66Wf11QcODJYDWZ9566lMKH+6IBGyCzkwNS788LLbp
	vGLIkwR6s31Refym6x4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEob-0001Jh-6A; Wed, 20 May 2020 02:50:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEoH-0001DZ-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:50:25 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBE962070A;
 Wed, 20 May 2020 02:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589943021;
 bh=g9JT21sFXC6+dBAbsovjKENX8bCagZaZhdngsVJcSC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PSQRZ6mcGgzIjNWlyhCC0n12Cb2NOnwqDBq5GNk5HiIm/xZ3vfNvkZewEeeaEtUd+
 TFw5zkZXBZB/L9OgK92Tf0XjADoUFYk+KXxIq5fiepftgXXzLGB6+qlxpIBYrKJC91
 +uMSReYcSXMnHbCHY8iOAAyXu1vmN9veOh2xZsKg=
Date: Wed, 20 May 2020 10:50:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx7d-pinfunc: add input mux for ENET2 mdio
Message-ID: <20200520025016.GT11739@dragon>
References: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515114151.6516-1-s.trumtrar@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_195021_940841_A5E42A6A 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:41:51PM +0200, Steffen Trumtrar wrote:
> Add the missing input mux for ENET2 mdio. Without this setting, it is not
> possible to read the MDIO answers back from the PHY.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
