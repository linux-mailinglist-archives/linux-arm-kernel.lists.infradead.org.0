Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF179BCB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 11:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdXzxMMAAiILCMxtPmmhu1k+q2gB8zzHlB3Tbc1pKcg=; b=c3Sd9535dW/R2O
	Fd0x9wUxvvojt0xzTzWreZxuzgDTv5W3tE2/QjGD5+gS3BNsOKc5xV4fTY2NXAuZfIx8g4p2+JwaN
	KwM1lXH1AGDmTcPLqvvTlUKqHQJp57FbjG8jnzxu1T2rDZPzHwZYgIx1PeyvhiJejIowgbm3PlTWO
	hiAuSzve+PHv4YiAFFaXuu+Rwa+mkan8URNKrozb8CXHI/8Ji0zwfj0Z8Q7uNfnsFBWZJQ9GMfb57
	37QfqURxBMV0D1kOyV6ox1qFXFtiiF9LNVybrH2UvtF6G/py4vX+SJ6PKnJX+mPZ7A/931zJ4tUCo
	l9AUSSRV5W5yGl6Aunaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1SFd-0000El-Gd; Sat, 24 Aug 2019 09:22:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1SFR-0000EF-1d; Sat, 24 Aug 2019 09:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9kDsmGvpvy+ySdibnxbYTURZ6SqJ3ZYL88TNhJH+08=; b=BxkVzn8VPjh7EVNaF8lJqzsdg
 zlQtBsYy6mqdeQKvuta6hdh11UqgUHuutlKtwXtqBsr1KyMfrHDUC3/8BZQMYxZ5HMkT0T1uJlTZa
 3Fq89O+sCd5fzU8N+4LkDqqbqOOpKetTEm/MZHhOmONXL4e7Z09L4tuRastd6vbyQAVH01q9o2J3/
 PiY4zUjHfiI2uxA8iAmhd4MIbK3tnt/hL+Mpe0J4+NBgKAW0Vbb6Bb5BZ6f+H38zUWkYOSUK6UT+g
 BnqNw49mKpWR+BCC25NDpcxBwm9J+bN8FVA1Ocbv9Cc+tpGIwBkpCh8UlLZups1EYvuCSp/N/8dS8
 KfiH+nsyw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53938)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i1SFD-0002C7-Ik; Sat, 24 Aug 2019 10:21:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i1SFA-0002Qx-72; Sat, 24 Aug 2019 10:21:56 +0100
Date: Sat, 24 Aug 2019 10:21:56 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v3 2/3] net: ethernet: mediatek: Re-add support
 SGMII
Message-ID: <20190824092156.GD13294@shell.armlinux.org.uk>
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-3-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823134516.27559-3-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_022213_091634_B6487F0D 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:45:15PM +0200, Ren=E9 van Dorst wrote:
> +	switch (state->interface) {
> +	case PHY_INTERFACE_MODE_SGMII:
> +		phylink_set(mask, 10baseT_Half);
> +		phylink_set(mask, 10baseT_Full);
> +		phylink_set(mask, 100baseT_Half);
> +		phylink_set(mask, 100baseT_Full);

You also want 1000baseX_Full here - the connected PHY could have a fiber
interface on it.

> +		/* fall through */
> +	case PHY_INTERFACE_MODE_TRGMII:
>  		phylink_set(mask, 1000baseT_Full);

I don't know enough about this interface type to comment whether it
should support 1000baseX_Full - if this is connected to a PHY that may
support fiber, then it ought to set it.

> +		break;
> +	case PHY_INTERFACE_MODE_2500BASEX:
> +		phylink_set(mask, 2500baseX_Full);
> +		/* fall through */
> +	case PHY_INTERFACE_MODE_1000BASEX:
> +		phylink_set(mask, 1000baseX_Full);

Both should be set.  The reasoning here is that if you have a
Fiberchannel 4Gbaud SFP plugged in and connected directly to the
MAC, it can operate at either 2500Base-X or 1000Base-X.  If we
decide to operate at 2500Base-X, then PHY_INTERFACE_MODE_2500BASEX
will be chosen.  Otherwise, PHY_INTERFACE_MODE_1000BASEX will be
used.

The user can use ethtool to control which interface mode is used
by adjusting the advertise mask and/or placing the interface in
manual mode and setting the speed directly.  This will change
the PHY_INTERFACE_MODE_xxxxBASEX (via phylink_helper_basex_speed())
between the two settings.

If we lose 2500baseX_Full when 1000Base-X is selected, the user
will not be able to go back to 2500Base-X mode.

Yes, it's a little confusing and has slightly different rules
from the other modes - partly due to phylink_helper_basex_speed().
These are the only interface modes that we dynamically switch
between depending on the settings that the user configures via
ethtool.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
