Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8989C025
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 22:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJ8iBrxKRn4giglXp3oSgWgfqNDTmHMZjJwXoGlXnvw=; b=mP9v3KjYvzzN+j
	lq/qElFjAi77CzOM3Nsja+Rw8Tk+CHLsXy46kbh1/vY/8xdgVzQfEKAx5VzdXViiog/9y2iZ2RhtW
	iLHR1QEAxzqS23f4FseZdfz/H5nNlZWI0npI4hvRrb623gNQtdzvKhM81Iv2fMLslEJS73yfAjBZC
	lmsbziZbYaV/mBJ6NWiStX63v99+aZ75gOd2Eu7fbeoOd51Ay+TrqD3Iocm4xjTg99kuYuTBtQELY
	tJWF7a5xZSW73HZ4yDNPh3Z0E0H/CbEfy5QTF34uSsYhQHijVzeLqOW7N5ieGKH4I58iXc2kdRLN/
	ko5JDe2WmXapzMEGhSMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1cmA-0004ip-Jx; Sat, 24 Aug 2019 20:36:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1cm0-0004iY-KC
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 20:36:33 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0A0D20870;
 Sat, 24 Aug 2019 20:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566678990;
 bh=secYIosYlJG0M8SgHJ0jDMh0AFlqUZ0zpXeaM0oYd14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W7rQorwbwXKV7+hEUkePa4qY9tiXnVrxBLG4D9t+c++Bf37M0Np59jXxZBWN3x27B
 Gpv51jGm20mhK5ZFxpCa7RWbGOtD3iUreUAsEO3peQorBm2PZZQaF9xRP42+YFS93j
 3ZRCAFmLIlF7C0JyhMmh9U8Z3ZQ6+Z1CkqiFSPzo=
Date: Sat, 24 Aug 2019 22:36:18 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH v4 1/2] arm64: dts: fsl: add support for Hummingboard Pulse
Message-ID: <20190824203617.GI16308@X250.getinternet.no>
References: <250bf15602801b09a1c1e6d286d0eb125029fd49.1566375619.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <250bf15602801b09a1c1e6d286d0eb125029fd49.1566375619.git.baruch@tkos.co.il>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_133632_688802_A63BD741 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Jon Nettleton <jon@solid-run.com>,
 Marco Felsch <m.felsch@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 11:20:18AM +0300, Baruch Siach wrote:
> From: Jon Nettleton <jon@solid-run.com>
> 
> The SolidRun Hummingboard Pulse carrier board carries the SolidRun
> i.MX8MQ based SOM.
> 
> Notably missing is PCIe support that depends on analog PLLOUT clock.
> Current imx clk driver does not support this clock.
> 
> Signed-off-by: Jon Nettleton <jon@solid-run.com>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
