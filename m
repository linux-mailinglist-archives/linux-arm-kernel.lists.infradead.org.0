Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A2ADB07D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G28o4M6FTkU4B214FL4Do4NYVZVghEF+Ys+M4Rp5LZg=; b=LOYBZWQFwJ9QcL
	HdePbyGWXvKLpzpLvBpzhj4LH0HHgkJX0QPUr5SLuqWpx/KyaohGtcQ/NMumGE71JVtPdiL6ksQtB
	EUBNgnz0uysh+1WgyMiWbNmQqPJXIYMXzAvfai4TS1BIKVMBMmNGIB+H8Yc0hjxOgaQJdECw0HqWs
	Kyb6U/kurh87Os5wposTtij+twgHlqQPsVzynAtiMYGqWPgPP0s4lrS9Aah1AgXs9BIlfsa6DNWhp
	C8y6NI4ScLVCImvmL5CV9i8CW+ulf+7jGnTRPIxcR9DTVPhu142wyOqDhTeKih5LExa/QbFO2PtVb
	XB6rF/v/DuO3RltB0EFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL78p-000257-EV; Thu, 17 Oct 2019 14:52:39 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL78f-00024d-Qi
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:52:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 3661D44673;
 Thu, 17 Oct 2019 16:52:27 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FcSNrHSd5b34; Thu, 17 Oct 2019 16:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 26E1A49DE7;
 Thu, 17 Oct 2019 16:52:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id eRQlT3rxIt-G; Thu, 17 Oct 2019 16:52:23 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 4CC2A44673;
 Thu, 17 Oct 2019 16:52:23 +0200 (CEST)
Message-ID: <7cee3ddbb553ba7fe6e1420e0dbc5adb4922b317.camel@v3.sk>
Subject: [GIT PULL] soc/arm/drivers: Marvell MMP driver changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Date: Thu, 17 Oct 2019 16:52:21 +0200
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_075230_018344_92113A1A 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

I'd like to ask you pull to pull the MMP3 USB2 PHY driver for 5.5.

The following changes since commit 759c2837f7e4676c1cbf3ea8f3c824d0ec327255:

  MAINTAINERS: mmp: add Git repository (2019-10-17 16:36:12 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-drivers-for-v5.5

for you to fetch changes up to 13bec6d6822ca0349dbba14e2e8e2f80e1aacbd7:

  MAINTAINERS: phy: add entry for USB PHY drivers on MMP SoCs (2019-10-17 16:43:04 +0200)

Compared to "[GIT PULL] ARM: soc: Marvell MMP changes for v5.5" pull,
this includes an Ack from Kishon and splits the MAINTAINERS change into
a separate patch (as Kishon asked).

Thanks
Lubo

----------------------------------------------------------------
ARM: Marvell MMP driver patches for v5.5

This tag includes the MMP3 USB2 PHY driver. The branch is based on
mmp-soc-for-v5.5-2 because the driver depends on changes in MMP SoC
support.

----------------------------------------------------------------
Lubomir Rintel (2):
      phy: Add USB2 PHY driver for Marvell MMP3 SoC
      MAINTAINERS: phy: add entry for USB PHY drivers on MMP SoCs

 MAINTAINERS                        |   7 +
 drivers/phy/marvell/Kconfig        |  11 ++
 drivers/phy/marvell/Makefile       |   1 +
 drivers/phy/marvell/phy-mmp3-usb.c | 291 +++++++++++++++++++++++++++++++++++++
 4 files changed, 310 insertions(+)
 create mode 100644 drivers/phy/marvell/phy-mmp3-usb.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
