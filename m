Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1FA18019F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qqb9kLdb0eiDJvLHakVSOhn1BnRFHDqTSNNlUJPFxp4=; b=S1c5w9DTvxguX0
	xuK2GfjqBIF5omrueCJUu86eA/iTnVP2En+9ZvDX98jVHqtxuayOP57V1U3l/r7wvTcqK+zORUmZR
	/OCYTGhPCR8/a9evBr/9Tu8zGz7oVisad/thVZJBl6yNVNfJUH233fjy6BbnMnb7T1gKJcIjzZQMZ
	MGQSnSclOBvN/ulZVW+H5v80TiRE+HSngoeCmXOlx13PLGzTac5KgPqMkmLNjrHK6xRKPf2kmMMUi
	rhhqM7sf0/VGX3nsQsq5HwkQTzkamxCG0mSEnX3WVBoZzlknpdbu5C6i05X00hAvlXCnjRsBLjviO
	/i6EtqBLIWHbsBy4aT2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBggY-0002Kn-1w; Tue, 10 Mar 2020 15:20:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgg2-0001DL-1t
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so16423865wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4n2mLbjo7aNwrYZdMSacX3rbOo2B1BidTBnQhKnQzMY=;
 b=hGnPcZLOVtBzDoE+WzzkasurCg1KMifhIB0cT0mfVWjDCpDX37pU6cHYixT/kBuRTW
 fj6ky1PozzwITKbkfZ6PikNwIt4+o7or4KXFv12jpwRMCYEU+Rk7tumvdMru+48LdhMp
 Zv8gx9tWF1Iu+GXHXivdfwRfabg6g256vFiqg+eSdbXYyZzcFqx5oGuZ2c4zUVeAsgsu
 lmhqJreT86cmN+Z/7BHBX0qyblFrDsGz6fgT3gmdaGzcTGpsa2Oaz5MJpROeEVuNH9sb
 T4JlORBEr3VUhy/P+aDDL9LZAgiFyS3I2UFfsVXXTMseOv98jGqcpdViLVopkUGKSGF3
 KfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4n2mLbjo7aNwrYZdMSacX3rbOo2B1BidTBnQhKnQzMY=;
 b=UH1SU/80eMkoBqdUm89JNCq/SKlJ6k83XKlMUjSfYHAzTCgpfzczy7HnYal7gYzKny
 O98/XFpnYyOxvPxxFHEGGfyKN2b7R5uEfBIXoxdWqxM09Jus58d3zZbnIedT6w3Bgepp
 VHPtdZeDlhOG+oW+Jp5SVqCHLJsu8dZeGO78tI+1soDhqopynxp5P/2rEK/0eh7xG7Dd
 zUiUAG38Bvnt2t6nrOvCXqqvce4rqRyHi6XTAx/H0uDcT/OnR3vWQlZ4OeSIuBhKvoZ0
 IW6H0ke7BJXKBVztxz50Xm65OlMRY2s+Xj08rF5LzgvbEJZW/ZGiy9Rie+IvuaDOg8sy
 nvhw==
X-Gm-Message-State: ANhLgQ2GZcXkZMkRvbn2VIdOcXkh9o4Peh+iBvgshkaGja5vZtdoUFiq
 FEwxsNzHDZmqUXftjWY5F98=
X-Google-Smtp-Source: ADFU+vtdcepOM3l2BB9d90s/i+qW7uZK5sCMgjr8svNQswMlI4uZgM5Yxn7HJr/DclKr1TyOG7ycGA==
X-Received: by 2002:adf:e98c:: with SMTP id h12mr11964222wrm.345.1583853611077; 
 Tue, 10 Mar 2020 08:20:11 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id d63sm4416772wmd.44.2020.03.10.08.20.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:09 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 0/8] Add EMC scaling support for Tegra210
Date: Tue, 10 Mar 2020 16:19:55 +0100
Message-Id: <20200310152003.2945170-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082014_173784_E0F4498E 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
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

Changes in v4:
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

 .../nvidia,tegra210-emc.yaml                  |   83 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi      |   11 +
 drivers/clk/tegra/Makefile                    |    1 +
 drivers/clk/tegra/clk-tegra210-emc.c          |  352 ++++
 drivers/clk/tegra/clk-tegra210.c              |   83 +-
 drivers/clk/tegra/clk.h                       |    3 +
 drivers/memory/tegra/Kconfig                  |   10 +
 drivers/memory/tegra/Makefile                 |    1 +
 drivers/memory/tegra/tegra210-emc-cc-r21021.c | 1782 ++++++++++++++++
 drivers/memory/tegra/tegra210-emc.c           | 1800 +++++++++++++++++
 drivers/memory/tegra/tegra210-emc.h           | 1065 ++++++++++
 include/dt-bindings/clock/tegra210-car.h      |    4 +-
 include/linux/clk/tegra.h                     |   26 +
 13 files changed, 5202 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.yaml
 create mode 100644 drivers/clk/tegra/clk-tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc-cc-r21021.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
