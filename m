Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E044EF00A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9AqHHSDz7aKHSjo4aehPMA2BK7r/uNmpLF08QlIcMQ=; b=QseTipmakWWbGI2/5pTBbLun3t
	rJBKDoXhq830T0d2rX1t1fpAw0zXRx6f+e23T3aAe3VjI+1kxBRTD98XP/LiiQmCHA0UmRvrBzwW6
	mBqDIDHrnFzEMdckab824YtSWIGDYUugJUbAx2ABxjBdAbBL0zW5CwjtphXhBlrEaYYNI6etQNrRk
	J6Krg7gus5H7hZ92ciwe0vsRzIxWe69hhbStPo/AZ6nw1RIuYSlcfJ+4PDPNKW5wfNTxfGUfjiC8a
	LBvTzZANP6ICp1MeZPrM0KP7OjAtHcRRtT1F7FIfKXkX1SCgUXbON8e1Lxb5EQoWmNCphnMsAHr+H
	WTz/OnoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0N2-0007cO-7E; Tue, 05 Nov 2019 15:03:48 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Mr-0007YB-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:03:38 +0000
Received: by mail-vs1-f65.google.com with SMTP id w25so13643654vso.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7GF03vV8OQ4n785uhV8Zl7HZqSdxEA+Gn+ijfgZr1wo=;
 b=n69n3avaDLEDNKXxf2QqisAs/DwqQ/7d3BZFGSjwXo3qhGlqTq6hEFFO6tOpzilY3O
 mOIsEZVrOZ8dyE57rIEFwAvpcp56+3pNesgj9+2HlRkfc15NWVgEuUAqsJQ52iXi8/4A
 AM8hCVE+hxJnkJbBpnHWjGEjNtqfvgmqc4Az+bSvcXf2PsaEIybFVT66yrqGu1sNl2HR
 viYDTXdJgtpuEmA5E5mUnMLF/GFC6wItAWU87mNb3KkCK1WC1voa9Q1xzZltW9kLubyc
 7H3GpXP6AC1Usk14XJPRofcAmC2BnKa1tcuJ6ruUh2M0K3wLVqKhrEL7B2EQq16Jh065
 KYaw==
X-Gm-Message-State: APjAAAWDZH3FVxsIrU8pqLhbmt2Y6M6e/O7S6ZEKdwaHQ2QmwRRzwp5N
 3H42WOjEQTaREczbKXH1Kfe6726nWIE=
X-Google-Smtp-Source: APXvYqymCuSUnxAZw2YZVtYfOtGXwz1DXO6sFCf2EBKb3wtC8tzj5l8KXRzuYGLC1XwnmZ/V6pD1+w==
X-Received: by 2002:a67:2d08:: with SMTP id t8mr16022963vst.155.1572966215986; 
 Tue, 05 Nov 2019 07:03:35 -0800 (PST)
Received: from localhost (li1038-30.members.linode.com. [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id q21sm1726289vkd.13.2019.11.05.07.03.34
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 05 Nov 2019 07:03:35 -0800 (PST)
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 2/7] i.MX SoC update for 5.5
Date: Tue,  5 Nov 2019 23:03:10 +0800
Message-Id: <20191105150315.15477-2-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191105150315.15477-1-shawnguo@kernel.org>
References: <20191105150315.15477-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070337_442901_94A96319 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.5

for you to fetch changes up to d7eb28d2740f6d4b485a32b0330a8168eaebb636:

  ARM: imx: use generic function to exit coherency (2019-11-04 08:25:56 +0800)

----------------------------------------------------------------
i.MX SoC update for 5.5:
 - Add arm64 Kconfig option for the NXP S32 platform.
 - Drop imx_anatop_usb_chrg_detect_disable() function which becomes
   unneeded, since all the necessary charger setup is done by the USB
   PHY driver now.
 - Add serial number support for i.MX6/7 SoCs by reading 64-bit SoC
   unique ID from OCOTP block.
 - Replace i.MX machine specific coherency exit implementation using
   the generic v7_exit_coherency_flush() function.

----------------------------------------------------------------
Andrey Smirnov (1):
      ARM: imx: Drop imx_anatop_usb_chrg_detect_disable()

Anson Huang (1):
      ARM: imx: Add serial number support for i.MX6/7 SoCs

Mihaela Martinas (1):
      arm64: Introduce config for S32

Stefan Agner (1):
      ARM: imx: use generic function to exit coherency

 arch/arm/mach-imx/anatop.c   | 20 +-------------------
 arch/arm/mach-imx/cpu.c      | 38 +++++++++++++++++++++++++++++++++++++-
 arch/arm/mach-imx/hotplug.c  | 24 ++----------------------
 arch/arm64/Kconfig.platforms |  5 +++++
 4 files changed, 45 insertions(+), 42 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
