Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF9723ABF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OQuTw78gavvbKfxKfgSCCxSOf84XI5PF5B/VQXQ8O9E=; b=lFlCqRUbJrO9HQ
	rBUEcrpQJpxRwTmO4pl1ZZRppNUylMea8bLOPA5lCrqYst1pADt8pCczFos8KeB5+KyX6u8+3DnbT
	34F4fBQofEC9WtSJKs9TSULVX7IrBU3s3oFy7Lg9PXIF9NPZyu2EjDxDEItpazHyORmj07YxA7+j6
	hZ2uFZD8LB5AW55OZ0GFxp8iW5J7uU3O7VA2f7qbzm7hIwRiXfWLztoa8NHNy5VLa4RGj9/WB73p2
	Alclc6hyGmTV/Sf5+FB3jQM7idx14588CoSS2djDdbZs2v+0uOo3ZnNL88ncL1tGBrmeOwP0cnCbY
	jRwwnCO41QFKhK5hImMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjYb-0007XN-Bw; Mon, 20 May 2019 14:46:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjYT-0007Wu-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pSW5ctloJRT72T9mw3+jWe/wggZXae1Ey1a1jP2wyhg=; b=t9KY++UqF2Aazp+uUPmGeC+gd
 434nvKJS/6lTz7MQrToT8lPZlIWrhuKlSCXnf2oh8k+dzIVfAwQFjH5d9IreX8vdPITigh/Z/nxFc
 1G0+nq3KqcAdm8KnlthTdOQLJk+GD1WeJeiJH9KrDe4PUH72piDxBJ0834xP0cgLdL+Ho+qpSrp+g
 aR3wtGhD7hpYK0F+lszctIcuqkf1Dr0XvoKE3E9K6FrtzK+0yrUgRvBUlIABE99zMWmisM0vokTXV
 LjDiDF+/V3dmhxOZOmIZAXIlMIeo8lBY2oGqYEXPFi599Bt/etw3TSs7roezRZZqrLKiUn/M7N6uK
 TSCGG1SuA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55900)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hSjYO-0003O4-Gc; Mon, 20 May 2019 15:46:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hSjYN-00050O-QQ; Mon, 20 May 2019 15:46:15 +0100
Date: Mon, 20 May 2019 15:46:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] Resurect RiscPC support
Message-ID: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074621_543878_5B05305A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Support for RiscPC still mostly works, but there have been some
breakages along the way since 2.6 kernels (the last kernel I ran on my
RiscPC.)  Notable breakages are:

- Conversion to generic IRQ broke the keyboard.
- A patch to avoid modifying SG entries for IOMD DMA broke DMA support
  (which only affects expansion cards.)
- Cosmentic breakage due to printk() behavioural changes.
- The kernel size grew beyond the ability for the RISC OS boot loader
  application to cope, which has been resolved in the latest version of
  !Linux.

These issues are resolved in this series, as well as removing RiscPC's
usage of the old gettimeoffset facility.

However, RiscPC timekeeping suffers greatly on recent kernels compared
to 2.6 series kernels: the change to make all interrupt handlers run
with IRQs off means that we are no longer able to receive timer
interrupts while (eg) PIO data is being transferred to the internal
drive, which is a very time-consuming operation.  This is soo bad that
NTP is unable to fix the problem, and there is no way to resolve this
regression from a hardware point of view.

That said, using an external disk connected via an expansion card
allows the use of DMA, thereby allowing the problem to be bypassed.

Keeping RiscPC support alive in the kernel, however, is beneficial to
on-going maintanence of fs/adfs support, which still has users.

This patch series is currently against 5.1, but should merge with
v5.2-rc1.

Merge plan: I'll send a pull request to arm-soc for this in due course.

 arch/arm/Kconfig          |  1 -
 arch/arm/mach-rpc/dma.c   | 97 ++++++++++++++++++++++++-----------------------
 arch/arm/mach-rpc/ecard.c | 11 ++++--
 arch/arm/mach-rpc/irq.c   |  3 +-
 arch/arm/mach-rpc/time.c  | 38 ++++++++++++-------
 5 files changed, 83 insertions(+), 67 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
