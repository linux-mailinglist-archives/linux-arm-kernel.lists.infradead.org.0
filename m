Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29CF1A7FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 15:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=29cqcpp58a534THky0HgIYYBHpMDeVx4KiMq+M9oXiw=; b=CAJiAD5UI9dhi2
	J8A8YQV2RtQRN9ZwLT5rb6xQbFhvFs5KtYUuUW+b/5qF4mo6BQrwuADGkfVg5cTwtKYJZUuCVwgcI
	rOQs374CTQzQ8lM/XmKmmploPGfYtPq2AxhnwNVx69ReY7MRWZu81coSd1RFZnaDxYohzn+R8oK1v
	ynqCQaSQ6HzfpuOWtKWAg1aU98zBxtwr6vgxgcgI5UfVq/aSSFTwmZZneZDu22wGFO7VQptLVnqtk
	7w85wkp3SnVMQXpoyYy7fIqfnASeEnQmbHDWZLfIHQQPekSdLDgbBUCQYIWTAQdTD9J3UChiWIUN2
	Sf1ttFzKSysMgKxY5uvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPSFr-0002Ud-2z; Sat, 11 May 2019 13:41:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPSFi-0002U0-4g
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 13:41:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so4700672pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 06:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:to:cc:subject:mime-version:content-disposition
 :user-agent; bh=fMbhxbGSMg6IyfZVoXPipxwzBU2Akzjdq8jUr8r58Es=;
 b=WjHMIV7z89eRvB7MKFxUJmzX14CLSFQdjYN/CWmy3f3zArIrZI4+3wlGNA6BSqdM9M
 OZ036V09A0yaMcSuduAqBLdBqmXn9W30UcwbTN0PPDsPOHZpCvfB1rteWL5GCHUd3jLP
 a8P39aksSv/X0jySZpPY1Hpo3OGyvActIE2iTLIre3nc7Ie1ilJLDGSa3LgnKKxQ+4xf
 HxA/U/dxOgpVq75IILg57kMhwOeI3/u1TMzQi3vRzKiJRDTzLOzQdFoGtQJ80YDqiZCR
 JUdVJjsMjnxS+CgnbTMK3zvOsw4H5hzjB/5GLJdx3zjDIbGfLdhrTIA8C4eH06Iuu2sc
 jN7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
 :content-disposition:user-agent;
 bh=fMbhxbGSMg6IyfZVoXPipxwzBU2Akzjdq8jUr8r58Es=;
 b=QsjKhBFjMM5p3zezn/hRtNnf438xjSBkAFHe5p0r5A0QW+ubX5feuFd0v3npw2zJmD
 EeuU5E+/Pnsfw7wEhvYiR9MT/iuNJYv5fkSA600jgndv/WAeIcNpL8ctDQV49sEH1+k/
 MqFXwaVed5A6BzIhZku95bNZjWMrpIqoNcg/I9WppTD54hG+R/UF3/WSSrFmim2yhjav
 mazVPNicEp+107WIRah9bEbF9YnDz2P5TIi2vSINTgyKwGR/3WG0xxIT0HIH0Nc6jy1r
 OGRB3Yok0zYEKWR8b30Vb59AnS9DO60qPcljvzb2j2pKDb7N71jZSi41Zryj4Q5ac/Ng
 6Vfw==
X-Gm-Message-State: APjAAAXOaB2YUr3yjBUYgE43GVajKn5V1/8hLNMFehqsrfbFl1ZSBqFR
 Z2/cZFHO08eU3KBq3kS42Z4=
X-Google-Smtp-Source: APXvYqyQ2Q4LRWGH2zCQqkTNkeYBRTC9/zl1HH+gmEa+mh71EI2WR5NG+Gw0RgAsL44ne6CaNG0Xlg==
X-Received: by 2002:a63:6fce:: with SMTP id
 k197mr21066887pgc.140.1557582083914; 
 Sat, 11 May 2019 06:41:23 -0700 (PDT)
Received: from sabyasachi ([2405:205:6182:13c5:4c7b:e4f7:a66c:4459])
 by smtp.gmail.com with ESMTPSA id 132sm9981863pga.79.2019.05.11.06.41.22
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 11 May 2019 06:41:22 -0700 (PDT)
Message-ID: <5cd6d102.1c69fb81.b7df1.aae9@mx.google.com>
X-Google-Original-Message-ID: <20190511134117.GA5069@sabyasachi.linux@gmail.com>
Date: Sat, 11 May 2019 19:11:17 +0530
From: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: Remove duplicate header
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_064126_218517_66F74086 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sabyasachi.linux[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jrdr.linux@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove linux/tty.h which is included more than once

Signed-off-by: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
---
 arch/arm/mach-sa1100/hackkit.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-sa1100/hackkit.c b/arch/arm/mach-sa1100/hackkit.c
index 643d5f2..0016d25 100644
--- a/arch/arm/mach-sa1100/hackkit.c
+++ b/arch/arm/mach-sa1100/hackkit.c
@@ -22,7 +22,6 @@
 #include <linux/serial_core.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
-#include <linux/tty.h>
 #include <linux/gpio.h>
 #include <linux/leds.h>
 #include <linux/platform_device.h>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
