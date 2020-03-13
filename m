Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BCF184D29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyzSP+Au7RTTja9L5VU7dpx0ctDWyw0tr0SflJ8vexw=; b=WrSxImP8zj0N41
	+YvDoT3M47E+BxK2eif2lHFg3un5tTY74qX3euof2r+WL3pL78aimhEN/rYKVNjjA4MQdJtvVMcqY
	qu1wjgXts7PkU3jQiEJNjp3E/NoHhgOEAtquWfezR52oM6muxReHQLtu2qQqzoAN0DapZrH0sBoRL
	BHvyP+y2fdt9cHIPj/d17VCthfSQq2ow2om/64o68GUOwSCVra4FhVhJws8QJVd7HzUxfjOAUNGQx
	Iiiq8wGnXttIs6IGBciaqZ0b1DN8WsoENiSTY3XGuaqbidGlP9cErPOk886O345rGIasOEIMUzjh4
	17P06LnKkfQ4Lk0WlRVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCngc-00036X-0T; Fri, 13 Mar 2020 17:01:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneS-0008SQ-J1
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id l18so12961176wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jvqohnMij0I2CBTDF5YLXeAgLpbv445ozkjXuVEGaTQ=;
 b=fw4nUGDdM7Jea/euj+WFkdeMcd478PgA6JePiH8KX8hdXt1AtKCGlBAy2D+dcjlt1D
 kl1/ZbnB8xDoLggyDGOzeqEZ/M2Xl7LZuqL8GyW6YDz/GhM1UnbkspSPvv09h5ZC5Boe
 nMt9kVz9H/ioWrcB2rPou+7T5z4BncrxktYpx+YJq2kLYJ7G1d28g2/+/EOxGk/MDMe/
 FsfJVgCwjP8ljRQiwTRLp5iuOFyqC/UmraUKrOvQDEL/R20BG8CFQ9sCekSv4ex5k/9Y
 ExGCHJmrhQjYI/1URjJFvv3TveQ3Yhq3SVV8Skpn4tdassaBFmcdSOnw5ygm9i6LJaQt
 X1Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jvqohnMij0I2CBTDF5YLXeAgLpbv445ozkjXuVEGaTQ=;
 b=EKf3FDzHM+vQ+dhYmSssxRDtyOoKWB53sW7fwZqa5BigxgObpGFhfYSe9+f7aWljFl
 m34ANFFopTFDa1VfwiB33Ve+4UEDlmotBKNzH81owRKcBVzMI78GiLqVRxWnpxGnGfhw
 kE1GRfybtF0jmkPkoZ+xahtEhiDXVtgO7DmRjC/VnN7RlNV7EC4pBihGqe9mr3lQlZRQ
 6cwf/26ntf2lanjHvhA32FGvMzwx1Pl141kQPTVNXsA5+yLHuWoSd8HGlwwHacyfGDo8
 dsnNqV7BN74D7d7NCWj9gYBScaTdQzYcSLmMMZYmB0JPxnL24zdHp7hkwRmnWqPyQNZc
 59eg==
X-Gm-Message-State: ANhLgQ10jfg80QUpBk1ijUwvR7bJjEeSmDMlByyN7FKQ7bPl+P3y1udR
 aR0CTYzDUe8p3ARAXPrt4zAGHQep
X-Google-Smtp-Source: ADFU+vtLcomxxRNE6ZfG88AZ1ylBxIg3ZrOocA9bP65sr7EsMPJksN7bDWkcyZzoKlyFARffhYOE0Q==
X-Received: by 2002:adf:ef44:: with SMTP id c4mr18318790wrp.404.1584118750894; 
 Fri, 13 Mar 2020 09:59:10 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id t124sm18104873wmg.13.2020.03.13.09.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:10 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 09/10] cpuidle: tegra: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:47 +0100
Message-Id: <20200313165848.2915133-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095912_852891_4158B350 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-cpuidle

for you to fetch changes up to 382ac8e22b90e6334d373da03c17b319458b258e:

  cpuidle: tegra: Disable CC6 state if LP2 unavailable (2020-03-13 11:32:01 +0100)

This set of changes was acked by Daniel Lezcano and the preference is to
take this through the ARM SoC tree because it has a dependency on one of
the other branches (tegra-for-5.7-arm-core) that also goes through the
ARM SoC tree.

Thanks,
Thierry

----------------------------------------------------------------
cpuidle: tegra: Changes for v5.7-rc1

These changes unify CPU idle support for Tegra20, Tegra30 and Tegra114.

----------------------------------------------------------------
Dmitry Osipenko (15):
      ARM: tegra: Compile sleep-tegra20/30.S unconditionally
      ARM: tegra: Add tegra_pm_park_secondary_cpu()
      ARM: tegra: Remove pen-locking from cpuidle-tegra20
      ARM: tegra: Change tegra_set_cpu_in_lp2() type to void
      ARM: tegra: Propagate error from tegra_idle_lp2_last()
      ARM: tegra: Expose PM functions required for new cpuidle driver
      ARM: tegra: Rename some of the newly exposed PM functions
      ARM: tegra: Make outer_disable() open-coded
      ARM: tegra: cpuidle: Handle case where secondary CPU hangs on entering LP2
      ARM: tegra: cpuidle: Make abort_flag atomic
      ARM: tegra: cpuidle: Remove unnecessary memory barrier
      cpuidle: Refactor and move out NVIDIA Tegra20 driver into drivers/cpuidle
      cpuidle: tegra: Squash Tegra30 driver into the common driver
      cpuidle: tegra: Squash Tegra114 driver into the common driver
      cpuidle: tegra: Disable CC6 state if LP2 unavailable

Thierry Reding (1):
      Merge branch 'for-5.7/arm/core' into for-5.7/cpuidle

 arch/arm/mach-tegra/Makefile                     |  19 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c           |  89 -----
 arch/arm/mach-tegra/cpuidle-tegra20.c            | 212 ------------
 arch/arm/mach-tegra/cpuidle-tegra30.c            | 132 --------
 arch/arm/mach-tegra/cpuidle.c                    |  50 ---
 arch/arm/mach-tegra/cpuidle.h                    |  21 --
 arch/arm/mach-tegra/irq.c                        |   3 +-
 arch/arm/mach-tegra/pm.c                         |  54 ++--
 arch/arm/mach-tegra/pm.h                         |   4 -
 arch/arm/mach-tegra/reset-handler.S              |  11 -
 arch/arm/mach-tegra/reset.h                      |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S              | 170 ----------
 arch/arm/mach-tegra/sleep-tegra30.S              |   6 +-
 arch/arm/mach-tegra/sleep.h                      |  15 -
 arch/arm/mach-tegra/tegra.c                      |   7 +-
 drivers/cpuidle/Kconfig.arm                      |   8 +
 drivers/cpuidle/Makefile                         |   1 +
 drivers/cpuidle/cpuidle-tegra.c                  | 392 +++++++++++++++++++++++
 include/soc/tegra/cpuidle.h                      |   2 +-
 {arch/arm/mach-tegra => include/soc/tegra}/irq.h |   8 +-
 include/soc/tegra/pm.h                           |  31 ++
 21 files changed, 483 insertions(+), 761 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra114.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra20.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra30.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.h
 create mode 100644 drivers/cpuidle/cpuidle-tegra.c
 rename {arch/arm/mach-tegra => include/soc/tegra}/irq.h (59%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
