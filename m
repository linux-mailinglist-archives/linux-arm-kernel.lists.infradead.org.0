Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A039E157F86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+z4Ugu8CBzb7AyTuUkppl+msKfuFE+Dx3Xf658hiS4=; b=BAWNOgpxqe4PcW
	yt9ezKc68o2wULvLTlYiaE0P0C17D0btBYJX7VoBRpI6t0b5SwL4iCzzSWZRtxDRgq9zeAnPVOahi
	hIy5szanBkLRCDGkDpoHBzFpdaC+ZpsZCwHwDQc9Bq1gKEy32uZtik7LjftI3g6TP1dPSLievflnF
	a3S3BB6dvvgR5bERCmfuZI7Hr7LCMxcGAx/rMLtKgnrr05LHTgdnyoNDye7J/yCdaR15ZDhxGsyyq
	aohDPWTD/q1dC5xJzMz4sBEzBKums/ylnyS87aZHQXYdwPEA8CPOt1GcHX6oI5dNvEdh8WSRATnvT
	gAMt8hv/e/LC804bZVzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Bjj-0002aw-2Y; Mon, 10 Feb 2020 16:16:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Bjc-0002aQ-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=69w/2QNd4cmMSFcuQq/l9eOaG1SLWlv8HuFiAnr2cxg=; b=JB5VUCc1Ll4QlyGtYAdmnZk0B
 eWNvb9O4bAuq6+ssCpSV6CmPXcDfJWRlafkgvBi8PBUrkaGJkKQlWc7VaA7XE/SkiXfTnt5N2VjMB
 Qt6lPbwQ7uWwk8p6rNTdwyjKIc/rP94ZJvne8ysEGP+fa3qq6eJQdD2mqwdAPkS7NUZqq3tVNumlS
 Bi+hQuNBWbhFawQuX08Bq0X3+b6RzWAvfEOmpeE3hDzIxeKsctVRxDWDdNcVA5aBu4cH7OYFZ8LSb
 oDrQJiXjjk2pzwvQdB4Atpd1cKl4jWfQPLFKxGdHb4g/LBuKZu3UFabi/fuWYNZsuenJLYINpdaCR
 3B+/Uvdcw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46036)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1BjA-0007iw-VW; Mon, 10 Feb 2020 16:16:05 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1Biz-00081L-Q1; Mon, 10 Feb 2020 16:15:53 +0000
Date: Mon, 10 Feb 2020 16:15:53 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200210161553.GE25745@shell.armlinux.org.uk>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_081632_902422_B3585766 
X-CRM114-Status: GOOD (  29.77  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:28:23PM +0100, Olof Johansson wrote:
> On Mon, Feb 10, 2020 at 4:23 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Mon, Feb 10, 2020 at 04:12:30PM +0100, Olof Johansson wrote:
> > > On Thu, Feb 6, 2020 at 11:57 AM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
> > > >
> > > > Hi Olof,
> > > >
> > > > Thanks a lot for your comments!
> > > > And sorry for my delay respond!
> > >
> > > Actually, they apply with only minor conflicts on top of current -next.
> > >
> > > Bjorn, any chance we can get you to pick these up pretty soon? They
> > > enable full use of a promising ARM developer system, the SolidRun
> > > HoneyComb, and would be quite valuable for me and others to be able to
> > > use with mainline or -next without any additional patches applied --
> > > which this patchset achieves.
> > >
> > > I know there are pending revisions based on feedback. I'll leave it up
> > > to you and others to determine if that can be done with incremental
> > > patches on top, or if it should be fixed before the initial patchset
> > > is applied. But all in all, it's holding up adaption by me and surely
> > > others of a very interesting platform -- I'm looking to replace my
> > > aging MacchiatoBin with one of these and would need PCIe/NVMe to work
> > > before I do.
> >
> > If you're going to be using NVMe, make sure you use a power-fail safe
> > version; I've already had one instance where ext4 failed to mount
> > because of a corrupted journal using an XPG SX8200 after the Honeycomb
> > Serror'd, and then I powered it down after a few hours before later
> > booting it back up.
> >
> > EXT4-fs (nvme0n1p2): INFO: recovery required on readonly filesystem
> > EXT4-fs (nvme0n1p2): write access will be enabled during recovery
> > JBD2: journal transaction 80849 on nvme0n1p2-8 is corrupt.
> > EXT4-fs (nvme0n1p2): error loading journal
> 
> Hmm, using btrfs on mine, not sure if the exposure is similar or not.

As I understand the problem, it isn't a filesystem issue.  It's a data
integrity issue with the NVMe over power fail, how they cache the data,
and ultimately write it to the nand flash.

Have a read of:

https://www.kingston.com/en/solutions/servers-data-centers/ssd-power-loss-protection

As NVMe and SSD are basically the same underlying technology (the host
interface is different) and the issues I've heard, and now experienced
with my NVMe, I think the above is a good pointer to the problems of
flash mass storage.

As I understand it, the problem occurs when the mapping table has not
been written back to flash, power is lost without the Standby Immediate
command being sent, and there is no way for the firmware to quickly
save the table.  On subsequent power up, the firmware has to
reconstruct the mapping table, and depending on how that is done,
incorrect (old?) data may be returned for some blocks.

That can happen to any blocks on the drive, which means any data can
be at risk from a power loss event, whether that is a power failure
or after a crash.

> Do you know if the SErr was due to a known issue and/or if it's
> something that's fixed in production silicon?

The SError is triggered by something on the PCIe side of things; if I
leave the Mellanox PCIe card out, then I don't get them.  The errata
patches I have merged into my tree help a bit, turning the code from
being unable to boot without a SError with the card plugged in, to
being able to boot and last a while - but the SErrors still eventually
come, maybe taking a few days... and that's without the Mellanox
ethernet interface being up.

> (I still can't enable SMMU since across a warm reboot it fails
> *completely*, with nothing coming up and working. NXP folks, you
> listening? :)

Is it just a warm reboot?  I thought I saw SMMU activity on a cold
boot as well, implying that there were devices active that Linux
did not know about.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
