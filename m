Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B185EF4E46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kM1F4iFxRl+KvWG8BzmRrqwGFS8yJ+Ci85agRk2c2JY=; b=b4a
	Os07fj6A9CjDvdW5VQN+xYChNTyuOhj2yi7dvwI2oygPhu8LFJ6e8Q81Fbn+LMdgIM6fUvP03WTGL
	0rtJHotFymdWJ6KrVm9iM6F7I8MG2XHakvbMTsb/vSEMVjsMXH6zK+Az1b6iNB9AuXGpf23tqVLXx
	nJM/PWmiJ3y8K0CjDZMQ6YvGWe8y6CovxZiordzRRGz40kuDitlfjFab/VSUu1ZNeANIxJC+fcxL4
	sDWDr7JQ7GC8/ujUnked0+oDqdTXXEoCk3qKXNcH9ok5qaPLag3r0f8X4vaFmvZnVkn+ZiU5KIBax
	18OmPCTqyclye++YkB+LUdj1BxVcZ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5QV-0004o0-4u; Fri, 08 Nov 2019 14:39:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5QN-0004nM-GF
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:39:44 +0000
Received: by mail-qt1-x844.google.com with SMTP id o49so6700605qta.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 06:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RmwEvoW3HuUY3jG9aEbZl5oKhjluz4IlXhdXT/DcXXU=;
 b=rF0S0OZY9SmrfGt+8Qd9dryxNIjDQ4HrmubcSQrzHQI5nRRVVHKZG7h00k3ULzgggt
 6CBYAljrcRr5bvADX+LR/EApByCNzop6HCo6VmBUYb6mj9b6m+MYoETPS3uIim655pkH
 mDhfxoq9hcTKJZTjM2nQM4ZAToSY5zz1hWtjo3o58vyJ8rRByX14s1IWEPX+b0KnXuK8
 JuVVnTXl6ApcMphFjDqTvVjbAQyZIJHx1jJIOwaOH7Ba1KW1ZZzFIKqaBcJWk8M2ayBw
 QKLG2v/Y+KB/KGPdiDG+3cvhd43cU4rvseKJmg7AmJTiSta8yGJW/7DQXHoHff9/PSL6
 yTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RmwEvoW3HuUY3jG9aEbZl5oKhjluz4IlXhdXT/DcXXU=;
 b=bepjrYFUeDG8tRuIa0UzIrOhegwoNvELnrHvDWyS9Lez4sxaKyFUE9foepJ24q0A+u
 yMLz3pBGYAP2OWzshccgbsfVLCUEQSCJidLwRicxDL/DBN6x2hTNwmDz2e2mS6Bk3OCq
 Ozs1OEdlQfRLG5b3Wpm+oKjAlzKXIvF64B3j93KQpZUtpSphEeyRNxQoVuHLDrpOlZIu
 +TB1yPS9vS8fbJWidDwvGtWOKC43eiw8tqk1epoxOJiUKxM+EoGNRbDuGwjtSDrTepfy
 dPajNLuaaC8QWAYZla0IJ5FBWEMQn+mjvnA3VsWr6Y6FNmL1zqMQa95b9bDF5Ki9du8Q
 h1IA==
X-Gm-Message-State: APjAAAU4QpfCcnVhGdezUrVIxeFbX2guBROib8GuYb7FaCciG8gY2OxX
 56ZsFlZgjgyGv0kglbOEXUU=
X-Google-Smtp-Source: APXvYqzd1/vgw/GgrzHLj9tsmbA41xcWjMXsaHW3F1X6jJc6/JyG8y93yoDpAGxIB3JM4Fjo7Zvdyw==
X-Received: by 2002:aed:222b:: with SMTP id n40mr10785820qtc.109.1573223980411; 
 Fri, 08 Nov 2019 06:39:40 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id t20sm2559189qtq.55.2019.11.08.06.39.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 06:39:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: e60k02: Pass the memory unit address
Date: Fri,  8 Nov 2019 11:39:36 -0300
Message-Id: <20191108143936.7746-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_063943_565892_C041C7F8 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andreas@kemnade.info, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following build warning is seen with W=1: 

  DTC     arch/arm/boot/dts/imx6sll-kobo-clarahd.dtb
arch/arm/boot/dts/e60k02.dtsi:51.9-53.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name

Pass the memory unit address to fix the problem.

While at it, also pass 'device_type = "memory"', which is recommended
for memory nodes.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/e60k02.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
index 6472b056a001..a9433c8432a6 100644
--- a/arch/arm/boot/dts/e60k02.dtsi
+++ b/arch/arm/boot/dts/e60k02.dtsi
@@ -48,7 +48,8 @@
 		};
 	};
 
-	memory {
+	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
