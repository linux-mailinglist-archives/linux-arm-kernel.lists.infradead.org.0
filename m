Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D31161A80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 19:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLYzL1J+7FY0cSL/phNck4FXTnEcm5M5Tu8o3y75iN8=; b=eudHS/T694OgPd
	h9Ak5i69sreXikda301TOMm8q2LY2m0Ujh0l/duQRHP8s/u9BXUELIMU12OtDw3UsMcEjRDg6LyZN
	UR0mKh1kz2DXmxQG9851nNY9eU31nHSBZVc4sKeUTrBgFgxKnJPbmhgbazHYO7FBZAmr6juShUMFi
	gG0Psw6lfb1dGFqgma7oTJRTCHoUoD9rf3DB5GAtnM7Tu2Q4Ru7UWg6yaSBfu+5lc0qmBUkCZWmUP
	UsboQtIvLlurYxvdnaj+0wzB6RBJVcOE9YzfjpJYU+UtCkiwV7QSeqqLut15obZ8iI/W0dtml+aiF
	3ViiWqF8r95yMkqWY94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3lRx-0006ml-CR; Mon, 17 Feb 2020 18:48:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3lRn-0006kT-VN; Mon, 17 Feb 2020 18:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZnbZhFy+lu7UoJn/uqADUzy5uOIWmqyjmegoMJD5DU=; b=XQkKRMghvaybOVtjeWzCIfAFj
 79Pl+ZqFkk9k5pm6T0vp9t5AfT7YaPQznK9puDEjmS3gmoATKi7DxblvVje/UvYw7dAUcK/fNzSds
 IHSdyrA/J+2A7LWOZV1HjHvpCByPVnNNiovaH1bMq7zrIA9h+geUE2K3rQiPE3+15nu10S7ikAbZ/
 q+H8SSr+EpoIhr9Jksv4OULdGc0hGAkBUG0MEryCj21Kr0+CGqcYyElmMFRF4A0ZRbD26Fm7ZAaw6
 BQMJxd9fRmVDs8/caQWCHjds/DfQHWlyOKrLA7VR5DSrya/NziLrRTnV8O4oBGTaEvFQKd9E/fRZj
 iRg271EQQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49148)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j3lRK-0002We-Hs; Mon, 17 Feb 2020 18:48:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j3lRE-0006XW-5L; Mon, 17 Feb 2020 18:48:12 +0000
Date: Mon, 17 Feb 2020 18:48:12 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [CFT 1/8] net: phylink: propagate resolved link config via
 mac_link_up()
Message-ID: <20200217184812.GB25745@shell.armlinux.org.uk>
References: <20200217172242.GZ25745@shell.armlinux.org.uk>
 <E1j3k7e-00071q-3R@rmk-PC.armlinux.org.uk>
 <20200217180359.GK7778@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217180359.GK7778@bombadil.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_104848_054587_A59EBEBC 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com, Felix Fietkau <nbd@openwrt.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 10:03:59AM -0800, Matthew Wilcox wrote:
> On Mon, Feb 17, 2020 at 05:23:54PM +0000, Russell King wrote:
> > +   Please see :c:func:`mac_link_up` for more information on this.
> 
> FYI, Jon recently added the ability to specify functions as
> 
> +   Please see mac_link_up() for more information on this.
> 
> and it's now the preferred way to do this.  Nothing that should stand in
> the way of this patch-set, of course.

Thanks for letting me know - it sounds like the subject of a future
patch to convert all instances.  In the mean time, I suggest keeping
to the current style in the file for consistency...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
