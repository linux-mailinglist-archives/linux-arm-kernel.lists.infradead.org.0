Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F53821AA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BgQj3tX2/xyGZauhyDvcpTkMC841dcooXbK+np8yZXs=; b=bxglNi/D9OAQcB
	dZR497O3CPF04IF8qjWLrviDKfR8877C95iT8z26ne2QLuNo/mm2M5UarzBcMCw7C3J+6luD0qAQR
	wd8HBPE2k80MwgJOU33QMr70RO+bl2U+3YNiqV/kNNRG/+YB/D58PhtNnZBVcMXWfPhcLUdSyAy7e
	aiPjwhBgOPDkrQp6vsoNoncv/wFmiLOAsWJFmq447QOCnRXEFodmghWzUA3Lb9atgFMLTsKJYLIG7
	3aHH/sW7MLTYjuy+L80WNCjf3Lzm3tISi/9QaVuIwQLHP2Sdpl3WRHWe/7QTbnLxUg1PpkSk7nPuA
	IsgPBVTZPwH1WzTL4Ryg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRetS-0008CR-VO; Fri, 17 May 2019 15:35:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRetB-00081M-0e; Fri, 17 May 2019 15:35:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ABC58ACEF;
 Fri, 17 May 2019 15:35:13 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [RFC 0/5] cpufreq support for the Raspberry Pi
Date: Fri, 17 May 2019 17:35:02 +0200
Message-Id: <20190517153508.18314-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083517_205394_AB7AE796 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
as some of you may recall I've been spending some time looking into
providing 'cpufreq' support for the Raspberry Pi platform[1]. I think
I'm close to something workable, so I'd love for you to comment on it.

There has been some design changes since the last version. Namely the
fact that I now make sure *only* the CPU frequency is updated. The
firmware API we use has two modes, with or without turbo. Enabling turbo
implies not only scaling the CPU clock but also the VPU and other
peripheral related clocks.  This is problematic as some of them are not
prepared for this kind frequency changes. I spent some time adapting the
peripheral drivers, but the result was disappointing as they poorly
support live frequency changes (which most other chips accept, think for
instance I2C and clock stretching) but also turned out hard to integrate
into the kernel. As we were planning to use 'clk_notifiers' which turns
out not to be such a good idea as it's prone to deadlocks and not
recommended by the clock maintainers[2]. It's also worth mentioning that
the foundation kernel doesn't support VPU frequency scaling either.

With this in mind, and as suggested by clock maintainers[2], I've
decided to integrate the firmware clock interface into the bcm2835 clock
driver. This, in my opinion, provides the least friction with the
firmware and lets us write very simple and portable higher level
drivers. As I did with the 'cpufreq' driver which simply queries the max
and min frequencies available, which are configurable in the firmware,
to then trigger the generic 'cpufreq-dt'.

In the future we could further integrate other firmware dependent clocks
into the main driver. For instance to be able to scale the VPU clock,
which should be operated through a 'devfreq' driver.

This was tested on a RPi3b+ and if the series is well received I'll test
it further on all platforms I own.

That's all,
kind regards,
Nicolas

[1] https://lists.infradead.org/pipermail/linux-rpi-kernel/2019-April/008634.html
[2] https://www.spinics.net/lists/linux-clk/msg36937.html

---

Nicolas Saenz Julienne (5):
  clk: bcm2835: set CLK_GET_RATE_NOCACHE on CPU clocks
  clk: bcm2835: set pllb_arm divisor as readonly
  clk: bcm2835: use firmware interface to update pllb
  dts: bcm2837: add per-cpu clock devices
  cpufreq: add driver for Raspbery Pi

 arch/arm/boot/dts/bcm2837.dtsi        |   8 +
 drivers/clk/bcm/clk-bcm2835.c         | 284 ++++++++++++++++++++++++--
 drivers/cpufreq/Kconfig.arm           |   8 +
 drivers/cpufreq/Makefile              |   1 +
 drivers/cpufreq/raspberrypi-cpufreq.c |  79 +++++++
 5 files changed, 362 insertions(+), 18 deletions(-)
 create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
