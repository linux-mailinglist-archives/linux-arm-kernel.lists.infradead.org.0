Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE821ECF4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25xXqrnwT3wPy9IpIhTUGpFao0NwiPvRzIqKAzvh3IE=; b=cYt1WQ8adblEZB
	MxGS/hu8HDJ4OBAlrSWrIBWcVSudfeLfWR/EXNytbZhJRZmFFCZBdN7rU1swJkMu6DMRHhyWjpbLr
	vd/F+nALUS8+qJtOBqE6NOoNsAjJjdMvBXUbY2hBukFjaQSMTAC2sctPy0T1BvxG/OsXpG/folrE2
	bxDALz2/p1Kw6TuN7iIJvrC1ah53SblYSszcOFO7KwRscq2U7I4wI2fO/j72v5m6GYv2SQYW7FXl5
	cBqSE8X0OdeloSyGPKUNYUasI/nGgj9EhdkAxpFiigl0VBwogGuVoGjx8mZZuCbnNf1blq2Sjk11x
	SNgMXLxPRU0ql6o34H8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQugM-00011C-Vd; Sat, 02 Nov 2019 14:47:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQueq-00081p-MB
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id 6so10709771wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aZU4q2obXFsRyJfy0ffm0WGcG8q+ibuTKe+aCmk4/9k=;
 b=MYSCk3QmjSgxx5m4Lh4r5lWzRYYGIxEkDyLzFcLFUCLeHMOAoMTh7YnUWKxJx5bt36
 my6Y4Sf5wIdSZ7ZVyENfw2aetED2NHychdtQc34wVv4ILXVeNd5f5G0CwTGDHqZtmJu8
 mA8r4nZL7Ty9GA7AL2BCyhSkq+i3ywME1sz3VBu9iA7nGhlJPpcD6QnjDEsTFWBXVDAj
 MlUEqlqwJtvnLJpH4WQSGLaZniXPDbiIvlXNIlTQqU4d9B5P2BVpuv9bvCGWpaKKl7rh
 bpIM5aXq6iR6+rRV5P2u3TFpopMD0DU1PkjpQoc18jzu/o/fEm3pGCpeG/BQALjtKkoT
 420g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aZU4q2obXFsRyJfy0ffm0WGcG8q+ibuTKe+aCmk4/9k=;
 b=EBN2ZM2FpNtcP8ZeBosp2DXIsoYUB/kbjKdqi0+OLn4DZt4PggcWoPZ756TqyUYf7V
 qBnuCx5Y5LSHPu+7b/z/pqemv+6PuAHGwbGdxp3Ilw+SPML/waLgYEIz1L9SdfQG8DnB
 nbwT6gfEeAtm5GGeM6dAU3sbiYroN3N3xnf8eY0YypVUzRguClfB6KbniMuRmoUXaU8v
 WtoANCicW2MUrjWM/CuJoIS2mxS0iG6ww6xU8D4CorloW/WAkwB+qhZE5YYU3clGHaL8
 tFigETQxOLPxPTM/AP8fzio9PcLAVYn+qVFSKktrsMrs0ylxLdiNLtJB+XvdP5ZAlyNl
 LHHw==
X-Gm-Message-State: APjAAAXD9ipHVWJDjl6bC+IlC7iujxvoFANjisIWJpDGEujW6oAVHXVG
 MQN1jzADeTD14UFWx8dLahg=
X-Google-Smtp-Source: APXvYqzviHdmwnXlqVv/c5rayoBS97WZKnWEiaBfjsiSytB6ry7JNYPvCwgv39fEIxQaCgffsb4EVA==
X-Received: by 2002:a1c:96c9:: with SMTP id y192mr15973392wmd.8.1572705938541; 
 Sat, 02 Nov 2019 07:45:38 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id i3sm10704851wrw.69.2019.11.02.07.45.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:37 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 8/8] arm64: tegra: Device tree changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:21 +0100
Message-Id: <20191102144521.3863321-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074540_792566_455DC289 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-arm64-dt

for you to fetch changes up to 47b4e129155fd1e721462fa23d128940c93b5b7b:

  arm64: tegra: Add Jetson Nano SC7 timings (2019-10-29 20:30:09 +0100)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree changes for v5.5-rc1

Adds support for DP and XUSB on various boards, enables SMMU support for
more devices and fixes a couple of DTC warnings and inconsistencies that
are reported at runtime.

These changes along with some of the driver changes in other branches
allow suspend/resume support on Tegra210 devices (e.g. Jetson TX1 and
Jetson Nano).

----------------------------------------------------------------
Jon Hunter (2):
      arm64: tegra: Fix 'active-low' warning for Jetson TX1 regulator
      arm64: tegra: Fix 'active-low' warning for Jetson Xavier regulator

Nagarjuna Kristam (3):
      arm64: tegra: Enable XUSB pad controller on Jetson TX2
      arm64: tegra: Enable SMMU for XUSB host on Tegra186
      arm64: tegra: Enable XUSB host controller on Jetson TX2

Sowjanya Komatineni (3):
      arm64: tegra: Enable wake from deep sleep on RTC alarm
      arm64: tegra: Add Jetson TX1 SC7 timings
      arm64: tegra: Add Jetson Nano SC7 timings

Thierry Reding (18):
      dt-bindings: clock: tegra: Rename SOR0_LVDS to SOR0_OUT
      Merge branch 'for-5.5/dt-bindings'
      arm64: tegra: Add CPU and cache topology for Tegra194
      arm64: tegra: Add unit-address for CBB on Tegra194
      arm64: tegra: Add unit-address for ACONNECT on Tegra194
      arm64: tegra: Fix base address for SOR1 on Tegra194
      arm64: tegra: Hook up edp interrupt on Tegra210 SOCTHERM
      arm64: tegra: Fix compatible string for EQOS on Tegra194
      arm64: tegra: Add ethernet alias on Jetson AGX Xavier
      arm64: tegra: Enable SMMU for VIC on Tegra186
      arm64: tegra: Add SOR0_OUT clock on Tegra210
      arm64: tegra: Enable DP support on Jetson Nano
      arm64: tegra: Fix compatible for SOR1
      arm64: tegra: Enable DP support on Jetson TX2
      arm64: tegra: p2888: Rename regulators for consistency
      arm64: tegra: Enable DisplayPort on Jetson AGX Xavier
      arm64: tegra: Add blank lines for better readability
      arm64: tegra: Add PMU on Tegra210

Vidya Sagar (1):
      arm64: tegra: Assume no CLKREQ presence by default

 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts |  12 +-
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           |   4 +-
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |  36 ++---
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts |  33 +++-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 171 ++++++++++++++++++---
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     |   7 +
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     |   2 +-
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  35 +++++
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           |  25 ++-
 include/dt-bindings/clock/tegra124-car-common.h    |   3 +-
 include/dt-bindings/clock/tegra210-car.h           |   3 +-
 11 files changed, 278 insertions(+), 53 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
