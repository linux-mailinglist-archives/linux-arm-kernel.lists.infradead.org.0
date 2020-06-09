Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A21F37DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hvj5wn411cIR0C0bTknJnHKqXtP+nH4xvdI6zihZeTA=; b=CJbQFnXoAPXVRDNAp8FfMj/fyE
	tr9O8U7/cahket2jCzBiOTa+C+ke9x5JzIWXOPGZRrOa6ai/CKPBbhd57QdRNWUI4S1294pA/6FbS
	u+DcFae0ILyd7GveFtScI5QIvwmhWqwGcHX/FGt2ugf5smivWW3fMx2KcxnbgxnsYn/bfFzzMsR9V
	mChpBy9RSfW17H8wxaWOsisPQ/ZwdPrWGtDeSSkNyQfBLUGLjY5THAGw3lrSg+EahdRXdK424A89Z
	2F0eideeoxehf2X+yq/mEoxoxSSBThHDCIWau/I1H6XM0ev4Xq/66R/tmHQaNswAgqHtr8D0YqYsr
	RfXMxIdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibM9-0006dl-JS; Tue, 09 Jun 2020 10:19:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKU-0005PE-K2; Tue, 09 Jun 2020 10:18:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so7860821plr.4;
 Tue, 09 Jun 2020 03:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3ZU81gDLD05tzXgioqFPIFyl/4tbhqSTfVFHFtk6IdQ=;
 b=bIqH0Ku/BOXm3Pkhhqhlzm+QHO0b3jM1Xu5fvEw/1EhvAF/q/hD1zHYZe9vMy2YaKB
 CVgD/PJTz1wRw/cIZzRFpAzvE5ZGsPENuVoz68VaTTUX7QmcQSG6hXML9qcfdMugiSWV
 UTsZHDiAJokSKCdQz9Je8j+KH72RYxy2eKUAn72MMBkQuh9+HTM306XxMrBVR0Cd5uIl
 o7N3bzjbrElqRYfphghg9/STBE7Bbn4u2qZ3e559TMYlJ4g5x2xUs0xDAxo+c4cot5Q8
 o5iNHy2IF+rJtlZXPyIrdRL6coqBVfKiCo2ob1mX1u0yQ8SGCFM11BB1D6YPV1cr4tVA
 h7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3ZU81gDLD05tzXgioqFPIFyl/4tbhqSTfVFHFtk6IdQ=;
 b=iCddwCwaF8DQugu8a3Ve/27BIiIrXGG9iFptpEzPzQTRAtVIfycRWa4qiA+3cHMJ8j
 UYKcQrg8voHP7kGOBr4Rxweu/uTguYL27/DBgnpoe7OwdUfCTPT994isNcLNPf1jzr+d
 eT52J9WVoFGUXXDaVmYA/rDYEX4BUTZc9BNEKa8R06sSTcjDzIMPTRhqvCGlW5eya2HF
 V1dOZAbLJGmzHn82CO2kMJob7RaxSAtQ4fh3+G1//YM6Ps3OPojTwbebHqNQ15IdVWwD
 +30HVWePkZtWO74EiuS4H1LMq4j1zVzwhePntoKTi0hke9xUA1e7Iuy+hvNpq0Bp2kHX
 mO4A==
X-Gm-Message-State: AOAM531F+GUpPhmXb+1Ju4jkS1N9zOp6aNt3CLg10sfJ7po/E6+mic7D
 fvW4LHxR8/mDQ1gtd/FwEaqlaEOt2w17kQ==
X-Google-Smtp-Source: ABdhPJyoAWtyxCfMzgPci09grbLn2MVlv6EBn2AhJJ30ydBC/j2lx2PS2QWZ9Xo56JZvwp9PbWaMbw==
X-Received: by 2002:a17:90a:a405:: with SMTP id
 y5mr3907791pjp.15.1591697881130; 
 Tue, 09 Jun 2020 03:18:01 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:18:00 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Subject: [PATCH v4 06/10] arm64: dts: actions: Add DMA Controller for S700
Date: Tue,  9 Jun 2020 15:47:06 +0530
Message-Id: <1591697830-16311-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031802_672086_F89173E5 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, cristian.ciocaltea@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds DMA controller present on Actions S700, it differs from
S900 in terms of number of dma channels and requests.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v3:
	* Fixed typo in commit message.
	* Placed owl-s700-powergate.h in alphabetical order.
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
index f8eb72bb4125..2c78caebf515 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/actions,s700-cmu.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/owl-s700-powergate.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
 
 / {
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
