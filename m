Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528DC26A09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 20:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MVad2UbuMfKXJGJRTIIqCVqvsyOe9kgNelQ13R8hNNA=; b=Tq43dCwLgZjZX2vKwd1gTCzvLL
	lJmQt7yEeJiGFzMRru6mFt4W52Q8BaMyKq8Bl7xc3LM4SREokhfvTcAKAcl4A2jtny+KiVXyQt/e8
	cXAohUhOpB0DwAWqt66OrNdh1+U8OB/U5jBDMbAERwzjY5qenWrb4cQmYzQWFWeMJoqn0/XLlufa0
	o2ZQy7DTgv/EdQZJZfUdC05VNKyGJcnXJOWd08CwdDeMdSzee2BQdEcLQzgel/q7cdr7syIgEvIrZ
	HiUQieVIn4SVio7+deQhnUg3R4JkUdu5KvwY8/Ju49B7EjuVHip441xmQS0oh5CMZbSfcZ/SZay78
	eNfYml+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWG2-0004a9-5G; Wed, 22 May 2019 18:46:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWFj-0004Ge-DR
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 18:46:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id v11so1763756pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 11:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GmGzWLHRhAiFHdLO6sJ1o+baERaywOCM8lSPrMQvma4=;
 b=oIGeZss5BNTBJcdtowR+26iCRL4R4Fx9g7Qgo20cHvKWUFUy2aZ8eonGKSgpstWskl
 3HEFFLEs2l5SU+/FOvNIzLc+VprONyDe3l0YBe4JNXd0VUdf2/E+cEmAswoEv9ufAmBv
 dcj9amWmV01GudIV5EbexapIqVk6E9itihrZsI5N9QWi5jIBVhtJxVcuAc7KYVGQu915
 KdGs/Ae+730mGjN8LDiXhcDW+MX2c0FhIsg5DbD2bZBzbj31uRHTsJPYQIFBtbJJIvbY
 H7P8fNZeF6xQoy2TFa6DKfFkXgrDPRu2mvQ/3vEru1ZL7EXMwqFEgaDK1SCLOeR7/Ith
 2THQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GmGzWLHRhAiFHdLO6sJ1o+baERaywOCM8lSPrMQvma4=;
 b=oKIpU1QhiA1zPvQvyeZjbYdgHNZkz+LxMmC/G2Kto3Pzv56QybA82Qg3tPgTRd9E0a
 Elqst59TtTrx19ty80K/IJ6QhI+qxQGlHThh2fQkB/N6ZSoDLAvHiFFxw5uM4CsIrO+6
 j3eARFP3vgCs47sXFvMbys71qtmuL0K1XVolD5c5+aDaHBs5buIqcW2qPPonIZ2BokKj
 1B/yPGPHEYKDXff9o4pEse83aWOnGx22hHfZRumor3A8jzDh596PuyOaW2nnvpMuOgmT
 ZxXo5SrdF4kBywtj5t7Y3GukJNko8JAk+F9gdxGzwOeElC7bfdgeXPQOf2pYNhyf6RrV
 p7hg==
X-Gm-Message-State: APjAAAVHCt1a5HS3X/c5YdyLbaO9igDTZBvtrFfpN6ImmM+STVkE0v1J
 TAtN2CdxTxiaPQkICcrpUbQ=
X-Google-Smtp-Source: APXvYqx5MVPCTwB1TvOzSQ+U+LjSQYLhgOCeldaVnfeKLh7uDytNdcFNe+vlJzLK/zdCNC/iIWLAYg==
X-Received: by 2002:a63:c94f:: with SMTP id y15mr28257342pgg.159.1558550774800; 
 Wed, 22 May 2019 11:46:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 25sm2439585pfp.76.2019.05.22.11.46.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:46:14 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] cpufreq: brcmstb-avs-cpufreq: Fix initial command check
Date: Wed, 22 May 2019 11:45:46 -0700
Message-Id: <20190522184547.31791-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190522184547.31791-1-f.fainelli@gmail.com>
References: <20190522184547.31791-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_114615_459539_B158BC9E 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a logical error in brcm_avs_is_firmware_loaded() whereby if the
firmware returns -EINVAL, we will be reporting this as an error. The
comment is correct, the code was not.

Fixes: de322e085995 ("cpufreq: brcmstb-avs-cpufreq: AVS CPUfreq driver for Broadcom STB SoCs")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index e6f9cbe5835f..6ed53ca8aa98 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -446,8 +446,8 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
 	rc = brcm_avs_get_pmap(priv, NULL);
 	magic = readl(priv->base + AVS_MBOX_MAGIC);
 
-	return (magic == AVS_FIRMWARE_MAGIC) && (rc != -ENOTSUPP) &&
-		(rc != -EINVAL);
+	return (magic == AVS_FIRMWARE_MAGIC) && ((rc != -ENOTSUPP) ||
+		(rc != -EINVAL));
 }
 
 static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
