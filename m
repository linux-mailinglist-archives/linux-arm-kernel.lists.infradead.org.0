Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2B61B16E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J0u9j3warKAoJ8V0Zr49PosC8YpFCuq0kcF1fsSlMPE=; b=szZxf1kfaQeQKG
	1Bhr7ceUYqXiUq3yp9N0a5daVct3IjLdN7g1R02BKxk+or/koPOObmBpaujeUrzycowokBTaMhgFS
	MjwHIRC6rqma+6120O1KWY1TZA+JPVG59/+U3W9tEKu1qK2LmNdHM0M6WU6+7I5s8AxxTto92aZ3Z
	1fo31KSZMnNjCLpqC/bgQMW6D4ILy2PGkIJ4BQ4YDCBl1/63uH/uE6ZEtQkvop7+QKHfYNoMcMoYT
	oBwV6u4DjIL013E0VLSS3HLdJI/Lv4G5U38AiNRtx02MTj/dBVT/pkTGHynwQRBUF0OGYimIidwKP
	r6V6Bw8P6KYjRwxUsXQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQd06-0000oI-St; Mon, 20 Apr 2020 20:26:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQczp-0000j3-76; Mon, 20 Apr 2020 20:26:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so13828579wrs.6;
 Mon, 20 Apr 2020 13:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m86kfkguQyuXw4Padwd/5nB4RFgQInyY94SnHr1Z+AI=;
 b=MNaaf1hFhkSNGsG0/WejBweFAMVqbFBOqTAhKWVbiIqSizUOwh+IXdBtBdMQOCBokB
 vv+yP9h2nNbyp6aTAwifzxnJbGPVJqTGq4LRcyJUWDGhz9jUEuWFbBWpcaXRNRmd/YMf
 RCs6t56EELxuk4xEKs+aqdw0M8QA2xnRRU28HKvQf1dqgCP3rcnFbrALfZGdQjgadPMw
 Uq6PKbW3wtfYIzF3QHPHCuvePPApbnd0V+z2ZGc4HpJ2tCq3EA0oAn/deiaC8+9KEanT
 iVDYBcvbxNT142KA+Mrwyo2m3kkBUAJ8vdFRnEFZlHAcHmM1Yfs1FE53iFsveq6S5GyB
 my8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m86kfkguQyuXw4Padwd/5nB4RFgQInyY94SnHr1Z+AI=;
 b=Rlyqm7jx88xmdWWmSyhIcBudWpG9Zlq2jf6N8P4MIlQfJRyOWQYrsnB82Sm3+zhWsy
 Fo22ody7JZmxUvXQo2e8impMmU7KbyweFqBImHRDSUmUBmfQRSv64mlQBt86Ja+nCJ9h
 Lg6dE848lx5NijPDUMLjQnAD8VXIUYK+WSLBf5zX1CcC2p+bfAgvnOipFiBdZD47C9OH
 V7cQSowCpGRqlg7SEyhXO0iIkgNrvDCgMDZJBRLdRI0bPRafn20UacDKmL1gcwb7d6qW
 T2VONzPIuL4pACVFP3S3Y4Jk4M5pVofXKG0mkhzxXJXQBAL+8F/3krqlmIqsiCVdkdl+
 TqAw==
X-Gm-Message-State: AGi0PuazBJKbl177s6Nzzs5zrsSjIqOivmFWwyAha8uhw+8QnjbF3xFK
 hTjNUvnpuiBjFWtVv5J9jOw=
X-Google-Smtp-Source: APiQypKTMMF9oO9FvAFJ4xYhaXCar71+2ejW0w10+TOcqLClxYzLCLiWyqCAI3/BWVAKJrMuDVhxew==
X-Received: by 2002:adf:ea44:: with SMTP id j4mr22176574wrn.38.1587414383380; 
 Mon, 20 Apr 2020 13:26:23 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id l19sm657846wmj.14.2020.04.20.13.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 13:26:22 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] meson-ee-pwrc: support for Meson8/8b/8m2 and GX
Date: Mon, 20 Apr 2020 22:26:08 +0200
Message-Id: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_132625_262491_D31EA518 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for all "older" SoCs to the meson-ee-pwrc
driver. I wanted to compare as much as I could between my Meson8b EC-100
(Endless Mini) and the Le Potato board so I added support for GXBB, GXL
and GXM as well as for the SoCs that I'm actually working on. I will
send the ARM64 dts patches once all of this is reviewed and merged.

I successfully tested the Meson8b part on EC-100 where u-boot does not
initialize the VPU controller. So this the board where I have been
struggling most.


Changes since v2 at [1]:
- don't remove the "reset-names" property from the main description
  (only make it optional and switch from items to minItems) to fix
  a dt_binding_check found by Rob (or his bot) - thanks and sorry!

Changes since v1 at [0]:
- rename PWRC_GXBB_ETH_ID to PWRC_GXBB_ETHERNET_MEM_ID. Spotted by
  Neil, thanks!
- update cover-letter since Neil confirmed (thanks!) that the "dvin"
  reset really belongs to the VPU on GXBB, GXL and GXM
- removed RFC status


[0] https://patchwork.kernel.org/cover/11489163/
[1] https://patchwork.kernel.org/cover/11496013/


Martin Blumenstingl (4):
  dt-bindings: power: meson-ee-pwrc: add support for Meson8/8b/8m2
  dt-bindings: power: meson-ee-pwrc: add support for the Meson GX SoCs
  soc: amlogic: meson-ee-pwrc: add support for Meson8/Meson8b/Meson8m2
  soc: amlogic: meson-ee-pwrc: add support for the Meson GX SoCs

 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 102 +++++++++++++++---
 drivers/soc/amlogic/meson-ee-pwrc.c           |  98 ++++++++++++++++-
 include/dt-bindings/power/meson-gxbb-power.h  |  13 +++
 include/dt-bindings/power/meson8-power.h      |  13 +++
 4 files changed, 206 insertions(+), 20 deletions(-)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h
 create mode 100644 include/dt-bindings/power/meson8-power.h

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
