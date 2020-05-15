Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C91D529E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GArEnv5VcgtikCvvmHKsGKCFkS5ivyk4csCOS+04tg=; b=lKUYEYMDptlAw1
	tAmtwRgYnZqj8YMbFOaYz6pJIYivMOlAgDo/MwvHP2XQUJN7zt+zoiqr+xTxawNv7p89WvSSmT8H9
	xMpd+9iEAExR8rkN4vXcZdYplNOeIHqEGYRGXv9Gju0oQ9tZVI1X8/6XiKZEyt3znC1oHPl8TSPHg
	hx8CE1ivZfkOauF8a6k6RPKzXSVqtP6Pl2tjJ6odoy2K7XWasel5SyEMD2bCANDkTUJ5vT9ms0Ui+
	+5hpmw2QBgAOw8gNKGg4JGNXSMaBbVn0Y76uukDcMtuE2bItSxJZyqe+jbUmArtvLCAuXnLz7AJ7S
	yHRLAZIXTbC/6HxrnYjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbjX-0001kD-Sg; Fri, 15 May 2020 14:54:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiF-0000vM-IZ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so3897379wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1SsS+ZSTt/ULxJrwRQDkWWTbTiy0pezxPev3oDys/NQ=;
 b=iysdOe4FAn3ll8B3ThqIjAYC97gkTK6GJYK6e2G9Edo/ZG49ZDlqMWper0xOGunFje
 hXxuDmze9n1mgqI/VpLiiM0tqXcq9F5T9sED5L//v/DW7JHQZUAFR9bE/2XhqfC5Jo8j
 U/x7cp12WXwjz/xAgyz8HbP2HhU79xHznPxryUnAXOPdj8k743ur+0fJOHxhtRLW5BPI
 43K4tw810Hwy6U2QcOOhqLH4tlz1I1nhv5s1f+SnF7SfzIvsrUir5RmNdPl9S01AqUZL
 ucGIvNfPFIip+yudT7sXWKdf7zU4gNHjWz3dgsH09bkhXmLZL+pvh/t3N46yvpFeERZI
 6Qig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1SsS+ZSTt/ULxJrwRQDkWWTbTiy0pezxPev3oDys/NQ=;
 b=t86W7S3IIXsH/HdIij71c1TYYn6EHBiLXXbx5mtRnUvcOqXeAFfgacKUIQrgoh3FF0
 zLzzxYEoLcVSFbacrr2XbRG6K/RxrjJP62Hh5rP4+h8OsJBx8F1hSCVYmVfphT0vn04J
 OiITNotnj+t7UxIduzQc49jJn1D1movk2pg+gOSPsULA6/cQ8txgExKiFSWmlaUt/BTx
 RoP9IGgUdFPBHTiWfPGkFdFFDJ0owJoQRHCFDkB6twSywsQqeDgru6kOpPCq7xBj/VXh
 vHuGNm2ere3LFRYAyC1CH9r8VZk80H8eP+DkW2EGoK2Jbagp9gjsj6xizOn9h26ZCSE2
 Gu9Q==
X-Gm-Message-State: AOAM530oxehZbf3tZntj/Opqkr9jkmTndBSZhX+6FQL/eJnTX58eLaQF
 DN15cV7fu4PNnrQaq8uLj/c=
X-Google-Smtp-Source: ABdhPJyGosKoHaIyb7spq/jdjjQ71Kd31n//F2dO6CqRU84CNLY2LpOSEHa9VifxuNHIDydbbs0riQ==
X-Received: by 2002:adf:ed82:: with SMTP id c2mr4878997wro.255.1589554401520; 
 Fri, 15 May 2020 07:53:21 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id h133sm4213503wmf.25.2020.05.15.07.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:20 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 03/11] dt-bindings: Changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:03 +0200
Message-Id: <20200515145311.1580134-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075323_666943_517A4C9F 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-dt-bindings

for you to fetch changes up to 4e79691d050e6d06ee7fa09002c52dd1ce9ac6e6:

  dt-bindings: i2c: tegra: Document Tegra210 VI I2C (2020-05-12 22:47:36 +0200)

Thanks,
Thierry

----------------------------------------------------------------
dt-bindings: Changes for v5.8-rc1

This adds bindings for the CSI TPG clock on Tegra210, moves various
clocks from the clock and reset controller to the PMC where their
controls really are, adds bindings for the external memory controller
and video capture controller on Tegra210, as well as CPU frequency
scaling on Tegra20 and Tegra30.

----------------------------------------------------------------
Dmitry Osipenko (1):
      dt-bindings: cpufreq: Add binding for NVIDIA Tegra20/30

Joseph Lo (1):
      dt-bindings: memory: tegra: Add external memory controller binding for Tegra210

Sowjanya Komatineni (3):
      dt-bindings: clock: tegra: Add clock ID for CSI TPG clock
      dt-bindings: clock: tegra: Remove PMC clock IDs
      dt-bindings: tegra: Add VI and CSI bindings

Thierry Reding (1):
      dt-bindings: i2c: tegra: Document Tegra210 VI I2C

 .../bindings/cpufreq/nvidia,tegra20-cpufreq.txt    | 56 +++++++++++++++
 .../display/tegra/nvidia,tegra20-host1x.txt        | 73 +++++++++++++++----
 .../devicetree/bindings/i2c/nvidia,tegra20-i2c.txt |  6 ++
 .../memory-controllers/nvidia,tegra210-emc.yaml    | 82 ++++++++++++++++++++++
 include/dt-bindings/clock/tegra114-car.h           | 14 ++--
 include/dt-bindings/clock/tegra124-car-common.h    | 14 ++--
 include/dt-bindings/clock/tegra20-car.h            |  2 +-
 include/dt-bindings/clock/tegra210-car.h           | 16 ++---
 include/dt-bindings/clock/tegra30-car.h            | 14 ++--
 9 files changed, 234 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/cpufreq/nvidia,tegra20-cpufreq.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
