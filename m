Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FF01D8A0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 23:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IGvDsSH6AvnVwWEjLt2NcDnIFovo5EqOgIhtIpbhHME=; b=KsOWnur0Ui/E2S
	R1hD1SCBsB+Jq5zRPkywBOUgFH/N6qnSFfBFCRVRyjySJ+dCgjfasS7c0GrzHcYamSbXqtaOFxe7k
	nWKe4FaA9Mz5c0pxOqE9rRgvyajYvrXhvio6cbDDbTWGQjRJMgxybhK26QJER/5t71sCwBAWs9PoJ
	FXxM54a+946B+ubzks5WpAsTCi8PJGdTuAhFbYHV52KSNpTjZYXGU2e8nYKA+QYOgCtLuT2f0/56R
	t7J0rkAhHmif8nMwD6Ib4wC4jnQ8Iistyi4AN6BHeSKiNkJvHo0pm7RizDWoWEpz1H1Nz1o41lyND
	OQOjKoUQ/2pK1HUXNOdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janNm-0001Iq-NS; Mon, 18 May 2020 21:33:10 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janNb-0001I3-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 21:33:03 +0000
X-Originating-IP: 90.65.91.255
Received: from localhost (lfbn-lyo-1-1912-bdcst.w90-65.abo.wanadoo.fr
 [90.65.91.255]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 36E80FF805;
 Mon, 18 May 2020 21:32:55 +0000 (UTC)
Date: Mon, 18 May 2020 23:32:54 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: defconfig for 5.8
Message-ID: <20200518213254.GA26598@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_143259_565706_8132E7D9 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Very little is added to the sama5_defconfig: support for the gpios from
the security module and a pmic for the SAMA5D27 WLSOM1.

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.8-defconfig

for you to fetch changes up to 6a2ab88ca789804cad89d558625147edd26a1d37:

  ARM: configs: at91: sama5: enable MCP16502 regulator (2020-04-13 13:00:16 +0200)

----------------------------------------------------------------
AT91 defconfig for 5.8

 - Add PIOBU and MCP16502 regulator to sama5 defconfig

----------------------------------------------------------------
Razvan Stefanescu (2):
      ARM: configs: at91: sama5: enable SAMA5D2_PIOBU
      ARM: configs: at91: sama5: enable MCP16502 regulator

 arch/arm/configs/sama5_defconfig | 2 ++
 1 file changed, 2 insertions(+)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
