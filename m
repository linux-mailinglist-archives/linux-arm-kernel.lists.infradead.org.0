Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F4110E6FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:39:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE9XeAmhU5mQe5C5v143duja4RQIWc4glUYMWbFLlqs=; b=hEzZIcZFLJKF/k
	4BBgghSHOpZFA7mFb2TLIuGYxrrtIzifwaDad/PMwzARC7F6AFwrau1csMdo4btd4jXewMBZ9LanT
	m0nHJM44hri3IPepY5CzdCae7+gLysNxCJrq1uFoeVIrxkTcuPQMWlSPBM28ZMoaxCEBvEXkf++l7
	qyA4yU3hG7JPdwwM2o9P9Agi7LEjm74yt4ZWmdVRpi4raR/CXEJ4AdXWWWUBVW01jksjtCXY7eyR4
	hmO/YFkbmDJF4W41kakVNw5s97puo0KnGlWco1SmHTgcAPbpvun68/ilBEHWZJNBiWDbptiwiAVSm
	3rjFiuCxWqPMldoN7tYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhEW-0003bA-4a; Mon, 02 Dec 2019 08:39:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhEO-0003am-OJ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:38:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAD95215F1;
 Mon,  2 Dec 2019 08:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575275936;
 bh=HPnBrd8TXP+68qZoG8LNSixiz/YCSXeBr6RQKOHtrC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bp2RcZzGdf+enbmwVBjF09UI/+xWqNpE/kBrQ+kP6Av8dF6B57wiy2JseC9QVHQKk
 EQoT5TaOQ+Zn+ZhFs7iy/I5DFOwaXuwJJdW6ecPdxEWTL3GaoAllmhpFYuvk8R4+MT
 Yw3Qd7igkMRqLftK1TDF0Ir9Dv+cX2ZPmcy0WbS0=
Date: Mon, 2 Dec 2019 16:38:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Message-ID: <20191202083838.GE9767@dragon>
References: <1572848275-30941-1-git-send-email-peng.fan@nxp.com>
 <20191126145450.GB5108@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126145450.GB5108@optiplex>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_003856_831625_E8A8A4ED 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 03:54:50PM +0100, Oliver Graute wrote:
> On 04/11/19, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > With phy-reset-gpios are enabled for i.MX8MM-EVK board, phy
> > will be reset. Without CONFIG_AT803X_PHY as y, board will stop
> > booting in NFS DHCP, because phy is not ready. So mark
> > CONFIG_AT803X_PHY from m to y to make board boot when using nfs rootfs.
> > 
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm64/configs/defconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index c9a867ac32d4..cd778c9ea8a4 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -285,7 +285,7 @@ CONFIG_SNI_AVE=y
> >  CONFIG_SNI_NETSEC=y
> >  CONFIG_STMMAC_ETH=m
> >  CONFIG_MDIO_BUS_MUX_MMIOREG=y
> > -CONFIG_AT803X_PHY=m
> > +CONFIG_AT803X_PHY=y
> >  CONFIG_MARVELL_PHY=m
> >  CONFIG_MARVELL_10G_PHY=m
> >  CONFIG_MESON_GXL_PHY=m
> > -- 
> > 2.16.4
> 
> Hello Peng,
> 
> this patch broke my imx8qm nfs setup. With the generic phy driver my
> board is booting fine. But with the AT803X_PHY=y enabled  I'am running
> into the following phy issue. So on my side it looks inverse as on
> yours. What is the best proposal to fix this?

So you are saying your Atheros 8035 device works with generic phy
driver but not with AT803X_PHY driver?  That makes no sense.  Did you
add phy-reset-gpios property for your device?

Shawn

> 
> [    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [    5.573206] Sending DHCP requests ...... timed out!
> [   95.339702] IP-Config: Retrying forever (NFS root)...
> [   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [   99.461206] Sending DHCP requests ...... timed out!
> [  174.419639] IP-Config: Retrying forever (NFS root)...
> [  174.428834] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [  178.542418] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [  178.565206] Sending DHCP requests .....
> [  209.261271] random: crng init done
> [  230.565202] . timed out!
> [  260.577340] IP-Config: Retrying forever (NFS root)...
> [  260.586497] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [  264.686438] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [  264.709206] Sending DHCP requests ...... timed out!
> [  339.259701] IP-Config: Retrying forever (NFS root)...
> [  339.268835] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [  343.374422] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [  343.405206] Sending DHCP requests ...... timed out!
> [  433.171676] IP-Config: Retrying forever (NFS root)...
> [  433.180842] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [  437.294439] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> [  437.317206] Sending DHCP requests ...... timed out!
> [  509.003660] IP-Config: Retrying forever (NFS root)...
> [  509.012836] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> [  513.102416] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> 
> Best Regards,
> 
> Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
