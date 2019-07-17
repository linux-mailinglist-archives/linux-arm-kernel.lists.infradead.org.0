Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D6F6BEBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ef0O6vaztgVeNIqwHJyUmCu4JEi6rxuGC4P9qmVCMm8=; b=r9BCWR3xwEND5L
	advYomZid/tQ31Wvt91vsTSc9GxUyCppB5YopyqD4ZgsAD/KJ7zMEZ+z03Wm9l9NG/DgH2wOo3glz
	3jujre4iM2mzUvAPpIvRbucoNuO/+0yVrjfmzdo0Dv47La8DxASCF1w2Hg+vybd9X8W4adVgIj7ea
	tLNNoFsgkMpGvrTcSPteneCHQy8jZHOdURpXxEx4ZrjsN/q0n/RjhSxaG6ntJj5NRxAVjcoh/8Etm
	tKcH6DnYlsU/I7d5jU1RzZH089qHMDWVN2meTx8LW+SPLm7fCeugk+NhFw30vuNjT75RhMVQv0g3c
	qqtrFRb8n6BN8+NvApng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlSo-0001RQ-5s; Wed, 17 Jul 2019 15:03:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlSR-0001Ec-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:03:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so5076056pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EOkS5kDhQCp2QpKFvcqRvsCtdLy33nkr3AyjAFEDqsc=;
 b=L9HjDAtOqAIwTm1Lr6ddDZgSgitwesUyPfW+GKyfk5rR9Cdwl2bZR7Cck92k4ZgD2t
 1fNCgSZLmX6eWT5xahDRSRok3OyY5+sM0wWqnUrIVpyL8Tc+xt84klQuAmg1RNUJ+dI0
 i8SotKUn8Vds8TSGznpmKwo+ObQXvy2uYdYVZhDbT8oZbst2j3Rg0PljSOFMMCJOkklZ
 ZaqAHlIElcwKC0SkHhWBFmg2bo1NHN0wmO15TyPDNN5F4+gNe/gljVI6/1ABXSL6dTjr
 MYJtVhtZIuIZvOvKJU1HPVDq+ASRh5x5F1DAY7QlyoJMKkNqRuv1s6dKxxOJfidG2a8j
 p7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EOkS5kDhQCp2QpKFvcqRvsCtdLy33nkr3AyjAFEDqsc=;
 b=jUYvw9SpuExerMnpLQX9h77v9accpmqpiNiMYNVaLwpkKHzMgroOdezkPBA7XSjI7S
 yPrZFLHrMaewxoc7bobWSnocZ63gcHZ3v0vuaKJ6tnwSF3wXfgpx4PZexFGmoLSr2p7l
 opPPUW79Mq+PxnkaLXGmh1wYA59m+jmqZSSyk9GmO3J8bmFQi9eyVFjYQcu92peXOwoa
 RARU+7BrgWmNhp0ZUYw93XQle1mv9R2faVLnl1mqBnb5Aet/S3T4six0w8o8FhPd0r1X
 oDidiLEqn5Fg8q8Xv6g+np9Y7lk6TEzAviKvQHJZnddw3u2If4XItg9/+HPrKl8i2IIy
 kfLA==
X-Gm-Message-State: APjAAAW936gZSMbP6ZlK4H98Yigfa8lj2KXVv2LBJhuE105yB1KqHtM6
 JSCLctWPpL+o3FnKJcnns/wT/jPT
X-Google-Smtp-Source: APXvYqxxdOY210KODL0TOfULUp7JPCmDhod340RciukIdE/d0HsJRiE1Gwbfc0pNVYDm7Q8lq19uaA==
X-Received: by 2002:a17:90a:a404:: with SMTP id
 y4mr46001132pjp.58.1563375782825; 
 Wed, 17 Jul 2019 08:03:02 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id b37sm44728961pjc.15.2019.07.17.08.03.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 08:03:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: vf610-zii-scu4-aib: Drop unused pinctrl_i2c3
 pinmux config
Date: Wed, 17 Jul 2019 08:02:53 -0700
Message-Id: <20190717150253.20107-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717150253.20107-1-andrew.smirnov@gmail.com>
References: <20190717150253.20107-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_080303_869397_3EFA3012 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pinctrl_i2c3 pinmux config is not used anywhere. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index a64de809299f..666ec27a73e3 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -792,13 +792,6 @@
 		>;
 	};
 
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			VF610_PAD_PTA30__I2C3_SCL		0x37ff
-			VF610_PAD_PTA31__I2C3_SDA		0x37ff
-		>;
-	};
-
 	pinctrl_leds_debug: pinctrl-leds-debug {
 		fsl,pins = <
 			 VF610_PAD_PTB26__GPIO_96		0x31c2
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
