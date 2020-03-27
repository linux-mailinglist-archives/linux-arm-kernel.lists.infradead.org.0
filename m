Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F1F19604E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 22:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0WdzmuCL5CGt4sknrrSf/tky9kdYr8C9zeSMYYaMG8=; b=XR1DB3k/GXnSu9
	bSh1i4KyW5sCtzKp60lArHurcnVkoI5Bi9f20jcsKKD1BpyUl5PIy8Npmcu2tgZam/Rjy+RTMfTEI
	tFQTBpnwGbifOPVD7nnXNiB2SkBF78g8Aeb+bniHWWC242OmMDhSvMttft49oYCWiA2Tii3yFh7I4
	CssYF5v46lLqIWh9g9Xc3JIBjsKnMndx6Kl0RowCNOgVRRU6El2cdado/lyYYX4vwPK8L+qPj9u8c
	MIKOAqV0lxIgh+gKUsRdSMhUg8KggcllbQ+6BRq2Z+LFkNJQ4sI72ZljqpzUYzUR6ICOibbHL2Koh
	9E39tJBkHQjE667WNC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHwLO-0002Pw-L1; Fri, 27 Mar 2020 21:16:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHwLG-0002O5-8Z; Fri, 27 Mar 2020 21:16:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 99DA0AC50;
 Fri, 27 Mar 2020 21:16:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 2/3] bcm2835-dt-next-2020-03-27
Date: Fri, 27 Mar 2020 22:16:31 +0100
Message-Id: <20200327211632.32346-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327211632.32346-1-nsaenzjulienne@suse.de>
References: <20200327211632.32346-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_141638_444259_60189986 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 14e1eb5a91a96d9e1ce8051f752b7b6645bc8e10:

  dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg' (2020-03-10 12:43:15 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm2835-dt-next-2020-03-27

for you to fetch changes up to 3ac395a5b3f3b678663fbb58381fdae2b1b57588:

  ARM: dts: bcm283x: Use firmware PM driver for V3D (2020-03-27 21:25:35 +0100)

----------------------------------------------------------------
- First patch updates RPi4's expgpio's GPIO labels, adding the SD power rail.

- Second patch adds a fixed regulator that controls the SD power and
hooks it up with emmc2.

- Third patch rolls back to the firmware based power driver as the MMIO
version is unstable.

----------------------------------------------------------------
Nicolas Saenz Julienne (3):
      ARM: dts: bcm2711: Update expgpio's GPIO labels
      ARM: dts: bcm2711: Add vmmc regulator in emmc2
      ARM: dts: bcm283x: Use firmware PM driver for V3D

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts     | 13 ++++++++++++-
 arch/arm/boot/dts/bcm2835-common.dtsi     |  1 -
 arch/arm/boot/dts/bcm2835-rpi-common.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/bcm2835.dtsi            |  1 +
 arch/arm/boot/dts/bcm2836.dtsi            |  1 +
 arch/arm/boot/dts/bcm2837.dtsi            |  1 +
 6 files changed, 27 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-rpi-common.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
