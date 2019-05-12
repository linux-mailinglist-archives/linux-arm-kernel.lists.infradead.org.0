Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3C41ADF4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 21:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuwg5j/7CHXvyFiZ5c9UnWlUh9+gZO3vsfucbhJkrqs=; b=S/VxkGaUG7LAQ+
	x0R8OkGDh8PEB7UdCo2UpM7i0ZaQCJXknA/uxoTsOZp9qORdOOt7GcHCfsNpDw7KAumCrdM4By8Mk
	qWxuW48mPLGSPs+cOnPo3Ehd+Yhucbv39N+UBF+hqSrZ6o6xHCIpPfif/mLcX3GA28LeGkraH6M1F
	psfq+s1uBLfWl7+XIZ5QMiyuXkH0d0XzOvSlIKCO+q3LrNrPJ1/59Mo5aI+o7bVuD7WgUps/0Xp32
	oQKFRKjsqac79w3qizHG999FvZUvPtezoqeakuvvY8UWA6PtRX3BD6br1PJYqwvAAQ6b1XUm4kgCq
	MY8zD49SvsRJJ+l9m4HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPuKQ-0001BR-Jy; Sun, 12 May 2019 19:40:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPuK1-00011D-Ls; Sun, 12 May 2019 19:39:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id 198so11785685wme.3;
 Sun, 12 May 2019 12:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1xqj/Zo3AUFkVy0zRgFkVBz4uDdS8LIxp09mdTlXIys=;
 b=P1GAUOYh6F5NDr6P/o2VZYBMKNU69JrmKXjrv0mJrQkAzO5Gr2ZqK2J5fTuim4vqug
 4fAfYWtolMpC1tPgmmCeJglHw1ly3XD42CqglWnjR0o6WnnBX7XK/OJ2Rog1OXts6Djj
 MNiT9SsNubOhKeCkH0Y354TJDzax+BPcAScpczaUsvHB2Fj04fBNbHVB2IRxuctX1jYv
 7R6bKG3KsE9L5q5frbaVkYqo01SIA+WhGqv/dFkPRShaJvcjBQfrF+9iHUbERptfJUgv
 p7sGaWqgfX9vK+od4cEAWG+x2fOZZnFDs2SkKhn7wxelYRAIoQnuXOIO9/k+ab5SZ3Tg
 X6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xqj/Zo3AUFkVy0zRgFkVBz4uDdS8LIxp09mdTlXIys=;
 b=bJKip5Kb6F1zV/VhNScZ+510ax2Fq9jVjmYmrgOlr93mHxe9+ix4l+6UPU2aayivcW
 4tDNcH3G8U2e+w9h8ci8O1FsLsc79tts9PCBcy+O9FhmDJfJgAyvUHRcz7Yh5ZUnVGo5
 xh9m+nKVWxM7jJUtzyqCgjPUHIsBLMBQ/hFqetBhUaHRT03SxXaFT23n+/ylC02O+0zF
 n1kMeKzh3PphZCkIWRBamMSFa2XuHrsAi0SWNhxc9IgFKR6ajn2STEAvwWU4fpOt2H9d
 NgR1M6c7HyaXh2akjzPJ/rO05XGzDGyojjD2f4Cu42TiSyhTlgN3fJVmXBpVysiHKM2C
 GsbQ==
X-Gm-Message-State: APjAAAVULw1qMJOaHk77LbgODkJIevEySPMrDhKTP5jtfsaOZIVull4x
 xcwWgQdmU8vmJV/HVLr9Eak=
X-Google-Smtp-Source: APXvYqyKsuCV1ihDzofQdBkbz/XAwhXROCx9jK/t1SKZit6sN6YlPxvB7us/FY/5Si4I7kbAyR9Omg==
X-Received: by 2002:a1c:7e08:: with SMTP id z8mr13877489wmc.36.1557689983139; 
 Sun, 12 May 2019 12:39:43 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C8AD00ECBE9107EA8EB108.dip0.t-ipconnect.de.
 [2003:f1:33c8:ad00:ecbe:9107:ea8e:b108])
 by smtp.googlemail.com with ESMTPSA id c9sm8127719wrv.62.2019.05.12.12.39.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 12:39:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: meson8b: fix the operating voltage of the Mali
 GPU
Date: Sun, 12 May 2019 21:39:36 +0200
Message-Id: <20190512193936.26557-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190512193936.26557-1-martin.blumenstingl@googlemail.com>
References: <20190512193936.26557-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_123945_712046_AFFA91A1 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic's vendor kernel defines an OPP for the GPU on Meson8b boards
with a voltage of 1.15V. It turns out that the vendor kernel relies on
the bootloader to set up the voltage. The bootloader however sets a
fixed voltage of 1.10V.

Amlogic's patched u-boot sources (uboot-2015-01-15-23a3562521) confirm
this:
$ grep -oiE "VDD(EE|AO)_VOLTAGE[ ]+[0-9]+" board/amlogic/configs/m8b_*
  board/amlogic/configs/m8b_m100_v1.h:VDDAO_VOLTAGE            1100
  board/amlogic/configs/m8b_m101_v1.h:VDDAO_VOLTAGE            1100
  board/amlogic/configs/m8b_m102_v1.h:VDDAO_VOLTAGE            1100
  board/amlogic/configs/m8b_m200_v1.h:VDDAO_VOLTAGE            1100
  board/amlogic/configs/m8b_m201_v1.h:VDDEE_VOLTAGE            1100
  board/amlogic/configs/m8b_m201_v1.h:VDDEE_VOLTAGE            1100
  board/amlogic/configs/m8b_m202_v1.h:VDDEE_VOLTAGE            1100

Another hint at this is the VDDEE voltage on the EC-100 and Odroid-C1
boards. The VDDEE regulator supplies the Mali GPU. It's basically a copy
of the VCCK (CPU supply) which means it's limited to 0.86V to 1.14V.

Update the operating voltage of the Mali GPU on Meson8b to 1.10V so it
matches with what the vendor u-boot sets.

Fixes: c3ea80b6138cae ("ARM: dts: meson8b: add the Mali-450 MP2 GPU")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 4b919590dae5..ec67f49116d9 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -163,23 +163,23 @@
 
 		opp-255000000 {
 			opp-hz = /bits/ 64 <255000000>;
-			opp-microvolt = <1150000>;
+			opp-microvolt = <1100000>;
 		};
 		opp-364300000 {
 			opp-hz = /bits/ 64 <364300000>;
-			opp-microvolt = <1150000>;
+			opp-microvolt = <1100000>;
 		};
 		opp-425000000 {
 			opp-hz = /bits/ 64 <425000000>;
-			opp-microvolt = <1150000>;
+			opp-microvolt = <1100000>;
 		};
 		opp-510000000 {
 			opp-hz = /bits/ 64 <510000000>;
-			opp-microvolt = <1150000>;
+			opp-microvolt = <1100000>;
 		};
 		opp-637500000 {
 			opp-hz = /bits/ 64 <637500000>;
-			opp-microvolt = <1150000>;
+			opp-microvolt = <1100000>;
 			turbo-mode;
 		};
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
