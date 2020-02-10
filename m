Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431C6157EB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:23:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88sgJfwHftmBBAu4LbwAKJDnteoCUQPEslQ0Lc689Bc=; b=lH0v45i8j2iXCM
	t5GTOLD9f+dkeRgO7A0U85e7bjSfQc9CuzUhLkcrniDhltpQAitoAjYhdJxErEa/RXpGPlTR/ajT0
	9pmHow7gjb4bCI3nDmOWbMB++hSkkr9pCiVC7bIRnnbkyaUeZ14O0gbBFXxmUL8Xk8bPJdA2F69Ja
	mspFg1RthLTrAvFi8Pxs1k1e1C7lhRRlJvTfAFIO4EvUyBb1XXhfi+B61GAT5qQSklx2AiSHXVk4Q
	+cmcgyc4CeJoTthdUCWE0KzuzFv1wuDc/nSJw3jlonT2MpiT6uDenlKcdl7yzHwf2+gabBubnikNc
	91xYnaaZ2EslMf90TC5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AuT-0005IZ-2e; Mon, 10 Feb 2020 15:23:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1AuL-0005Hc-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TqhAwvp9Xtx6LAPRC4IX+EMRgvLwL2jEspybEz0eFTI=; b=PoAKQbef9Q2ksbDk5+9S6DxWG
 f2XOs68EWJC+TjjDsjkKAJS4BZEbZDUOnpCOAhLURTS76uTFrLKCHlYOluyib9xFBPj9VZXjqN+PN
 OKnTN6FI7CzYC2csewp2xzJPRcwBaO+ThaKZ1RZISKj2GyenSsmW3t9cHN/namxUaAw8RzkGXeUwQ
 uQYUFbICs8CfKaOGbYMJX9wYhJhhBynyuovQf8d0pAhUu1TEVZJQ/s9+DiYKk+ktXRlvgbuUaOXp3
 9lHrntt1/93QZU76PtT7RajTmE1A1IkBUjlM5Dx88EYsaLDNDFoCW6EswZ3z9pZjoKwSn8SxFMzdj
 IBD6Jmr4g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46026)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1Atr-0007Ud-9u; Mon, 10 Feb 2020 15:23:03 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1Atl-0007zI-QL; Mon, 10 Feb 2020 15:22:57 +0000
Date: Mon, 10 Feb 2020 15:22:57 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200210152257.GD25745@shell.armlinux.org.uk>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_072333_338690_02599857 
X-CRM114-Status: GOOD (  16.61  )
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

On Mon, Feb 10, 2020 at 04:12:30PM +0100, Olof Johansson wrote:
> On Thu, Feb 6, 2020 at 11:57 AM Z.q. Hou <zhiqiang.hou@nxp.com> wrote:
> >
> > Hi Olof,
> >
> > Thanks a lot for your comments!
> > And sorry for my delay respond!
> 
> Actually, they apply with only minor conflicts on top of current -next.
> 
> Bjorn, any chance we can get you to pick these up pretty soon? They
> enable full use of a promising ARM developer system, the SolidRun
> HoneyComb, and would be quite valuable for me and others to be able to
> use with mainline or -next without any additional patches applied --
> which this patchset achieves.
> 
> I know there are pending revisions based on feedback. I'll leave it up
> to you and others to determine if that can be done with incremental
> patches on top, or if it should be fixed before the initial patchset
> is applied. But all in all, it's holding up adaption by me and surely
> others of a very interesting platform -- I'm looking to replace my
> aging MacchiatoBin with one of these and would need PCIe/NVMe to work
> before I do.

If you're going to be using NVMe, make sure you use a power-fail safe
version; I've already had one instance where ext4 failed to mount
because of a corrupted journal using an XPG SX8200 after the Honeycomb
Serror'd, and then I powered it down after a few hours before later
booting it back up.

EXT4-fs (nvme0n1p2): INFO: recovery required on readonly filesystem
EXT4-fs (nvme0n1p2): write access will be enabled during recovery
JBD2: journal transaction 80849 on nvme0n1p2-8 is corrupt.
EXT4-fs (nvme0n1p2): error loading journal

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
