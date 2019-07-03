Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8179E5DF5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1FRcQX7QCEM3eCZYQFA19WcLEyzCwAu8TqMods43ss=; b=aTl1cjjRMpUAzQ
	ytUrFPSFLf14YHEj7xSTX3ZtTgxObgISnAbXGvXWEPi6IYb1YiuPwYcawvx6wJC5bTaRW/pW2I68U
	9+bLwi3Fknojj6Yx9Lw1zxymFpeTsY6Cfjdx4Al4HT3kpnoXzKJVNzxb8ZxdPV+9ilIBiH0aQekUC
	eocR76dolLGs/KcQ4Vm2TWMBTkZkHBgzZPjPVMCtgijW9NQBomy5kCopBgV+6wUdLNWetm7KR57XH
	4oNjlgEeXFAwq/VcYNpmbKJvXx4xVCPl6/Y1dPIEdR1fize0A10Y51TSl2+QJL6/7/QfDi1mFIbjP
	DltjN4t/KJKD6wQBWRmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaOc-0003WW-6m; Wed, 03 Jul 2019 08:13:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaOR-0003Vv-Ur
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:13:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id 9so803915ple.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BvJNwkPS9MfNl5cMsC1QP7QkMzi/DuELy2LvBnmsMXs=;
 b=lVKLv9ep+x4cUvfF60e2j506ilKkHO6GJ9kMGHlE16ajbL+aUPEEM5VQAC6ea0Bldg
 JELTiHoLc+YIjPM+QPlPf3s6whkUv9WCjVkrb9BjMPoiXgeiwiQ1nTMFlgaks4IDjskG
 0fgyOsK2vtV9xEHR7ZT0fOL/B2opBXSj2h5l+UdEpM1YuBjWJa0wPoV7ob8l3qqIAOTr
 vFuyiv9yqqiITs5cpwC3l380edGBtpIjt3jVRO9ocbLYjW4xtkfe8V8K4+hlo8UCt1pt
 7cv0tjmysRqss+du9MGt7dKW2lha1blcf4PAFNaJg4ObAmXj5Ld+TPmEAFnwdAc7oBYs
 jc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BvJNwkPS9MfNl5cMsC1QP7QkMzi/DuELy2LvBnmsMXs=;
 b=rO+F4ZwFgmCjlQ+w7GcJSV47Z9QUuUpWgIw9BEYlaVEv88uJdwvzQAhDpGQCLRG0Do
 wDLw51i93Tz7bF+dvHqW8zM0mlTO/55dSGu6nIIQGfm8rqXgq9k18975TLSlJ7DZm1VL
 Ysz7p+CcH/unOFBOGpA85uyWO3SGPCd+7nLqKXDMPOGbCjjZSuuQFipivZbb2XEfEb9V
 tD37MiT4Fpru/9rXQ93oTdMzAsH4QxBk87nprv84kGZYoxc2IQBdgHeDqZPXFhAKQXaK
 f6hs3IS3vQwAxQl/Gc/Tb1lRrBDMVYptd5QdWdPUCbBmP97+R42VzrD9B7hRkwt4HVlc
 zpHw==
X-Gm-Message-State: APjAAAWGfc/eVdg30qnZJ0D9umnXNvCiaYqH6G+NUMosM5O9UisZROT1
 HsywGFTUuKe1UxhnxnNiWSI=
X-Google-Smtp-Source: APXvYqyU1k/W96dJNhLR99ByjoiAJ5wVF3nwNApkKn61Qi1jDrfWmGEXDoi1IdFinLjkKK+4fQ8R1Q==
X-Received: by 2002:a17:902:b284:: with SMTP id
 u4mr42218344plr.36.1562141610635; 
 Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m6sm1176450pjl.18.2019.07.03.01.13.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
Date: Wed,  3 Jul 2019 13:43:16 +0530
Message-Id: <20190703081317.22795-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_011331_997028_2B2C1449 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change return type of cedrus_find_format to bool as it is only called
once, by a function whose return value is bool, and the return value of
cedrus_find_format is returned as-is at the call-site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 9673874ece10..0ec31b9e0aea 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
 	return container_of(file->private_data, struct cedrus_ctx, fh);
 }
 
-static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
-						unsigned int capabilities)
+static bool cedrus_find_format(u32 pixelformat, u32 directions,
+			       unsigned int capabilities)
 {
 	struct cedrus_format *fmt;
 	unsigned int i;
@@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 
 		if (fmt->pixelformat == pixelformat &&
 		    (fmt->directions & directions) != 0)
-			break;
+			return true;
 	}
 
-	if (i == CEDRUS_FORMATS_COUNT)
-		return NULL;
-
-	return &cedrus_formats[i];
+	return false;
 }
 
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
