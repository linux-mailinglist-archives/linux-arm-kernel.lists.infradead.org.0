Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF483D2E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mp+PfqtW2pdvHeJDPlg4WbSHvOG2vZaI/5tZhY4BS58=; b=H6cAJ4vwoAcBI4
	izS1U+i39rVrMyqnvluMw/riFvm0MRXpdXYG7Fq5YQHHhxZVlDGjhpVd+eTGBVLFlMgEmAZxoEPen
	0MERxSdOSBUmsNgHMJK9vimTHl/apd0DEPdRC03+8GfvCeagkiVshm4J6Rc4hsslfcBJ/XCkG1tbC
	TNFmBDgdr16Wp0TN+ggON/ws7+PcDcjS3FCSBDwRZ+AoASHXx1Ju9OBGjVT7vINlI4lIlJFu/XiDu
	yYPu7Z95zxWaEI1PrxnK3GiKPcq0gHZJmUQ4K8mVtg9A09AXsSRGBffPS59DpKzlPED1Co/y0ONkI
	IO0qdy2Vhk46xHlEzlZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajvC-0000AC-SH; Tue, 11 Jun 2019 16:46:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajuz-00009r-25
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:46:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uDFL684PoCOoeq3lRAMhgb1z6G0xH7FC6CzhmMNsa/M=; b=B7HULwe4qj0EbpW2mhfjpRRxo
 R6Bw5Knx9rL9FswVVcBiAmuUEVvqMCYYwI7tJzDEGb8IEVskO0Qw7s+jbRo/ytgUZxXylojn8VTKc
 IIT6rKduhsJ7uJYYFGw/U1eLGX/Sm2bksMgPRC988a83lWi+2SbGZfUEkrbXmTOZZ0ERSlVSat4On
 J4Y2thurggE0yhYWvBAL1pFptwBal+gmXDFpQM/diF+9rbVX6iRwtw9E4Ji+HX6Qa3x7nfB+tY3mY
 V6+8A1FEi3Iw0uqBy2TzBGQ3DYU4ZXWSAH71iqug9tVRH9emuHFcx7KC/IqgZG9QG4LD4awvAzaZz
 OcUOM8xEA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38620)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hajut-0006r3-VI; Tue, 11 Jun 2019 17:46:36 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hajus-000818-SL; Tue, 11 Jun 2019 17:46:34 +0100
Date: Tue, 11 Jun 2019 17:46:34 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Further RiscPC updates
Message-ID: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094641_098946_4D4AC2E1 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ian Molton <spyro@f2s.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following on from the previous series, here are some further RiscPC
updates:

 MAINTAINERS                                       |   2 +-
 arch/arm/Kconfig                                  |   1 +
 arch/arm/lib/Makefile                             |   1 -
 arch/arm/mach-rpc/Makefile                        |   3 +-
 arch/arm/{lib/ecard.S => mach-rpc/ecard-loader.S} |   0
 arch/arm/mach-rpc/ecard.c                         |  21 +++-
 arch/arm/{lib => mach-rpc}/floppydma.S            |   0
 arch/arm/mach-rpc/include/mach/uncompress.h       |  23 ++--
 arch/arm/{lib => mach-rpc}/io-acorn.S             |   0
 arch/arm/mach-rpc/irq.c                           | 133 ++++++++--------------
 10 files changed, 78 insertions(+), 106 deletions(-)
 rename arch/arm/{lib/ecard.S => mach-rpc/ecard-loader.S} (100%)
 rename arch/arm/{lib => mach-rpc}/floppydma.S (100%)
 rename arch/arm/{lib => mach-rpc}/io-acorn.S (100%)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
