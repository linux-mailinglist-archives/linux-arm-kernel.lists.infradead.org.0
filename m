Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F1A174845
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 18:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HNcOt1QaIoOuRI777JzAJbGr05SQAMNOoPkbjf1wwE=; b=OPrmMQWH8WJOkK
	Zhxqn2DA0Q7qXdgWee/wcRafD3t95ncqZxsqSY/wC7H7cSnXcoiGNAY8IuQ7WgnK3cJgiBYiwHRJM
	nG8oeHMMfLMiKMrDG3HPBxoo1Ebam9Eigl/NoFV/0cbSSVJrGlRXFFDU9U5e5Yjbern06HOf/y9Sq
	dG5+u5/+zMk2Jhc9UxOlZjEPI2BRmR34MwFq6VSZ82/obrCG+hmgbxaDhyCK53oAHBfgXpDiqGucD
	WjckLmNerk04plfIijauRpoYRPpZzUIYMWsfV1I6KrMyVBs75eiWonDDlhaFuL1kvlAstCjv0aN0p
	QO6AIV5/X7AZ0hH8k+6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j85XA-00083L-Pb; Sat, 29 Feb 2020 17:04:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j85Wy-00082z-Kd
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 17:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VJa4/ENqUUcyzQ50adGWhHo++94I/SPwFtIFyNEIG/M=; b=WuGamnAlOyuSYmTPlM/hnFV3Y
 1IRzG/u5tcAan1mpj9ClDlUoxpvpfnYNsNO5Gh1YPhynX7JwAlSR233K+fmlM6xUzbnLP82u9nNuG
 uJEFbtIPC5pghl/ddLd7vKTmeq5KHptLRAaAOHo1M77aGGLrAQT3ltKd7Vd7DfYw/eowQozBB2/lZ
 WBASy0BUaKINZQHan6rUE098SKz/odQWVVLQ91+EwJmc5p6bvRNrvUTt0MhapgkZHO1/SfJn2/Loc
 fGumiPlir8nJUR4QT+TH5RrkB3UePEIhw2UmlPY2zZZDZn8ZfmW/aQ1zACfMfRmlPKQiQ9rG+XxCw
 rnqWtOcqQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58578)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j85WW-0002dX-Gr; Sat, 29 Feb 2020 17:03:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j85WS-00037o-IM; Sat, 29 Feb 2020 17:03:28 +0000
Date: Sat, 29 Feb 2020 17:03:28 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200229170328.GD25745@shell.armlinux.org.uk>
References: <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <20200229095550.GX25745@shell.armlinux.org.uk>
 <20200229110456.GY25745@shell.armlinux.org.uk>
 <20200229151907.GA7378@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229151907.GA7378@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_090400_681104_0A9E7F90 
X-CRM114-Status: GOOD (  22.31  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 Jon Nettleton <jon@solid-run.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Leo Li <leoyang.li@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Olof Johansson <olof@lixom.net>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 10:19:07AM -0500, Theodore Y. Ts'o wrote:
> On Sat, Feb 29, 2020 at 11:04:56AM +0000, Russell King - ARM Linux admin wrote:
> > Could it be a race condition, or some problem that's specific to the
> > ARM64 kernel that's provoking this corruption?
> 
> Since I got brought in mid-way through this discussion, can someone
> summarize the vital details of the bughunt?  What kernel version is
> involved, and is this a regression?  If so, what's the last version of
> the kernel where you didn't have a problem on this hardware?

It's a new platform, I've run most 5.x kernels on it, but only recently
have I had a NVMe.  Currently running a 5.5 based kernel (for which I
have to patch in support for the platform), and I've no idea if it is
a regression or not.

> Can you trigger this failure reliably?

No - the very first time I ended up with a corrupted ext4 fs was on the
8th February, and at that time it was put down to the NVMe not being
power-off safe: the machine had crashed sometime over night, resulting
in a section of my network going offline (due to a pause frame storm).
So, I powered it down from crashed state - and from what people tell me,
NVMe _may_ keep blocks unwritten to safe media for a considerable time.

I never bothered to investigate it because the explanation seemed
reasonable, and manually running e2fsck fixed the filesystem.

The system was then booted back into using the NVMe rootfs, and
continued to do so without apparent issue until the 21st Feb, when I
cleanly shut it down, and powered it off.  During the time it was
running, it likely saw many reboots of the 5.5 kernel.

I powered it back on yesterday morning, and this morning it found the
fs corruption while trying to do a logrotate.

As I say in my last email, I suspect it isn't an ext4 bug, but either
a locking implementation issue, coherency issue, or interconnect issue.
The 4k block with the affected inode looks perfectly reasonable with
the only exception that the checksum is incorrect for that one inode -
and other inodes stored in the same 4k block were modified afterwards.
It suggests to me that the writes to update the two 16-bit words
containing the checksum were somehow lost for this particular inode.

> Unfortunately, while I'm regularly running xfstests on x86_64 on a
> Google Compute Engine VM, I'm not doing any runs on arm64.  I can
> certainly build an arm-64.
> 
> There's a test-appliance designed to be run on ARM64 here[1].
> 
> [1] https://kernel.org/pub/linux/kernel/people/tytso/kvm-xfstests/xfstests-amd64.tar.xz

The filename seems to say "amd64" not "arm64" ?

> which is a Debian chroot, designed to be run via android-xfstests[2], but
> if you unpack it, it should be possible to enter the chroot and
> trigger the xfstests run manually on any arm64 system.
> 
> [2] https://thunk.org/android-xfstests
> 
> Does anyone know if kernel CI is running xfstests regularly?

I don't know...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
