Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB58B3F88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 19:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5llOpirdAWfUzVvq4h8ZVuveFPfXMrQok9w7kwDLdvI=; b=AnZUoixMOXVRVM
	VU8EeXHpW1K1LVhPe/ImYA/CC+N6bKmouO78YyitMpOJCeMFwkSjg2/HFIad89w5BfHYXwoAPOJwP
	HwCPjJ2ZeaeTPaOZA39rSJpQyzFTLZcRasmLFIkwkdSYFSsBXNUClLWBs2P6YCOqfDm8oj39SWJA0
	vs5E13a5OPEDjeUnfxRWzBDppfY5Uk6Zm4t+PVKe3/sigB5voXo6j0GemzgZ8vDj+v/1LUr5MxbmH
	XsOizlGuWbp7D6/plE0+Yqfjs86pPR3IBehXZCRofrg4X9j2EZ+qcUhFLwJ4pdS2jmVykmT+Bxigp
	Bw9rcbPgPe2VhSU8K1hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9udA-0003l1-VU; Mon, 16 Sep 2019 17:17:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ucv-0003dB-Fl
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 17:17:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P9qVJKlvyn4aP4f/O45V2DON/bGLrejbbTHVrSmMC9s=; b=sdt2E3nCJoFE3/EYgWaYHDEZj
 g3aKS0Ib7TuJ9UInEBMifyjx5z9Y9fSrJ1sFbFtC1zktxUKpuPdlmnf/Qp8enN0JM06P56rvHrr/9
 NHVZDFZbTDTMM6smtwDd7VcPDNHRK74tPUAGGVMjtqIfC3IMmf+fv9NAA8Nq8V8FssAc8nzwplO9r
 Sh82I3VHQkKqHDKXi3V37/ki9tceqxqgGRT8wCBK+lbVNQLhWvFQCFuDucYxE/T2CZdhsHY7T7AgX
 0AnLgW794rmBTDyXmi/IWbtIx+fudp3Y+gMbcDFdMm51YFsFW3oVRM8QgWfrwz5dEPsTTV/7NJ1Tn
 2n//kgAPg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:32770)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i9uam-0004yx-RV; Mon, 16 Sep 2019 18:15:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i9uak-0000TK-1f; Mon, 16 Sep 2019 18:15:10 +0100
Date: Mon, 16 Sep 2019 18:15:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190916171509.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_101725_532661_D06C5507 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

It seems that somewhere between v5.2 and v5.3, sdhci fails to detect
SD cards on the NXP LX2160A, but continues to work with eMMC.
This uses the sdhci-esdhc driver.

v5.2:

sdhci: Secure Digital Host Controller Interface driver
sdhci: Copyright(c) Pierre Ossman
sdhci-pltfm: SDHCI platform and OF driver helper
mmc0: SDHCI controller on 2140000.esdhc [2140000.esdhc] using ADMA 64-bit
mmc1: SDHCI controller on 2150000.esdhc [2150000.esdhc] using ADMA 64-bit
mmc0: new high speed SDHC card at address aaaa
mmcblk0: mmc0:aaaa SU04G 3.69 GiB
mmc1: new HS400 MMC card at address 0001
mmcblk1: mmc1:0001 DF4064 58.2 GiB
mmcblk1boot0: mmc1:0001 DF4064 partition 1 4.00 MiB
mmcblk1boot1: mmc1:0001 DF4064 partition 2 4.00 MiB
mmcblk1rpmb: mmc1:0001 DF4064 partition 3 4.00 MiB, chardev (247:0)
 mmcblk1: p1

v5.3:

sdhci: Secure Digital Host Controller Interface driver
sdhci: Copyright(c) Pierre Ossman
sdhci-pltfm: SDHCI platform and OF driver helper
mmc0: SDHCI controller on 2140000.esdhc [2140000.esdhc] using ADMA 64-bit
mmc1: SDHCI controller on 2150000.esdhc [2150000.esdhc] using ADMA 64-bit
mmc0: ADMA error
mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
mmc0: sdhci: Host ctl2: 0x00000000
mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
mmc0: sdhci: ============================================
mmc0: error -5 whilst initialising SD card
mmc0: ADMA error
mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x00008098
mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
mmc0: sdhci: Host ctl2: 0x00000000
mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
mmc0: sdhci: ============================================
mmc0: error -5 whilst initialising SD card
mmc1: new HS400 MMC card at address 0001
mmcblk1: mmc1:0001 DF4064 58.2 GiB
mmcblk1boot0: mmc1:0001 DF4064 partition 1 4.00 MiB
mmcblk1boot1: mmc1:0001 DF4064 partition 2 4.00 MiB
mmcblk1rpmb: mmc1:0001 DF4064 partition 3 4.00 MiB, chardev (247:0)
 mmcblk1: p1
mmc0: ADMA error
mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000080d8
mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
mmc0: sdhci: Host ctl2: 0x00000000
mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
mmc0: sdhci: ============================================
mmc0: error -5 whilst initialising SD card
mmc0: ADMA error
mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000080f8
mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
mmc0: sdhci: Host ctl2: 0x00000000
mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
mmc0: sdhci: ============================================
mmc0: error -5 whilst initialising SD card

The platform has an iommu, which is in pass-through mode, via
arm_smmu.disable_bypass=0.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
