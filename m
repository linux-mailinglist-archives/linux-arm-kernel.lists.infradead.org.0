Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737D41D52AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCkVAUAwbBh0NW9UixN0IgwGvSpQIg4sWRofLLn8EHc=; b=eYkpqfbF1+/PHW
	d+OSDnwak9W3eJnb5k8l/TBCD4l+n8A9jNOzqGZMc7X5SbmCR/JpFBND03BcXCRb66wdLT35Npvi+
	c6FbLpMm9N61V/sTMq359XfUef3EDObYS4T+p1U5uKL99cxG0h8JMeIXeQDNBtMDwpUAcbUAsgAB3
	BYAcdwi6o0hvbdSrsVDWkVHFp5sDqlanWnOv05j1LfJzces7ctofG4NGAAtKb4Kzm5QMJ8+ceVAtn
	IrrhqfhjimYjWToNl/WrLaaMAaaKxstjDDYEqidOjhU6RrdIx3lg46PtbzO7r2azQD2WnSOYm94dM
	m2t7V+0k7YNs13/B8DyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZblN-0005mB-TO; Fri, 15 May 2020 14:56:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiQ-00013v-7A
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id f13so2598837wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1Yzwf8FDzX+wb74TfFoQfONnR1+EyUuWhCFXjNGoyb8=;
 b=uO5FrXtHH24EA7xcro6XaJGq84Fjell9NOszuFKpNAB1Jk987JD81aupS5nl2Skro2
 mIor7cW1C5Ka5UOX9tpdeXdp7mfCuv0DOY1g+PCvG/qKsHg9kuc1uNJyUE0qVKqqMQom
 XfgvPOQSjofMciSOkx4u2AH6Bsh2ShhIlxuvlQBfAvtcQRqcLs57zSLjrbQtYrmMRNRD
 YlEuyuhAxZMe9RFG4z3aNffy2j65nxQlIHF+QnIwQaqooRYSi1qNx7B7IKUWZzFn4ebk
 IgLGLgF2w2+TAWu6HriqToy8GO8ZxxZFTOMsR1d/4WbfyWBAds+MKxVrFMZ5mAOhMMmT
 k2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1Yzwf8FDzX+wb74TfFoQfONnR1+EyUuWhCFXjNGoyb8=;
 b=ASHJ3YOIabRKKoDc9X4Ag7wzZ1iIaPV+bFAA3Z2sxSxksljV4oEJWEwPI5uutTmqCO
 Yt0+wIr46BcK2ObyW5TKBt+yAIV9Gr/Mqy2CICOwJDdj9lZuVTBRckDciHmxBWU5bxbU
 /0oOAgv5ni7c+wtZdnzC8oDbk5zVLUwHGItzIRaeg2ewmXuHdXV2WGi+6xORudCKSLo9
 DIKlQlG0Map7wTRRJV0KJJ8QtRrgp4Ws84Wd22GU6KYrFF/MFQVfNIGq+gfHGbCVpXwx
 STvVuvaJI7BFNisFEiFjS6Lq+cByYYw2stPo+eJ1jhlffrVIW/c4n6Ba8WE+tWOlBkDL
 ODZg==
X-Gm-Message-State: AOAM5304p+roDwF5YI+fqNu/TKatDSnW0f9bGtuFPP5He0tIgVoHpEc4
 sADJys8mYKtjjylhI13tiiAM1zsv
X-Google-Smtp-Source: ABdhPJxFNDq0PMZXUTqswa66oNRefg573GH41Vyc1PkKZ1/H5LDn/If80ZLYh01Bv9fmhHLjECgUcQ==
X-Received: by 2002:a1c:66d6:: with SMTP id a205mr4654572wmc.163.1589554412834; 
 Fri, 15 May 2020 07:53:32 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id b12sm4259300wmj.0.2020.05.15.07.53.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 09/11] ARM: tegra: Core changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:09 +0200
Message-Id: <20200515145311.1580134-10-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075334_304660_D2010992 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-arm-core

for you to fetch changes up to b9bf73aed99ed3170b37fbbf98557c70a6f19e50:

  ARM: tegra: Create tegra20-cpufreq platform device on Tegra30 (2020-05-06 19:01:17 +0200)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Core changes for v5.8-rc1

This contains core changes needed for the CPU frequency scaling and CPU
idle drivers on Tegra20 and Tegra30.

----------------------------------------------------------------
Dmitry Osipenko (7):
      firmware: tf: Different way of L2 cache enabling after LP2 suspend
      ARM: tegra: Initialize r0 register for firmware wake-up
      ARM: tegra: Do not fully reinitialize L2 on resume
      ARM: tegra: Correct PL310 Auxiliary Control Register initialization
      ARM: tegra: Switch CPU to PLLP on resume from LP1 on Tegra30/114/124
      ARM: tegra: Don't enable PLLX while resuming from LP1 on Tegra30
      ARM: tegra: Create tegra20-cpufreq platform device on Tegra30

Thierry Reding (2):
      firmware: tegra: Make BPMP a regular driver
      Merge branch 'for-5.8/firmware' into for-5.8/arm/core

 arch/arm/mach-tegra/pm.c                     |  4 ++++
 arch/arm/mach-tegra/reset-handler.S          |  7 ++++++-
 arch/arm/mach-tegra/sleep-tegra30.S          | 16 +++++++++-------
 arch/arm/mach-tegra/tegra.c                  |  8 ++++++--
 drivers/firmware/tegra/bpmp.c                |  9 +++------
 drivers/firmware/trusted_foundations.c       | 21 +++++++++++++++++++--
 include/linux/firmware/trusted_foundations.h |  1 +
 7 files changed, 48 insertions(+), 18 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
