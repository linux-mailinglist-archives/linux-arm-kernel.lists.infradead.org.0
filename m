Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5590AB2FE3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 14:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0A8AzW8s0mzlvXJ29uuuK6RemBZiG+H8NATaF6fiCE8=; b=jqy553H7KOkTeK
	ZbT8vaJoLtd8/p3X1s6GEULKo55To0Eo3mB83Z3QMNrThfQk21JZ4aRpJvTMTQpseYBVp2we9ebqa
	u83D10WpnJBHEPFiA5jLF9iJBRTNcf8VsS4xkWt7590Tt1rZ3jkm3gudfxoWno7l273JUzJe3EwBE
	CWRr4qqu+/+ZfLoFVKdJb7Be/K8amuzZ8GoopEAH0Dlec3GspGPkbs5oTOuzBkyspBL/NgSM8ylws
	GAe/h3Hea8/Jz60PFHBosSXbnwix44FxJfACJyD0EJavgZCh+uiz2icn99/dCQx+JTwC+MjK4vEpN
	DRBP974pIRD3HkYBlFXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Thv-0000tS-5a; Sun, 15 Sep 2019 12:32:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ThT-0000ro-EC
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 12:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ONh9octt7hrPQetjAA69jtrwBb1nNoc7kuenQgL5+s=; b=mJ6H+5JgApMXvWLKoEtXtjl77
 hNJLFf6z/ksCIQG/TLHSLwulUUOyPEmA7T5BDrbcj4f9qyEa+oS5plI7CYErFAEv2hI92Br+q7GRa
 jkhD5WnV5YMYILs14ZS/efkjqWne23ugyTLZH4ogNuGEC229bHkpMTzzQUY/L3IY5S9InHLdDBBjp
 7ZRexRIJi+jQ4qIQAdkvI7vKV/6wFxiv3oryJHRD7FPCJtrFuibCJCVF4tbVRWTh3Jrk6ORRsM3aV
 PTWCdJP44LcDAtXzb6n+fh/2m89BwbExLqjyQuAPhWSobXo/5ZZ4qNccJ5CaBVH4faPWTavuzDRxH
 G1U4YUI9w==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39810)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i9Tes-0006Iq-Jp; Sun, 15 Sep 2019 13:29:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i9Tej-0007lP-9q; Sun, 15 Sep 2019 13:29:29 +0100
Date: Sun, 15 Sep 2019 13:29:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190915122929.GB25745@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87muf6oyvr.fsf@tarshish>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_053220_183659_F68F0456 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, tinywrkb <tinywrkb@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 09:30:00AM +0300, Baruch Siach wrote:
> Hi Andrew,
> 
> On Tue, Sep 10 2019, Andrew Lunn wrote:
> > On Tue, Sep 10, 2019 at 06:55:07PM +0300, tinywrkb wrote:
> >> Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the
> >> Atheros AR8035 PHY on the MicroSoM v1.3 CPU module is a 1GbE PHY device.
> >>
> >> Since commit 5502b218e001 ("net: phy: use phy_resolve_aneg_linkmode in
> >> genphy_read_status") ethernet is broken on Cubox-i Solo/DualLite devices.
> >
> > Hi Tinywrkb
> >
> > You emailed lots of people, but missed the PHY maintainers :-(
> >
> > Are you sure this is the patch which broken it? Did you do a git
> > bisect.
> 
> Tinywrkb confirmed to me in private communication that revert of
> 5502b218e001 fixes Ethernet for him on effected system.
> 
> He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> there was a plan to use a different 10/100 PHY for Solo/DualLite
> SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> AR8035 PHY that supports 1Gb.
> 
> Commit 5502b218e001 might be triggering a hardware issue on the affected
> Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> the moment.

With 5.3 due out today, I'll be updating my systems to that, which will
include quite a few variants of the Hummingboard.

It looks like one of my Solo Hummingboards (running a fully up to date
Fedora 28) has encountered a problem, so needs a reboot...

systemd-journald[436]: Failed to retrieve credentials for PID 17906, ignoring: Cannot allocate memory
systemd-journald[436]: Failed to open runtime journal: Cannot allocate memory

# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
...
root       436  0.0  5.2 3128140 26392 ?       Ss   Aug03   1:20 /usr/lib/systemd/systemd-journald
# uptime
 13:28:41 up 42 days, 19:13,  1 user,  load average: 0.00, 0.03, 0.00

Looks like systemd-journald has a rather bad memory leak...

#include <std-complaints-about-systemd>

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
