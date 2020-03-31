Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C43198DA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 09:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzOsGR0wZsrIUPOQodKTIpitCJhmTuUN7qHzOe31ZJA=; b=WvRWb6dAmgFKIX
	fhWfE77GCNxMne+NUseG86+Ok5lyFapW383BI/lYVDED0FIxcQKLqdPdrzYhzwaXtREb3tQdl+DcE
	rI9EANdUfeIABhMUmTPq8NBOC2xgMXk6IT3xzCJsEfkZ69S7CKqdUeaYmhyeTKeJlhLjvIvKnfYFt
	Aegbr1cv2yuTGzKZyMucNqg0HYXsWFM1Y7mdYIvBGt9hUc5vFxjq4KKA2TnaSwy+EvjMoLnRadX7e
	qHMszKxVpbmVVU+tQrWZ1ADoVoZYkoLgSg5mw/DZcWombW4aFZAW2a0J4oy/P/GsViQYJR4+TdtQB
	4C2oFw9H1tdFuJjk5MvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBkp-0001OC-An; Tue, 31 Mar 2020 07:56:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBkH-0000uI-CE
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 07:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IjrKeaoW+Y8qn647fMgg9kytpAUbV0tJ8TWzXxWShm0=; b=JzkIVSeuaSGCRh1kAHtrWXjo/
 RPIYVBti8rwGYH/bGlXrvoW+3OfA3c54BDoDq4yowoZMxhGMpFT7otQZ0Y1zzkey8Cna8+2UQFh/G
 boMcsNq5U3/d/Tod7hgQUdTucq9MD2QIU8ZA/PsRNxU7WB/3YYDyBnLazkjsi8iiNABhKTxYJT9Mt
 vayNA13+Ov7Br7ufgfhX8bvCCO4kNjdGbru9sovxWOL+gCDP6e03U4TewxUeXL1mrcYfOyJuIo+bl
 IzVTkb/BbODzRPBGlYFpAIOIX9I9yA87/tVo2Re6xfiLlEqCwBBMX/UplgHJFDU8lG1qYRC0WXo7S
 ulZ7qM+Jg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39556)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJBjg-00071D-U6; Tue, 31 Mar 2020 08:55:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJBjd-0007xI-Lh; Tue, 31 Mar 2020 08:54:57 +0100
Date: Tue, 31 Mar 2020 08:54:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331075457.GJ25745@shell.armlinux.org.uk>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <5ae5c0de-f05c-5e3f-86e1-a9afdd3e1ef1@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ae5c0de-f05c-5e3f-86e1-a9afdd3e1ef1@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_005537_431219_E954BF8C 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 09:47:19AM +0200, Marc Kleine-Budde wrote:
> On 3/30/20 7:41 PM, Russell King - ARM Linux admin wrote:
> >>> arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> >>> arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> >>> arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> >>> arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> > 
> > As far as I'm concerned, the AR8035 fixup is there with good reason.
> > It's not just "random" but is required to make the AR8035 usable with
> > the iMX6 SoCs.  Not because of a board level thing, but because it's
> > required for the AR8035 to be usable with an iMX6 SoC.
> 
> Is this still ture, if the AR8035 is attached to a switch behind an iMX6?

Do you know of such a setup, or are you talking about theoretical
situations?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
