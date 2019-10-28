Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFE5E70D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sesx5w4wOzUOoaDrWJWFlRDp0V73LK29I9e75K5kNT0=; b=kiP6K/TLYj7+qA
	q4J0PbFB4s/Y7PGPyywJqBNn6gvBZgpwutOZqDo1Xd8Ahxcpo2yIFHhAcM8jJSE+oipgYFSKl+X37
	TCXK9fJSNyNt+eT2aL1nSu0l23m16qXCAuSFwheDCzhzskZZfQ3PEsTKss55k8m6qlspMsjSCDbiO
	oXoQ6C2s5X1nEdxlgZJP9zSMSsVfOeLRZ3vILDyvzncWFsZc/feYbsyROhMza6/rjx+hlEwuEYbl2
	frH8Tku/UJiCt1mjVHTNMDcVIqYdJnn0JG/Lx3E4z0BMbetTFUs4RVDPytCSFTkW1N+Z7bOBUv9+A
	5OXJcyhuu4n617WywXcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3dQ-0001BH-DM; Mon, 28 Oct 2019 11:56:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3dE-0001Ao-Gc
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 11:56:22 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AD65208C0;
 Mon, 28 Oct 2019 11:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572263780;
 bh=ljTbQ57eBv6hOS7R6h8+fc28GrufgVplH7iOe1LXZIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hda+GHACNfvLa/XgYhhfvIIFJQ81mX1Tru0ki01z7DmayFta9FD3GFgvKMG854v6e
 t4lfVKsUM9fcfHWmOYsBTxe1XgV0PBhRNRWz1QjQOQTcxbi+sNgvLKq18m077H/kX6
 6Az+dukdz1jkelrXNM4gYixmcs+D+HqeEEcb3J9E=
Date: Mon, 28 Oct 2019 19:55:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable CONFIG_TOUCHSCREEN_DA9052
Message-ID: <20191028115558.GH16985@dragon>
References: <20191024225911.14032-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024225911.14032-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045620_777927_1C8FA39D 
X-CRM114-Status: UNSURE (   7.51  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 07:59:11PM -0300, Fabio Estevam wrote:
> Enable the CONFIG_TOUCHSCREEN_DA9052 option, so that touchscreen
> can be functional by default on imx53-qsb.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
