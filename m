Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539281C97F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VEn7RFf0IcoH4F6kPg9MhGf1P2+6RSWIGc5xox/qvMs=; b=GxCM020qWzGuBf
	Gou11Fy520H4N1iiG6+WyGPmgmW6LTsaGlOmtlAlKIicle2wWTGAA0COD0KyWFGP6tBBZlnEfnoht
	9n/wQqpySKc/ZufOJd+xmH777oeisOeY2HK93Qskbm79n8YtlAO5jjlhRassc9Y7pRINlXlwg4bbd
	3tHRuM8gf6Vt3mcWw8Q4bcIi9YlUf2SxxFyuyeNETbfNvPcI3K1AKI7rwoWth5J65lIvKEffHSILq
	i6u756NnAzNOKwklnJrPM7naUR2l2ELBoDlahmS+OpcEXNfhES95Eq27Nttj/OcfME2hhwUw7QfuZ
	tjG+2hjZN2ISWI8cS2gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkR2-0000De-Ef; Thu, 07 May 2020 17:35:48 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkQu-0000D5-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:35:42 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B9CBE80CD;
 Thu,  7 May 2020 17:36:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Fixes for omaps for v5.7-rc cycle
Date: Thu,  7 May 2020 10:35:26 -0700
Message-Id: <pull-1588872844-804667@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_103540_990472_D4F9246C 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/fixes-rc4

for you to fetch changes up to 738b150ecefbffb6e55cfa8a3b66a844f777d8fb:

  ARM: dts: omap4-droid4: Fix occasional lost wakeirq for uart1 (2020-05-05 10:19:39 -0700)

----------------------------------------------------------------
Fixes for omaps for v5.6-rc cycle

Few device tree fixes for various devices:

- A regression fix for non-existing can device on am534x-idk

- Fix missing dma-ranges for dra7 pcie

- Fix flakey wlan on droid4 where some devices would not connect
  at all because of internal pull being used with an external pull

- Fix occasional missed wake-up events on droid4 modem uart

----------------------------------------------------------------
Faiz Abbas (1):
      ARM: dts: am574x-idk: Disable m_can node

Kishon Vijay Abraham I (1):
      ARM: dts: dra7: Fix bus_dma_limit for PCIe

Tony Lindgren (3):
      Merge branch 'fixes-v5.7' into fixes
      ARM: dts: omap4-droid4: Fix flakey wlan by disabling internal pull for gpio
      ARM: dts: omap4-droid4: Fix occasional lost wakeirq for uart1

 arch/arm/boot/dts/am574x-idk.dts                |  4 +++
 arch/arm/boot/dts/dra7.dtsi                     |  4 +--
 arch/arm/boot/dts/motorola-mapphone-common.dtsi | 43 +++++++++++++++++++++++--
 arch/arm/boot/dts/omap3-n950-n9.dtsi            |  5 +++
 4 files changed, 51 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
