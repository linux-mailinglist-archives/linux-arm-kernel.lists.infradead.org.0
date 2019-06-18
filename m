Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8474A223
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ghiyephd5VeT93MYqotctyiGnH+shBPQdTVEuj9K9Q=; b=iCh26zJgmtBYj+
	W2Cfu3i/sSowedrUT7hmBHExHm7Jr7wkGP7R2WcQPTa+ayh09hJTiUiBupEeoWaRoiyumbCf/18zm
	ijSzOiWWwCNC7ukAvRDHR8fDuU9yYC27CMdJiHi/Agwvrv4soAk7QGWL1i9g2GkzbyIDzonnsqJ7W
	m17bBLK0R+cvBiviIXrKj1wqojKsDQqv2/RogqPtEnLPGsSuvH42MtYJDf+cx5KI0pYzdkhDa3nuV
	D9kp+bYDeVwaLN7xTzq1NNFWcvUxp9Wva7h28Iij2NN55seH2LacnturJiDd8eorzuBFpYEDpEDpI
	vd+9AvYEyxoJaqtxpR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEBW-00027r-PE; Tue, 18 Jun 2019 13:30:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE0P-0002yE-37
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:18:34 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E09062070B;
 Tue, 18 Jun 2019 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560863912;
 bh=1y2U8X12rJFersG6m+NAIREsnvkoVvu7YAOkiIfgHRA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qIDrUimvv+WuXK5JHBoSh4thayiimM4+9jNtbKpOgnZ8FIRECqs1pHTNFO1jnWPsT
 E6aTpSySvalhFXfc6RtFSVD36Cx8X3HKNDkgjrvkhVx2RJGMfBUlK3Pr2CKZsFGA1E
 RY/p686OEE/Aml8QM+TjxyU6YSl5NwXW0GjizaXo=
Date: Tue, 18 Jun 2019 21:17:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] clk: imx6q: fix section mismatch warning
Message-ID: <20190618131734.GE1959@dragon>
References: <20190617111159.2124152-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617111159.2124152-1-arnd@arndb.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061833_423921_C26E4A5D 
X-CRM114-Status: UNSURE (   8.55  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:11:35PM +0200, Arnd Bergmann wrote:
> The imx6q_obtain_fixed_clk_hw lacks an __init marker, which
> leads to this otherwise harmless warning:
> 
> WARNING: vmlinux.o(.text+0x495358): Section mismatch in reference from the function imx6q_obtain_fixed_clk_hw() to the function .init.text:imx_obtain_fixed_clock_hw()
> The function imx6q_obtain_fixed_clk_hw() references
> the function __init imx_obtain_fixed_clock_hw().
> This is often because imx6q_obtain_fixed_clk_hw lacks a __init
> annotation or the annotation of imx_obtain_fixed_clock_hw is wrong.
> 
> Fixes: 992b703b5b38 ("clk: imx6q: Switch to clk_hw based API")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
