Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464FCE70D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhJNxSZLmz7vbY34T8pTLCxDrJN49Zb50jTojoFtfYI=; b=QrXj9CwY1PC9Zm
	6tN12gaYMqcAosva8gEZhFzzquANTtmJFxwfhCaNXbog+ePWyxSf2lmADBOLxvS7z2V9KvLyDzpQN
	gLXTKJhYoPBjXxFtzY0cLLfOjMFvmBSQfBdIvRCK1BoRQKJeAVAlaRzWHvM1SVOaK0gNMYAJxXqWp
	tXUqmswA+U0AzuMs5348JiUf/QfMZDAlnV90gw278LQ+quQNXFnk/9SxrQIsXGnbs196SaYsQH0CS
	wt9wAx6OPES9pVgylBLVslmY163ZrqvUk8u+hypB3DlDupP6mma/kgKNvnaGAk3e7qYq4LiP9raFP
	INycXmVr4usnNGwdhRxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3d0-0000wk-Tf; Mon, 28 Oct 2019 11:56:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3cr-0000wL-7v
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 11:55:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9B96208C0;
 Mon, 28 Oct 2019 11:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572263756;
 bh=6gTmiF6kcLTVVMKOteRqACcD3HkmY2wWKops+mpctqI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PLnK6/W+VW+5+zdByUYNYM4s4bPdWIJLLJV7ebGKrLwjNixRZpNilOHXFuLICVRC6
 zZUWqk/jkv+SVVYzKfa2dI6omlEnpp/x7otirSPPfLrcrAhjDruBYiIZpvqOVpcIwC
 sXlGkORkCcuLQ6pIR1SwqsK+h1N0k2mxJojGAezo=
Date: Mon, 28 Oct 2019 19:55:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx53-qsb: Use DRM bindings for the Seiko
 43WVF1G panel
Message-ID: <20191028115537.GG16985@dragon>
References: <20191024215712.1552-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024215712.1552-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045557_307320_45FE21A0 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.hauer@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 06:57:12PM -0300, Fabio Estevam wrote:
> Currently the parallel panel that is supported is the CLAA WVGA panel,
> which is the one that comes with the i.MX51 Babbage board.
> 
> The default parallel panel that goes with the imx53-qsb board is
> the Seiko 43WVF1G LCD, so switch to the Seiko one.
> 
> While at it convert to DRM bindings.
> 
> The parallel display still remains disabled as the default display
> port is the TVE output.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
