Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65A285902
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 06:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rPMXgv18com09YYWdjY39zCd9qZcxha57QSoJUUXTYo=; b=VXOqh3T4o0EXHD
	lCj6RzABraY4W5c9qhd2BSnuOxSYAnCDkbIorIEoC1KVmYnwDMEUzAYU7ggZ5ocerwHrmTIm9TnAU
	wv3dI3ZqPVsCE6eNZ8yk/99e/SAwCk44fIhrE8tX/us1JUwPctbgl346R3HFfCraheYP2nvzZcKau
	VHC2BjKWYKJWIYPfGWbYbH3Y/3wv1gdi4ElNvV+C+F+Hm+oUpBFOWqWivUW/kLaxaAevaeDjC0j9B
	HBOPB4ftkLoduktviBQimAGMflXHF5hcDySJWLIrVbtcXMIy/BYwQfpSr7QiKybgZZlMveTeXuzjj
	fol8kLRTK0vlGHQRSfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZyS-00064l-T0; Thu, 08 Aug 2019 04:24:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZy6-00060T-1H; Thu, 08 Aug 2019 04:24:04 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D658721743;
 Thu,  8 Aug 2019 04:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565238239;
 bh=N/wFSY2QeHiCGs1awO6e44rKQI8CrPBMon45BpRu5Ng=;
 h=From:To:Cc:Subject:Date:From;
 b=KWYMkZ7G1KYXOquJ3YGp1iDdc1CQ9VmEbtgJ1eWSGag6i3PPcXIruU5G+RF2TuVB0
 o6Lok9MTnhRFFxCezVybOJzFeFFENDH0F8vBdklRxZSlI3Qz8SGq4EQE1JHWU8htbw
 MuKTSVZgFCVMnymyqYTf6YwY5G+zY6c5iOPhtIq8=
From: Kevin Hilman <khilman@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 0/2] rtc: add new Amlogic Virtual Wake RTC
Date: Wed,  7 Aug 2019 21:23:55 -0700
Message-Id: <20190808042357.4663-1-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_212402_106443_91EE8ABD 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

Add a new driver for the virtual wake RTC on Amlogic SoCs.

The RTC is virtual from the Linux side because it's a hardware timer
managed by firmware on the secure co-processor (SCP.)  The interface
is 1 register where a wakeup time (in seconds) is written.  The SCP then
uses this value to program an always-on timer.

Changes since v1:
- add MAINTAINERS entry
- add nop ->alarm_irq_enable() (workaround for RTC core
  limitation pointed out by Alexandre Belloni)
- remove unused ->read_alarm()
- fix statics
- move resume to dev_pm_ops
- add suspend hook
- don't calculate (or write) the alarm timer value until suspend time

Changes since Neil's original version
- move from do_gettimeofday() to ktime_get()

Kevin Hilman (1): dt-bindings: rtc: new binding for Amlogic VRTC

Neil Armstrong (1):
  rtc: Add Amlogic Virtual Wake RTC

 .../bindings/rtc/rtc-meson-vrtc.txt           |  22 +++
 drivers/rtc/Kconfig                           |  11 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-meson-vrtc.c                  | 149 ++++++++++++++++++
 4 files changed, 183 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-meson-vrtc.txt
 create mode 100644 drivers/rtc/rtc-meson-vrtc.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
