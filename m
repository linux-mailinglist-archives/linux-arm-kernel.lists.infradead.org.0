Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CDB1A6F18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6qOFYw4rKRfZQLQD73P+sXk6CqW60lrLQXPdNnGy7w=; b=NhpNgvUry+OGga
	Jd6GoPcZDyI5jVJCst9uRDK9gEl86lkwtjFZduWDQ3zCPa+bQ69UeGIHaCoEkqQOsAq+t8SEl6Zzw
	mtFaNf6q9I17AgDXY3bpDfNN+aXrBoK5IHcbDy7Bhhah6ayAnl50KxsjLzoPhLBWF+1xgLS2v7EQ5
	FoyeOQvaQL+AbT0Br7xj3676tOfQ683EvLy9MZFWuKpEyqo7ttlN4UiblBv6aMHUNIEEEiiirxK6d
	6HRrqjs5DLJd1IwzNAC6+5Fkpzt/unB+RKBVeQlXpHrqQ6EA2dIVkaAtys+y+KIj/YcRdox1dVK9P
	nshlChfk/K6rXj25Y/Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7Xj-0002rg-So; Mon, 13 Apr 2020 22:27:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7Xb-0002rG-Kv
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:26:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pf23kSC47Gjbx/Yw9MBAAWL+nbS2bp0s8L/O5T+/2jk=; b=0vxERwYUg7rVDNQ1IAqy1ipPz
 SH0s0xZLxNjdvKI3oKFYFRyL22qg92opGNUO9nczmto/wnmStVU1VXr3jO8IMlwLH2tNZtxAFOSqb
 CE1AvRXcrblaqhf5OgYG4cy+B+t49OGE3TFH/ee5ZHqMFk8LWhKE83hwd3Hjuw0BCR5RdjF5tRo+g
 A+Qo1s2KWtBafJEnAtoltbWvB/VPGY07Gx3WHNJjfNtmnC34BtzYi+Roc8m16SeO8A9TDGFpi1kNe
 jInqiTz5tjko4yuHe1NFPRxIg98xrBi+nv1tEA0ZA0AXZRQfnW2tbJiOR4s6jdLnS71ucowv0OrdU
 /NOILPROw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49674)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jO7XU-0004Jx-AL; Mon, 13 Apr 2020 23:26:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jO7XR-0007LI-Rp; Mon, 13 Apr 2020 23:26:45 +0100
Date: Mon, 13 Apr 2020 23:26:45 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sergey Matyukevich <geomatsi@gmail.com>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200413222645.GT25745@shell.armlinux.org.uk>
References: <20200413220520.GA25917@curiosity>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413220520.GA25917@curiosity>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_152655_687844_901910B8 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 01:05:20AM +0300, Sergey Matyukevich wrote:
> Hi Russel, Miquel, and all,
> 
> MacchiatoBin Double-shot board fails to boot v5.6-rc5 kernel properly:
> USB, PCIe, and ethernet interfaces are not enabled. Before that I have
> been running v5.3 kernel w/o any noticeable issues.
> 
> In brief, USB and PCIe devices are not detected, ethernet PHY fails
> to initialize with the following warnings:
> [    2.444150] mvebu-comphy f4120000.phy: unsupported SMC call, try updating your firmware
> [    2.452191] mvebu-comphy f4120000.phy: Firmware could not configure PHY 0 with mode 15 (ret: -1), trying legacy method
> [    2.474615] mvpp2 f4000000.ethernet eth2: Using firmware node mac address ...
> [    2.484420] mvebu-comphy f4120000.phy: unsupported SMC call, try updating your firmware
> 
> After quick bisection of the board dts files, I came to the following results:
> 
> - USB works again after reverting the following two commits:
>   -- 96018a6fafb1 ("arm64: dts: marvell: Convert 7k/8k usb-phy properties to phy-supply")
>   -- 01d0deba28f6 ("arm64: dts: marvell: Add 7k/8k PHYs in USB3 nodes")
> 
> - PCIe works again after reverting armada-8040-mcbin.dtsi parts of the
>   following two commits:
>   -- 1399672e48b5 ("arm64: dts: marvell: Drop PCIe I/O ranges from CP11x file")
>   -- ce55522c035e ("arm64: dts: marvell: Add 7k/8k PHYs in PCIe nodes")
> 
> - ethernet: not yet...
> 
> However looking at firmware version complaints, I guess that the actual
> reason of all those issues could be in ATF version rather than in the
> latest DTS changes. Probably I am using ATF version which is too old
> to work with up-to-date kernel: armada-17.10.3 from atf-marvell
> repository on github. If this is indeed the actual root cause of all
> the issues, then could you please recommend a preferable ATF version
> to test with ?

I would strongly recommend upgrading the firmware in any case, because
of work I did (and submitted back through Jon @ SolidRun) to improve
the eye mask on the 10G Ethernet interfaces.  I'm using the 18.12
version.  Firmware build instructions can be found at:

https://developer.solid-run.com/knowledge-base/armada-8040-machiatobin-u-boot-and-atf/

I've booted 5.6 recently on a number of Armada 8040 based boards
without issue, likely all running the later firmware.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
