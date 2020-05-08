Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A3F1CA046
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O3YqjF5OiOVsEVCKLkTC2Z6EaQKCOMF8t/dmPviYF3M=; b=RtYWjkwSe3wbdNAFRnh/iE6cbA
	MY2ESgP/R/hQQpCYctkAC/JLduYK2P7g++jrFLSRKPi1iewdeqR2e04HEH0j0cYlJIviNr8/Tnvt3
	6XoJuR+IFekTzTI5R1EBMXLtFZh4CgyK9FHvZMlprTR0ysowaEVmZToXphHfmh/JQu4AaU/dj6kOu
	Ebk3qTEmsQwho35cYYY48UAGzvYQEOmStPqzbcew/YYkLLpk07NHSXJBvnbLMlPexx4fypeq0ZCtQ
	i4RTFWEiuV5FYL7B5U85ICwoqtCr3M6LDWWzRI+UMp9/r2Ol6nIGWwNpIdRVNCX/r3Xr+LavhyojE
	YTlGP9GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs6Y-0004ax-Ay; Fri, 08 May 2020 01:47:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs60-0004Gz-P4
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id y25so97639pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 18:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=qkSr8PCxTjLesHCIYKLjPg4DjNMUEOltWQ3xEt49V/dH3wG5Q2bFVu8h0oBVariOzD
 64FCLQtbLsFM3L2fGXIu2f3ZTV87w4JIZ4pByFeHiG0fb0e2eaLbwVSxq6uhbBOIsFVA
 o4X2O6+JRsVnyjJXUZCkalLxRJ19vJF6+ZvXy4tIUYZe3eqzhmjPxg1NFR03nYirHoGO
 OpqTL/wuA1r4/GAj+Y9d4LJ5zE7GQ+lQ0xsUWjmmOj7dJ+fpkQ5+L7+wbhfF/McwSuJp
 Vlw/LHP/qZWOzoDyAuA3DYq4M3wy/I8sbhcO3oXxbgWsWyVjfc/swSe/DlISYnfepxCd
 Vx2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=FbBcfMf4OPe10kej72a4WV3xSfL0Ne9WEGaRGEYtkSEZbTEjzgLqWXOYkuefJ8kfT/
 wFaSR2LHTLaz9nwP8gP0i09Ys2LaTiSZAXlGXl+wti8GhKOSTBZoEGepKBplW1H4/6jR
 5ZPmKRg03YMwKbg8GkY94NIqXKUzdOOPESlWJavp/A2hWmXbg9zU3sKrQL1PkH/Vd7Kr
 o9XvpZqDEHrTOySbfLvVFCmU2YRk1L72fc24702jpPCANvCk4l3NWoJqa3OZAZ9jWahD
 t9jRb7kDuXpVrewEiVv2WUHSuamccDSDXVx+00cOUisACd+LEEc7AAmLVpM2UFkFznLq
 FnhA==
X-Gm-Message-State: AGi0Pua5fjpwK5iqnS5ad+KFeW80JKvgNb8ZFy5SRbRh/mDdCHV43Jzs
 UOvPWBzqj2SOhr5awQih87E=
X-Google-Smtp-Source: APiQypLM2K5G2GnkqO1UGyLId9fhCM/BEPlhPv4MJCsMXb2nUR3hPIVNMI8YnRBe67fjalob4a88aQ==
X-Received: by 2002:a62:18c8:: with SMTP id 191mr242124pfy.255.1588902396205; 
 Thu, 07 May 2020 18:46:36 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id f74sm9270816pje.3.2020.05.07.18.46.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 18:46:35 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v3 1/4] ARM: dts: stm32: add I2C3 support on STM32F429 SoC
Date: Fri,  8 May 2020 09:46:25 +0800
Message-Id: <1588902388-4596-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
References: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184636_834222_30B8393B 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds I2C3 instances of the STM32F429 SoC

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..257b843 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -402,6 +402,18 @@
 			status = "disabled";
 		};
 
+		i2c3: i2c@40005c00 {
+			compatible = "st,stm32f4-i2c";
+			reg = <0x40005c00 0x400>;
+			interrupts = <72>,
+				     <73>;
+			resets = <&rcc STM32F4_APB1_RESET(I2C3)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(I2C3)>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
