Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C261FB3D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzfo+jDD2988qHnCsT7nAmUX6gRMpnNnHefCdnf6oxo=; b=H/vMfD0NaIOhzp
	Y8Z2oGorDp2Cr0eRtGGdEUpqOITdrxhxMMsHkt0NOomWI74KYNhFVp7N4j1N81eNcctmsEZaWzV0w
	8vwuj5DQ8S7FOEgiMhGgnbral8naV/bD5iPnytC2C9kRZjYxLNT/nq2/ecVJDEiV+HZ8IgQEi2Zjd
	/LK72Mg+TLZc4LwjOyYHpNFMJzHzt6yEx/oQunaIy16jdTsaf2dflB7CI54NzN36GkPFTN3JYLoRK
	C6lzQTEP2G0tfIiAGWjezRkgYA1CycqIgmPVud1FN/ILtsJv5/tmtC3qiiWP92ZUAVu8V3+5NvcGC
	OS+9Af7ANtdMs6eUvYwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCKg-00087b-AI; Tue, 16 Jun 2020 14:12:58 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3C-0002T8-Dz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:56 +0000
Received: by mail-wr1-x42a.google.com with SMTP id j10so20865416wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QXMHdTSjKnJTBQa+yeQ6TFk/aEjdgmbMfG2wiWsT72M=;
 b=EDytKPF67Kca8PxTD99/qP0+/Wj7QFQI3dL50eTw54CjHBD8+DUtjPb3NIrSzhoWT5
 CQ3x0ptbKZxTelIAeLaoAMjxJCujZFcgSDc0USIe9HQR4Trnc+mG+iS6T51UGQvFSTLN
 nRnvX7L7bkC8Yqscse9fDO7D+V962xsaP/RCCwynTV+NdV3mv2uoMibQAGfbdTehfLMp
 WF4IqhfuIJ6SNr2Um2Uu3nQtnyr+QCsU1e7+Aqch8C5Mt6Mso7irh5Iyz6O3f+9XX5+Q
 6kzOqHaC9ZJIrYEFul5kTuxP5L9359jFUyJJqyci2nxM/EigdKteJqQfufxGzsrDcV7N
 FgIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QXMHdTSjKnJTBQa+yeQ6TFk/aEjdgmbMfG2wiWsT72M=;
 b=tDx//YCFVOuICQCjfbgmqAj16X53IlNDN9W2y3nACjSw9LTxBEa+TLhIcIwqEhvZ1C
 Zx5onsik3iJly/R65cVJ2ibayQtBiXltSIZH49SUICzxKn1eIYfoKs5gebiRo9MveHKP
 2Ed5SV2iDJdITs3/VlCGnMWsrezBiA9u3p5zu4i+HR+OlTAAGqh9XZmcAtX1c88s1XO4
 M0a2QyVugKoZ4tIOwaWRtFJXFcLQHOV0BB1W2EDL80xEaNirCetLE0agh4b2nMxDbpHZ
 dK5MmD+w2PGxNaTus9pV9T+lhB/hobNR2elc4YP5LMTMxlk9m46oMHthlQQ6ixgqY3jw
 iHQQ==
X-Gm-Message-State: AOAM530nngBA24oq7aK33j6UhUyeAAQH0ntbDoVk+aCRCRsbis1YS7Lv
 UNenSOFavr5b+6LfD+PqDgS/qP2D
X-Google-Smtp-Source: ABdhPJy0/S0KAmsoECEct/X2U6rXeakk+08ygv95OV1lQM7msU4JDMhCOceAP/jFaAKlI2VyrBfaNQ==
X-Received: by 2002:a5d:6b8c:: with SMTP id n12mr3226956wrx.61.1592315692287; 
 Tue, 16 Jun 2020 06:54:52 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id j41sm539180wre.12.2020.06.16.06.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:51 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 51/73] arm64: tegra: Remove undocumented battery-name property
Date: Tue, 16 Jun 2020 15:52:16 +0200
Message-Id: <20200616135238.3001888-52-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065454_495890_2D74F3D7 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

battery-name is not a documented property, so drop it to avoid
validation failures.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 1 -
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index bba8a4b82b0b..bb45ca6a5cf2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -781,7 +781,6 @@ TEGRA_GPIO(J, 0)
 				battery: smart-battery {
 					compatible = "sbs,sbs-battery";
 					reg = <0xb>;
-					battery-name = "battery";
 					sbs,i2c-retry-count = <2>;
 					sbs,poll-retry-count = <10>;
 				/*	power-supplies = <&charger>; */
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index d32053934f3c..9f630ecc06bc 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1330,7 +1330,6 @@ ec_i2c_0: i2c-tunnel {
 				battery: bq27742@55 {
 					compatible = "ti,bq27742";
 					reg = <0x55>;
-					battery-name = "battery";
 				};
 			};
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
