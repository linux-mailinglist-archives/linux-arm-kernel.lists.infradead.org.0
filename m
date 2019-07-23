Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759A271338
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M658ylwwfV2CMkaxAAV590TqhXuwCmUdFyPCOwgD1BQ=; b=S/32LSJn2CT9hs
	kbm8QzE6M2/RwyACqskcR3ybaNi/yaPr1lUM5nqWy+2XzKfSWkwqE7dBsvY2aoeYzAhNwDR7AJCCV
	j5hBSRoTDVOUDe5/6UENuqnqJyWIYLtbi77gxAvncmSkg5RqtFcxvqVjpdp2jpZup+Oa5GNwWFh5y
	LuhW4+g/dZAlJ/Fp7HHhy9PafG7q9QIOeHVs1B5zPZT28NxWddjh7S2ia/OYoyJlIO7g7A1ns1WNJ
	7ePGpLHsTc7xVDxuVJfBZevcq15Qs+A+3yjZYQKM8DrX/E+c3y3icOvpZG2TKGN2X/kO1nUDnaSUD
	+1oQq+HPSAsi8EpX9X8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppW4-000499-SW; Tue, 23 Jul 2019 07:47:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppVp-00048Q-OS
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:47:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E9DC218BE;
 Tue, 23 Jul 2019 07:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563868025;
 bh=9oyXOwjjQfRkmBnzkflTCxxZW8XXgu2VWsi9uaQNOBc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OL0cl/KK/IF0BukMfF9W8GDqFOcwP+U2iDVnpFrL+cnMacDlMA24O2us7o/i2JhLz
 obZ8e/Zbzva0hVmJCzlON4oRwPlgMgfZ2iEQVskivmwkHpvSQwEiV51CJZx+jRVNCx
 xPcjkwN0BCswql6r5iEZY+BucpWKHEi9kJaznj2w=
Date: Tue, 23 Jul 2019 15:46:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] firmware: imx: Add DSP IPC protocol interface
Message-ID: <20190723074633.GJ15632@dragon>
References: <20190718081943.10272-1-daniel.baluta@nxp.com>
 <CAEnQRZDwBBR5qQT9NQX7c6kyrjp2Mw_so=QgkARw-gUgj3VeEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZDwBBR5qQT9NQX7c6kyrjp2Mw_so=QgkARw-gUgj3VeEA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_004705_814375_5B0681F8 
X-CRM114-Status: UNSURE (   7.88  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:44:09AM +0300, Daniel Baluta wrote:
> Just realized that for this patch I forgot to add [PATCH v3]. Shawn,
> should I resend?

No need.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
