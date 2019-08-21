Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A9197CD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cou2CHL4+GJVl7UPqyzrcmRdlQEm94FhqOtd+FtcBb4=; b=q65bAi65wukSJr
	MrwfBV9JfqiRVYTMupmdJK4gYk6V4nbC56BQiTlJbs6tKdJhgASvMLQdwqi7DIKAbDloe211KvPQZ
	S6lm3Q5S8OWA9wRYCn3U6YAbcnikFvE5yzHFMShrCqEvriR1G4Y4LZ5JqMmnmhpuSQU6+2XedEYjZ
	4eJXQhWiCOap4omGyjWqb+GegUsJ2sz44pseGAYBrA64AOCx02yOkRCbvLi2axk3SgX3gfZUdBjN5
	rdUB9IIHuTwFNlEhz/fvlh3KAVDI1JvOnAISBNohHBLZQzKsfY7WXHIKri6hT2EEeqgxQ3vLZqpf8
	pjTMhojm4NS0np0FfiXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RYC-0003pV-Kr; Wed, 21 Aug 2019 14:25:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RU5-0006uj-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id k2so2247980wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DKp/3tQaH/+CAXC5vPIgbu9pLlo8VAlZxJspdFK2/l0=;
 b=OSGfdrzjIJjZpcOjACbI3Seid/ot5zvi51TgigW1XB3XjpmPJB2WNeCwQiLv+BbDaW
 a8/WMma+VwIEpMV7r4nAGjqYIxKA4rjtgJLqjR11N24KUExmK/naz1ns2YEoQ2xjk3+3
 O9pT3UGN428hlyFLjTzVUS7CIOmFQjVi2fAxfDhaFmFmA6wR9Z59OAOoDtt4CnxOCmNS
 ScbnBdTkBV0+n0D7/8IYWicO+1mv9pD3zSwS2KGee0/Pp4Gv6wwtgcHdTytxPhapKOGk
 UOE1rAHKQxTgX3rJcnDuQDcD/CMtFjC/nFzysoRDYU4nxo09WJtxWxvxhCtXSEBE9J81
 3mag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKp/3tQaH/+CAXC5vPIgbu9pLlo8VAlZxJspdFK2/l0=;
 b=mbBuVDl/LnCUnMtff4du22Hl7DGsNk7si9IfhAxOGtVCwUWzc35WPIPCLNBDNE6zGf
 wdqMk6hRLNcePBmuBkGuyFXsQJ452GVbw8fLrhnxR1UnAJrAPRDQm3FPaSLpO7XYl6AO
 XMsFOT1xtsqkNPG38URDuC78V7AqZlyXjhqSKWB7c+BWBaRiLgcaZcLAB/6Gb1/DHyjv
 fzzNJ47WeRiOdtC8tNRlj1ROQ/HGzNnM2GaZnF9YeSKWn2fsVrYWhR514n0CGM8l0Tsi
 UDVFl+9NAsgIlMznM56bdvdkVZx8qCLuPpPNxC51n52J3/pTaaBEHUA2MGimed+ZjFbs
 fq0w==
X-Gm-Message-State: APjAAAUiRa4AMKYkd94zHQn6thutdPLavc84IuCNLRtmEdb01VIqPdGJ
 cNs2t2t11Q+KRsyG+a4awmmLoA==
X-Google-Smtp-Source: APXvYqzzO0DZqhYIzGAFRa6C0TlMr+71d5c5kM8OtSvLjlSjGtrSDPVnGu4LF7KrckfiDIVXcPZQag==
X-Received: by 2002:a5d:5408:: with SMTP id g8mr34532487wrv.201.1566397267868; 
 Wed, 21 Aug 2019 07:21:07 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:21:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 13/14] arm64: dts: meson-gxbb-p201: fix snps,
 reset-delays-us format
Date: Wed, 21 Aug 2019 16:20:42 +0200
Message-Id: <20190821142043.14649-14-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072109_399524_5E3B52A9 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
meson-gxbb-p201.dt.yaml: ethernet@c9410000: snps,reset-delays-us: [[0, 10000, 1000000]] is too short

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
index 56e0dd1ff55c..150a82f3b2d7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
@@ -21,6 +21,6 @@
 	phy-mode = "rmii";
 
 	snps,reset-gpio = <&gpio GPIOZ_14 0>;
-	snps,reset-delays-us = <0 10000 1000000>;
+	snps,reset-delays-us = <0>, <10000>, <1000000>;
 	snps,reset-active-low;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
