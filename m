Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2212DA9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 18:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CPBTh3XLYkB8DSHB6FkrTAtzgqQ7bhqRJwzuWxsgo+U=; b=WYq
	/XPFZIHqW7eWbEd2hucYEtP4i6pUxRfo/tJ7gF4SK/lEY4scH0rBaxxfYxwFSR1EXNPLHbg3tu4yM
	XZ2IFjP979ujgFMVvSgnliWq4Bf8QGsphVqzq5l0MHbyQLddZVgvCrtlUL9SaC86XXzRMYZHwC4Sl
	To8un3Rd83EhoZgXrMJjmwGuT69z0nBrhBcGKOCbKCURaK2Ovfso8O8yb0meWeSCf/aRqFZVB9e8p
	X/56C/BRyFpCTY/7wh8ZY4Y4pRw+jCqkm1tFtzfL2Y634fyRWpdLInIjvLzW8iJzPaYBLDnU6MWVu
	rkBq2fQ58/9bsRbX7YzJrbHGydPRuzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imLNS-0003JJ-BB; Tue, 31 Dec 2019 17:32:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imLNM-0003It-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 17:32:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id 4so19956770pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 09:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Hbn9T0WEquldwLrNS92g1HHCDxMmFMLfGfxo1URZsUU=;
 b=EuWH2Zd2THEALu8UGE3zjlgf109pwcYntt4yplbyc/FGqtvnu6un2uZMV7KrXoMrdK
 ukDw4++LXcFb9/zQawp5v/ob9bMcFx7jpa4Vo5NPnk1453SpPJr5/F+6JEDnlS3HqFCF
 BltqGQ0kNxu8i5BctWf+/Mnh34vmzUHs5MzQULG0MuvfaW/N01ppLZJdUcECWhBOv+Ov
 nfbg8kiOmYGw2JKE6CB1tkrICaqyhcMJZsIUYZWnkRdglYX3/C7Uz4c0MPC9S+E/8Iqh
 rFr1YFWFak9Wg/VfSCt/aqiSI9pMcxcxsFRp40d7gR/jWosik/31Hiy8PLVN5IbhrVga
 qfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Hbn9T0WEquldwLrNS92g1HHCDxMmFMLfGfxo1URZsUU=;
 b=b2lMCXOOj0Ncfeyd4qzdnT00+KIUu1Nnl8SQTA5+gfOynmzrshjxefJvLDExRqWY8X
 0PFC4p2oymBDrAztYeoeUpAa7gjGsgUeQAmnMw9VLodBYXy9dX7WAGW1NlVBpfFFjULF
 Yc/0T5y9Xa6Ww8xSDI0wuJCRdpxxXhinek8+8IHEx3qr8SBSv1d5T4htOQ/tkWGdGilL
 LLfumc1h6NKmpXI4aza/oxy4oSm0dZDM5LynwhKTjyOHzY2RA4IOtmPSwtRnVXLr1Q/R
 Nbk3SP6ig0ONhj9m/rD9ZWDfnOemDMMddXdCzbi58KTXmkwPQO6dqtIXgNvQU9pNJfSm
 cLEw==
X-Gm-Message-State: APjAAAWD7ZN4OPnN89457yO5Gxi7z33VsXCIp8gh+PRclBhpTP/ugrjE
 kZ8yT8y+AmjavNib9Iug0SM=
X-Google-Smtp-Source: APXvYqymkI+kJ1i4YKRNSQDAzsFguiBNc5qIzGlZa2E2sK1tVIlbgp4+Pyp7rV+/luBXzfGAr3n64Q==
X-Received: by 2002:a63:c652:: with SMTP id x18mr79704741pgg.211.1577813529749; 
 Tue, 31 Dec 2019 09:32:09 -0800 (PST)
Received: from localhost.localdomain ([113.30.156.69])
 by smtp.googlemail.com with ESMTPSA id o19sm4915232pjr.2.2019.12.31.09.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 09:32:09 -0800 (PST)
From: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] ARM: fix a gramatical error in the comments
Date: Tue, 31 Dec 2019 23:01:42 +0530
Message-Id: <20191231173144.13077-1-ymdatta.work@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_093212_808073_D0D50873 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ymdatta.work[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, trivial@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 ymdatta.work@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a gramatical mistake in the comments which says 'an dtb'
which instead should be 'a dtb', as dtb doesn't begin with a vowel
sound. Fix it.

Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
---
 arch/arm/kernel/devtree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/devtree.c b/arch/arm/kernel/devtree.c
index 39c978698406..8883caed6cb6 100644
--- a/arch/arm/kernel/devtree.c
+++ b/arch/arm/kernel/devtree.c
@@ -202,7 +202,7 @@ static const void * __init arch_get_next_mach(const char *const **match)
 }
 
 /**
- * setup_machine_fdt - Machine setup when an dtb was passed to the kernel
+ * setup_machine_fdt - Machine setup when a dtb was passed to the kernel
  * @dt_phys: physical address of dt blob
  *
  * If a dtb was passed to the kernel in r2, then use it to choose the
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
