Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41892F7695
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:39:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNiCNHiEHjzGhng/lRjtD8vWhs1gV/pkxMP3c4e5E2k=; b=qXTLITUFnfC9GP
	VJrcPB7BR74HVGTJkVJFK80nb5htX6iFDhEfmdGAEvsDjO9/EAcjPSZfqNgkORfoFxzMj82UnJ8u+
	Bd14aqJwaFVvP2tkb2QkH/ccQusZnSzYfvzWugVY0N16r9fu7IcZ6UlWqn9Li6w+5VZr5jWnG13bp
	Sq3HmUSJJmnFVvBQM+Jf6MnNEZaZZXFQFalHBRWhp98AGMj+71Ou/SeFmUyu4vOPOmlzbjAzYH+Db
	jq6gsOhRc68rqfaNWcXJKc4Ihlk5M0FDB98LdKczbrchNf9alD/hCtO/DGPBUUwrxNxq2s1y2s5rt
	X1Hq8Nt3Oxw7LdlTlRtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAqD-0008EU-4f; Mon, 11 Nov 2019 14:38:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAq0-0008Db-Vd
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:38:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id l7so3320811wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KdKS5nQgloGgR5hKS/9aF3v1RXwuBZu05wTCxgCw21A=;
 b=qDvfYWYnoKzB5oxYuBjtx6IjWb7zOjzkJJbCLW5gCzQ09UK4EsJlUUKrG2eQyMzvxs
 TTAxr+nMMw9Fgfch8JWcfkgyJa082CWBBWNgjcbW2KHkNekZD6tARZ04iNwiJLEX5vAz
 BoOVFbDk4e60WexgUJqHzDPqUHuqg5MEPIejpHPxpPeapEQfx944sVC81s1/muzwr6cp
 OISAzJJ/Koo62J6gYNx2YGMH/RG3qZLfN/tomb+BeIwokFipy4iMaJbX7s56usvLLhoj
 Y69/gXYfCWygWts94KIztyE5MZs+z50qX/dJbIVORFR9QjF+zCdaycuwRn6XHHN0OmW+
 PFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KdKS5nQgloGgR5hKS/9aF3v1RXwuBZu05wTCxgCw21A=;
 b=YefX7ZHP9EuWmgsFBol2aeStJ8M6K6xG2VV2QwRHtaXmfDwAbn/1pXK+taSvVrfYOg
 1+ToaebVDxo0aSGvSBarYO2p/f6FfzBr3ZTXlE88/E2BM9Brd8+pjFWh1bKF5jgFMAuJ
 2du0v3oFnOfnxfCJZbCpOe637MEbdzFTd09B1vI4d3DKa5nSXkUNn7qiKzBRszOLWEzM
 mgi0v9CfhzXlxa4hELNtQNf9wJi+JtQHOSx4owmNTfbfME+U7eeM/7uxrRYPwtlal2CV
 ku07EteyvjANp4+YBYv/MMLEks/iHpaUFNZuJeJR0y8Tcfhcw2z8VoEuD3pQ/KCN9ofx
 kxyg==
X-Gm-Message-State: APjAAAVoa0nTfhr3Vv4QG+h/8rNzeKs7Rq0gb9gDE5cPkzzOIFZ5RFnB
 m61IYR1kQb37NxAwKPNAJic=
X-Google-Smtp-Source: APXvYqxWUQDGc4T8bsgFxDf9/WvrPBbK2l4Rdn+Tc8Zrm9TYJXoiuG7/CU42I9qEaAfWSq8bE2L6OQ==
X-Received: by 2002:adf:fd91:: with SMTP id d17mr20770388wrr.214.1573483118704; 
 Mon, 11 Nov 2019 06:38:38 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id x205sm24164485wmb.5.2019.11.11.06.38.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 06:38:37 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL v2 3/8] memory: tegra: Changes for v5.5-rc1
Date: Mon, 11 Nov 2019 15:38:36 +0100
Message-Id: <20191111143836.4027200-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-3-thierry.reding@gmail.com>
References: <20191102144521.3863321-3-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063841_014283_86C8F1E1 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-memory-v2

for you to fetch changes up to 141bef44e123c101c0da0443ab6b3cfa750f251a:

  memory: tegra: Consolidate registers definition into common header (2019-11-11 14:55:27 +0100)

This is an updated pull request which now no longer pulls in the core
common clock framework change because it's not required by any of the
code in this pull request.

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

Thierry Reding (3):
      Merge branch 'for-5.5/clk' into for-5.5/memory
      memory: tegra: Set DMA mask based on supported address bits
      memory: tegra: Add gr2d and gr3d to DRM IOMMU group

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
 include/linux/clk/tegra.h           |   11 +
 include/soc/tegra/mc.h              |    2 +-
 16 files changed, 1779 insertions(+), 202 deletions(-)
 create mode 100644 drivers/clk/tegra/clk-tegra20-emc.c
 create mode 100644 drivers/memory/tegra/tegra30-emc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
