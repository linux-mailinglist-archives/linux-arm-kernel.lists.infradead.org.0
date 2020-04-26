Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7321B909C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 15:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8dIPc9durk7/ms20PZbK7rZt6QxRujQyz9on1tLkz0=; b=QhsLqfD7DfemGv
	lJN7rMglwXDHNFWIkhHRqssVTKtF9uNZRodY2a7nnRQySPIks89IlVYTd+CzjWMW6srytzk8gBwJU
	gVQb9dNqxM1S6+weWydHatK/gvI4PIG1QN4USBEEaC53eDi99/TjcXQL87PfSUGOvFX1NpYmhYR7H
	ooxcgIYuZ5ntBWUfN0/8XjPuCOkaR/UsHv0NuEOn29A1yBKxrFz8DsUtjLCx1PL7bGVc40VxwdWMs
	T5V4jPQRbcq/oMNRI7rYA75RneIJP6ZMbqAMDebq9KryDfI2VlkaxQzahPjiinQy9/NoSmi4/4XzO
	AW+9TSQWnsklGVbScTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jShKw-0005R8-K7; Sun, 26 Apr 2020 13:28:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jShKg-0005QT-L0
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 13:28:31 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C33FF206DD;
 Sun, 26 Apr 2020 13:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587907709;
 bh=RjXsmOqo2dFX8kf+WmyfnyhOen4S9fQ196qSx+qix3I=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=MP8QXFao2YR/On4soFwM2uAPvpKe/oGBq51JGsNFXVSShK66Wv5Kk7AJeZbGpVcBs
 EFyBxRKdoFax6Gzor4U8QVlvPbn+p26qAv5KmYOEJ4ZG1aUKvure4MaZYsFaCHDJvM
 b+Spln+sETvBV0iFErFSVmfRtYC88ZGro91NWe7c=
Date: Sun, 26 Apr 2020 21:28:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] firmware: imx: fix compile-testing
Message-ID: <20200426132812.GD30501@dragon>
References: <20200408190314.695067-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408190314.695067-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_062830_711680_BDC83755 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 soc@kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 09:02:57PM +0200, Arnd Bergmann wrote:
> It is nice to allow compile-testing the firmware drivers, but this
> fails when the dependency is a loadable module:
> 
> aarch64-linux-ld: drivers/firmware/imx/scu-pd.o: in function `imx_sc_pd_power':
> scu-pd.c:(.text+0xd8): undefined reference to `imx_scu_call_rpc'
> aarch64-linux-ld: scu-pd.c:(.text+0x108): undefined reference to `imx_scu_call_rpc'
> aarch64-linux-ld: drivers/firmware/imx/scu-pd.o: in function `imx_sc_pd_probe':
> 
> Change the dependencies to ensure that any driver we depend on is
> either reachable or we are compile-testing and it is disabled,
> effectively reverting most of the previous changes that turned
> out to be incorrect.
> 
> Fixes: a9f85f93ed73 ("firmware: imx: add COMPILE_TEST support")
> Fixes: 5b00b8375416 ("firmware: imx: add COMPILE_TEST for IMX_SCU driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
