Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C4197CA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nXoLhpz326oWunzDT9J4x7wrV2Qa6zAeEPTYMoA5Go=; b=h3eQ5h5vhWLe7U
	8HXGcfxw4SFN1P8rGXefjt5etFCEOK9vQdSsoYwJ1gZV3C1o0txCP2FvqGAl2I1Rof/wRcvRmmvEY
	kFX3OwlWaUUyNzm+N+GzCPu39eI0by7zMlYPK+yyc2rQ9eOW9pCrl5pfC41scHDcYlGyeOlIayiSn
	tUWPWRRdS5/BTdda3/yKnn7GwxW0V7r9JIE16ptoHuXLGZRl+t1tElzxmohOoGDtFpJzikvejsUKi
	U/9LOq7yRzZgElsnO3W4DJzt/DA/kvn6iIHOHEQMIqiGRqpoLcAPGEG/8uXhHR0MCEYqV9Ai606v5
	ofk69ddNNVSW4pEHygvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RVp-0008UT-G5; Wed, 21 Aug 2019 14:22:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTw-0006jz-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id y8so2210707wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VmjppQ9kSJIbmhrJG4zlGsF2GtCs0UQY5wgxZMdQ2C8=;
 b=qe/OLHqYfp7Cha4Xtsn+k5Rie/1zqnA6BkAn3UbobgKnv99doCcDfCsT9raoT3DwWT
 Duhbp2Hwv0aRCwQfhGw5tpmTAmWOdGnULdiMCy1yEbqByk2k1lKkTFiC7zmAO5gUqxAP
 3Et7hXC7VNpt42QmpSkjWQEYIJAM8GvqXKv5Ho5g04tcn1eIaUVzTQ5NKz0E373InoI3
 zRHRK62m8CFRYBP7dJloJs3OSI4her46DbZH5FpPa/cYLZKzTHBAt6dzB1I/84vjA3rH
 wJoKT6EGUV2Ye9SNj2kpA9pguKVzpJndsNGqN45Lle5YHxz651jNSUvzeGORzqbmC9JL
 aFDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VmjppQ9kSJIbmhrJG4zlGsF2GtCs0UQY5wgxZMdQ2C8=;
 b=o6f8sT/X37Gift8WBtMi19ziujx4nMteWhuJwSz1NGAB17vf9/RjrrlVGDrZ3N9UrL
 XRzdbOI+0ul1f7huUqDIPHL7GAyTbzX1RStWkyuzdG5JlDITHaGq4AVg30hnYX0vWBPf
 ljg+HxkwjchgaWfFmAQ++GZEcl04vLzIyGPET47kyxKs8snAUI4wa1yv3DZk7Ls23MUl
 b94rqre1r0J3rHTD6ENiQE3U0mzQBIUUwsL3+3MHAr0WVB3MEr4oP7XzctV9Nu7QbzT+
 nIIW0zSegGfuVim5WvU5MvKp0LpEByHq/sr6zzkXPdz+HB6FVYa705uY5BMfso6KeCwo
 vjfw==
X-Gm-Message-State: APjAAAVGVVyMQr0L2foL3Rd1vMxl7bd7qJc7yeX83qf/lpPneWayws0m
 NQL1JP/sKha5EIeseZaTgttlMQ==
X-Google-Smtp-Source: APXvYqyuJkv1+UxkiRrWbP6jf1b1y5tgQuhS+XTokxV95Wiw+0BUZP4OEBBqYv5ZWcVHzVadhPsHZw==
X-Received: by 2002:adf:eac3:: with SMTP id o3mr688501wrn.264.1566397259055;
 Wed, 21 Aug 2019 07:20:59 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:58 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 05/14] arm64: dts: meson-gx: fix watchdog compatible
Date: Wed, 21 Aug 2019 16:20:34 +0200
Message-Id: <20190821142043.14649-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072100_595902_4872B189 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']
meson-gxl-s805x-libretech-ac.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index e2cdc9fce21c..00215ece17c8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -325,7 +325,7 @@
 			};
 
 			watchdog@98d0 {
-				compatible = "amlogic,meson-gx-wdt", "amlogic,meson-gxbb-wdt";
+				compatible = "amlogic,meson-gxbb-wdt";
 				reg = <0x0 0x098d0 0x0 0x10>;
 				clocks = <&xtal>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
