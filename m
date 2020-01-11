Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20F41382A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 18:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K161quCAjOBlEosLVxq/URr59A4XfJUrCpCoGLn+VYk=; b=Pol3bhVyHIBSdi
	cRjY6AjvPcLBRZ2TohHs3I4JS15o2IyBNViQOMuQpGlK6z2rwMh8269e60ZIQXoUgTQtRjff2XbCz
	UOaL5RETkV2/1WYtu8WgPNigQXkSbCF5g8c9autfE3B2B/pVbC6KiuNpCeQZIrt+ChL8rLc7x8nsa
	Mxf1CRvL4R/ryuJ3xc45LBkii9hDSnvms0oEa/UqPMul8R4jood5Lf3NunQmr/QTHuqIjBQw9YwXg
	RviFdbY+o6AHxAiacJZofxnNzKEq6RQeLy9KM/NLUsKRyx2m/DZwWjE9IMBwlBXI/MvM9+sAganrV
	Jp7xmC2e0/q8urXlziEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqKYK-0003as-Ba; Sat, 11 Jan 2020 17:28:00 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqKY9-0003a7-IH
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 17:27:54 +0000
X-Originating-IP: 81.185.160.252
Received: from localhost (252.160.185.81.rev.sfr.net [81.185.160.252])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 990D140003;
 Sat, 11 Jan 2020 17:27:47 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.6 (#1)
Date: Sat, 11 Jan 2020 18:27:46 +0100
Message-ID: <871rs53nu5.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_092752_839077_D2F91254 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the first pull request for dt64 for mvebu for v5.6.

Gregory

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-dt64-5.6-1

for you to fetch changes up to 62bba54d99407aedfe9b0a02e72e23c06e2b0116:

  arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port node (2020-01-08 22:16:03 +0100)

----------------------------------------------------------------
mvebu dt64 for 5.6 (part 1)

 micro-DPU (uDPU) board changes (Armada 3270 based board):
 - Fix broken ethernet
 - Remove i2c-fast-mode property
 - Indicate that SFP cages support 3W modules
 SolidRun Clearfog GT 8K (Armada 8040 base board):
 - Fix switch cpu port node

----------------------------------------------------------------
Baruch Siach (1):
      arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port node

Russell King (3):
      arm64: dts: uDPU: fix broken ethernet
      arm64: dts: uDPU: remove i2c-fast-mode
      arm64: dts: uDPU: SFP cages support 3W modules

 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts           | 8 ++++++++
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 2 ++
 2 files changed, 10 insertions(+)

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
