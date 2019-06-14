Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B294692A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ppw25ULHc98YPfMyYrOATFTp43sQv7Kf+xF6tRnqstQ=; b=UPMvzlHA+R2lNE
	7QZT12Cq13zS8n8vXLmPTe8VUlDqb9AN+XeqK98Jv2uDXgfs9IYZf6D7E17yG4OhLaBHmj8de14BA
	W4etKZHDtRNJM7WbHr/OPoW46rfhxbsBzogkj5tq3vK9Y3YWA6JFjeY3TP3DNJbHebZ1QV8vocE8m
	PRZ2M0wJBOZ4P/TZzxdwHjkMai5PsodiqoKiEWERvi0E3ZP3LJmYUvuA0Y/7ch93JMgCGjQU5C983
	gdTXA4L/9uD/rt2uFeyc376hvyi7tAAZ4i3fGkDuZ8JgpYYxDfm1s5CtyU4tdttWaPBY654u2Yw/+
	ECEMM+6q6vksaIThb48g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbss1-0000UH-T4; Fri, 14 Jun 2019 20:32:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsra-0000Lj-Q1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:31:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so2078609pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AtSiqk5nC9LJRg1jpcdANXdpq0IBjpFzpPAT20QKwLs=;
 b=D9Zi0GLfXAxnK/1KAzAoqvnxrpDfxQcd8uc+ubVdKQ8OWuZFEibKd2qRjzla+7IFNS
 Q0jYmMOKetE6GkCPQSOh1Px3ZltrpfqKqD4nw/byc6+q4sDy9zWbPkXB0jfy0q1IshZt
 Dbvv2CUtzxO24ht5eBCHUlSqX9cW/hndKnXLLRKl9o1rfIhaYqDAKrmASX1w2High6cv
 hLJzPEwnHLsK2w2GSL7UIwCthVhtCjb6QXAjl2/SUr9wfuPN9ga76ohI6viKZpEdzCL0
 L7J5XP/W+JurJSnwUPDddLZE7080G/vEk45SeYWimus+OdZg/7hvF2Ukr//3/uHwM3WZ
 zerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AtSiqk5nC9LJRg1jpcdANXdpq0IBjpFzpPAT20QKwLs=;
 b=K2iT11l6TdIlpj+k5ff6maZ3GzDWALZes5DOYWap0KwG3sYd+r3AHpb1JKIAlJA/fi
 9UXhw/SunyarFrpKiym2a0c1MjyItBpXRivK42HpDN4HhlU7jT5s3KyfxIIx08Sn8DP7
 Vw/jSP3aQMckyhZ+V+lA3JGdwuvSoDhhOwa9F3sgL4YnsPI2xfLzqmt82yATeaYsv4u5
 OLzj1mSR/tmPIfp02URhR4EtmDk/3KXgCd2N7RyuzmTMnhCb5bQvSx/WyGm0IB/1kG4Q
 H6KVSL6MizHss/GkFluEDSfwZ2rJNBmVZkK3Rl7bBRT6d6Ya0PRyXoIGLvLH7DaJhVIG
 ZCiw==
X-Gm-Message-State: APjAAAXqu9KYRpLJQcBQboC9iFveWkCYqD3OZnX4Lrg0l8ZucsmlORvp
 LhhovNstZqBAgAx/xP/rpgE=
X-Google-Smtp-Source: APXvYqzGVKsRY/HKe8P6drib97plaMeKe2fpFoiPvoa234LjxzhsrXYVgV3vx4vgJagc9QCCwyR/rA==
X-Received: by 2002:a17:90a:b00b:: with SMTP id
 x11mr13055151pjq.120.1560544314155; 
 Fri, 14 Jun 2019 13:31:54 -0700 (PDT)
Received: from localhost.localdomain ([162.251.69.147])
 by smtp.gmail.com with ESMTPSA id 188sm5189016pfe.30.2019.06.14.13.31.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:31:53 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org, krzk@kernel.org
Subject: [PATCH 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
Date: Fri, 14 Jun 2019 13:31:44 -0700
Message-Id: <20190614203144.3850-2-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190614203144.3850-1-joseph.kogut@gmail.com>
References: <20190614203144.3850-1-joseph.kogut@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133154_844188_277CC3D7 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joseph.kogut[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree node for mali gpu on Odroid XU3 SoCs.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 .../boot/dts/exynos5422-odroidxu3-common.dtsi  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
index 93a48f2dda49..1f2ae19d01af 100644
--- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
@@ -48,6 +48,24 @@
 		cooling-levels = <0 130 170 230>;
 	};
 
+	gpu: gpu@11800000 {
+		compatible = "samsung,exynos-mali", "arm,mali-t628";
+		reg = <0x11800000 0x5000>;
+		interrupts = <0 117 0>,
+			     <0 219 0>,
+			     <0 74  0>;
+		interrupt-names = "gpu", "job", "mmu";
+		clocks = <&clock CLK_G3D>,
+			 <&clock CLK_DOUT_ACLK_G3D>,
+			 <&clock CLK_FOUT_VPLL>;
+		mali-supply = <&buck4_reg>;
+		operating-points = <
+			/* KHz  uV   */
+			600000  1150000
+			177000  812500
+		>;
+	};
+
 	thermal-zones {
 		cpu0_thermal: cpu0-thermal {
 			thermal-sensors = <&tmu_cpu0 0>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
