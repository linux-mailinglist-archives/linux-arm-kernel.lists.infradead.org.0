Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F6E1EC11E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HNte7wwYsblvusdEHBIOXZ8KhCNpY9M7bj6XAprBuYA=; b=SPf5mbRtfF3zqzQ6sJYEwsQdyc
	qRv2gFuYfjoKregLEEYuDkwSXjyJXPV50RjMp/cDoqGFp2+zAA833CrYsZIsUgX3aZ25905AN8Lgn
	LHLaBPkz6GwRIPRiO92nkTbNu9YGDRxxSVjOeAHFxtUZEtCScob1Q1H9vlmfUQvG233UK+lQ5SY9s
	uyJ94hXhiynsqzXRoXg8Wz22YBqPbA9k8URp62iXlEbC83GmMXO/PJUELRnZilD5AR7JhDpSaNBCg
	O9yA9TSa8c+x8OHQOFRo1Jq9c1HiBmJTKpkeLidSaMy9fBvgU1HGZzV96Co7G9HM2Bmvn2BqaDAxT
	IUtJ9ncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAra-00032Q-KA; Tue, 02 Jun 2020 17:38:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgArN-0002y5-UN; Tue, 02 Jun 2020 17:37:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id v2so5369987pfv.7;
 Tue, 02 Jun 2020 10:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7CYQyvLGj5QNvVPjw4aTn4anzvpER/v1jXVlD72wch4=;
 b=ghMInwgHNwx69CMuNiOe7XroFlb4h04VAjpV63eho2HgPiR9HVgkZ87hXQmc7qykwR
 um4RSoNF9d/bYJyCzDLnls9mX7CKniMnxO381OCpmOYoms1g502RQ1Wx+qWqSTUTDexg
 YxddG6tAdNF8+NIalFRXI4g5mO1vHSSdDSiMNoHzUIlVk1iwdVuLHEt0a1+Ue8ZuEDWv
 59zh/uZ4S5GXGEkKODU5pU9mwb5TXBDAeLuKYn0VO3u7SddNWUXvrpnq+YRfP4q3tIeJ
 rHyvfEmY4VIPir6VCrgNbZ56MaWMiJvl+UGwy6SAkUojXTrql0dk2qG1IEBjIQGITYWa
 pkfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7CYQyvLGj5QNvVPjw4aTn4anzvpER/v1jXVlD72wch4=;
 b=uZtVK0VZXCsszi+EFvlKfAiaOvaCWNlg/RIQWwt7XkdigUkDNfyNNUl2+h2pFAjQkt
 ws0kLZrWexyqSJLFEE8rugL99Ujgfh6qGq5RXoK6Xls+YrhgVghu8/3W3e7d9VLieDvI
 zG6VAcGg5YlCtMEdfJoAqWVr1lU16nEUQG6zqR68QjXHnptG7BmGAAXrq5mw1NORSAXP
 feoJhKV6k9PWTwsHuK2dtShxjcyLaJSx4i3CSxInfKUjoioCPRAfPK9PmZ6fB3tbT6Au
 NUswvFbD6xRGtNuRMGzi5fftj1BhQDFK4jnDLGMu32UjbaYcgbnbnFItTMj5/pwkq074
 +f/g==
X-Gm-Message-State: AOAM531nUY+lyWqKmAwBGyRyQZPaZO62Mo1RL6txUi3J0OfkQqqv8WxI
 yJsPV7DMAv0YRosC6ZxG1l8=
X-Google-Smtp-Source: ABdhPJyRQJFkq7C072d1XT+4f01Rh5JspsgsZUVHKnkBrd9NOzWfxn7GBf/UNhn+ZR9trRKjspm1/Q==
X-Received: by 2002:aa7:8384:: with SMTP id u4mr12308743pfm.281.1591119476069; 
 Tue, 02 Jun 2020 10:37:56 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.37.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:37:55 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Subject: [PATCH v3 06/10] arm64: dts: actions: Add DMA Controller for S700
Date: Tue,  2 Jun 2020 23:03:08 +0530
Message-Id: <1591119192-18538-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103757_976338_37ECFDB2 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds DAM controller present on Actions S700, it differs from
S900 in terms of number of dma channels and requests.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v2:
	* added power-domain property as sps
          is enabled now and DMA needs it.
Changes since v1:
        * No Change.
Changes since RFC:
        * No Change.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index f8eb72bb4125..605594dd7a0e 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/clock/actions,s700-cmu.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
+#include <dt-bindings/power/owl-s700-powergate.h>
 
 / {
 	compatible = "actions,s700";
@@ -244,5 +245,19 @@
 				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dma: dma-controller@e0230000 {
+			compatible = "actions,s700-dma";
+			reg = <0x0 0xe0230000 0x0 0x1000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <10>;
+			dma-requests = <44>;
+			clocks = <&cmu CLK_DMAC>;
+			power-domains = <&sps S700_PD_DMA>;
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
