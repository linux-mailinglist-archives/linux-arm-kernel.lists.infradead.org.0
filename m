Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8A21A379
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 21:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WlF3mFgrOSOojzpY7x6Mo5veIebYzgScJuAlHULQ9TU=; b=qwd
	Pjw7TAF9UDzH8A/zrfvpYCdMry5kApJIktHep+gbnaT3kIYQl82GmoFFMuA5A3lEC3ZYXyn3vsUXw
	HFc7D9or26uYAjtxQYIjoPHY8xxTVqLJykHZaMGnXcT946HgtaWLi5xCSJ/fAY83LD0dT+oc/v/7L
	MFhHcWZVVe5Xm06gCv2kBN6daOOaQNnR8Xcbu6pVvJxJ3b+keH46NXEhd6CCTOwPKwbg6ox61d301
	04qiZ8TXnk13WuZprF7i9zw8rzz6Ew033toaBRQbOsUz9WDRsJCZm4dqo3FB8gy1J3eFFPY+QKyiC
	NXxG/lq5XsQpVgWBw3xZdE7B3onCMfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPBUU-0007ZX-5v; Fri, 10 May 2019 19:47:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPBUM-0007YN-9w
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 19:47:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so3485248pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 12:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IfPcXD1akliETnngX4RzbCUAQNSW0aGhkf05F42prOc=;
 b=uOb1wsCHOTCPuTsT4oj2wJ1whujJT0Ta1RswwxJPmVcmjL/t6Wdl7NfEO8bapXq1iO
 7cKjTHxVXxhTt2F4ks+vVv7NayRQ7aOFlJJrY2NdHiAE4cD6A68QPoeeT9dgAv5MhhYW
 OCRt8XeHL3tSa/74r2xHY8s+KIJs2sk/A1llqqTCX7ab8Bf+H47htAHqWdT3mojTfoZk
 jZRoR/mYx7Xiud1AlSREjavwaH/HMQ+FgYSNB3659Jj/jNVs58/A3T3YOHdvF5o8Eo4a
 Cn8X/XFFflCMwZRRI/oInMrhk5M48cI0srrpgsQXo0IJazS6UXWu2a4rvbwsHL4xPSDA
 onPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IfPcXD1akliETnngX4RzbCUAQNSW0aGhkf05F42prOc=;
 b=dzECbUrwrbzf4V/q/PpzTMqIRdABh8p5Z3zVEOJM1oIGdVcolDzm59y8izOKYvq3a4
 mthD4ZKdvU4cVXpeTrCOvXZw7uLKzmS4oipqdUiag2NZVj7vWQVhScDktn7RsiSYdIf3
 ZVtSWpgWBAmrlvuzlC3l8UqyKnny1HtRn4gMSkIxAiI78jJXYJSukgimj3SxkLmRsveJ
 XUtPhkzx2RpgnTdlW8eSyYCSYQi90p9IHg/qfqtsLCjZvHOyNQltYfDS0TUcmWhhLJs1
 0XjIjCMPwja/Vr5m5bzdcAobggw6xatXzqRPxovbVOB6o9vYYlube93sedQyLho2Wwtz
 lbWA==
X-Gm-Message-State: APjAAAUGSBnMZ43dISV7eGpGNA/tMmJWvaipxBJChnj/0j7tPnNxO7Ii
 1MD4DDDZ9vrANHDBr16VxdUCNqeb
X-Google-Smtp-Source: APXvYqyayuWOzBLJH++KmMAsGgrvzKSWRUD4vKDrwcwt8DOfEjtC+k1fu3AlmfUzAZ5rkc8hBLPBjw==
X-Received: by 2002:a62:d286:: with SMTP id
 c128mr17141448pfg.159.1557517641213; 
 Fri, 10 May 2019 12:47:21 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id z125sm10388377pfb.75.2019.05.10.12.47.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 12:47:20 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] soc: bcm: brcmstb: biuctrl: Register writes require a barrier
Date: Fri, 10 May 2019 12:46:30 -0700
Message-Id: <20190510194633.9761-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_124726_370425_C7F32ABB 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BIUCTRL register writes require that a data barrier be inserted
after comitting the write to the register for the block to latch in the
recently written values. Reads have no such requirement and are not
changed.

Fixes: 34642650e5bc ("soc: Move brcmstb to bcm/brcmstb")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/soc/bcm/brcmstb/biuctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/bcm/brcmstb/biuctrl.c b/drivers/soc/bcm/brcmstb/biuctrl.c
index c16273b31b94..20b63bee5b09 100644
--- a/drivers/soc/bcm/brcmstb/biuctrl.c
+++ b/drivers/soc/bcm/brcmstb/biuctrl.c
@@ -56,7 +56,7 @@ static inline void cbc_writel(u32 val, int reg)
 	if (offset == -1)
 		return;
 
-	writel_relaxed(val,  cpubiuctrl_base + offset);
+	writel(val, cpubiuctrl_base + offset);
 }
 
 enum cpubiuctrl_regs {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
