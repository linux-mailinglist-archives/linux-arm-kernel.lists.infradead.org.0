Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC05D1F0617
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 12:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xdL82PPBIHeVhBXHFQ927Rqo0TsYYJcPj+0AbGZam8=; b=S4QjhomXggcO9D
	DPTEvC/CUMN/mv57Kilf0zGUrUumCtR6DhMD3joPtEieqVWZwBBO4VQLMSOrbjlcE8h9o49LcsTVQ
	KT38CLNQF0s5IpuGPn+cJESp52P3wmDezvB1QdYBaaXIKLhickef8CFFgr2QraeLWSt2fnUD0TGGZ
	OgBNAYJMoJkIdhM4lX+QMXA/kMihPSIbjWWw7Arj9h5WZNSPcdjKn5PDDKznC+7bXgY2ZVKvsObpU
	MFCQbfeNhMMb0DOnyN9nxvxtsqiDGWYwAQ+kSxnxv28Pl/ISQ8wbeFvCIkDjACFRZMMT6foLoSDW9
	5bltNXgp52HvHiy83w3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhVxv-0000ID-4B; Sat, 06 Jun 2020 10:22:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhVxk-0006Ge-O9
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jun 2020 10:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s3viW3ocZ2IGXT+o4aAck4+EL3gbUTQfiDMoMc/4yIg=; b=R6o4tUFD2hGo8pk2KKz+LZOLd
 gzmg5yvvlGkerbg/3dbfX4GKyT79Eq5ygj1ia6ePe9J7meqkucjUcuTTDq8d/d2dU7fRuDxrMPXd0
 XrT3YW/VUeX6IZfV3lqP/Oi+IUDKeEr9vphBCqh2gf4KHyiuylz+M9qtyAlS/9tXhuxn+V13Gmqwy
 kwfxt1ZVA76LI2wiZ0Ux2QOuGjDhcn8Eg3KW1dGRCrbFYz9hNeSuGlmmsoeYLQG1l9RfniDFtWJA7
 S66O2QCpm2O6AXwUgt2fqlK5Oj19CmuWGWuxtcKz5iS4XJmZvdfue9elrtRY8YOJtMBBPOpSavShM
 sdOG9SYvg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39564)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jhVvK-0004FK-TO; Sat, 06 Jun 2020 11:19:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jhVvF-0008PD-Jw; Sat, 06 Jun 2020 11:19:29 +0100
Date: Sat, 6 Jun 2020 11:19:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Olof Johansson <olof@lixom.net>, Jon Nettleton <jon@solid-run.com>,
 Theodore Ts'o <tytso@mit.edu>, Andreas Dilger <adilger.kernel@dilger.ca>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200606101929.GL1551@shell.armlinux.org.uk>
References: <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <20200229095550.GX25745@shell.armlinux.org.uk>
 <20200229110456.GY25745@shell.armlinux.org.uk>
 <20200605235343.GG1605@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605235343.GG1605@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_032205_172505_628555A9 
X-CRM114-Status: GOOD (  34.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 06, 2020 at 12:53:43AM +0100, Russell King - ARM Linux admin wrote:
> On Sat, Feb 29, 2020 at 11:04:56AM +0000, Russell King - ARM Linux admin wrote:
> > Adding Ted and Andreas...
> > 
> > Here's the debugfs -n "id" output for dpkg.status.5.gz (which is fine,
> > and probably a similar size):
> > 
> > debugfs:  id <917527>
> > 0000  a481 0000 30ff 0300 bd8e 475e bd77 4f5e  ....0.....G^.wO^
> > 0020  29ca 345e 0000 0000 0000 0100 0002 0000  ).4^............
> > 0040  0000 0800 0100 0000 0af3 0100 0400 0000  ................
> > 0060  0000 0000 0000 0000 4000 0000 8087 3800  ........@.....8.
> > 0100  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 0140  0000 0000 c40b 4c0a 0000 0000 0000 0000  ......L.........
> > 0160  0000 0000 0000 0000 0000 0000 3884 0000  ............8...
> > 0200  2000 95f2 44b8 bdc9 a4d2 9883 c861 dc92   ...D........a..
> > 0220  bd31 4a5e ecc5 260c 0000 0000 0000 0000  .1J^..&.........
> > 0240  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 
> > and for the affected inode:
> > debugfs:  id <917524>
> > 0000  a481 0000 30ff 0300 3d3d 465e bd77 4f5e  ....0...==F^.wO^
> > 0020  29ca 345e 0000 0000 0000 0100 0002 0000  ).4^............
> > 0040  0000 0800 0100 0000 0af3 0100 0400 0000  ................
> > 0060  0000 0000 0000 0000 4000 0000 c088 3800  ........@.....8.
> > 0100  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 0140  0000 0000 5fc4 cfb4 0000 0000 0000 0000  ...._...........
> > 0160  0000 0000 0000 0000 0000 0000 af23 0000  .............#..
> > 0200  2000 1cc3 ac95 c9c8 a4d2 9883 583e addf   ...........X>..
> > 0220  3de0 485e b04d 7151 0000 0000 0000 0000  =.H^.MqQ........
> > 0240  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 
> > and "stat" output:
> > debugfs:  stat <917527>
> > Inode: 917527   Type: regular    Mode:  0644   Flags: 0x80000
> > Generation: 172755908    Version: 0x00000000:00000001
> > User:     0   Group:     0   Project:     0   Size: 261936
> > File ACL: 0
> > Links: 1   Blockcount: 512
> > Fragment:  Address: 0    Number: 0    Size: 0
> >  ctime: 0x5e4f77bd:c9bdb844 -- Fri Feb 21 06:25:01 2020
> >  atime: 0x5e478ebd:92dc61c8 -- Sat Feb 15 06:25:01 2020
> >  mtime: 0x5e34ca29:8398d2a4 -- Sat Feb  1 00:45:29 2020
> > crtime: 0x5e4a31bd:0c26c5ec -- Mon Feb 17 06:25:01 2020
> > Size of extra inode fields: 32
> > Inode checksum: 0xf2958438
> > EXTENTS:
> > (0-63):3704704-3704767
> > debugfs:  stat <917524>
> > Inode: 917524   Type: regular    Mode:  0644   Flags: 0x80000
> > Generation: 3033515103    Version: 0x00000000:00000001
> > User:     0   Group:     0   Project:     0   Size: 261936
> > File ACL: 0
> > Links: 1   Blockcount: 512
> > Fragment:  Address: 0    Number: 0    Size: 0
> >  ctime: 0x5e4f77bd:c8c995ac -- Fri Feb 21 06:25:01 2020
> >  atime: 0x5e463d3d:dfad3e58 -- Fri Feb 14 06:25:01 2020
> >  mtime: 0x5e34ca29:8398d2a4 -- Sat Feb  1 00:45:29 2020
> > crtime: 0x5e48e03d:51714db0 -- Sun Feb 16 06:25:01 2020
> > Size of extra inode fields: 32
> > Inode checksum: 0xc31c23af
> > EXTENTS:
> > (0-63):3705024-3705087
> > 
> > When using sif (set_inode_info) to re-set the UID to 0 on this (so
> > provoke the checksum to be updated):
> > 
> > debugfs:  id <917524>
> > 0000  a481 0000 30ff 0300 3d3d 465e bd77 4f5e  ....0...==F^.wO^
> > 0020  29ca 345e 0000 0000 0000 0100 0002 0000  ).4^............
> > 0040  0000 0800 0100 0000 0af3 0100 0400 0000  ................
> > 0060  0000 0000 0000 0000 4000 0000 c088 3800  ........@.....8.
> > 0100  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 0140  0000 0000 5fc4 cfb4 0000 0000 0000 0000  ...._...........
> > 0160  0000 0000 0000 0000 0000 0000 b61f 0000  ................
> >                                     ^^^^
> > 0200  2000 aa15 ac95 c9c8 a4d2 9883 583e addf   ...........X>..
> >            ^^^^
> > 0220  3de0 485e b04d 7151 0000 0000 0000 0000  =.H^.MqQ........
> > 0240  0000 0000 0000 0000 0000 0000 0000 0000  ................
> > *
> > 
> > The values with "^^^^" are the checksum, which are the only values
> > that have changed here - the checksum is now 0x15aa1fb6 rather than
> > 0xc31c23af.
> > 
> > With that changed, running e2fsck -n on the filesystem results in a
> > pass:
> > 
> > root@cex7:~# e2fsck -n /dev/nvme0n1p2
> > e2fsck 1.44.5 (15-Dec-2018)
> > Warning: skipping journal recovery because doing a read-only filesystem check.
> > /dev/nvme0n1p2 contains a file system with errors, check forced.
> > Pass 1: Checking inodes, blocks, and sizes
> > Pass 2: Checking directory structure
> > Pass 3: Checking directory connectivity
> > Pass 4: Checking reference counts
> > Pass 5: Checking group summary information
> > /dev/nvme0n1p2: 121163/2097152 files (0.1% non-contiguous), 1349227/8388608 blocks
> > 
> > and the file now appears to be intact (being a gzip file, gzip verifies
> > that the contents are now as it expects.)
> > 
> > So, it looks like the _only_ issue is that the checksum on the inode
> > became invalid, which seems to suggest that it *isn't* a NVMe nor PCIe
> > issue.
> > 
> > I wonder whether the journal would contain anything useful, but I don't
> > know how to use debugfs to find that out - while I can dump the journal,
> > I'd need to know which block contains the inode, and then work out where
> > in the journal that block was going to be written.  If that would help,
> > let me know ASAP as I'll hold off rebooting the platform for a while
> > (which means the filesystem will remain as-is - and yes, I have the
> > debugfs file for e2undo to put stuff back.)  Maybe it's possible to pull
> > the block number out of the e2undo file?
> > 
> > tune2fs says:
> > 
> > Checksum type:            crc32c
> > Checksum:                 0x682f91b9
> > 
> > I guess this is what is used to checksum the inodes?  If so, it's using
> > the kernel's crc32c-generic driver (according to /proc/crypto).
> > 
> > Could it be a race condition, or some problem that's specific to the
> > ARM64 kernel that's provoking this corruption?
> 
> Hi,
> 
> The corruption has returned this evening:
> 
> [25094.614718] EXT4-fs error (device nvme0n1p2): ext4_lookup:1707: inode #271688: comm mandb: iget: checksum invalid
> [25094.623781] Aborting journal on device nvme0n1p2-8.
> [25094.627419] EXT4-fs (nvme0n1p2): Remounting filesystem read-only
> [25094.628206] EXT4-fs error (device nvme0n1p2):
> ext4_journal_check_start:83: Detected aborted journal
> root@cex7:[~]:<506> debugfs /dev/nvme0n1p2
> debugfs 1.44.5 (15-Dec-2018)
> debugfs:  id <271688>
> 0000  a481 0000 f108 0000 2518 fd5d 2518 fd5d  ........%..]%..]
> 0020  9f49 715c 0000 0000 0000 0100 0800 0000  .Iq\............
> 0040  0000 0800 0100 0000 0af3 0100 0400 0000  ................
> 0060  0000 0000 0000 0000 0100 0000 ed19 1100  ................
> 0100  0000 0000 0000 0000 0000 0000 0000 0000  ................
> *
> 0140  0000 0000 b42f 4f06 0000 0000 0000 0000  ...../O.........
> 0160  0000 0000 0000 0000 0000 0000 c9cf 0000  ................
> 0200  2000 8d83 086d bebf 0000 0000 086d bebf   ....m.......m..
> 0220  2518 fd5d 086d bebf 0000 0000 0000 0000  %..].m..........
> 0240  0000 0000 0000 0000 0000 0000 0000 0000  ................
> *
> 
> debugfs:  stat <271688>
> Inode: 271688   Type: regular    Mode:  0644   Flags: 0x80000
> Generation: 105852852    Version: 0x00000000:00000001
> User:     0   Group:     0   Project:     0   Size: 2289
> File ACL: 0
> Links: 1   Blockcount: 8
> Fragment:  Address: 0    Number: 0    Size: 0
>  ctime: 0x5dfd1825:bfbe6d08 -- Fri Dec 20 18:51:17 2019
>  atime: 0x5dfd1825:bfbe6d08 -- Fri Dec 20 18:51:17 2019
>  mtime: 0x5c71499f:00000000 -- Sat Feb 23 13:24:47 2019
>  crtime: 0x5dfd1825:bfbe6d08 -- Fri Dec 20 18:51:17 2019
> Size of extra inode fields: 32
> Inode checksum: 0x838dcfc9
> EXTENTS:
> (0):1120749
> debugfs:
> root@cex7:[~]:<509> e2fsck -n /dev/nvme0n1p2
> e2fsck 1.44.5 (15-Dec-2018)
> Warning: skipping journal recovery because doing a read-only filesystem check.
> /dev/nvme0n1p2 contains a file system with errors, check forced.
> Pass 1: Checking inodes, blocks, and sizes
> Pass 2: Checking directory structure
> Pass 3: Checking directory connectivity
> Pass 4: Checking reference counts
> Pass 5: Checking group summary information
> /dev/nvme0n1p2: 147476/2097152 files (0.1% non-contiguous), 1542719/8388608 blocks
> 
> This time, the machine has not been powered down for a very long time,
> although I've booted 5.7 (plus the additional patches including several
> workarounds in the PCIe driver so my Mellanox card works) on it earlier
> today. I did notice that debian decided to run a fsck on the filesystem
> at reboot, which is a little weird as it's ext4, and found nothing wrong.
> 
> Hmm, I just tried:
> 
> root@cex7:[~]:<514> hdparm -f /dev/nvme0n1p2
> root@cex7:[~]:<515> hdparm -f /dev/nvme0n1
> root@cex7:[~]:<517> e2fsck -n /dev/nvme0n1p2
> e2fsck 1.44.5 (15-Dec-2018)
> Warning: skipping journal recovery because doing a read-only filesystem
> check.
> /dev/nvme0n1p2 contains a file system with errors, check forced.
> Pass 1: Checking inodes, blocks, and sizes
> Pass 2: Checking directory structure
> Entry 'mainlog.2.gz' in /var/log/exim4 (917613) has deleted/unused inode 922603.  Clear? no
> 
> Entry 'mainlog.2.gz' in /var/log/exim4 (917613) has an incorrect filetype (was 1, should be 0).
> Fix? no
> 
> Pass 3: Checking directory connectivity
> Pass 4: Checking reference counts
> Unattached inode 920748
> Connect to /lost+found? no
> 
> Pass 5: Checking group summary information
> Block bitmap differences:  +(9259--9280) -3703011 -3703044 -3703053 +3736187 -3827722 -3830272 +3906363 +3911697 +3911699 +3911701 +3911703 +3913228
> Fix? no
> 
> Free blocks count wrong for group #113 (12615, counted=12606).
> Fix? no
> 
> Free blocks count wrong (6845889, counted=6845880).
> Fix? no
> 
> Inode bitmap differences: Group 112 inode bitmap does not match checksum.
> IGNORED.
> Block bitmap differences: Group 113 block bitmap does not match checksum.
> IGNORED.
> 
> /dev/nvme0n1p2: ********** WARNING: Filesystem still has errors **********
> 
> /dev/nvme0n1p2: 147476/2097152 files (0.1% non-contiguous), 1542719/8388608 blocks
> 
> which looks less good, and is likely to be e2fsck reading off the media
> rather than using what was in the kernel cache.  However, still nothing
> for the offending inode, who's raw data remains unchanged from what I've
> quoted above from debugfs.
> 
> It /seems/ to be pointing at the data on the media changing, possibly
> buggy firmware on the nvme (ADATA SX8200PNP) drive, maybe? Or maybe
> undiscovered bugs in the Mobiveil PCIe hardware corrupting transfers
> to the nvme?
> 
> The problem is, this is rather undebuggable as it happens so rarely. :(
> 
> I'm becoming very discouraged to touch nvme ever again by this, as this
> is my first and only experience of that technology.  I'm considering
> getting some conventional SATA HDDs and junking nvme on the basis of
> it being an unreliable technology.

Okay, now I'm confused.  I haven't rebooted the platform (I was just
about to) but because of the issues I've had in the past with the
filesystem not being mountable, I thought I ought to run e2fsck on
the now read-only root filesystem before rebooting to ensure that it
is consistent.

root@cex7:[~]:<587> e2fsck -n /dev/nvme0n1p2
e2fsck 1.44.5 (15-Dec-2018)
/dev/nvme0n1p2 contains a file system with errors, check forced.
Pass 1: Checking inodes, blocks, and sizes
Pass 2: Checking directory structure
Pass 3: Checking directory connectivity
Pass 4: Checking reference counts
Pass 5: Checking group summary information
Free blocks count wrong (6845930, counted=6845886).
Fix? no

Free inodes count wrong (1949681, counted=1949673).
Fix? no

/dev/nvme0n1p2: 147471/2097152 files (0.1% non-contiguous),
1542678/8388608 blocks

but but but, the filesystem is still mounted read-only, so how can it
have changed?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
