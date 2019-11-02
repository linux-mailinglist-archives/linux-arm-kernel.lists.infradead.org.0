Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBE2ECF4C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlIh6/yPgczVhUiMer35qHSL0FY2oXxkydbJ5GvOeGE=; b=B7g9QLDrNFJmrL
	IV+w+Cv8LIRje5u2TV8gq0vabCPJMZJY31PtP5cMsMCWUJVbMteQtdgNzcQw2GhLReVQiNtKkxu9Z
	GRzwM3RSL4OtNG9D9DoxGW2ObE6ZyiH4PyoxiaSL0vAY3w9bnKEW0aDMpkX3Dmo/eXxgzUbUQmaQX
	pRmT1aN7NIJrY/vVY9yq681g0/5rd2e5MhOUFqhPQ5tqsbIwbS0nRuxZhOqPElDd3meLs3vHQCMkX
	83Xhm5XQXa7dHXqpEBlcNeKHQ6z5NZ39qnT87lV1e2GDG+Mg+S+GRjGl9/0Qg8VIBWvdgE//mADR8
	1AifFxjo/cYk1EU6ELUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQugA-0000mj-05; Sat, 02 Nov 2019 14:47:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQueo-0007wp-Pc
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id f2so3549251wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GTGCNNiwKlBZVXsP21r2PDJNhcrsvyHQEwunsy6fCNY=;
 b=rcWEGveY6X709tbXwN6s8SvMz7ml0y6EsmqVmxGvSRPQ8hfntrn9VUEvJLHdtQDWxk
 coLNwUc8KZXOI47qMn9wY8dfENBn0a0eP4kp4n5y1kJxnVO8lIBojpOEd9mN7yKtLp7i
 pyJY3deugA+ttt9dBn61tHtPE61yS/9Rou5TNlRy4FxwjG+P0/8DwzcpJSfUR6ZfPKmv
 al3SV/T8k6LJc7dX3RGDu6QVsq9Clj6sfWFfHz1oB7/uDGFEzyvQNASqdEXCdLO1D4Vt
 qNyR7HKPc4MncuPa9EpWORwhxL/ldISBCvcYfzou6oLF753jVk3UHxTHn1A5DSnNSzMa
 RhTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GTGCNNiwKlBZVXsP21r2PDJNhcrsvyHQEwunsy6fCNY=;
 b=t1EUB702j5FYJEtDxWIXLIr1AO0t2AfhAOujuXslTqrCMjGYeQ+j7VuIZ5zZ7UpokK
 g2nncixIAEFBqoZE2ggKfpXM7hYFsSoaE+1ocRzDsiAkIZyzleTYoxPXpt78yjqkLzU1
 nJpOr02JHoO/rGDmtImEhW+4NQsP0gmbRWj2Ecbt5NrxprXGgcnRXKrdTBOyrg5KFDMS
 UXFSiBORpF946afMMZbNAqaR0RNt9v4IIPCPZaOFzr11qovct7dKb5Hl+Pq0MyE/yJcI
 d7xoNO5KvbxUyRWjC4BO1xr5EnBnSmc1UYDIhiYXj71wDK+R5qR8Xc9JaywW1DIqFatb
 N+yw==
X-Gm-Message-State: APjAAAW1k4cgKWTrlOsXp3mI2Ht39a8Km8pvkXzP9YPCC4PdQyKAzu6C
 IvVNrMZYJ+iBMaAQaVsfe3Y=
X-Google-Smtp-Source: APXvYqy+xYvA/2HeaYAIKYtmDkGGWTh5MMXnEgwk/5eFijrAmPS+e9HTtim0QbkJme1uOSomo+YgFg==
X-Received: by 2002:a5d:4982:: with SMTP id r2mr9656465wrq.254.1572705934336; 
 Sat, 02 Nov 2019 07:45:34 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id o81sm2119190wmb.38.2019.11.02.07.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:33 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 6/8] ARM: tegra: Device tree changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:19 +0100
Message-Id: <20191102144521.3863321-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074538_849897_1BF5FE69 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-arm-dt

for you to fetch changes up to 4053aa65c517fba954af05e826bb97b2eaefe92a:

  ARM: tegra: cardhu-a04: Add CPU Operating Performance Points (2019-10-29 20:29:17 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Device tree changes for v5.5-rc1

Adds support for CPU frequency scaling on Tegra20 and Tegra30, EMC
frequency scaling on Tegra30, SMMU support for VDE on Tegra30, the
STMPE ADC found on Toradex T30 modules as well as fixes for eDP
support on Venice2.

----------------------------------------------------------------
Dmitry Osipenko (12):
      ARM: tegra: Connect SMMU with Video Decoder Engine on Tegra30
      ARM: tegra: nyan-big: Add timings for RAM codes 4 and 6
      ARM: tegra: Add External Memory Controller node on Tegra30
      ARM: tegra: Add Tegra20 CPU clock
      ARM: tegra: Add Tegra30 CPU clock
      ARM: tegra: Add CPU Operating Performance Points for Tegra20
      ARM: tegra: Add CPU Operating Performance Points for Tegra30
      ARM: tegra: paz00: Set up voltage regulators for DVFS
      ARM: tegra: paz00: Add CPU Operating Performance Points
      ARM: tegra: trimslice: Add CPU Operating Performance Points
      ARM: tegra: cardhu-a04: Set up voltage regulators for DVFS
      ARM: tegra: cardhu-a04: Add CPU Operating Performance Points

Philippe Schenker (1):
      ARM: tegra: Add stmpe-adc DT node to Toradex T30 modules

Thierry Reding (4):
      dt-bindings: clock: tegra: Rename SOR0_LVDS to SOR0_OUT
      Merge branch 'for-5.5/dt-bindings'
      ARM: tegra: Add SOR0_OUT clock on Tegra124
      ARM: tegra: Add eDP power supplies on Venice2

 arch/arm/boot/dts/tegra124-nyan-big-emc.dtsi     | 7869 +++++++++++++++++-----
 arch/arm/boot/dts/tegra124-venice2.dts           |    3 +
 arch/arm/boot/dts/tegra124.dtsi                  |    3 +-
 arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi |  201 +
 arch/arm/boot/dts/tegra20-cpu-opp.dtsi           |  302 +
 arch/arm/boot/dts/tegra20-paz00.dts              |   41 +-
 arch/arm/boot/dts/tegra20-trimslice.dts          |   11 +
 arch/arm/boot/dts/tegra20.dtsi                   |    2 +
 arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi       |   22 +-
 arch/arm/boot/dts/tegra30-apalis.dtsi            |   22 +-
 arch/arm/boot/dts/tegra30-cardhu-a04.dts         |   48 +
 arch/arm/boot/dts/tegra30-colibri.dtsi           |   22 +-
 arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi |  801 +++
 arch/arm/boot/dts/tegra30-cpu-opp.dtsi           | 1202 ++++
 arch/arm/boot/dts/tegra30.dtsi                   |   14 +
 include/dt-bindings/clock/tegra124-car-common.h  |    3 +-
 include/dt-bindings/clock/tegra210-car.h         |    3 +-
 17 files changed, 8914 insertions(+), 1655 deletions(-)
 create mode 100644 arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi
 create mode 100644 arch/arm/boot/dts/tegra20-cpu-opp.dtsi
 create mode 100644 arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi
 create mode 100644 arch/arm/boot/dts/tegra30-cpu-opp.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
