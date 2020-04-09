Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D41A3959
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GFcL/cSWWc1EldNuGyJ8x6Fn+2E9DlMN+4NStgEIayU=; b=tPNBE8Bo8vSfjx
	V3oTIsLavwIawuMZIGkQXJ+y5gMtdn8/l9ZHUrbzkzkPRmIg/JwFTTiVGeLyppuFHmwCPkOe5xzKv
	f2MGbjuN9hsQFSOmxwj+InqARqdn1GaO3Bpma+8GyLuruVe066YrBBa9dXjcQB+bT9YjkMzcUCvIg
	bZ3haKqBa01lTzY2y79bZgmwnwY61H4ApZcLpEUBdZRC1aLXGV59ssmcItoo6WtIYzPtTLHEZ/jWa
	3yvPc3r0k/2/A9CgEoqnocGsL73oc2/luIRUv9Timdzmi1zmW8z6OoKB552ZsTTfKUW0YT+KZLSKu
	2yo/+F1xQYTEpTw0at4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbMf-0005zc-Al; Thu, 09 Apr 2020 17:53:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbM7-0005oL-Bv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so633592wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a+Mi6KDkPWzdlDV0g49k1I6RXnFF1LUw8bky5xoGFzI=;
 b=lh/5Onvo8Sxk7LUxcskXMpZ3z3znzprt8Iccxu5eJ5pLPW/pywKpoDqig28WLUBWAE
 Z7gCtoU0p+f9OptjXJEuCXfmrwzP0YVN4WeIdNAn1ph0B9dHn/AcpOsC8NEe9lV0u7cY
 7v6P7+csUEcXsaiBN8tj6epzuxBEFJseR/ZewMeOZrNZ7POHeV8FGbU3j9DJZ4uJPMI6
 s73wvX9EhRUkhepBvFxde4lHjV8fBHAwFN5JKDW1t8rDOC8lTLMALLCQSKCOG0N3gvLp
 0MjWOOwjYIMWdBqGfMilV/jVnzh7JyGnsVd6UAgtKFhDRwCUhZXcdcFego3mfSgSKCGm
 63hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a+Mi6KDkPWzdlDV0g49k1I6RXnFF1LUw8bky5xoGFzI=;
 b=qT5LS0Al7/2Ozv2tXFceEPUAN8Kqr3f6xDPkWvmn4Euqap94HULbF3tV/vc03dTLyF
 WeJBoYU0HYL0ANnPahHKrk60epa5mYfMWtQ+EvIJ0bqvSTGMnxIw+bMSaKBY50ILqKRo
 dM+V8XowDrrj2IOGZV2msFxHoaDcXAk4xO8PIr9fFFF8vKbTPuKqK68GMYkhLnbz90JO
 eIxr5oASxa3mrF6LPdOpbSfKsON2RzNZHw2VhCR6jsdH7+brWQ+30iVs814RkzcsAB+6
 /yEB/SYryNG2vXGdtr8OyEHw0bKRJoaZQmvyi0S8cT63PsUHx5Q7dj24gLXA1ioloVuY
 mCrg==
X-Gm-Message-State: AGi0PuY5O0ouZkxwOSLr9JG+zukW/h46avmAKyJzkpDowP6uqEHRTDeR
 0ejw2MdW1XE77yDpI4IVCn0=
X-Google-Smtp-Source: APiQypIwQYedhkD4ikYzon3PH8hdI8DOqzbEo6/+G/j0PB9M4GgoOca6zYcnr6G9RspgrJHZzCDV4g==
X-Received: by 2002:a1c:9658:: with SMTP id y85mr975665wmd.63.1586454764586;
 Thu, 09 Apr 2020 10:52:44 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id k23sm3956675wmi.46.2020.04.09.10.52.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:43 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 00/14] Add EMC scaling support for Tegra210
Date: Thu,  9 Apr 2020 19:52:24 +0200
Message-Id: <20200409175238.3586487-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105249_143812_8234347E 
X-CRM114-Status: GOOD (  14.64  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

This series introduces the EMC clock scaling support for Tegra210. The
EMC table of supported frequencies is passed to the kernel via a device
tree reserved memory region.

Joseph posted the v4 of this series[0] about a year ago. I've dusted it
off a bit and tried to address all of the comments that Dmitry had made
in response to v4.

Changes in v6:
- add support for derated tables which are used under high temperatures
- add patches to support memory-region-names property in DT
- address review comments

Changes in v5:
- major rework to split this into a clk driver and an EMC driver
- refactored some code to remove duplication and improve readability
- removed some unused code and variables

Thierry

[0]: https://lore.kernel.org/linux-arm-kernel/20190529082139.5581-1-josephl@nvidia.com/

Joseph Lo (8):
  clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
  clk: tegra: Export functions for EMC clock scaling
  clk: tegra: Implement Tegra210 EMC clock
  dt-bindings: memory: tegra: Add external memory controller binding for
    Tegra210
  memory: tegra: Add EMC scaling support code for Tegra210
  memory: tegra: Add EMC scaling sequence code for Tegra210
  arm64: tegra: Add external memory controller node for Tegra210
  clk: tegra: Remove the old emc_mux clock for Tegra210

Thierry Reding (6):
  dt-bindings: reserved-memory: Introduce memory-region-names
  of: reserved-memory: Support lookup of regions by name
  of: reserved-memory: Support multiple regions per device
  clk: tegra: Rename Tegra124 EMC clock source file
  memory: tegra: Support derated timings on Tegra210
  arm64: tegra: Hook up EMC cooling device

 .../nvidia,tegra210-emc.yaml                  |   82 +
 .../reserved-memory/reserved-memory.txt       |    2 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi      |   37 +-
 drivers/clk/tegra/Makefile                    |    3 +-
 .../tegra/{clk-emc.c => clk-tegra124-emc.c}   |    0
 drivers/clk/tegra/clk-tegra210-emc.c          |  369 +++
 drivers/clk/tegra/clk-tegra210.c              |   87 +-
 drivers/clk/tegra/clk.h                       |    3 +
 drivers/memory/tegra/Kconfig                  |   14 +
 drivers/memory/tegra/Makefile                 |    4 +
 drivers/memory/tegra/mc.h                     |    1 +
 drivers/memory/tegra/tegra210-emc-cc-r21021.c | 1744 ++++++++++++++
 drivers/memory/tegra/tegra210-emc-core.c      | 2099 +++++++++++++++++
 drivers/memory/tegra/tegra210-emc-table.c     |   94 +
 drivers/memory/tegra/tegra210-emc.h           | 1023 ++++++++
 drivers/memory/tegra/tegra210-mc.h            |   49 +
 drivers/of/of_reserved_mem.c                  |   41 +-
 include/dt-bindings/clock/tegra210-car.h      |    4 +-
 include/linux/clk/tegra.h                     |   27 +
 include/linux/of_reserved_mem.h               |   11 +
 20 files changed, 5656 insertions(+), 38 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
 rename drivers/clk/tegra/{clk-emc.c => clk-tegra124-emc.c} (100%)
 create mode 100644 drivers/clk/tegra/clk-tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-cc-r21021.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-core.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-table.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h
 create mode 100644 drivers/memory/tegra/tegra210-mc.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
