Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF91E878A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ZUDS+Sz4uMxtYrF7+bofpK5p7OgI1y1grs3U3WICZM=; b=saVLBomA2ummiLS+ACfVME7jeW
	466iR1jj7rlCyt+R2henCXBT24uquezw/WuSxw9XaskIkKR7LfoLwudvaBIcymvh19R+zoBuEg5b9
	B9tBD0It3IPGdwWJhCPVArqZBRZzyhPotXQ8M/Z1dUKRsAw54DBkt2aDOr8WnfbOfHXSYPEGacFmo
	/mLKpgqZ+Z+R08K6tGwGJnVM68YsKfbwFJMi7gFLaUsbl8KYZIRJ5WzzeMTk0Up+YmfwLy1jIQqXI
	BbBi2rVBuZlrs7u/1ZpHabSiFq1hJFArmvimHmBQTDtcHKhrODYNIX1tQTRsERM1lpHw+L4ttkY08
	tIfK6y8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekVt-0003cG-Nm; Fri, 29 May 2020 19:17:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekUw-0002xD-V3; Fri, 29 May 2020 19:16:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id g5so302916pfm.10;
 Fri, 29 May 2020 12:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rVJ4oym9rXNaA44QDrgvFNwDxvnSEboxykGaMiySkgs=;
 b=e8bCMAyLHpJLcqYLQqZZDht6uuebj1TuWkqtHigbjOtfuYf7r7e2Z2nuDzvmeYWye8
 ISLuDOIDYjYLgMr2fp1fS2EyCOkdolUyYJ0P4ayRk1lHPo4NbMvYUSIle6gYCWxMnrY5
 HizoyhEWEXujdeh84kihxqQOmxlox72Q4Mcb/NiNxh+UHn/Cxmr9MVW1vvprYdxFs6Jr
 zMKzecjD5RVozG5UQHC8FFquRl97KQj+3FDl/9aCV/wTQ/ordlwKbUCy3Fn22Q7rQuoy
 1W4joTFu/WZObaCZucseqLwJ/sEERl/KzykmRAq4PLNAbD0hL8CbiBMM3e3WL8U+Wvq6
 HnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rVJ4oym9rXNaA44QDrgvFNwDxvnSEboxykGaMiySkgs=;
 b=PGKtKGeBHyfEKT/kpGgeruxxlWTDn+FkRD2ubtMfdNDdMYib8XlvPGVlqOhaDL7Zdf
 QaGV0y/B2JM/tGka5Ar5/BcH6LGmdBEGY5Y8ZWpFyfiUZdWJEtto2oTg+9WYd5sioBQ7
 Ci+cS1NqxTlp5ISqlmx41U5M5gxbGGjztA/vxua8R3qRVMfqe4afWzd6tlNgE1Etut2T
 81qhvsyqtXpMWTjU+Fvmi8cXYEaTh2ZVxGpyUI/XE+O9OOKlpMwI5xVlgp70lrw1wKIk
 V0ieFvXa6/TsAHp+E9wcREqkvRaq3+pr3HhlsLf8miuYBYxAhach+KUjiNVQQA6k7wov
 xyAA==
X-Gm-Message-State: AOAM530pxiFJpznPP7jyE+IaaEpVj4uJi7kwEfawz3knhgapG6Mh0Ets
 tw8B+BDE32VjbulnnLoDirI=
X-Google-Smtp-Source: ABdhPJx7r38iIDo0qGEq+vFJYFEOCNcSDuK8YR7v1WEhbpUkyWY4kW5XuMX9Kn5N8uN+upi4P1k3zg==
X-Received: by 2002:a63:b10b:: with SMTP id r11mr9210726pgf.27.1590779814156; 
 Fri, 29 May 2020 12:16:54 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id g92sm202505pje.13.2020.05.29.12.16.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:16:53 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] pinctrl: bcm2835: Match BCM7211 compatible string
Date: Fri, 29 May 2020 12:15:21 -0700
Message-Id: <20200529191522.27938-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529191522.27938-1-f.fainelli@gmail.com>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121654_996789_C1F6BF5D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM7211 SoC uses the same pinconf_ops as the ones defined for the
BCM2711 SoC, match the compatible string and use the correct set of
options.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 06bd2b70af3c..1b00d93aa66e 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1137,6 +1137,10 @@ static const struct of_device_id bcm2835_pinctrl_match[] = {
 		.compatible = "brcm,bcm2711-gpio",
 		.data = &bcm2711_plat_data,
 	},
+	{
+		.compatible = "brcm,bcm7211-gpio",
+		.data = &bcm2711_plat_data,
+	},
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
