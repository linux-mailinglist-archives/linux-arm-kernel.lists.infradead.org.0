Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B9B1DE8F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcZo/ZDotBydoJUL4sW6XpJJFK0bN+NyGtasZLAAnW8=; b=mvtbSQBIs7cQVY
	A5OHKvgliaVquli040VSwmxu6QE0iL64yCNo4Dg9nnpgfFRap8m7g4YYMw7GCfnpaQ9XDMweBXW0w
	pjMUZZhVc3lYutw5pbqb5A9jvLWLTorjmlbSGo6A//BJMfrBGHO2qER3PkIKfZxaIJW367NICMA3i
	+woYPhbAxT65lIHD5Fu90ShWai3LZ6IgrhMfZ84y7yx7Wh5OVAplybuExYgIHgEtGG4kA3nHHdHrX
	LI0Yus4Mri0EK3tAAQzbJglYVEpgEVP4UgIPSIpRi0nrkG80BmP8tzcPKPn8QPevheewkNoF2ceHN
	wlddo+yJwo6cN53yCxgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8gB-0000Zi-Dx; Fri, 22 May 2020 14:29:43 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8fT-0000Bn-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:29:01 +0000
Received: by mail-ej1-x632.google.com with SMTP id j21so13295074ejy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9yhDyyGIK852ZcV9cF3CJIrqL1AAvlaguqb4kRBecU0=;
 b=tsapIh29wQPr65wVhWHMcEL9iTrKSePjEa3828dghEM1UPB43L/NM8JY0fRbqfRjeo
 63sYE+9tcxkUBOO7NjFIAbvRRBa4WPQiz17JRj++8oV7iXLZrS91HJ46CJ33VfqoefAi
 qADPb2wfO6qANRH3pwSI2FB7Y8YcU37X8UbWUwO92ogusUOkImnrh2RXuDLI5FBjl4sY
 ERNYuloCP/RPy4FYvq2LLa6pdstEtsMWhuTgsLcfN1eSlllgM8tuPWdRzq7Ckssr36YA
 nr8Qoij+364igxpNz6+BtR2tQ2QNNJkkUTa+L4GpppZvSjY8q8sRggK2++aOFD4t6jqP
 jZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9yhDyyGIK852ZcV9cF3CJIrqL1AAvlaguqb4kRBecU0=;
 b=j3ifXAD8WilWG707LDCxwZ1+vDHRHG/8C90Oz9b2NScGly3Ul/apyV1IP0fzlU73XG
 +3fKgEKU7IeIdAw3rHY/cJRKm1NhVesE7MZ8dZ8RnUJVkY0/5Y4/XAx7g5qYg08MhLWG
 9nRQtHoavNXGhRo4LVyGWiIrZ5Ed6VfJSPXagKlxLXZx/DJTaLc94EU9TpkleXiphuCJ
 9RvhGWCv+k1owpwaf5FKTjHHPZe5hJx5beC3kZ29UhKpwZd8n4zkLlr54URJEslDLbUh
 hRZ/cqOSKzLGnvy70LKFb4VVzvIVF3Uf1FsQ3c6w/BHYED3Rgd4naORR5TwZWr4BxDXO
 SQyg==
X-Gm-Message-State: AOAM532iTzOy/phrhjY//GlTzDkq7QNu2oVfmSUlPgObWGOdYFAgsWFU
 s91hBCtj3DN4/z2s5/n0Wt8=
X-Google-Smtp-Source: ABdhPJyI67fZVtsaB0pNl/umXx3NPSZKJsGS6VM5z5c9WsRc3vS4rXJtCSMRHpmN/iiyngYCVm3EwA==
X-Received: by 2002:a17:906:407:: with SMTP id d7mr8278768eja.46.1590157738306; 
 Fri, 22 May 2020 07:28:58 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id x1sm7996111ejn.57.2020.05.22.07.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 07:28:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL v2 11/11] arm64: tegra: Device tree changes for v5.8-rc1
Date: Fri, 22 May 2020 16:28:46 +0200
Message-Id: <20200522142846.2376224-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-12-thierry.reding@gmail.com>
References: <20200515145311.1580134-12-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_072859_884916_D5D657E7 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-arm64-dt-v2

for you to fetch changes up to 358a6777f5dd293bc3c075af6fc8c0dd18774c96:

  arm64: tegra: Make the RTC a wakeup source on Jetson Nano and TX1 (2020-05-22 14:56:54 +0200)

This is a slightly rebased version of the prior pull request which has
the commit log cleaned up as I mentioned earlier. I've also included a
patch to enable resume from suspend via the PMIC on Jetson TX1 and
Jetson Nano, which will help us to test suspend/resume in our test
system in a unified way.

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree changes for v5.8-rc1

This contains a couple of fixes for minor issues, enables XUDC support
on Tegra194, and enables EMC frequency scaling and video capture on
Tegra210.

----------------------------------------------------------------
Jon Hunter (3):
      arm64: tegra: Fix ethernet phy-mode for Jetson Xavier
      arm64: tegra: Allow the PMIC RTC to wakeup Jetson Xavier
      arm64: tegra: Make the RTC a wakeup source on Jetson Nano and TX1

Joseph Lo (1):
      arm64: tegra: Add external memory controller node for Tegra210

Nagarjuna Kristam (1):
      arm64: tegra: Add XUDC node on Tegra194

Rob Herring (1):
      arm64: tegra: Kill off "simple-panel" compatibles

Sowjanya Komatineni (4):
      dt-bindings: clock: tegra: Add clock ID for CSI TPG clock
      arm64: tegra: Fix SOR powergate clocks and reset
      arm64: tegra: Add reset-cells to memory controller
      arm64: tegra: Add Tegra VI CSI support in device tree

Thierry Reding (4):
      Merge branch 'for-5.8/dt-bindings' into for-5.8/arm64/dt
      arm64: tegra: Hook up EMC cooling device
      arm64: tegra: Enable VI I2C on Jetson Nano
      arm64: tegra: Make the RTC a wakeup source on Jetson TX2

Vidya Sagar (1):
      arm64: tegra: Fix flag for 64-bit resources in 'ranges' property

 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     |  3 +-
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |  5 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 30 ++++++--
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     |  3 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 10 +++
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  7 +-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           | 89 ++++++++++++++++++++--
 include/dt-bindings/clock/tegra210-car.h           |  2 +-
 9 files changed, 131 insertions(+), 20 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
