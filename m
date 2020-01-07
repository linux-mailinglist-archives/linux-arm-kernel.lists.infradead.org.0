Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F6A132E1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcpoKvNgtD1pgbQcGrAuwDRcmnvDR4S6pM4KjynVmpA=; b=jr3iBUE9gBheTd
	ONEcY18yEcd4Be+xdDa2Exk1yq77qFl8Brg4A0mPmYMF3bqwW9dbL+Qo3XEaf13Ez0D7sWB7OAoNO
	8VSv2oWKaDotVQg9W/GCRmWhAidVMY6Evb3K7fLW6fWVgPCa+sgHxoz325hxYp7HI391RivR8hjN/
	KDMhWPPyW7eZ/4LiyrJqrxojysv1Nva72e3LcXrpy7YTHK0Wm2xqWC3YAW7lcWnfPihm47jpMAJnx
	NQFlYW/2NN4Wq4yYoOg9vDszMaPGnnUa6a2iK2GCel7Ce/0F+2/gqTsKNxCJHQpNWGfGPyBEjjQZE
	kmTJy0jE1FKFJaReGh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotNY-0001mL-EE; Tue, 07 Jan 2020 18:14:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotN4-0001Og-84
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:14:27 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 4E31181A8;
 Tue,  7 Jan 2020 18:15:07 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] ti-sysc dts changes for omaps for v5.6
Date: Tue,  7 Jan 2020 10:14:18 -0800
Message-Id: <pull-1578420398-290837@atomide.com-3>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1578420398-290837@atomide.com>
References: <pull-1578420398-290837@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101426_338710_A2F6E9D0 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 2c81f0f6d3f52ac222a5dc07a6e5c06e1543e88b:

  bus: ti-sysc: Fix iterating over clocks (2019-12-16 14:55:22 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/ti-sysc-dt-signed

for you to fetch changes up to d71b48236c83a8a732ccaf23dbf3b719d5c62e88:

  Merge tag 'sdma-dts' into omap-for-v5.6/ti-sysc-dt (2019-12-30 10:01:16 -0800)

----------------------------------------------------------------
dts changes for omaps for ti-sysc driver for v5.6 merge window

Devicetree changes for omaps to configure more devices to probe with
ti-sysc interconnect target module:

- Configure am4 qspi

- Configure aes, des and sham accelerators for am3, 4 and dra7

- Configure iommus for omap4, 5 and dra7

- Add a generic compatible for sdma, and configure omap2 and 3 sdma

----------------------------------------------------------------
Tero Kristo (4):
      ARM: dts: dra7: convert IOMMUs to use ti-sysc
      ARM: dts: dra74x: convert IOMMUs to use ti-sysc
      ARM: dts: omap4: convert IOMMUs to use ti-sysc
      ARM: dts: omap5: convert IOMMUs to use ti-sysc

Tony Lindgren (13):
      ARM: dts: Add generic compatible for omap sdma instances
      ARM: dts: Configure interconnect target module for omap2 sdma
      ARM: dts: Configure interconnect target module for omap3 sdma
      ARM: dts: Configure interconnect target module for am4 qspi
      ARM: dts: Configure interconnect target module for am3 sham
      ARM: dts: Configure interconnect target module for am4 sham
      ARM: dts: Configure interconnect target module for dra7 sham
      ARM: dts: Configure interconnect target module for am3 aes
      ARM: dts: Configure interconnect target module for am4 aes
      ARM: dts: Configure interconnect target module for dra7 aes
      ARM: dts: Configure interconnect target module for am4 des
      ARM: dts: Configure interconnect target module for dra7 des
      Merge tag 'sdma-dts' into omap-for-v5.6/ti-sysc-dt

 arch/arm/boot/dts/am33xx.dtsi    |  67 ++++++++--
 arch/arm/boot/dts/am4372.dtsi    | 140 ++++++++++++++++-----
 arch/arm/boot/dts/dra7-l4.dtsi   |  34 +++++-
 arch/arm/boot/dts/dra7.dtsi      | 255 +++++++++++++++++++++++++++++----------
 arch/arm/boot/dts/dra74x.dtsi    |  71 ++++++++---
 arch/arm/boot/dts/omap2.dtsi     |  42 +++++--
 arch/arm/boot/dts/omap2430.dtsi  |   4 +
 arch/arm/boot/dts/omap3-n900.dts |   5 +
 arch/arm/boot/dts/omap3.dtsi     |  45 +++++--
 arch/arm/boot/dts/omap36xx.dtsi  |   4 +
 arch/arm/boot/dts/omap4-l4.dtsi  |  13 +-
 arch/arm/boot/dts/omap4.dtsi     |  43 ++++---
 arch/arm/boot/dts/omap5-l4.dtsi  |  13 +-
 arch/arm/boot/dts/omap5.dtsi     |  40 +++---
 14 files changed, 595 insertions(+), 181 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
