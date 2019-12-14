Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD4211F173
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 11:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs89CMkuDBoBpV0PJYArha70acSGZmdjizjUG+ldRVw=; b=n9gRec7kziRFXr
	f0lyntqLv/vvwyQ9TpZ2GuTld7+qUssDCrklvbb52XdogSjOXegoFjq6YoqxROaKsCIRNgzYGlRn0
	1d1nIQINWt5AK+7/RxuS/oLDL9j1i3dK6Z1KcxSBf1Vd3fhcH45aHNXutV5/IhJrkt+MRLbRzpS+U
	WWFMFM1orsdNdmyonpiI982Tl/yXNN45TsGe8wMe7jmsKRjPTt+0F4NEYVObxq/GhzvkTN+KxHk85
	XwY3uRz1JHvM+q3iizawmjsicFcl0/0pNqsMMcp1nnyDQfoYvZ4ju1F9ke1zgkR6idkCSSFtQGY48
	f7rR+5Wm/5buXAmLTZXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig54V-0001GL-1P; Sat, 14 Dec 2019 10:54:51 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig54K-0001EI-4a; Sat, 14 Dec 2019 10:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576320868;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=eDWu/SgTD1s26WzZv5mA2/eo9hiZvqG2HLEvHCoMl34=;
 b=sg7dd0jlDcZ2qnwSTp0zgw2lqVl+uiypy3gzR7fKyQcZgi0ttyJLE7vDoF56WO/war
 b9Kv7XEzZ9ZVaq2N4Z/DqTF0sNijj08GJ9wAN0rpfrk4ACt7xx+YjWnxwu1QfCLmDbHy
 iGTdM4qM9DZuTkMUNAWXG29uK3IV1UKOoWbVj1QtDRa76hYKjYNHtoxzuPJzk+aSgcm0
 VRhj1x7u4oONxPuFh8EHkcXFDCAtCNcTBKRhWNeoJkYmt9s2KaI8XObjKlk0ODUzUgW3
 4H8mQXJGGHgK/avGQemr8HPa0/BcmUD0dECzJ4pY9R2VFRO+VtjVZe7X5TcFI3u2622g
 e+8Q==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGHPruwDCvIHw="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.7 DYNA|AUTH)
 with ESMTPSA id i03ca8vBEAsKB9B
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sat, 14 Dec 2019 11:54:20 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: BUG - was: [GIT PULL 2/3] bcm2835-soc-next-2019-10-15
From: H. Nikolaus Schaller <hns@goldelico.com>
In-Reply-To: <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
Date: Sat, 14 Dec 2019 11:54:19 +0100
Message-Id: <12244E4E-A1A0-4EE9-ACD3-EA165D9A2C79@goldelico.com>
References: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
 <1571159725-5090-2-git-send-email-wahrenst@gmx.net>
To: Stefan Wahren <wahrenst@gmx.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_025440_774718_7E31F3BF 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

> Am 15.10.2019 um 19:15 schrieb Stefan Wahren <wahrenst@gmx.net>:
> 
> Hi Florian,
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the git repository at:
> 
>  git://github.com/anholt/linux tags/bcm2835-soc-next-2019-10-15
> 
> for you to fetch changes up to 781fa0a954240c8487683ddf837fb2c4ede8e7ca:
> 
>  ARM: bcm: Add support for BCM2711 SoC (2019-10-10 19:21:03 +0200)

this patch has finally arrived in v5.5-rc1 but it seems to break
multiplatform build.

We run a distribution kernel that supports OMAP3/4/5, i.MX6 and RasPi 3B+
but since rebasing to v5.5-rc1 the kernel hangs after "Starting Kernel ...".
On all ARM devices (incl. RasPi 3B+).

Playing with our defconfig did show that deconfiguring CONFIG_ARCH_BCM2835
makes the kernel work again.

After further analysis it turns out that reverting this patch also
makes the boards work again.

I am not exactly sure what the reason is, but it may have something to
do with the new auto-selection of CONFIG_ZONE_DMA which is not automatically
selected by OMAP and i.MX6.

To reproduce on some OMAP device (i.MX6 should be similar)

1st test:

git checkout v5.5-rc1
make omap2plus_defconfig

=> boots OMAP device

2nd test:

( echo CONFIG_ARCH_BCM2835=y; echo CONFIG_ARCH_BCM=y ) >>arch/arm/configs/omap2plus_defconfig
make omap2plus_defconfig

=> fails to boot OMAP device

3rd test:

git revert 781fa0a954240c8487683ddf837fb2c4ede8e7ca
make omap2plus_defconfig

=> boots OMAP device

BTW: the RasPi 3B+ runs equally well without this patch. So what is it
good for?

So please check and fix this patch.

> ----------------------------------------------------------------
> This pull request introduces the machine board code for the BCM2711,
> which is placed on the Raspberry Pi 4.
> 
> ----------------------------------------------------------------
> Stefan Wahren (1):
>      ARM: bcm: Add support for BCM2711 SoC
> 
> arch/arm/mach-bcm/Kconfig    |  4 +++-
> arch/arm/mach-bcm/Makefile   |  3 ++-
> arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
> arch/arm64/Kconfig.platforms |  5 +++--
> 4 files changed, 32 insertions(+), 4 deletions(-)
> create mode 100644 arch/arm/mach-bcm/bcm2711.c

BR and thanks,
Nikolaus Schaller


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
