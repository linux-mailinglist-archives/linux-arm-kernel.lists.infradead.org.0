Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD16F61509
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7jytq/LoWEKgJlpfwbYyHDNBIzmujPLCZ0NXDSYO0wY=; b=CLiRW1Yox4ouoD
	eULAQ5lI71zU2rANXxx/ZVMIW9VoF/ibYO6+zGCzmzK28J6Q3D87924MfGC5gct5TG1lI6nh/hs7c
	YznaaJ7u5Yi5/ddqJYzYPS7tjyCPubWhLcxlHon+v/nKAZyevlVSmfzZuMLN7sDaGHTwikcxHDg1J
	TwIzpT+CvvvAHNdlJ925OHuNvbBSRhxXwsVWMl68Y8bF5aJSJP+Rxqy69PBXiZnD5bjhLoFOHDC0V
	XDp15lupYCl6F8M1rS/fR98jT7nXnkqclNan/ph3q4o1Rb4cFYjP1KCo2QBuWyZrnn8lpni3IAL/I
	Ec1G4p6VUF/WJXOmHkbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk78q-0002nV-Ba; Sun, 07 Jul 2019 13:23:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk78P-0002en-NG
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:23:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so13786979wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bpMKBCyFHgrQiKy7buB0LlekziIPeofsVDIfjc0AyOM=;
 b=TuvJAzVeDXICNheVzilpNB/Cs3NjzSCvyonFwKOTUrMr+8gYWEw8LkT9BFdAe1/KJa
 RQkDrhcJp8Sa/bGFsb/LmBOqWuB5ku2J+gNg5oQS7sRpoQzvRGrPxTHcKQAvxT+UTMQw
 4y4ZGcVflPIYljz19CoHHcjz0KJOXLc6aMiwD4KkviW/jKYSjbjI/YatERjpWncD5N/v
 Fj7ftbeFtelSd6ou44N8DJnBCHFEsMrPPK+vlagcjnLoKEkrDur5+t3Saty1deT88JGb
 yZqbRWtwrUMRYSoBjl42GHO3xwGxBO68XeHUzV2t0ES43DZcw191TGOUCyq/cAVULQpz
 0mkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bpMKBCyFHgrQiKy7buB0LlekziIPeofsVDIfjc0AyOM=;
 b=C16oz8KNTyRhZy8KTfpYtrFozbj+PRwkY+xgclzZy1izJKI3EdWNT+G62dAJiGQn3k
 qgJG9gMC+Ej+5VnSRR8tsJ7hQLE+2mpaFh//0Kq+uVgHn/pWd3Nto7hgD1ZOlHHGshrL
 G/zA/2PMP8G6KsG5M2lWJE9vRVX1bN9ROPKj8iOlxcmT/O6oeNUf1RS9mF5QSbv8yWuK
 iUFvIjP+D8oPYsUUpSZXIBMm1MgJ4H33U264GszjvG1RGF/ekRg6DsVhQDFOaIKmJjyO
 TMRkUFoWqRfbPXXo/7n2rCvZ/InBvS1ZLT+i6SUnq1WdgDHI/x9mgCVgJKWOsreZzwH7
 zNYw==
X-Gm-Message-State: APjAAAU0dCYqc69Y21ksKU8KB9k27s2BF2zN1U8goZU3LQhRD23565yx
 e1RETM4xgfzgSFk5jWW0UgQ=
X-Google-Smtp-Source: APXvYqw7tff4i83OSNi7Zx1TEI+45avVCAugUXjVfMhkCi2pLfvW3AeorDogqslxlq3WBg+tzU4c5Q==
X-Received: by 2002:a1c:99ca:: with SMTP id b193mr12068007wme.31.1562505796292; 
 Sun, 07 Jul 2019 06:23:16 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id f2sm11022353wrq.48.2019.07.07.06.23.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:23:15 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:23:13 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 3/6] arm64: dts: realtek: Move rtd1295 memreserve areas from
 the generic rtd129x to its specific dtsi
Message-ID: <20190707132313.GD13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062318_131012_6EA49538 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two memreserve areas in the rtd1295x description that are not
present in the RTD1296 SoC. This patch moves such areas to the rtd1295
device tree description.

From the commit introducing such memreserves[1]:
 - 0x00030000 is undefined
 - 0x01b00000 is audio related

[1] - commit 72a7786c0a0d65 ("ARM64: dts: Add Realtek RTD1295 and Zidoo X9S")

Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
---
 arch/arm64/boot/dts/realtek/rtd1295.dtsi | 3 +++
 arch/arm64/boot/dts/realtek/rtd129x.dtsi | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/realtek/rtd1295.dtsi b/arch/arm64/boot/dts/realtek/rtd1295.dtsi
index 41d7858da826..586cb1ee8cb8 100644
--- a/arch/arm64/boot/dts/realtek/rtd1295.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd1295.dtsi
@@ -6,6 +6,9 @@
  * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
  */
 
+/memreserve/	0x0000000000030000 0x00000000000d0000;
+/memreserve/	0x0000000001b00000 0x00000000004be000;
+
 #include "rtd129x.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/realtek/rtd129x.dtsi b/arch/arm64/boot/dts/realtek/rtd129x.dtsi
index b9cb92466fc7..9009db909fab 100644
--- a/arch/arm64/boot/dts/realtek/rtd129x.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd129x.dtsi
@@ -8,8 +8,6 @@
 
 /memreserve/	0x0000000000000000 0x0000000000030000;
 /memreserve/	0x000000000001f000 0x0000000000001000;
-/memreserve/	0x0000000000030000 0x00000000000d0000;
-/memreserve/	0x0000000001b00000 0x00000000004be000;
 /memreserve/	0x0000000001ffe000 0x0000000000004000;
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
