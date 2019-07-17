Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD1E6B702
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IW921muiDODBMWtj+e1wbPgxNfvEL4SNejAGTCtGLQM=; b=BJTq6OUNK+chAx
	HpwF9EygMZlUHYczDaQfPoAIE0Wg+7u9+MbYlBBroAVKPb+Scvt26raebGK0izApa6V9PNoPNJq9s
	XA2uLdXMePwLwcg8YevY9jZcUDaI060+g5fSqqJ926hbCTiZfIOjmYLFrshlmRQB1rgw7bBhvmR7R
	OqlG29vbps9krW6xbZZO7dI7xpYzDA8RkcSRSMCUjCGC8vwepj8Jiv8N6V5jUDFlfAqSzwiY2WQme
	7KQrQpjCD9O6dXzBYxRxlq0jeFqi8qfvOg34ioRShIHeEyadLhoHBEFwcxrMokYE9SaHPbZ/aew7b
	a/KAWDg9UZcsb6TmcpAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndqQ-0002TH-2D; Wed, 17 Jul 2019 06:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndqC-000267-QW
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:55:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 032C121743;
 Wed, 17 Jul 2019 06:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563346504;
 bh=3Xt4tfBlIS/KrhkQpP7kW1uAGP7uRrEmTBLu4gx2nbY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PyMn41bYicm6bSdM1vgHd0VolUj1AD5wNiOa2GUoJ00QYsS3cFisakqUsC10GUcaZ
 GDQFJ6DIGSbEo5+GPEVpdG/sgLRhC1q1YDjKGZdfquwyHpd0SZAPUIpYRfSrDg6VIc
 n5TbotMhMW+k5GYa3aDH2rWVCsAbs3dS0l84WK+Y=
Date: Wed, 17 Jul 2019 14:54:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by
 default
Message-ID: <20190717065441.GD3738@dragon>
References: <20190611122535.23583-1-Anson.Huang@nxp.com>
 <20190611122535.23583-3-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611122535.23583-3-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_235504_918895_35B720E7 
X-CRM114-Status: UNSURE (   7.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, maxime.ripard@bootlin.com, catalin.marinas@arm.com,
 linus.walleij@linaro.org, will.deacon@arm.com, stefan@agner.ch,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 olof@lixom.net, jagan@amarulasolutions.com, Linux-imx@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 robh+dt@kernel.org, horms+renesas@verge.net.au,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 08:25:35PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Enable CONFIG_PINCTRL_IMX8MN by default to support i.MX8MN
> pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
