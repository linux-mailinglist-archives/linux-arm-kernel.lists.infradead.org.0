Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6BE36F3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YNY7fMYfzTirn1UyNZoX0LoZZ7/QYq5eqDTsePb6DjY=; b=XQynmkODukUdPw
	id5DcV6Z38fPiFstUfaYY9hk24451FUcpBKcEj4WKfAqnOnMJRBJHud8qWJFYWg1Bfvx65WroInnV
	i/+ShuL0E+JT9m+ol2kOM2CDw4dTI00iJ0o/w356OsqThLFevKlNDIAV0Ocs0Vs4hIpcWP94ay8d7
	STlYVoooDtBVS8Bbq4Ge4op46pw8ZJ7RBcGelYbojuN4ITtkNLAGQS8jnaaFHBfw9i5TyfSACfnYA
	A8sKBxGqJYuJL/Xa7M/ftHsT4JUg2U63tkJre21zaL5BilKJN4QO6RrgOgJMzL9FpCQKhyUVsSCwi
	n4XSXykVJ7WfVBeyZl+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoCl-0000S4-9g; Thu, 06 Jun 2019 08:57:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoCc-0000Qm-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:56:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so1522784wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 01:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X+dt00Qh8x0HQaYvs/wFWC/RRT+JLiip8W2CMV4OPCA=;
 b=gXh1GMRmsnTxYGhdwMzsN+VckI0EwWyFyk/k8lZJwDGqYqCc/QdUxBcCFiFQtQG89d
 Iqi4iRI+wC0JolDM4R8asAE6EdkkjHKMClfGjFYDbwxh0mWHlzVXgLky8LUHobhHBSjC
 TN/s3md2O0GtY5IAZoHAlE6ESBWXDPzOIFoEqeR2ycOnAjFTYQvUiAvAp9TXSffdPRSt
 bHieKspeavGywum0/FZse0LQo0s1ySK5Odi4gU/yh8SDwrnrBbxv/QEFngaz39/JMiPR
 wwZHXv6760J1eKBDpokpAmDL3687pDBl6n2+Phc0X2YVtlVtCsmScUuZnoOHGSjkTIWH
 iFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X+dt00Qh8x0HQaYvs/wFWC/RRT+JLiip8W2CMV4OPCA=;
 b=kEOtCNJsRuG67MZqovAB5aYq884IsZ/DbvPjV8wpsOPEg6CQgO0n1erc/1QUtWjcO7
 mmPEDQYdG4i3pXUa3BAxxZ99fhY+I6IoYmvHG7keudSUe2pufyGkK9Gxo2YluhBqjPZy
 cCTMFNVL17O22ptdrbjcD5FySYo0BQkPpBVOhy5NY5lXC8xgTB+mM4fzPtoILE3FlJio
 MFoRxriu949Q5DVzeWH9zJYiUjW+Gj4qq7FA0wxoa7c7ZqfdOwNm+uyQNU4jMR//an4o
 TyW34dvm5IyJnRQCLrAF8r5Xo1X6jNTDTmmMcp8uk0qoXEp6uT8HOY8l6yF0XX4j3Y5t
 kCLA==
X-Gm-Message-State: APjAAAVdI7fGGXeOE3AZoXs00zLzCvYsaSI32dE2k2mUbOkJKrm1wvtT
 js1xnpr3Ktc8nWn2bxY4zvJP7Q==
X-Google-Smtp-Source: APXvYqznMLUPjiqEwsRMhUzmodM6ZGK0zxBM/gAmVw54lgAUFVUUw+k8MUlJX7e708oiIu6Ysp8FKA==
X-Received: by 2002:a05:6000:181:: with SMTP id
 p1mr5549009wrx.247.1559811411480; 
 Thu, 06 Jun 2019 01:56:51 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f24sm1087334wmb.16.2019.06.06.01.56.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Jun 2019 01:56:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: arm@kernel.org
Subject: [PATCH 1/2] arm64: defconfig: enable Lima driver
Date: Thu,  6 Jun 2019 10:56:44 +0200
Message-Id: <20190606085645.31642-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_015654_724337_64C1C4AF 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olof@lixom.net, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bunch of arm64 boards can now use the Lima driver, let's enable it
in defconfig, it will be useful to have it enabled for KernelCI
boot and runtime testing.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d588ceb9aa3c..7e9d684332be 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -505,6 +505,7 @@ CONFIG_DRM_HISI_HIBMC=m
 CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MESON=m
 CONFIG_DRM_PL111=m
+CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
