Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CB619DAD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxXvOioWPjjVfJ2JWm8mll/JBqwS98hOeZzp3azO3aQ=; b=dKAfOtRsCx5+Q5
	zUMr8R2mvm/mRLpaM/e92zkeoCt8SI5HmUZui8yRI5aMoRbFJN2wUf1iHSR9on6FwYB76LjIp7rxL
	Qet5xtu7mAqm/4oXTf48djUVqFCHfpBMwEmgeOiOGlIsMGZP04rjIinKlfDTTvSCRkGJ113s3MjQE
	1LiFfPNIIr48aaOrf03MYq83isbrm23upKganQ2+4RVgws9iSuz3J8Xy3N/+V5+YCvT14dn4iH4q5
	I9tSmo+on/dCNtLL8z30gZUKnteDrcvI5mEYCP1NOmVz0p4v87/FA/h68WIOMRCT/89MIeN22esds
	u6VJXWG0CLlBWzbJ4D8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOpa-0007cg-J9; Fri, 03 Apr 2020 16:06:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOpU-0007c8-4U
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 16:06:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so2915790wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 09:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IWqKdCVyF/z0Jc9mD3yRP7UIaHgfLawKN8WXGvn4s4c=;
 b=GfnGlLgUcYQIhYNkEieLbOd0BRlWORaqkq+5m0qgwVo5hzUcRhv8tTxl1be5jb/9KC
 FBBtRRg9JRTJegE9didYrrlZ+eV7nagVkB//sCytQSRNLF7Jg6PSwoC//w/26ZBJUTDm
 qXHvr4l+mvZfQalJct1p/EDlLHXqXABIPVPu9GYAwcU/ZHj5aTWHSvXbpAa1/2p+Kdhs
 y9V2XGB/sZsCbWmjr3Rw8xwBATsq+00Qc/SsPalm1TGo7lAkc4THILYVGwNI9sq6JTRs
 W7XzrPbwy9iDU5ooIxt3yiDlNCfSgZ1GDq2SgRJKtwPJCEbfjJx38P45StiCQff5HFge
 hwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IWqKdCVyF/z0Jc9mD3yRP7UIaHgfLawKN8WXGvn4s4c=;
 b=eFkEdfcMcJLRL0r0P3G9qLSsCefKLhh4OxG3mELLWyAvpdAMOKA8BMhN/QhbjrocnD
 a6edIN4Y6guIrPwSV+Q0b4a50Q2KW3gOq0YY2pgNn0xb05OAXiRb/2W1x6gZ+s7YDxin
 +oLO3s5PE3a0DOiuHSr2dmUerzvKH0pnotoZFAFMJdeCWh/a3LttCJ/2o2MGm0fOwlFB
 1G0U7QkhkLObduAh0MflfsjFykOLcJz71O7WCCTKXFiMwoEUQRaWt9W1Egbsaz1ZOSHx
 ZvhQnOHl+2LD3oopLE+vk951RMlMmgvwObS8naF5+jCWJQzgnGsVgqKoTBTWAIOQ/32i
 ZZ8A==
X-Gm-Message-State: AGi0Pub4CQTGtgsD0gP2sWGXl5g9ZYuumZ6c3Og7JkYgK23J5k2X61mp
 B5GpDrgQrUxcavGVUKDjMQ==
X-Google-Smtp-Source: APiQypLlwCkpYa4n/r1Dl73HpNAoUEjQYzF0myq5wOhev5KOXnIYY8OsFiBS/1oEbMxa6ypryajfqw==
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr9412066wro.399.1585929958228; 
 Fri, 03 Apr 2020 09:05:58 -0700 (PDT)
Received: from ninjahost.lan (host-92-23-85-227.as13285.net. [92.23.85.227])
 by smtp.gmail.com with ESMTPSA id l12sm12351426wrt.73.2020.04.03.09.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 09:05:57 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] video: Add missing annotation for
 cyber2000fb_enable_ddc() and cyber2000fb_disable_ddc()
Date: Fri,  3 Apr 2020 17:05:02 +0100
Message-Id: <20200403160505.2832-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200403160505.2832-1-jbi.octave@gmail.com>
References: <0/5>
 <20200403160505.2832-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_090600_197545_69CEF767 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
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
Cc: "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, boqun.feng@gmail.com,
 Russell King <linux@armlinux.org.uk>,
 "open list:FRAMEBUFFER LAYER" <dri-devel@lists.freedesktop.org>,
 "moderated list:CYBERPRO FB DRIVER" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse reports warnings at cyber2000fb_enable_ddc()
	and cyber2000fb_disable_ddc()

warning: context imbalance in cyber2000fb_enable_ddc()
	- wrong count at exit

warning: context imbalance in cyber2000fb_disable_ddc()
	- unexpected unlock

The root cause is the missing annotation at cyber2000fb_enable_ddc()
	and cyber2000fb_disable_ddc()

Add the missing __acquires(&cfb->reg_b0_lock) annotation
Add the missing __releases(&cfb->reg_b0_lock) annotation

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/video/fbdev/cyber2000fb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fbdev/cyber2000fb.c b/drivers/video/fbdev/cyber2000fb.c
index 460826a7ad55..513f58f28b0f 100644
--- a/drivers/video/fbdev/cyber2000fb.c
+++ b/drivers/video/fbdev/cyber2000fb.c
@@ -1160,12 +1160,14 @@ EXPORT_SYMBOL(cyber2000fb_detach);
 #define DDC_SDA_IN	(1 << 6)
 
 static void cyber2000fb_enable_ddc(struct cfb_info *cfb)
+	__acquires(&cfb->reg_b0_lock)
 {
 	spin_lock(&cfb->reg_b0_lock);
 	cyber2000fb_writew(0x1bf, 0x3ce, cfb);
 }
 
 static void cyber2000fb_disable_ddc(struct cfb_info *cfb)
+	__releases(&cfb->reg_b0_lock)
 {
 	cyber2000fb_writew(0x0bf, 0x3ce, cfb);
 	spin_unlock(&cfb->reg_b0_lock);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
