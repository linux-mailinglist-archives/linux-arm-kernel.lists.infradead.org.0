Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADF0ED6A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 01:32:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dd+R6GUe1LJxw9NFBQTE0OurIWTiKxo6Kane3AgIAaA=; b=j13sh+Urj00V5O
	m9wvWrcoBG9t1+s1LdxLT0FEkftXPVc3yOr3Ne3xq7Umo29HrHm/fBl+/GH/k7i4FBooizk4sriie
	4dPseoMDJG0nKTfdgsdLc1Pt6FqX4hOFTCOqqxWh4lmrze6LJdNYkKfBo8QP+/mKHkeaOqCmGhrEp
	bPIgIzMKSZFWkbmtsmdiRK6yCna1T7dcHPP4EeMK8WRXAyz0sgxLRmQzNQR39q34ZngKPT9BdMc6m
	p0D5tGyIS850PMIiLEtZ3Bv+S5I0FXo/V2HbpRKvnzKfZlSsMQ0RTmSX5m0wAwNcprQzofDV6xUFY
	Z70uXtLwf62fRfiDY8wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQHh-0006Xr-KB; Mon, 04 Nov 2019 00:31:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQHb-0006XK-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 00:31:48 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1592F217F5;
 Mon,  4 Nov 2019 00:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572827506;
 bh=CldERrCzQwiiIbuXrc0z7jHVBE+pqa/CxcUwR1ejtr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Tiu8kmWcTaFT3aHiUWtuePlXcjY/VFpKj886+myYPNiw3l8g5bhWfKLoXitKcs8Uf
 gFo4GQXWvKrKqsAXTNclf23W6KzSeUj72BjG102yt0PTHtfChffKRTKA/7iZruZYxs
 iegnWaQMNsf5muw9gzytng+YUhqlMJjEfMPD1GYE=
Date: Mon, 4 Nov 2019 08:31:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] ARM: imx: use generic function to exit coherency
Message-ID: <20191104003121.GA24620@dragon>
References: <3f58c55e48c28f41e92883e81c675b8478af6a5e.1554937960.git.stefan@agner.ch>
 <20190416042337.GA4690@X250.skyworth_vap>
 <a99b439b8c8deb247f7ba2e6b598e808@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a99b439b8c8deb247f7ba2e6b598e808@agner.ch>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_163147_589714_758FCCAF 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: s.hauer@pengutronix.de, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:40:46PM +0100, Stefan Agner wrote:
> Hi Shawn,
> 
> On 2019-04-16 07:46, Shawn Guo wrote:
> > On Thu, Apr 11, 2019 at 01:14:12AM +0200, Stefan Agner wrote:
> >> The common ARM architecture code provides a generic function to exit
> >> coherency called v7_exit_coherency_flush(). Replace the machine
> >> specific implementation using the generic function.
> >>
> >> Tested on a i.MX 6Dual by hotplugging the secondary CPU under load
> >> through sysfs several 1000 times.
> >>
> >> Tested-by: Stefan Agner <stefan@agner.ch>
> >> Signed-off-by: Stefan Agner <stefan@agner.ch>
> > 
> > Applied, thanks.
> 
> It seems like this patch never made it upstream. Any specific reason?

It got lost due to some accident on my side.  I'm sorry for that.  I
will send it for the coming merge window.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
