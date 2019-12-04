Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFCB11214B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJVBDElPeoxd4BdhHdxXHTyc514nWaMQYcBo9k1EJJ8=; b=eUsH/KijnsoLjL
	oV391nXYSwCxLoPSUMQmOQmQYvg3aHohRQIGGurYeBm0s4lBXBwE5R06QwHHWWD4al4QRpGseapjR
	bgrS7hqjyisH5g6DJPVEM1S+9IKXGFDJa6vSctPkfiy86aS5QRcuKCVA3EyGe0XwU/QlDs1qKColC
	ySr0T0oGkH0d0JEMEH7u77JeD9Dvdu3qQ1vdOVndKscQCk552TMxgr8WI+5ScFqUS+fSTasNSWwkP
	YY3/2leJjVXWRENd9zbrW0FCZsWWGVFQHcEIVgXmNeSkBJ6f5TzXfYBlkXXgekL4EY7L8aXSLPRs9
	0XVYvmGwBoBnvXsos2eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icK8t-00033x-7J; Wed, 04 Dec 2019 02:11:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icK8l-00033L-1r
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:11:44 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A74392073B;
 Wed,  4 Dec 2019 02:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575425502;
 bh=qAy1hN6YKBjhMpGjB5AiKNMsv5Q5YjwTmEYFHrcRW0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PHjT8SSfzvC09abV0WTQ/shpatoyLQpMGrbWV/o18FMjcM9Rdj0QIlX4hbCmFVOUv
 0Ph8w9m4TVX/nkU/2V0al9OuBXIephrzKxaVVhoxyEe+NRKVq1pY1n9olKS9veorJY
 6+c0xjDfMHR9YK+6EoGVeJPNuhgJWrll2fKzMuJM=
Date: Wed, 4 Dec 2019 10:11:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ILI210X
Message-ID: <20191204021135.GM9767@dragon>
References: <20191105134245.22568-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105134245.22568-1-aford173@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_181143_118352_52F6137F 
X-CRM114-Status: UNSURE (   8.84  )
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
Cc: adam.ford@logicpd.com, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 07:42:45AM -0600, Adam Ford wrote:
> The imx6q-logicpd board supports an LCD with an ili2117
> touchscreen controller.
> 
> This patch enables the TOUCHSCREEN_ILI210X which will support
> the ili2117.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
