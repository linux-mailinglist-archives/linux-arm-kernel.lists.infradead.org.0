Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFE5F40ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bxUGzqcb8eXC6avKzwzA0jBxaocfCWj7EMCG0O+I70=; b=chSizkNUU8sQUo
	MHeXphQwg0PcO7tP9qvXsOIN7q0DP3oykaLZmWfDL0Xf8fYTmtrejrWSBSylCjnayC9zhJGkZnklp
	+JxYQ7MuRgNLqrbdK5WNMeonLBfT+Gv5JOIRy702Tsy6va76/84llxG8GcRkKst36Lh2uhBLYwAND
	XFDxkJnCsK+mJSHxvOikqbuJdFZSfUq+NUpALEsrPcQoy5AnYcNB11Mz27ncWAEb1MmwZ6Iji6iEN
	aFxI+QepI/sVUbEk7RUk6p38qYlxyPGh/bjg0kD5l696iQqxBSD6S46WcAt5zHdIuTAE/DjpKy7tp
	cQM3+nOF805uSvrktOCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSyNj-0007w1-Go; Fri, 08 Nov 2019 07:08:31 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyNc-0007v0-AM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:08:26 +0000
X-Originating-IP: 92.184.101.119
Received: from localhost (unknown [92.184.101.119])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5470BE0002;
 Fri,  8 Nov 2019 07:08:08 +0000 (UTC)
Date: Fri, 8 Nov 2019 08:07:53 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL] ARM: at91: DT for 5.5
Message-ID: <20191108070753.GS8309@piout.net>
References: <20191107222050.GA202089@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107222050.GA202089@piout.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_230824_495317_2E6A17C9 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/11/2019 23:21:10+0100, Alexandre Belloni wrote:
> Arnd, Olof,
> 
> New i2c features for sama5d4 and sama5d2 xplained boards. A new kizbox
> and a rework of the existing kizbox device trees.
> 

Please disregard, I'm sending an updated PR.

> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.5-dt
> 
> for you to fetch changes up to e58ee34217246c34cd6bc9f129fb2dc3315ad27c:
> 
>   ARM: dts: at91: kizbox: use node labels (2019-11-07 00:38:15 +0100)
> 
> ----------------------------------------------------------------
> AT91 DT for 5.5
> 
>  - New Overkiz Kizbox3 board
>  - Rework of the other Kizbox device trees
>  - New filters for i2c on sama5d4 and sama5d2
> 
> ----------------------------------------------------------------
> Eugen Hristev (3):
>       ARM: dts: at91: sama5d27_som1_ek: add mmc capabilities for SDMMC0
>       ARM: dts: at91: sama5d2_xplained: add analog and digital filter for i2c
>       ARM: dts: at91: sama5d4_xplained: add digital filter for i2c
> 
> Kamel Bouhara (7):
>       ARM: dts: at91: sama5d2: add an rtc label for derived boards
>       dt-bindings: Add vendor prefix for Overkiz SAS
>       dt-bindings: arm: at91: Document Kizbox3 HS board binding
>       ARM: dts: at91: add Overkiz KIZBOX3 board
>       dt-bindings: arm: at91: Document Kizbox2-2 board binding
>       ARM: dts: at91: add a dts and dtsi file for kizbox2 based boards
>       ARM: dts: at91: kizbox: use node labels
> 
>  .../devicetree/bindings/arm/atmel-at91.yaml        |  14 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm/boot/dts/Makefile                         |   3 +-
>  arch/arm/boot/dts/at91-kizbox.dts                  | 172 +++++----
>  arch/arm/boot/dts/at91-kizbox2-2.dts               |  26 ++
>  arch/arm/boot/dts/at91-kizbox2-common.dtsi         | 258 +++++++++++++
>  arch/arm/boot/dts/at91-kizbox2.dts                 | 244 ------------
>  arch/arm/boot/dts/at91-kizbox3-hs.dts              | 309 ++++++++++++++++
>  arch/arm/boot/dts/at91-kizbox3_common.dtsi         | 412 +++++++++++++++++++++
>  arch/arm/boot/dts/at91-sama5d27_som1_ek.dts        |   1 +
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts        |   6 +
>  arch/arm/boot/dts/at91-sama5d4_xplained.dts        |   1 +
>  arch/arm/boot/dts/sama5d2.dtsi                     |   2 +-
>  13 files changed, 1116 insertions(+), 334 deletions(-)
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-2.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox2-common.dtsi
>  delete mode 100644 arch/arm/boot/dts/at91-kizbox2.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox3-hs.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox3_common.dtsi
> 
> -- 
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
