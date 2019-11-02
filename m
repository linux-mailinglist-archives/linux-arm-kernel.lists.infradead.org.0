Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE0ECF48
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dfz0wrJrUqY1DWamJ036qw7XIg4sctoS0uKukSehpO4=; b=G++p4U87rxpUdZ
	zDilybvb+kShZmDqZsCG+iVRfY8lKR8zFouajr/ou+l3muOyWuQpejIuW30xk2b6nakN2qqZr/QJj
	ajEXWf8LbHEiW6wy4HhNXPT9RzzjFwWldvnP1onOXRx0GIEh9+cD6ubte2oRoYC082cb5iz6U+dgp
	QvYODGRGXETqX6l33UuNGGsNbLYFJPW6sZGfHGFLWuy2+r0DNOp7wdWbO+fCRPLhHAtMF1A+YNTcH
	cDie6cjMLUIlWVt8vlJc0LFCny683YhBa+PRtAOxVG+0inqBg8m5M3ZGPsfs/VynL2UOHP7eQZLAH
	u3I0ruZetJXAzJmUUHLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQufC-0008F7-8O; Sat, 02 Nov 2019 14:46:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuef-0007rj-JT
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so12432468wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2xwdK9ORPHr8BUbtUyij/HAbdNm3052Xp3KlIuPrDTs=;
 b=ePM140datcGTK2ysJ1FnNHxCI1dMMmWN/G4pgRW485JxcHCI3s9da3fACfaPSkEQxi
 Vj9RYbmnV4GvR52xtl4UXBs+GC9VcGbHcFc1JjQ9BGn4AbprkJrpHC/xmxrc5yirgOmr
 ZA0zVfPbMyWJJBXw1mV6AxGUEs5j557MXDwKBcOTFcEaT6v3EyzUSyq7/r9UuSD3vjzB
 DoAs5785whZMyBw9kiEPHSiUBoqXnGbf/KirXAZzDQ9YRa4UTA400Z16QRQ3kWbpNCau
 CTZ/HZM6se78LDAJ6aXOnHGt92YdZtaBFXrzDtyMPBtm+6G2Vq42N883FScMv2hhZpNE
 MUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2xwdK9ORPHr8BUbtUyij/HAbdNm3052Xp3KlIuPrDTs=;
 b=gnBuNzijBJeWyyTbm7uSqjB6F2H7YwCKjN8gNZn3WBfziZxpgZDE4h0pnOWmw6STJQ
 /s6RQJGHP4knC059I1gcsZtVZ9o3wPuEwA9Sz20nTrGpHEO9Skb999pRRzCN9LIiGM+h
 pWVf+/fLfDoRyZqUmHRfQ0RTBfrlh7fdbtiQphX3E5inLkqnj5kwKpVg4RKL/qP67H4A
 aWQWSC/NEBuaF+n3HJpVId7IUNk5SNbIIWAiK536jtSXPUDL9xZ/fsvou1Vca9U9eA7C
 pmQ8KnnGZzJlsF+JWERMP6k2U+vNgSWJ6Xgtc3ocPCh+U6OkY+ewDj6XeDJ8v0z4TVzm
 C87Q==
X-Gm-Message-State: APjAAAV0T7EFKWl6vwRPTvutbEn1r8hk7/8uyx2B/BJKQZR1+4cl2N5h
 e+N5kVW1m9zI+5fpYVRAwpI=
X-Google-Smtp-Source: APXvYqzwCJtp598wAta+v/62Na2U+YrKr83lBOY4U7NpO1IMs4pca+q/sbJD7TX3YE6HCWEE2kdsCg==
X-Received: by 2002:adf:fc10:: with SMTP id i16mr14783375wrr.157.1572705928288; 
 Sat, 02 Nov 2019 07:45:28 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id y16sm1366647wro.25.2019.11.02.07.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:27 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/8] memory: tegra: Changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:16 +0100
Message-Id: <20191102144521.3863321-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074529_637902_FF42C802 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-memory

for you to fetch changes up to 8b04225c4464422f185e62c2cedfb9e234423814:

  memory: tegra: Consolidate registers definition into common header (2019-11-01 10:57:37 +0100)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Changes for v5.5-rc1

This contains a couple of fixes and adds support for EMC frequency
scaling on Tegra30.

----------------------------------------------------------------
Dmitry Osipenko (11):
      clk: tegra: Add Tegra20/30 EMC clock implementation
      memory: tegra: Don't set EMC rate to maximum on probe for Tegra20
      memory: tegra: Adapt for Tegra20 clock driver changes
      memory: tegra: Include io.h instead of iopoll.h
      memory: tegra: Pre-configure debug register on Tegra20
      memory: tegra: Print a brief info message about EMC timings
      memory: tegra: Increase handshake timeout on Tegra20
      memory: tegra: Do not handle error from wait_for_completion_timeout()
      memory: tegra: Introduce Tegra30 EMC driver
      memory: tegra: Ensure timing control debug features are disabled
      memory: tegra: Consolidate registers definition into common header

Sowjanya Komatineni (1):
      clk: Add API to get index of the clock parent

Thierry Reding (3):
      Merge branch 'for-5.5/clk'
      memory: tegra: Set DMA mask based on supported address bits
      memory: tegra: Add gr2d and gr3d to DRM IOMMU group

 drivers/clk/clk.c                   |   17 +
 drivers/clk/tegra/Makefile          |    2 +
 drivers/clk/tegra/clk-tegra20-emc.c |  293 +++++++++
 drivers/clk/tegra/clk-tegra20.c     |   55 +-
 drivers/clk/tegra/clk-tegra30.c     |   38 +-
 drivers/clk/tegra/clk.h             |    3 +
 drivers/memory/tegra/Kconfig        |   10 +
 drivers/memory/tegra/Makefile       |    1 +
 drivers/memory/tegra/mc.c           |   52 +-
 drivers/memory/tegra/mc.h           |   74 ++-
 drivers/memory/tegra/tegra114.c     |   10 +-
 drivers/memory/tegra/tegra124.c     |   30 +-
 drivers/memory/tegra/tegra20-emc.c  |  134 ++--
 drivers/memory/tegra/tegra30-emc.c  | 1232 +++++++++++++++++++++++++++++++++++
 drivers/memory/tegra/tegra30.c      |   34 +-
 include/linux/clk-provider.h        |    1 +
 include/linux/clk/tegra.h           |   11 +
 include/soc/tegra/mc.h              |    2 +-
 18 files changed, 1797 insertions(+), 202 deletions(-)
 create mode 100644 drivers/clk/tegra/clk-tegra20-emc.c
 create mode 100644 drivers/memory/tegra/tegra30-emc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
