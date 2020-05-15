Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415E71D52A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMfdZ/T4hI2W7yuhCmQOeUL1iCx+l6sXWSQCjTibpgc=; b=Exz+4wiNCFMicN
	d4s73yuq34sAQfChOqAxm9eu7mcIBr9ziBKWkfAQz3vD3uwV3ZM+IAf3P74WFKz8wZo90rEMJ1VrN
	+OUj9tkB1W7JYlLmSojuXn6FuyjEWzPKk3U3eiASlRn9HPNgeVinhUS9n5JyTSqVl4IPTmSI5l2ki
	fbmZd1nPYyW8PXS29xKOni/6KA9XHzR8qQW0qhAb4mCo9OD5Ev+diakF59Pcq2GWTTsFsjmlv8pDp
	ki15HkbIE9RhoYD2lxrvtG3Xx3uLRbjArPflXEIEEEqHO5ERvwlN6Ld6S4Rl2pcbRLbvO8Jf9H0/j
	HzYiYg7RuWQQoPnBPBKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbkO-0004vF-VI; Fri, 15 May 2020 14:55:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiL-000108-2g
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id d207so14079548wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9UBYYcdIgbZSSo88eAH9WbkMVlcw8uQpcEd0d8c9QEI=;
 b=iLTgQubvbdvxXADF2lJaBVfdvzqfwkCgdBgJx+MOvK2jIL7zXYNiRWcynMi0icRipR
 9o+FjUvK/wkTfpF+IcYA7uIQ5wqAIMyQKePmCSXENGjXgMIam2rf3N7Fo21M79VfdAr7
 Hpp2tCEY0GzLgZSXo/7PaGCrXFRn2LU3czLFu0v2CtZeVS2lpjQ66k3kcQHITvZC7y4E
 PsDLlh72/jk8gPtbBLPdHb/q9EzeOjVSSEZs7EjpRDHAM263mkkRZ8+FAOqW/AWUW6h2
 Iij253mDSAay8ZEf+4ED6hfZ1JXCS9rD2CxO+rP48xW7z7qfzd3ArSzIXxOsDA+OUL1Y
 VXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9UBYYcdIgbZSSo88eAH9WbkMVlcw8uQpcEd0d8c9QEI=;
 b=dRP69W9SXjPBS0BIhDdbQpkdcRDVCbrr8ZFpEVh7I18WVPrX8wzkbufWTkZfXFDR3X
 lkUubgr9+wQATF0aFJz1JjTF1EO4tZVI/YC1PubTHVbHu13By3TLvQa0FLlfHvmgcDlX
 PNJP7bDD+hJFp4BlRvxhwOBmn7moKs+HoV+VZxjnzXtj2zWfnNdkEvqv/C+hsZbPeRL4
 39sLQ0Ke9sDjuQHzP6o1muOtB2wjlQOsQ0RXtoTwh2GApJn1mXUjY9H+Sw21F6KBncik
 9yClOQwwmI/1x6zXg1GzkJxy3dhMkto0r2npULOWCX+NKVcufGbSzu0WMbZXAPh+LpEB
 rzDA==
X-Gm-Message-State: AOAM531GA2MfFmFi4uYGYGK7WXoziK2XnSZUALjp+BDO201njJzJhRgN
 stSmzGnjoN/jnH+TFQxEgKA=
X-Google-Smtp-Source: ABdhPJxW/lNGeuuFBpIkpzs8OslocfcDWMlr9WDQeun9e5LenyOb+/obiqbm3JLQzNaZXq0JViS0vw==
X-Received: by 2002:a1c:4857:: with SMTP id v84mr4633914wma.106.1589554407502; 
 Fri, 15 May 2020 07:53:27 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id u16sm3846305wrq.17.2020.05.15.07.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:26 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 06/11] media: tegra: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:06 +0200
Message-Id: <20200515145311.1580134-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075329_162554_006D0314 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-media

for you to fetch changes up to ba8f6682bcb3312645c6cb77499ceaa66cc950a6:

  media: tegra-video: Do not enable COMPILE_TEST (2020-05-12 23:09:33 +0200)

Thanks,
Thierry

----------------------------------------------------------------
media: tegra: Changes for v5.8-rc1

This contains a V4L2 video capture driver for Tegra210.

----------------------------------------------------------------
Dmitry Osipenko (1):
      dt-bindings: cpufreq: Add binding for NVIDIA Tegra20/30

Joseph Lo (1):
      dt-bindings: memory: tegra: Add external memory controller binding for Tegra210

Lukas Bulwahn (1):
      MAINTAINERS: correct path in TEGRA VIDEO DRIVER

Samuel Zou (1):
      media: tegra-video: Make tegra210_video_formats static

Sowjanya Komatineni (5):
      dt-bindings: clock: tegra: Add clock ID for CSI TPG clock
      dt-bindings: clock: tegra: Remove PMC clock IDs
      dt-bindings: tegra: Add VI and CSI bindings
      media: tegra-video: Add Tegra210 Video input driver
      MAINTAINERS: Add Tegra Video driver section

Thierry Reding (3):
      dt-bindings: i2c: tegra: Document Tegra210 VI I2C
      Merge branch 'for-5.8/dt-bindings' into for-5.8/media
      media: tegra-video: Do not enable COMPILE_TEST

 .../bindings/cpufreq/nvidia,tegra20-cpufreq.txt    |   56 +
 .../display/tegra/nvidia,tegra20-host1x.txt        |   73 +-
 .../devicetree/bindings/i2c/nvidia,tegra20-i2c.txt |    6 +
 .../memory-controllers/nvidia,tegra210-emc.yaml    |   82 ++
 MAINTAINERS                                        |   10 +
 drivers/staging/media/Kconfig                      |    2 +
 drivers/staging/media/Makefile                     |    1 +
 drivers/staging/media/tegra-video/Kconfig          |   12 +
 drivers/staging/media/tegra-video/Makefile         |    8 +
 drivers/staging/media/tegra-video/TODO             |   11 +
 drivers/staging/media/tegra-video/csi.c            |  539 ++++++++++
 drivers/staging/media/tegra-video/csi.h            |  147 +++
 drivers/staging/media/tegra-video/tegra210.c       |  978 ++++++++++++++++++
 drivers/staging/media/tegra-video/vi.c             | 1074 ++++++++++++++++++++
 drivers/staging/media/tegra-video/vi.h             |  257 +++++
 drivers/staging/media/tegra-video/video.c          |  155 +++
 drivers/staging/media/tegra-video/video.h          |   29 +
 include/dt-bindings/clock/tegra114-car.h           |   14 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   14 +-
 include/dt-bindings/clock/tegra20-car.h            |    2 +-
 include/dt-bindings/clock/tegra210-car.h           |   16 +-
 include/dt-bindings/clock/tegra30-car.h            |   14 +-
 22 files changed, 3457 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/nvidia,tegra20-cpufreq.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
 create mode 100644 drivers/staging/media/tegra-video/Kconfig
 create mode 100644 drivers/staging/media/tegra-video/Makefile
 create mode 100644 drivers/staging/media/tegra-video/TODO
 create mode 100644 drivers/staging/media/tegra-video/csi.c
 create mode 100644 drivers/staging/media/tegra-video/csi.h
 create mode 100644 drivers/staging/media/tegra-video/tegra210.c
 create mode 100644 drivers/staging/media/tegra-video/vi.c
 create mode 100644 drivers/staging/media/tegra-video/vi.h
 create mode 100644 drivers/staging/media/tegra-video/video.c
 create mode 100644 drivers/staging/media/tegra-video/video.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
