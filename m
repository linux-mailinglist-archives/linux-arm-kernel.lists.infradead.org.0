Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7D16F496
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 20:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4qtitcrCkZQxXIEPF/cM0623r3OVx6wLrcvJ/xH+Uok=; b=iGqVUP4tCgbOQp
	njdV7aM2IbsRomAtfwuG343hDzsgVSktjo+lbNX8yYIhJGWJA2KcM5HciRai+9b56Yf0W3nDqVeqs
	RspV4hEV593UwQpIoPO/vdAoOCiUmfWuTAMZUBfOfwr4tg3DF0vTW5dPs2XklSbDjauFyH0Ptgc4d
	v89GWOuOWhvxHBik6dvxlS/+Md1viM0Mll1pwFXbuNZzTM1khDdMr+YUKfsZncnrV6JyVefv3FEhM
	iaKhf/OqZnBRJ75jQQzpb/lmCpnkaROwlEPxj3GYzcXPuwVe2p1XS4rgfmNVCKueYObYpyycEmUYL
	3pfIPV4BNPlSuqZLcEEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpGNL-0001OL-Th; Sun, 21 Jul 2019 18:15:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpGN5-0001Ir-F4
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 18:15:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id c2so18000838plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 11:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RWwLZt/rt3rzH+QJKbsOFH6f0FNBf1yA2AONMe227Ak=;
 b=P2EYg2QAnNUbU3edGEbUEtYVrJRG76A7b0Brz9dpH6TpPooOr0Jo1P0e8Gdft5T3dn
 PP/qZG+gyty4qKDJl0c1Vy8cbBApIuwPOUTFiBgPD8QyvXZt/IagX/d9+BkqvDZTl2il
 C+MUUBa0fm6EG3pqtQPCiWsu79ojKs/Jl1IOXAFaE2dwGRVxwosrUVk5A9AL9Owwcvdk
 fJe6vKUKzFReByV1D6poE8WPcJiyhlmsAWUdmhocaYsP3coFXxw4WkF8W83qcgY8jAMO
 qcktb+53nUerGJE2SkSn4Lc9+2bmJkG0FO/VzoOssUjCuP++aUiHOku1/669hBw6J3Ha
 hTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RWwLZt/rt3rzH+QJKbsOFH6f0FNBf1yA2AONMe227Ak=;
 b=cXM6ZyKfZKxggcqzCRc9Dfa4Hqw630/+lKYwgk1w1u037sMDpSF1v76XuxrA1ygKo1
 ZAEXVdGNvTg58wvJQi4H34xAHljhKpGLWXvo0tYQddHrLR6SY7kjwH3jsSc3uyZs+H5V
 XLwg1qi6d6LPy77Se1Bg2hUV0kGBmiBGHqCH0Ru5SSAiSdxqGhYS4tXY3iLtmyqX0yO/
 QV22PimcGsari3IWTyvgNDr0g0AcG1kumDUHmoad8c3+/f9YAAzjNrqIm4ObeDPPPiJw
 j62qRyLgPKMBHS4UupREdoSWxm8JJhkFRxmkZW4y2aZmWpuG0sOnWKHIb0aIvZdkqqya
 uQ9Q==
X-Gm-Message-State: APjAAAXTMzqA7oIq9Ky4Heh1ga4KGgIsJ4pvb4bhgW4CvrKTMvDkw5TS
 0t/tkdHpaVtIfPzez7xngNT9wpVt
X-Google-Smtp-Source: APXvYqxsFR6/nJOopb1myYnRstaWcWMyoLeAJ5eu/0DJ3inVuljlHLs/0ckz4mLYB2FUulM73NnvJw==
X-Received: by 2002:a17:902:124:: with SMTP id
 33mr72747169plb.145.1563732942128; 
 Sun, 21 Jul 2019 11:15:42 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id 35sm38914619pgw.91.2019.07.21.11.15.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 11:15:41 -0700 (PDT)
Date: Sun, 21 Jul 2019 23:45:36 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Mans Rullgard <mans@mansr.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] irqchip/tango: Add NULL check after memory operation
Message-ID: <20190721181536.GA13450@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_111543_535230_B17FC6F3 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add NULL check after kzalloc operation.

Fix below issue reported by coccicheck
./drivers/irqchip/irq-tango.c:189:1-5: alloc with no test, possible
model on line 193

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/irqchip/irq-tango.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/irqchip/irq-tango.c b/drivers/irqchip/irq-tango.c
index 34290f0..761b9fa 100644
--- a/drivers/irqchip/irq-tango.c
+++ b/drivers/irqchip/irq-tango.c
@@ -187,6 +187,8 @@ static int __init tangox_irq_init(void __iomem *base, struct resource *baseres,
 		panic("%pOFn: failed to get address", node);
 
 	chip = kzalloc(sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
 	chip->ctl = res.start - baseres->start;
 	chip->base = base;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
