Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D030971
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bggf1dzE+1d0jwbVtnfHWNY/hAl8qPVWM57wyJoFf8s=; b=DGrFKJzVwbj9u6
	KjNFQOYFv1VMR/OhBXDHJJvd6O9WheityaOqk7kq63s6TVgqvI9GnO6WFawUkGZuwI5v8oR1rzY8W
	jQEBLl1Q+4naYDicUCn785eWyyoBiFOOJNhPQIzUFsO3L2JZ6M1oN2HoAJbTDIQLV+gUX+FZrPG/f
	Fl3FEZmc27O0mEc0jqx1Z6lDc2N00E/LPZNBSONVCNgwruRCvPc/nmbL041R0roi/kbsSZ3eeqVKB
	4kt49Ia9tGYBT0kj8swx7jcv4/4Py2qeI5/1JNiESVdd7UmJgbECvDKgJ03IiSa8iOu6d/3bH2W45
	i1Ng2Ac7aC3cJSpEGxxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWc7z-0002SK-I5; Fri, 31 May 2019 07:39:03 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWc7r-0002RD-7p
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:38:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id g21so3674798plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 00:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lYJJi2UKwH+fCAiD4IHhtDqjA4Q1HaeI/1a1wPohzzo=;
 b=S8pfy2oS2jzU3TdiP1vhWLX4u+SmXDmw1WlQrAoqr/UWc8aoj/Ob6ZD4Dk3vQJ9GoH
 AhVEZF85/c3mhk9cP8IV2cx4p9ViJY+E4jAiVVrm8Bz5jEI8b+kQitGopan2t2v8h6Mm
 WsTOpzdrW5Tz3H4SBEo8zeKol1gj6cE+1il/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lYJJi2UKwH+fCAiD4IHhtDqjA4Q1HaeI/1a1wPohzzo=;
 b=FwCXw7wK8eq0r82cJFECBV6SjNEyCyQwMa4L7oiC40jKbwkbrPEZ2gBhwOZZ85VoFi
 X9eTEXp7JcTpz0AW0wgpFO0TAPfHhMeedtUWQ1r1at4ss2h/8+C23v9NOSXi5x1q5aXN
 w0yFVJXSf37bk2Bo3UoT6qUPeKOs+4AZTNoInYbha1SOXm0phpKWsbih/VLayPaxDV6o
 rqG037NKYIbqmBJFNzkTONXSriTlIVlsozx+J5R9hQ1Kg0tvLUPnxCq2+UeRE1ygHluT
 emFJ0inTi9b8gDRLXeBrhvXPwuS3PnuGIjQloEHcKiFXLNHjdPAY4KbFl85G/ATOMn6U
 UlRA==
X-Gm-Message-State: APjAAAV4g/W4nU3xSzS6eGHVcLM/Iw+ssMSECi9vMKO/9z3gdswkQBkI
 b5dopAQv4dpBgD6PNjO8h7vwvw==
X-Google-Smtp-Source: APXvYqyMg4phB+Eg1UQEBZ0Rh9tGmxWqgyQG8n8IICnT1O6W/jpImO1pTpEKmmEW7mxj4e5Zktp42A==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr7465004plt.294.1559288333099; 
 Fri, 31 May 2019 00:38:53 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id r71sm17051741pjb.2.2019.05.31.00.38.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 00:38:52 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v9 0/7] Add support for mt8183 SCP.
Date: Fri, 31 May 2019 15:38:41 +0800
Message-Id: <20190531073848.155444-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_003855_304724_D313F32D 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Pi-Hsun Shih <pihsun@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for controlling and communicating with mt8183's system
control processor (SCP), using the remoteproc & rpmsg framework.
And also add a cros_ec driver for CrOS EC host command over rpmsg.

The overall structure of the series is:
* remoteproc/mtk_scp.c: Control the start / stop of SCP (Patch 2, 3).
* remoteproc/mtk_scp_ipi.c: Communicates to SCP using inter-processor
  interrupt (IPI) and shared memory (Patch 2, 3).
* rpmsg/mtk_rpmsg.c: Wrapper to wrap the IPI communication into a rpmsg
  device. Supports name service for SCP firmware to
  announce channels (Patch 4).
* platform/chrome/cros_ec_rpmsg.c: Communicates with the SCP over the
  rpmsg framework (like what platform/chrome/cros_ec_{i2c,spi}.c does)
  (Patch 5, 6).
* add scp dts node to mt8183 platform (Patch 7).

This series (In particular, Patch 7) is based on
https://patchwork.kernel.org/cover/10962385/.

Changes from v8:
 - Rebased onto https://patchwork.kernel.org/cover/10962385/.
 - Drop merged cros_ec_rpmsg patch, and add scp dts node patch.
 - Add more reserved memory region.

Changes from v7:
 - Rebase onto https://lore.kernel.org/patchwork/patch/1059196/.
 - Fix clock enable/disable timing for SCP driver.
 - Add more SCP IPI ID.

Changes from v6:
 - Decouple mtk_rpmsg from mtk_scp.
 - Change data of EC response to be aligned to 4 bytes.

Changes from v5:
 - Add device tree binding document for cros_ec_rpmsg.
 - Better document in comments for cros_ec_rpmsg.
 - Remove dependency on CONFIG_ in binding tree document.

Changes from v4:
 - Merge patch 6 (Load ELF firmware) into patch 2, so the driver loads
   ELF firmware by default, and no longer accept plain binary.
 - rpmsg_device listed in device tree (as a child of the SCP node) would
   have it's device tree node mapped to the rpmsg_device, so the rpmsg
   driver can use the properties on device tree.

Changes from v3:
 - Make writing to SCP SRAM aligned.
 - Add a new patch (Patch 6) to load ELF instead of bin firmware.
 - Add host event support for EC driver.
 - Fix some bugs found in testing (missing spin_lock_init,
   rproc_subdev_unprepare to rproc_subdev_stop).
 - Fix some coding style issue found by checkpatch.pl.

Changes from v2:
 - Fold patch 3 into patch 2 in v2.
 - Move IPI id around to support cross-testing for old and new firmware.
 - Finish more TODO items.

Changes from v1:
 - Extract functions and rename variables in mtk_scp.c.
 - Do cleanup properly in mtk_rpmsg.c, which also removes the problem of
   short-lived work items.
 - Code format fix based on feedback for cros_ec_rpmsg.c.
 - Extract feature detection for SCP into separate patch (Patch 6).

Eddie Huang (1):
  arm64: dts: mt8183: add scp node

Erin Lo (3):
  dt-bindings: Add a binding for Mediatek SCP
  remoteproc/mediatek: add SCP support for mt8183
  remoteproc: mt8183: add reserved memory manager API

Pi-Hsun Shih (3):
  rpmsg: add rpmsg support for mt8183 SCP.
  dt-bindings: Add binding for cros-ec-rpmsg.
  mfd: cros_ec: differentiate SCP from EC by feature bit.

 .../devicetree/bindings/mfd/cros-ec.txt       |   5 +-
 .../bindings/remoteproc/mtk,scp.txt           |  36 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |  18 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  12 +
 drivers/mfd/cros_ec_dev.c                     |  10 +
 drivers/remoteproc/Kconfig                    |  10 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/mtk_common.h               |  77 ++
 drivers/remoteproc/mtk_scp.c                  | 678 ++++++++++++++++++
 drivers/remoteproc/mtk_scp_ipi.c              | 163 +++++
 drivers/rpmsg/Kconfig                         |   9 +
 drivers/rpmsg/Makefile                        |   1 +
 drivers/rpmsg/mtk_rpmsg.c                     | 396 ++++++++++
 include/linux/mfd/cros_ec.h                   |   1 +
 include/linux/mfd/cros_ec_commands.h          |   2 +-
 include/linux/platform_data/mtk_scp.h         | 167 +++++
 include/linux/rpmsg/mtk_rpmsg.h               |  30 +
 17 files changed, 1614 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
 create mode 100644 drivers/remoteproc/mtk_common.h
 create mode 100644 drivers/remoteproc/mtk_scp.c
 create mode 100644 drivers/remoteproc/mtk_scp_ipi.c
 create mode 100644 drivers/rpmsg/mtk_rpmsg.c
 create mode 100644 include/linux/platform_data/mtk_scp.h
 create mode 100644 include/linux/rpmsg/mtk_rpmsg.h

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
