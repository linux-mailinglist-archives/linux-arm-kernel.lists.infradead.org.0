Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B52FDB445A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 00:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LeVPP4PVXEfMLSiNG4IMkExN3iEXI+EsqmmSMYHiJs=; b=HEGIqZjTRvAZ8b
	RT49ORdJSOdk39AGdugwzSb4TKNZaukM67Pu56VJ9gUrVcEbPYHA0MVQDHqlUOAunyRz0A0fRWq84
	W8CrKiKFv/yngT9qe71b+Sm/MJPT3QKzh8dpt4ZuU7BDWygXMxAWOAvqwl91OGla/eXCuaQsUVK3/
	8NEwnHw0O+gwIeWF1qq4WcTW/BNi1ZrbVw3CCxg1EmBgy4Q6IFtRlsAGGNWghC6utkEzkFPk4jbET
	Jum4fyVcn9drG4ZSGfbX5Z3mBybyko+mCCIWru/iUtMeReepztDTJUWNMZ97IPNuiDd5p/73fgysF
	6dj+Ptpy6GQoD8mhCNag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zwu-00062S-Cg; Mon, 16 Sep 2019 22:58:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zwe-0005qb-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 22:58:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l7Sk+w/hqCmwPII96XtHtewY3BdLd9i2Emx/r8JmJlU=; b=sSFrjAP3jdNAFPPM5tuxpk+l3
 OCNJnvEvOKFWyBZvJtGwyMBeRtzvYxOjqmGU+ro6sYzF+F53W/nJy98Z41veUwqy3VBZSErSvyxLP
 tkBBr2MUdp3V4QubEr0NtlG5VQNaN/xx2CviMdJkjwmbcnD9Z0HiiBa4RjmN34T1XPbpxnqHWCY10
 XRzzwUbYMB1+9pDYPBHKgBSdBRUdslxftgxqQZ44lYkxzOr0ADOdFaLHaOMIpb/sY/ZSTuZKjmVVU
 jY2QWnzYeceGPpxpxzkNBNZ4nl31/bFpFLHbyezfZm0RsgUME2V3321Ag2KFN+xYVVM3wzFI4M8XF
 5ZuNJjycw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40382)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i9zwS-0006RL-Nh; Mon, 16 Sep 2019 23:57:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i9zwQ-0000fd-C3; Mon, 16 Sep 2019 23:57:54 +0100
Date: Mon, 16 Sep 2019 23:57:54 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190916225754.GH25745@shell.armlinux.org.uk>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916171509.GG25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_155808_880516_5730A140 
X-CRM114-Status: GOOD (  12.95  )
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

The problem below seems to be sporadic with v5.3, which makes finding
its cause quite difficult - and makes bisecting useless.  I'd describe
it as "likely" to affect either mmc0 or mmc1 on v5.3.  I haven't seen
it at all with v5.2.

I'll see whether I can pin anything down tomorrow.

On Mon, Sep 16, 2019 at 06:15:10PM +0100, Russell King - ARM Linux admin wrote:
> Hi,
> 
> It seems that somewhere between v5.2 and v5.3, sdhci fails to detect
> SD cards on the NXP LX2160A, but continues to work with eMMC.
> This uses the sdhci-esdhc driver.
> 
> v5.2:
> 
> sdhci: Secure Digital Host Controller Interface driver
> sdhci: Copyright(c) Pierre Ossman
> sdhci-pltfm: SDHCI platform and OF driver helper
> mmc0: SDHCI controller on 2140000.esdhc [2140000.esdhc] using ADMA 64-bit
> mmc1: SDHCI controller on 2150000.esdhc [2150000.esdhc] using ADMA 64-bit
> mmc0: new high speed SDHC card at address aaaa
> mmcblk0: mmc0:aaaa SU04G 3.69 GiB
> mmc1: new HS400 MMC card at address 0001
> mmcblk1: mmc1:0001 DF4064 58.2 GiB
> mmcblk1boot0: mmc1:0001 DF4064 partition 1 4.00 MiB
> mmcblk1boot1: mmc1:0001 DF4064 partition 2 4.00 MiB
> mmcblk1rpmb: mmc1:0001 DF4064 partition 3 4.00 MiB, chardev (247:0)
>  mmcblk1: p1
> 
> v5.3:
> 
> sdhci: Secure Digital Host Controller Interface driver
> sdhci: Copyright(c) Pierre Ossman
> sdhci-pltfm: SDHCI platform and OF driver helper
> mmc0: SDHCI controller on 2140000.esdhc [2140000.esdhc] using ADMA 64-bit
> mmc1: SDHCI controller on 2150000.esdhc [2150000.esdhc] using ADMA 64-bit
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x00008098
> mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
> mmc1: new HS400 MMC card at address 0001
> mmcblk1: mmc1:0001 DF4064 58.2 GiB
> mmcblk1boot0: mmc1:0001 DF4064 partition 1 4.00 MiB
> mmcblk1boot1: mmc1:0001 DF4064 partition 2 4.00 MiB
> mmcblk1rpmb: mmc1:0001 DF4064 partition 3 4.00 MiB, chardev (247:0)
>  mmcblk1: p1
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000080d8
> mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000080f8
> mmc0: sdhci: Timeout:   0x00000002 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
> 
> The platform has an iommu, which is in pass-through mode, via
> arm_smmu.disable_bypass=0.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
