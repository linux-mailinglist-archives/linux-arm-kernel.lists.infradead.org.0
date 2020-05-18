Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912741D7638
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zQtaS5E+QHnnJA2tMlEaBvKKsm4n3JSl7szekJZwndM=; b=EXbaLnbl+RfNu6btf/5VUAin1e
	4QIBfqkdyaTzY7t/4OTA2zukFMZd1lk7ukRSPjX+XpleHmN9LVbQQqmq7HiRunDmsj6dvIHRRWpXo
	c+hPqQ7RRHSyGPBUwDsjpUfHiLnQFX+FyqbzzcnLaXVIvhgDlHEJQMbpfZdnqIWxmSrv8+y9H9qhN
	1f8HaSPiKFPIq3qCT+VbSyu+NS6FuTGavp3/PGb8w1UwsWp7MC+RE/xiHKnJ+y2Tbp5X0klLUgTpS
	hqjqWeJXu/Cl4dRhcGIOOdwl/9Wwp85TXOs4pd+MlfK7Haj0sxDrtTfftK509I/VQr1smb/CFgUOi
	7epKVV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadfQ-0000zb-Lz; Mon, 18 May 2020 11:10:44 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadeS-0006ZN-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:09:45 +0000
Received: by mail-pj1-x1032.google.com with SMTP id t40so4871604pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ywJR2u0sxzCry1AhZGxYacIrf0h0wV/3/P70ewifITY=;
 b=lsv+ci5O3BF5pp/Fzm/71bOqUhzwDhdV6mf6dmUZaX8uo7eiJj/O+bcYSv7PKy+8ty
 F6Jd/TsIHQfj5p/2VSeALGViY//PoM9iSxbRxo/QhYUCAkBuvp+pZVb3S8A6h56MIJma
 Rw7hOJo1IldF2kRvbRkdap29xtOomIqWhbV6Bk+reqa3cq6T2Xwzee2Z0+JMiiEvlSUb
 zAey2q/StEBydV5XSapPsH+hiTMxklq/qW7VLynMmIya4v1AcpH5tRzILJLSkUgNyBnu
 UHB9dw9Q7plOKVWzHLip2o679jj2TVpXaij9RfG76b9aKjARBZkn2+ZM2oQKU4HFn0tr
 M5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ywJR2u0sxzCry1AhZGxYacIrf0h0wV/3/P70ewifITY=;
 b=iVifdN/ZsCrJ9hQMdzOP+BR9TApPV8mCV4C1XXLu1Hx1jkHvbddsDhAO/6ScAoS9Hj
 zMlysvEVLTM5ULyo66AHbKnfQErAMP4u2WqN23YnXa0AkcCEVIwQ1yb4NCVDj9HH3YKm
 8b89TJnzGycggm3PdoiEfac2TrA5XGtnItf2/uxdBRnvj2w9RnHldwjr7vfXJZeUG4CH
 tPY5veJgrsLdz2eduE3lnshW8vhc5tlmWCRx4XrmDtL9SDCvU+Fj96riOtJY8DIMPcXJ
 Vvnpvb1vme22U8LBCPJr35M50vYX/QVcln6BDvB4wPl5kLGi2vm5MgQQpAVwVQDCTz+S
 xAHw==
X-Gm-Message-State: AOAM533VOhBdixYPWzHkVskCVeKdmSm4M/kiXd4d2lGnvqm1SkOLqThF
 Drrk+GIH3/Z78bL1lXBpjBs=
X-Google-Smtp-Source: ABdhPJwCSYCh/1rzKVFG/X/BBP7KphC+GH9RMiQtvUBzCQoZyfTGn1DBeXe1tcs+tZRW+3x1Osg33w==
X-Received: by 2002:a17:902:a513:: with SMTP id
 s19mr16338427plq.84.1589800183045; 
 Mon, 18 May 2020 04:09:43 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.09.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:09:42 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 2/8] ARM: dts: stm32: enable l3gd20 on stm32429-disco board
Date: Mon, 18 May 2020 19:09:19 +0800
Message-Id: <1589800165-3271-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040944_087231_3CDBF6AA 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1032 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

L3gd20, st mems motion sensor, 3-axis digital output gyroscope,
connect to stm32f429 via spi5

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa14..54c1b27 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,23 @@
 				};
 			};
 
+			spi5_pins: spi5-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('F', 7, AF5)>,
+						/* SPI5_CLK */
+						 <STM32_PINMUX('F', 9, AF5)>;
+						/* SPI5_MOSI */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('F', 8, AF5)>;
+						/* SPI5_MISO */
+					bias-disable;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
