Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DC9148C22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fF+pbT/gQny+S9wpYnti823MSNfgZOakqiPC7Fy/qx4=; b=U54
	Ube+zlR+RkExCKcvAW9tOx/txA5X9SwCIPn7N3PbwI+9cek+PDUF8WxJJNQRlJsh0xA0OTxauAhR2
	RbXazZhhZdMTWQlgHFTnsvRK6d/r4MOW1ua6Yaf+dWhGB6+2nsuTg8U2dzIMgEFnlRL8uve4vTx5C
	8KRjaauTjxOxSkUIXZ6GHjCCxboVI/qOt1lMCFN2zJBx8hu5zqfOFDuYq1SXn4m3zr+css3AaYx8o
	7jKqiAtPusZz26yrdTa//vJ/b7mGQq4CV4MZ0E4uja/sC1D+FfSSH3FNE/v/GCGHQ0fiVgmUbBBaC
	MLdItjImCeWxtxzID16sEh4sr4wyVDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1rD-0002l5-Ts; Fri, 24 Jan 2020 16:30:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qV-0002SN-O0; Fri, 24 Jan 2020 16:30:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so2714155wrh.5;
 Fri, 24 Jan 2020 08:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RGn2IHBa7rMucV+pLzAZrr7Jhhs9oxLFIRG0ooqfrjs=;
 b=Ls5PpEstrt36pHLjCEV2vP/HZpfjm57O0FCJC3IhuSDlKJKzSXM8caQY1CVM34FgYw
 0xDeKYV83in6cpD4ENdBgku7ptoOoeFRMu/CdmMIejkOGP6XdUfK4TSofnNSccd3mWEC
 nNTtQqaCzMOOzYTmdr6kRnAQPeEAiLVeHkrKzVZTBPOwNasD53e46udhJnukKMfV46qC
 0q9opsuFTvHaCZs8tVK/LAtGmdGaaGG2tfrnohaCh6cxx4ukpSbFaBJbJxjDrH5S6/3G
 hYe3E2YNd41g93v3jh90Mt9ljqWZhTuyDXH40ehB+TgPCjLyRk/gg4DL1E3a5ILTfS0F
 a4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RGn2IHBa7rMucV+pLzAZrr7Jhhs9oxLFIRG0ooqfrjs=;
 b=C9c5cnHiLRB3+q0iIWnN2U8XCOFKlgcU+MzppxL7XYY4vPtRvWgpM+Q8eh63Wf2xx6
 E7LN2pS2RUQdMN6D4s/zXsvsKfc80V59dAzjC7iwcN5apPTymDgX5dfTW43uM16KluMD
 gnpuKEL2X07/j4yViBpJezN/A0lV9cjdYOUMmyKbL1RRa3ZEsZyc8ucK55o0YM6cWGDY
 kIM/AaHnbhDqvTmWI6XssCUZR4uP4vTICdiXglPAf5U0fq0eoxF7MAm6ATfA69iXbaG/
 sjg96v/h9AVobKGCRpgFYZigLuHIKXSOs42xCl2KPmjheKr6Y420Gxs/l4ksi/8boggI
 dpPA==
X-Gm-Message-State: APjAAAVzuSW1l1xUqP3eaqr36PhXJ+Z5Q2ijAUseBS+oA18leMH5MWKU
 q6zuVe5Wt33W4kO9oWBJcLk=
X-Google-Smtp-Source: APXvYqwsBI+cQKo69TQfsz129ei/c2ChSkpdFG2WKm1fnCKWQHtNxYTlbuvgO/xMgCdNnHpQDw/J0Q==
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr5466569wrx.178.1579883409872; 
 Fri, 24 Jan 2020 08:30:09 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:09 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 00/10] Enable RK3066 NANDC for MK808
Date: Fri, 24 Jan 2020 17:29:51 +0100
Message-Id: <20200124163001.28910-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083011_792265_C0FFC3AF 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DISCLAIMER: Use at your own risk.
Status: For testing only!

Version: V2

Title: Enable RK3066 NANDC for MK808.

The majority of Rockchip devices use a closed source FTL driver
to reduce wear leveling. This patch serie proposes
an experimental raw NAND controller driver for basic tasks
in order to get the bindings and the nodes accepted for in the dts files.

What does it do:

On module load this driver will reserve its resources.
After initialization the MTD framework will then try to detect
the type and number of NAND chips. When all conditions are met,
it registers it self as MTD device.
This driver is then ready to receive user commands
such as to read and write NAND pages.

Test examples:

# dd if=/dev/mtd0 of=dd.bin bs=8192 count=4

# nanddump -a -l 32768 -f nanddump.bin /dev/mtd0

Not tested:

NANDC version 9.
NAND raw write.
RK3066 still has no support for Uboot.
Any write command would interfere with data structures made by the boot loader.

Etc.

Problems:

No bad block support. Most devices use a FTL bad block map with tags
that must be located on specific page locations which is outside
the scope of the raw MTD framework.

hynix_nand_init() add extra option NAND_BBM_LASTPAGE for H27UCG8T2ATR-BC.

No partition support. A FTL driver will store at random locations and
a linear user specific layout does not fit within
the generic character of this basic driver.

Driver assumes that IO pins are correctly set by the boot loader.

Fixed timing setting.

RK3228A/RK3228B compatibility version 701 unknown
RV1108 nand version unknown

Etc.

Todo:

MLC ?
ARM vs arm64 testing
move BCH strengths and array size to struct rk_nandc_data

Changes V2:
Include suggestions by Miquel Raynal
Include suggestions by Rob Herring

Kconfig:
  add supported Socs

rk3*.dtsi
  change compatible
  remove #address-cells and #size-cells;
  swap clock
  swap clock-names

rockchip,nand-controller.yaml
  add "rockchip,idb-res-blk-num" property
  add hash
  change compatible
  change doc name
  swap clock-names

rockchip-nand-controller.c
  add fls(8 * 1024) original intention
  add more struct rk_nandc_data types
  add rk_nandc_hw_ecc_setup_helper()
  add "rockchip,idb-res-blk-num" property
  add struct rk_nandc_cap
  add struct rk_nandc_reg_offset
  change copyright text
  change dev_err to dev_dbg in rk_nandc_probe()
  change driver name
  change of_rk_nandc_match compatible and data
  change rk_nandc_hw_syndrome_ecc_read_page() error message
  check return status rk_nandc_hw_syndrome_ecc_read_page()
  check return status rk_nandc_hw_syndrome_ecc_write_page()
  fix ./scripts/checkpatch.pl --strict issues
  fix arm64 compile (untested)
  fix rk_nandc_chip_init nand_scan
  move empty line above MODULE_LICENSE()
  move NAND_ECC_HW below NAND_ECC_HW_SYNDROME
  move vars from controller to chip structure
  relocate init_completion()
  remove nand_to_mtd in rk_nandc_attach_chip()
  remove page pointer write tag for bootrom
  rename all defines to RK_NANDC_*
  rename rk_nand_ctrl
  replace bank_base calculations by defines
  replace g_nandc_info[id]
  replace kmalloc by devm_kzalloc
  replace uint8_t by u8
  replace uint32_t bu u32
  replace writel by writel_relaxed
  replace RK_NANDC_NUM_BANKS by ctrl->cap->max_cs


Chris Zhong (1):
  ARM: dts: rockchip: add nandc node for rk3066a/rk3188

Dingqiang Lin (2):
  arm64: dts: rockchip: add nandc node for px30
  arm64: dts: rockchip: add nandc node for rk3308

Jianqun Xu (1):
  ARM: dts: rockchip: add nandc nodes for rk3288

Johan Jonker (2):
  dt-bindings: mtd: add rockchip nand controller bindings
  ARM: dts: rockchip: rk3066a-mk808: enable nandc node

Jon Lin (1):
  ARM: dts: rockchip: add nandc node for rv1108

Wenping Zhang (1):
  ARM: dts: rockchip: add nandc node for rk322x

Yifeng Zhao (1):
  mtd: rawnand: rockchip: Add NAND controller driver

Zhaoyifeng (1):
  arm64: dts: rockchip: add nandc node for rk3368

 .../bindings/mtd/rockchip,nand-controller.yaml     |   92 ++
 arch/arm/boot/dts/rk3066a-mk808.dts                |   11 +
 arch/arm/boot/dts/rk322x.dtsi                      |    9 +
 arch/arm/boot/dts/rk3288.dtsi                      |   20 +
 arch/arm/boot/dts/rk3xxx.dtsi                      |    9 +
 arch/arm/boot/dts/rv1108.dtsi                      |    9 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   12 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |    9 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |    9 +
 drivers/mtd/nand/raw/Kconfig                       |    9 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/rockchip-nand-controller.c    | 1307 ++++++++++++++++++++
 12 files changed, 1497 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

--
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
