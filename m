Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC93C18FF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 20:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f2VjGr9JWpUnpc5crunKT2sO32vNiFDqdMU/bWgJEUY=; b=Bhffaz2EaqyZ9M
	dGt9ozD81ZEHti8uihYyLwJ7BEl3UIy6UvQKUAeID7lv7z26LZNcqA4IgsRF+M+SnDEr7ZswwKuVx
	+0zM2E4QYlsnwIwEdmchgJaNG6GZdVEIVHjn1nUwgm5zu/sLYE6+9TO8+pqp+qV+43xl53/Qme6Jg
	UVoGwfM/52GGXlS0dHFNVWiPUiTUf46IRcn9/1Go+e8s+c9wzxyaMtT7zAtOZKVnaRV+ZTkj9YVCu
	oDX+61dxpcCFQxgvxtK75Jvr7It95kIRYACMtBA5mEs4CF7z7tyWVCrQmXmFreZCODEkgpEotiFmu
	YJS+MdkVENQGczIoNCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEe2P-0008B9-A2; Sun, 29 Sep 2019 18:35:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEe2H-0007ta-HU
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 18:35:10 +0000
Received: by mail-lf1-x143.google.com with SMTP id t8so5315335lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 11:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=eegWp7OFuS9LfQMo/vUVdK64OvhifJQIxUvnCVGZlUo=;
 b=q9lW7VSfebtJhrUCh4TZPVaH9uP5MtEamWEMd5YVMSWIype0GOEU2KXB5qqWXd3M40
 uo2mB2UoilHqqBlyomgwdM2GQDIfN57U0oKK7qXoOTBIyh9PJ6lPMczovH13t6K6jp58
 NNGWAwqAlzz1kp8wzZgMVN9DEC+iKdjSA1HJtfvriOaQHXuRP33p9f0uHmlZt4EfI/vt
 dpjLj9VkvAYm9sFaWhaGdS+jGjZ0kjN90X0KpOpNYNvzYgxpuBR09KIpTs0wE7kGmqEI
 7eE2YmQca7fsAGOHUvIjWgqGijI3kfkYQxBoLb7QpjOtq96PBwdvj3UuJMzgwObHdwy/
 5z8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=eegWp7OFuS9LfQMo/vUVdK64OvhifJQIxUvnCVGZlUo=;
 b=Ghsh45aoYvM+I7E8SJJH2qMIrd0cGOMUbd+iYsljOezPJg8sL+idSpSwW/sa/WiHIM
 ArcJxOdZgywwTSSR41kbqSXypctbQZyB8q3Dd0reDBnQlUn2zqLt3juz6FWTTqS74PXn
 Una5YMnidys6NpAyM2wKZeepd3e7dU4VmCULBr51gRSDBqSctega9ufmKu9oo/ewmWzP
 cXqQgAAqSvc5Rj3o6DUD8SBse+aoEnvfjftTP/IYubb3Tb2FTudoPHCxSJjxZZrf6GVV
 SqYTl8YxgvUeVaEGiOG1Y1m8rTEoJEYI9V660J56Ifg+sxQJ49LPFwBzLjFU0scgtbEm
 XEtA==
X-Gm-Message-State: APjAAAXVMBdJvxvJ42W0VMQ68iUBJKS/AI6k/vwgtsrqqj5Pp2ZpPzVq
 ILT+RyqzAg7u2bYoOzT/ufPpsg==
X-Google-Smtp-Source: APXvYqxLIowMztRfR1dwrzcJ3kM/Z0abdPF1JMvF+WJPFzakdRu7lRiZ4dAJM5JPAOP62XeXjoB28g==
X-Received: by 2002:ac2:5633:: with SMTP id b19mr8939251lff.103.1569782107368; 
 Sun, 29 Sep 2019 11:35:07 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t8sm3041717ljd.18.2019.09.29.11.35.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Sep 2019 11:35:05 -0700 (PDT)
Date: Sun, 29 Sep 2019 11:34:53 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20190929183453.4sehzgovw3ouatdj@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_113509_581277_494D5B89 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 4d856f72c10ecb060868ed10ff1b1453943fc6c8:

  Linux 5.3 (2019-09-15 14:19:32 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 9bfd7319e8d353b8b81c4cfd4d7eced71adbfbb5:

  Merge tag 'fixes-5.4-merge-window' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/fixes (2019-09-29 11:20:48 -0700)

----------------------------------------------------------------
ARM: SoC fixes

A few fixes that have trickled in through the merge window:

 - Video fixes for OMAP due to panel-dpi driver removal
 - Clock fixes for OMAP that broke no-idle quirks + nfsroot on DRA7
 - Fixing arch version on ASpeed ast2500
 - Two fixes for reset handling on ARM SCMI

----------------------------------------------------------------
Adam Ford (4):
      ARM: omap2plus_defconfig: Fix missing video
      ARM: dts: logicpd-torpedo-baseboard: Fix missing video
      ARM: dts: am3517-evm: Fix missing video
      ARM: dts: logicpd-som-lv: Fix i2c2 and i2c3 Pin mux

Arnd Bergmann (1):
      ARM: aspeed: ast2500 is ARMv6K

Olof Johansson (2):
      Merge tag 'scmi-fixes-5.4' of git://git.kernel.org/.../sudeep.holla/linux into arm/fixes
      Merge tag 'fixes-5.4-merge-window' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes

Sudeep Holla (2):
      firmware: arm_scmi: reset: fix reset_state assignment in scmi_domain_reset
      reset: reset-scmi: add missing handle initialisation

Tony Lindgren (3):
      bus: ti-sysc: Fix clock handling for no-idle quirks
      bus: ti-sysc: Fix handling of invalid clocks
      bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle()

 Documentation/devicetree/bindings/arm/arm,scmi.txt |  17 +
 MAINTAINERS                                        |   1 +
 arch/arm/boot/dts/am3517-evm.dts                   |  23 +-
 arch/arm/boot/dts/logicpd-som-lv.dtsi              |  26 +-
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi   |  37 +--
 arch/arm/configs/omap2plus_defconfig               |   1 +
 arch/arm/mach-aspeed/Kconfig                       |   1 -
 arch/arm/mach-omap2/pdata-quirks.c                 |   4 +-
 drivers/bus/ti-sysc.c                              |  52 ++-
 drivers/clk/clk-scmi.c                             |   2 +-
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/base.c                   |   2 +-
 drivers/firmware/arm_scmi/clock.c                  |  33 +-
 drivers/firmware/arm_scmi/common.h                 |  18 +-
 drivers/firmware/arm_scmi/driver.c                 | 366 +++++++++++++--------
 drivers/firmware/arm_scmi/perf.c                   | 264 ++++++++++++++-
 drivers/firmware/arm_scmi/power.c                  |   6 +-
 drivers/firmware/arm_scmi/reset.c                  | 231 +++++++++++++
 drivers/firmware/arm_scmi/sensors.c                |  57 ++--
 drivers/hwmon/scmi-hwmon.c                         |   2 +-
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-scmi.c                         | 125 +++++++
 include/linux/scmi_protocol.h                      |  46 ++-
 24 files changed, 1046 insertions(+), 282 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/reset.c
 create mode 100644 drivers/reset/reset-scmi.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
