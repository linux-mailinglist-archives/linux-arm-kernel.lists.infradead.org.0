Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A991E4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63GyYyjEsCSF/2uwiaFqF7ltPyOgyEXnwzPoKJX+3gU=; b=ny6tMbm+5kyWFD
	O/Ke/kJMnUxVA6VbmjYGfkcMlT9bDJkNZz9ySHeZkta5W/DZX1FdB4IMOYw1j5VBg1xhTw5TRu+AF
	2WSEJIKk6jWEps5Yjw7VTfntSDl9lRx3vwyKuCxJpmfg43GPnq546RRUFc1oCi1tpo1zULU7SKLzK
	/Y9uVmWGpHvdL2C1d+SEt8B3N25IYLell2WCNeC0zZDlbTp6SB4Qm9RZ8SJ0Q6FFpH3i7oP2KS4Fc
	HURFR0xM0+yVtA9cBEgfTIckI+jwK+g5q03/uYxPYMAFNocFEfFb+RaCJJDQ+3vi3yA+QvyG8yP9A
	zfabcFqDmjtn3zGIp4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcSW-00010m-P1; Mon, 19 Aug 2019 07:52:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcSG-0000zP-EN
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:51:53 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECFAB2184E;
 Mon, 19 Aug 2019 07:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566201112;
 bh=2/vZ0TTiRM4QnAl22MZxwHQZvlNisoqFM1RJui0gC4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0B1qKbNH+o4DMmEwui7F3RpwvGKKc9/Lw1t8PYcSpKx+hDIRkEgWovjezQ+ySixZ/
 QlBIW8TQ7LQvIY7a1K2wavjZJ6C7W3CYncb8leNxGC7DVdI+Fm1U9JGu2QaA1rjpBO
 388CHZGw5plMGz82kCVv/3w3MilzMWp+3Y/3YkGU=
Date: Mon, 19 Aug 2019 09:51:40 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH] ARM: imx: stop adjusting ar8031 phy tx delay
Message-ID: <20190819075139.GF5999@X250>
References: <20190809031256.3594-1-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809031256.3594-1-git@andred.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_005152_502366_A3830957 
X-CRM114-Status: GOOD (  18.12  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 04:12:56AM +0100, Andr=E9 Draszik wrote:
> Recent changes to the Atheros at803x driver cause
> the approach taken here to stop working because
> commit 6d4cd041f0af
> ("net: phy: at803x: disable delay only for RGMII mode")
> and commit cd28d1d6e52e
> ("net: phy: at803x: Disable phy delay for RGMII mode")
> fix the AR8031 driver to configure the phy's (RX/TX)
> delays as per the 'phy-mode' in the device tree.
> =

> In particular, the phy tx (and rx) delays are updated
> again as per the 'phy-mode' *after* the code in here
> runs.
> =

> Things worked before above commits, because the AR8031
> comes out of reset with RX delay enabled, and the
> at803x driver didn't touch the delay configuration at
> all when "rgmii" mode was selected.
> =

> It appears the code in here tries to make device
> trees work that incorrectly specify "rgmii", but
> that can't work any more and it is imperative since
> above commits to have the phy-mode configured
> correctly in the device tree.
> =

> I suspect there are a few imx7d based boards using
> the ar8031 phy and phy-mode =3D "rgmii", but given I
> don't know which ones exactly, I am not in a
> position to update the respective device trees.
> =

> Hence this patch is simply removing the superfluous
> code from the imx7d initialisation. An alternative
> could be to add a warning instead, but that would
> penalize all boards that have been updated already.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> CC: Russell King <linux@armlinux.org.uk>
> CC: Shawn Guo <shawnguo@kernel.org>
> CC: Sascha Hauer <s.hauer@pengutronix.de>
> CC: Pengutronix Kernel Team <kernel@pengutronix.de>
> CC: Fabio Estevam <festevam@gmail.com>
> CC: NXP Linux Team <linux-imx@nxp.com>
> CC: Kate Stewart <kstewart@linuxfoundation.org>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Leonard Crestez <leonard.crestez@nxp.com>
> CC: linux-arm-kernel@lists.infradead.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
