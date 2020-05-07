Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455F51C883A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qGfUXMixK54oCJLmDT3v6mQCj4LDfQV23hzp60vj47k=; b=Vdi
	ll/+XrYJm2PSCExqqAHnBkAFp0j0Fgvyav+pJuE+NVMhzchmccugfEZVXYUWu5ocmH46z8Zatvy+U
	UdXqyvFf1BuxQosyfVmeFzlGNpVjCtw3RSbfzO2vESAUwf2W7MlwInymY/5dCZruCDJ524W7dpgR1
	5ASfsrt+s8ENZH6qpp44qpPfO61MM/bflj6T2Epp56ViPWNSdUeUZS8PBjWvtkclIkzmTp/kyAc9c
	0ItUUNZ5X49xxLB/7x0pnEqwhyWw1qG8umM7TH0WDoRQPwP/KaxXxuVQBb4ViKlfO11Hbz660DN/W
	7krgPMW0MYxiYQemMTUWfAJi3nqsneA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWejZ-00085v-Bs; Thu, 07 May 2020 11:30:33 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWejK-0007ue-Of
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:30:21 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:6572:4a1f:d283:9ae8])
 by xavier.telenet-ops.be with bizsmtp
 id bnW3220043ZRV0X01nW3Ki; Thu, 07 May 2020 13:30:11 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej4-0006zG-Vp; Thu, 07 May 2020 13:30:02 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jWej4-00068L-UG; Thu, 07 May 2020 13:30:02 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Jens Axboe <axboe@kernel.dk>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 0/4] qoriq: Add platform dependencies
Date: Thu,  7 May 2020 13:29:51 +0200
Message-Id: <20200507112955.23520-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_043019_799783_18C7D043 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

Several QorIQ blocks are only present on Freescale or NXP SoCs.
This series adds platform dependencies to the corresponding config
ymbols, to avoid asking the user about them when configuring a kernel
without support for these SoCs.

Most patches in this series are independent, but the third patch may
cause some Kconfig warnings when applied before the second patch, and
enabling the QorIQ CPU frequency scaling driver in a non-Layerscape
kernel.

Thanks for your comments!

Geert Uytterhoeven (4):
  ahci: qoriq: Add platform dependencies
  cpufreq: qoriq: Add platform dependencies
  clk: qoriq: Add platform dependencies
  thermal: qoriq: Add platform dependencies

 drivers/ata/Kconfig     | 1 +
 drivers/clk/Kconfig     | 3 ++-
 drivers/cpufreq/Kconfig | 3 ++-
 drivers/thermal/Kconfig | 4 ++--
 4 files changed, 7 insertions(+), 4 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
