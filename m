Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F6C18E858
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mzpbGodKzDqAqfmkvb60NiI1eQuVhJrfVxTxJE1moTM=; b=RrU8FdW4tOwbGM
	I/YuoqIY6d35tXKTQD05MUHjMfig5rzPlLvtN/Ldn/Sipt/39NJT8fFhDVKVm4Ii5Z+/aexQD1neX
	dIPdBTfT+oATfmjtERCJI1kdpjEy9iR/o+4u6uIPLIojyO4TP14B7Of0WVwotwHmnCTBchDk2RlJ4
	zAPJcAp4VIq5kof2gX/BmN19iXkJbbEL6z5scf1CSfFC0VztCraarOs+mxJHEpwm+f5UhfuAku0ZB
	e9rGeju7QLVJB/XlvM02lKQXIJtQDVKifZxg3hyx8+BYPSLYdENDO0rJsIoO8Sb3mUgsTqEyFTcWm
	SrnVfw/SjK1BySI5a6hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyjJ-0007Yg-Ft; Sun, 22 Mar 2020 11:25:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyj8-0007HG-Ly
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:25:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id n17so999567lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 04:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TApTSstzMDFcZUtGtLotmZcoiZAQG0W0Mv7nRQ4N8LQ=;
 b=W7bTsGaLpmK248rg8tQJU8k1EE7nwidYZ7OMhR3oQ9xmVCjsXTOA+PxjEyzQUoV7JC
 8JXviNkbdSEIlO5IAeZu6OeZR2zUQCfW4IlLAjw2o/txolcbSMq5IDojJMrJc7FEXx9h
 wvEHx8wt9SSUtuwzCJJRwvEzzY96DPBPT31R8TJo4UIjGph9eJwqQkP8r0ZE7PnNMkXB
 Ymi6UeXD59LTFAhdMHVPM/aN40B5GF4Y3Fk2BUgT33T5EWfThKnY/gjWM0LkfTWSQbvR
 hjW7hDZyVP28X0aamHREyKDfs3DWM4YcPn1YEKerfR6oDmSvSR04GnVNyAnsINKWejNQ
 E8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TApTSstzMDFcZUtGtLotmZcoiZAQG0W0Mv7nRQ4N8LQ=;
 b=fnzke+4/WIMkZrYe+pEQHKHvC83Vusyej/wpRgJ1FKCqG3SD0U9kqvsy8jnhXdBCw9
 spjb/q+36YXeS/gzT29UMHG54RI9WDi8X4jTJfNf7t/U9CDnnmuwemM/VDZZ+fJE1LW6
 57W0NhpEOAOHDqhsYKGRYdwjxJY98Tdi0BhEE40BxG9nSlOm8JbnSNBPI56r6QS5JapS
 wxaOnYcoWY55TUq8hMGcz3WvAsYlO1rdAjprhH/3E1ySES8T97hJsENRmMH4mDbTcD4X
 M5XJQfjQOdYSfMBixSa4WGawLqyYntQE5iYsdAsjE7gdSlEUSW8+WVWvfiH18sRm2vho
 iwwA==
X-Gm-Message-State: ANhLgQ0KVQyW5sCqnAFgHUz6SAZWQvPe/m0U6Hu0DOAGSZD6FECGrkpP
 4Ojv8YLRJKz4fWLyRUiZpQNnpw==
X-Google-Smtp-Source: ADFU+vsO0zRWstY2Gw8qvI5vxLtSiVr/agsiSEgGcyHRv8hv6BLJDHuHmoaVLu9MThkZRIx0mZLqoQ==
X-Received: by 2002:a2e:9b54:: with SMTP id o20mr4487060ljj.189.1584876304967; 
 Sun, 22 Mar 2020 04:25:04 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id m21sm6963005ljb.89.2020.03.22.04.25.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 04:25:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] arm64: dts: Fix leftover entry-methods for PSCI
Date: Sun, 22 Mar 2020 12:24:37 +0100
Message-Id: <20200322112437.18070-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_042511_266890_08996DF5 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These two device trees were either missed or added after
the commit correcting the "entry-method" from
"arm,psci" to just "psci" as per the binding.

Fixes: commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to reflect documentation")
Cc: Amit Kucheria <amit.kucheria@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chunyan Zhang <chunyan.zhang@unisoc.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: if this is fine just apply it to the
tree where appropriate please.
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 arch/arm64/boot/dts/sprd/sc9863a.dtsi          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 0bf375ec959b..55b71bb4baf8 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -53,7 +53,7 @@
 		 * PSCI node is not added default, U-boot will add missing
 		 * parts if it determines to use PSCI.
 		 */
-		entry-method = "arm,psci";
+		entry-method = "psci";
 
 		CPU_PW20: cpu-pw20 {
 			  compatible = "arm,idle-state";
diff --git a/arch/arm64/boot/dts/sprd/sc9863a.dtsi b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
index cd80756c888d..2c590ca1d079 100644
--- a/arch/arm64/boot/dts/sprd/sc9863a.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9863a.dtsi
@@ -108,7 +108,7 @@
 	};
 
 	idle-states {
-		entry-method = "arm,psci";
+		entry-method = "psci";
 		CORE_PD: core-pd {
 			compatible = "arm,idle-state";
 			entry-latency-us = <4000>;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
