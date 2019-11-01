Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66CFEBC34
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hrYjVC0XkYyYkliRvS4OIWiylweVp22qBm1+7JqMPNI=; b=Bx8
	eyHjAU0qHnx9jSTxFWXBk7S0DdHlZpjXohk6suCATLzLFG23ANha5QeLMAfTDoYJFEqZmQ3m1s2va
	JSZmFRMjGiAPWjq0AMjhRdpRjp8CMIEjwUIxYvrn8raJyIDW6Ki1j3sEB3Bn3fNHZlwCDCMlggd6I
	7S2FWj8EMYVeaHrB5ow9CUndEhqC2eJziWjV8mvQ3WPbbHm0sXzKk7sYzc1ITXFY+A6PaBUDgmfZr
	D7NlS9mAoxC63dINaG+P/4r9lgpiJQcXfwA6Ciqox0rEJYFymeXSHTylqf7UJeKPpytIZqmEO+fkD
	+jCaksQI5MvvmJ1DX07SaLGTHj3Skkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNGm-00067G-40; Fri, 01 Nov 2019 03:06:36 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNGc-00066s-VN
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:06:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id t26so3760367wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ABoCwU9PP9ddyUwXERXcCZdYWkmzW6JWRZWKZZduMb8=;
 b=fipki4JiNUGyDzM+Uhc6AJgfupy3T53fUwGXdyAPBips59hmCtphQspTnuEcGfG3aU
 fcWZQICG3N0MgtYCEPy3CVcxS1ogVjKr+kUtuISKj8JqU6SGRrucgJ6Yt/O13E6WA8LI
 M+4q5vFDs8Dfwqti3Ng+jhtVUG/H8A9nYazaBrk9MIrgk0k9zIcwrpt/cATyNpZsvRtx
 dIXCArYC0M6rwTQVrDAeYclcMV/slp98rLSJsJgFNKqTe+rjYhm2CHxZcKJ+IvLdpYFE
 a/j2O3elx9oo86L0xZ3X0uFvO7pzJYJnWJ3R2OSxuBeN95Mpsh/crlUZPmDy9gl87Lqn
 LzEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ABoCwU9PP9ddyUwXERXcCZdYWkmzW6JWRZWKZZduMb8=;
 b=g3y6v2DVsnY8aaWsLpr9z85+cM5YWEy74ZrFer77nXJiB7Ga2IgC041raz9QMFIwTz
 /6+wRkOmLy9aedCseyZBOMyuH2BjCSVrtVg2PVXx7+4qz+jUtoCeiFX3lhAj5MEfFf8O
 VqXNY5gaP8nix0M+RYuuOcAV+MyyP/azRl0+s56VAVn9FCxcjYS6Jo8yhmeI58ye6/5N
 qmYtyRHaY9DdKTgJEq3A3Lb0syjLWJpFIGLBSFlJyJR65M9XfpADl72ugUOT4vSEkuiF
 UzYxOiEyVg0izyVOWKpKvWubnXGqcsyLNHfDDaa/jhonCMHN33XwZNq0jj9X99zgfhuF
 +51w==
X-Gm-Message-State: APjAAAW0zzxhfDOrf284sxHZDTocANrbQOKlnKL9ru9wS8D+R0IakE/h
 mBwxU0d9k4Dk2huPpyjNKow=
X-Google-Smtp-Source: APXvYqxuscdYaOY+WQrYM+P8BeaEGx5d1Xq3998VHM+OFwKySzE77N586ldM9L8zBHAtJieEBn01vg==
X-Received: by 2002:a05:600c:20c7:: with SMTP id
 y7mr7292101wmm.34.1572577585137; 
 Thu, 31 Oct 2019 20:06:25 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j11sm2625299wrq.26.2019.10.31.20.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:06:24 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH] reset: brcmstb: Fix resource checks
Date: Thu, 31 Oct 2019 20:06:15 -0700
Message-Id: <20191101030616.27372-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200627_012051_5BE3EF0B 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The use of IS_ALIGNED() is incorrect, the typical resource we pass looks
like this: start: 0x8404318, size: 0x30. When using IS_ALIGNED() we will
get the following 0x8404318 & (0x18 - 1) = 0x10 which is definitively
not equal to 0.

Replace this with an appropriate check on the start address and the
resource size to be a multiple of SW_INIT_BANK_SIZE.

Fixes: 77750bc089e4 ("reset: Add Broadcom STB SW_INIT reset controller driver")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/reset/reset-brcmstb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-brcmstb.c b/drivers/reset/reset-brcmstb.c
index a608f445dad6..21ca6fa51365 100644
--- a/drivers/reset/reset-brcmstb.c
+++ b/drivers/reset/reset-brcmstb.c
@@ -91,8 +91,8 @@ static int brcmstb_reset_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!IS_ALIGNED(res->start, SW_INIT_BANK_SIZE) ||
-	    !IS_ALIGNED(resource_size(res), SW_INIT_BANK_SIZE)) {
+	if ((res->start & SW_INIT_BANK_SIZE) != SW_INIT_BANK_SIZE ||
+	    resource_size(res) % SW_INIT_BANK_SIZE) {
 		dev_err(kdev, "incorrect register range\n");
 		return -EINVAL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
