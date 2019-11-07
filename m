Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F06DF2B1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PfnkZlzL4nYREbCtSpjsiq2edonw1enPCutcugJDBTk=; b=b++yqH5B2QG3pS
	JjSa3C/kepu1G6S/YqceLUgb/Pa/ZT3Q/HdVrI3Z/H1Rd7eGyABJ+ht1r9eXLPoY3TsvdLJQgR2OZ
	bk2OCdTuo4lzN1I3ctAxWNGAxLZKY/s/OENYwah2qOCbNYcRa6YJzUdYBZVAV8lrEnqoSdDQPq/oy
	Ld8kErMP+rQibJKd7dTAHCOBmohk0XTnMyE8bG5vcX15uniD2TngXc3dr13fz6rfEpJNrndbJauxZ
	cfj+uu6+yuSkcWnyaineLQllE5jJFNPZveHtabqGzhMuhjwPUB1Tl8pS8brLTBwSvd0XsJzPncLO7
	hXh+VHyh/pWXQHoQrESw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeN4-0008MU-GH; Thu, 07 Nov 2019 09:46:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeMo-0008Kk-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:46:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id b3so2165909wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 01:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EYdHQ/UO27K++cZW9zQuGji5xNvlsvTd2fpe7ujHCIY=;
 b=tFeI+bI82f7A9CpRrm9gCaaLcV7L2rzG0cOBj47LsplQyzscDWZ3uSLmVVhWH5Ll/l
 RJcMzMHrmLR+NhhG5jy+j6QjSH5iqcUjFJr+m34ITo3AtN4W/0mMXab9iywV2TSwnVJm
 4fi8CMpuw3leDD1mdEP8zY6PvqvgXP9UAYbQ1VKb+5KwJtbHQe+ShVBdOHZtjg2EU984
 YoTOK6R2M/Jfjqzg1PULRDczEaDkzOe/PyLGA3BXMTShRJybE++WeCLiXu0jHXYyfiF9
 Dnt9h7jgQzXBV6HK1JsB6bcryzs8ANOWZJCdw73JfF2yrIR5ulTaBfuWTTq1MidZQcjR
 RQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EYdHQ/UO27K++cZW9zQuGji5xNvlsvTd2fpe7ujHCIY=;
 b=P1iDMjwEuj1kLoGohZT4Zmv+3SwezyLbjZnoVj+CS6+x+FSe+g70FZRl7appP+SPfz
 ZfL77ShIGz3lVHd7BL8Hxtidd5X71w+HK9RTVlARM6/oH/YM1iqZyaxXv9d5qEa6ny6F
 mqAaRuGfktzO1uxr5lR3B35VLBXkVXQYEyvhHtVhyaSGe2B/lSB+wG0FerKY2pqVP5Tv
 GUW6HHuxqa9ew7H5dFo9RYvHMrCqIUfu97WZGj5dDulh9HuXhRDyRHleYxKgoqVsKg2W
 Jp769E4KiV525iVehO3151vYtkABovtbkIIAX8Bwi47UnIEkGM5Hc7sUoSOs1ph7L7BG
 xahA==
X-Gm-Message-State: APjAAAWWgjDECBMZmYr4J2E2tbFUl5RpTOMn/5OOUlZwKqGa4OWJag1X
 LOaKWZXzKnRcGvPh58Qj5nZYiw==
X-Google-Smtp-Source: APXvYqx6uFZ7ophY/dHYBLgpfGDu/hW16RYAXW1k4gUoFsC70OQxNUBqA9m6WSaXBdxp1jtieD8bSg==
X-Received: by 2002:a5d:4808:: with SMTP id l8mr1912912wrq.118.1573119972703; 
 Thu, 07 Nov 2019 01:46:12 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id j14sm1917896wrj.35.2019.11.07.01.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 01:46:12 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] bluetooth: btmtksdio: add MODULE_DEVICE_TABLE()
Date: Thu,  7 Nov 2019 10:46:10 +0100
Message-Id: <20191107094610.22132-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014614_642821_31468771 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-bluetooth@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds the missing MODULE_DEVICE_TABLE() for SDIO IDs. While certain
platforms using this driver indeed have HW issues causing problems if
the module is loaded too early - this should be handled from user-space
by blacklisting it or delaying the loading.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/bluetooth/btmtksdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bluetooth/btmtksdio.c b/drivers/bluetooth/btmtksdio.c
index 813338288453..519788c442ca 100644
--- a/drivers/bluetooth/btmtksdio.c
+++ b/drivers/bluetooth/btmtksdio.c
@@ -57,6 +57,7 @@ static const struct sdio_device_id btmtksdio_table[] = {
 	 .driver_data = (kernel_ulong_t)&mt7668_data },
 	{ }	/* Terminating entry */
 };
+MODULE_DEVICE_TABLE(sdio, btmtksdio_table);
 
 #define MTK_REG_CHLPCR		0x4	/* W1S */
 #define C_INT_EN_SET		BIT(0)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
