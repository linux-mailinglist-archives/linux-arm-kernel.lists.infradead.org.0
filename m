Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074B21F8BE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 02:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YomsDjxAUJQc1SRY4fnPsNDaqNno1rjrpQB18PIC2U4=; b=Lz0IEibhtbybtL
	NTSkd8WA0duCZdNJW9G7FZsllSMOxoEVEA81Mhk1Kx/lB8H3zVMbXD1rfNDEAyyo6ZOcuZiibwL0h
	RYLW5DMbpDujRQtPbrLa18+lokRkpOFgWE//dgXXOHVfku3+nwSTBlPupx7x99QGtuAbMBi9/LbTr
	Cp4/ld4rqxvbDNI5GNkKhOOCp+kbs7Fhm18sy8J4jqzw7r3nVxPGUbAzFnBmQL0tGmeNB9w7fhNLg
	DFzvZBBbjY/GgIZY4uzaoKGE3uj5p5eznQSe8q8Y6jUBsFbJpEiRwiHmgLK+Ocq+F8sj265a/Oxkz
	dh4jwfMTYXnkJSHg6qhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkcqQ-0005Pn-Rk; Mon, 15 Jun 2020 00:19:22 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkcqJ-0005PH-3v
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 00:19:16 +0000
Received: by mail-ej1-x642.google.com with SMTP id mb16so15538700ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 17:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0r9iOjFzMyP9orIqp35ZxhdsurjuUHNXHC7X6YpTCNA=;
 b=OLHaE0oujambTdR5fUzLPNY+xGy8cNztQ/QRj/xWiARpec8TI8NPIj2rIS7zGYwGMF
 Oezm8ZEVwxNcqba0U+4OU7heUgeZy8Vu1XIDNutk1izjR/4CVscHdL4+2JNNV/MfTP8w
 CIpEGnlRwWOur8eWrqfPR62Ydhn7+dkHlWo969GgTgKSRIeg+BGeYymkx9g9ZxGqR+Zi
 bUnJeUtX47s4gbJ4l3YXhXyHaAzleNLnEpEkCnWKHmHkOl4oMSFx/4hSRHDa+Zy+l2ES
 TM6/1Sxa+qCD5vPRkUTo92kTXavnQL+ASKdtnRjmSViwirY6SjqpMet4Vuax9xZK1VDX
 pyPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0r9iOjFzMyP9orIqp35ZxhdsurjuUHNXHC7X6YpTCNA=;
 b=Ot5MFHyJClkWcqQUuo3/OeelU5wjDEYJIw1Lvh9G4RVn12bZ4GeBsd8cPCgTLpzHgG
 7Rhx4C0xPKK9P1mww/xK7uAcTanAL9mcZcbcnP9yb9dZXK5eSlxpk5TeSqjpAjQB84u7
 ay1ReMm+XKppNotyrlDL9sVBJWDJulInML0+wq0i4p4xtaxWp4T/4cIJ8Ol/Rf9P/U30
 18DAcCtEz0amOzhs4MinsecxeGOqdussdCQcHIEAgO+8BmJCxNL4dR6atEBqfOOLpriC
 B0coiyDzTDC0VHwRJICv3+TR1F0pfQ2IsEqdtadG6jgP5S5vIRgwzXAmPGsZyFgCr76c
 VXeA==
X-Gm-Message-State: AOAM532ALx+mS1rX6oIoAxV9WEmFuP2uBJWuadYaQy3J9mGvs3AiHjGO
 bavxCDFyAfUEf7jZwPa9SfE=
X-Google-Smtp-Source: ABdhPJwy1wndRX/MiUX8uHnTMYW88GE9JUTflT6oiLn8v0zhffnmY+Pw4D1NF/fpJGJ38rgOSoppdg==
X-Received: by 2002:a17:906:b817:: with SMTP id
 dv23mr22846154ejb.185.1592180353497; 
 Sun, 14 Jun 2020 17:19:13 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id m30sm7450666eda.16.2020.06.14.17.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 17:19:13 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/4] arm: dts: owl-s500: Fix incorrect PPI interrupt specifiers
Date: Mon, 15 Jun 2020 03:19:08 +0300
Message-Id: <41463413d6b756e9d24f8807cf95ddd98591b990.1592123160.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
References: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_171915_162830_63EAAC02 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PPI interrupts for cortex-a9 were incorrectly specified, fix them.

Fixes: fdfe7f4f9d85 ("ARM: dts: Add Actions Semi S500 and LeMaker Guitar")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/owl-s500.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
index 5ceb6cc4451d..1dbe4e8b38ac 100644
--- a/arch/arm/boot/dts/owl-s500.dtsi
+++ b/arch/arm/boot/dts/owl-s500.dtsi
@@ -84,21 +84,21 @@ scu: scu@b0020000 {
 		global_timer: timer@b0020200 {
 			compatible = "arm,cortex-a9-global-timer";
 			reg = <0xb0020200 0x100>;
-			interrupts = <GIC_PPI 0 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
+			interrupts = <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
 			status = "disabled";
 		};
 
 		twd_timer: timer@b0020600 {
 			compatible = "arm,cortex-a9-twd-timer";
 			reg = <0xb0020600 0x20>;
-			interrupts = <GIC_PPI 2 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
+			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
 			status = "disabled";
 		};
 
 		twd_wdt: wdt@b0020620 {
 			compatible = "arm,cortex-a9-twd-wdt";
 			reg = <0xb0020620 0xe0>;
-			interrupts = <GIC_PPI 3 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
+			interrupts = <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
 			status = "disabled";
 		};
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
