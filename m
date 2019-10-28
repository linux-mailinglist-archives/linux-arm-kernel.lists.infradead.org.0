Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7EE6C89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Glw4/UXwtjrtgdw1RJIZUa2BSjwtiMoGAewy56Aq8uw=; b=nPux6PwudSlJM5
	8iR3AOApi/lfTwVPcYWPaONkheV9ueupnN0S5YJ8gdDO22VtKd3bmsSBGQ5S2Bcdj9Z95MJhrbqFv
	yujAIxcHsmOz1ZPPP5MvaKNw6bQQ+sJertbabbllbCAkNLnZiLZ4tzPDC0zYRum5/TQmb/+VaBL14
	lYy+ElM36Id5DqSVJwSQLJmJJLKLzkL9G+9HMJ1uD/zH6C9kqM5kr+ohceXXQCFmYryxcOA1J/GpV
	itO+JIPr+Tl8T+ZkLEgMv7cPwkadNiBhq7ls1lSTty3tPjiwLmXrsyVpgMzzVoHNOQMEeQysUMyKX
	NFW7fgGDyxEQ3Kg3+EsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyra-000520-Vr; Mon, 28 Oct 2019 06:50:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyrQ-00051Z-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:50:41 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8688420873;
 Mon, 28 Oct 2019 06:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572245439;
 bh=RjEi58890fCVkVKMzi3DYVa6NC0qOlYS0OK+S3zCfLo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y0cNhthacH2yQ39q5X85ky70XTejLPs7rUqDD4yt0aWbCdkdDV/oUPU8tdLg/7BEK
 /bx3jx1X0zavRoyOBQYPn5s35saEwj/2M76UR9lQYskpUK9w6y11++f/lU5mTehZhp
 NPwUpF3HN/VU7jkju9ht46VFf7MF5ql60ODTYH9o=
Date: Mon, 28 Oct 2019 14:50:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] firmware: imx: add missing include of
 <linux/firmware/imx/sci.h>
Message-ID: <20191028065019.GR16985@dragon>
References: <20191022154009.376-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022154009.376-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_235040_303437_69DE5B6B 
X-CRM114-Status: UNSURE (   9.16  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@lists.codethink.co.uk, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 04:40:09PM +0100, Ben Dooks (Codethink) wrote:
> Include <linux/firmware/imx/sci.h> for the declarations of the
> functions exported from this driver. This fixes the following
> sparse warnings:
> 
> drivers/firmware/imx/imx-scu-irq.c:45:5: warning: symbol 'imx_scu_irq_register_notifier' was not declared. Should it be static?
> drivers/firmware/imx/imx-scu-irq.c:52:5: warning: symbol 'imx_scu_irq_unregister_notifier' was not declared. Should it be static?
> drivers/firmware/imx/imx-scu-irq.c:97:5: warning: symbol 'imx_scu_irq_group_enable' was not declared. Should it be static?
> drivers/firmware/imx/imx-scu-irq.c:130:5: warning: symbol 'imx_scu_enable_general_irq_channel' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
