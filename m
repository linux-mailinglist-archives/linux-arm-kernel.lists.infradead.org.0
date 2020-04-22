Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC3C1B3CE4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jjMgl8U6gIoHqnwQjqfbpAM1XbkwzJwLcvd7uHwXKk=; b=oj9BZdUwr07IPo
	euRTwoXnw0cHn3t7BL0OVAhv4v/iHgia1A1IMBnHHcOnWLnarf+I+iZJnF/aweQ4fC65Od8ZJh9Z5
	ng+ocMPnZw1yiXgmIoFsIq7BKqqOqaL6vCZqDYbH0zQPUqHXmTNf93IMc/8rDauKaBTU841xwf2tO
	zJN1AWCun/UtzaMBmL2X2fUbHRO0v7cTfGWVy5l6dMIeucEB2G9QAeykju/WpElDm1Gy19bX4IJ1V
	s5BNVL9nTwAfgGuY38zB6HiWQmtr6dRdWZfBdHq6ZY9iyTIXWsJ4iCrrgYwDB9bj/3uY1IMsVMcbN
	4bFPQh+sNGMvBX8yR+9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCLF-0004Cv-KM; Wed, 22 Apr 2020 10:10:53 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCKg-00042R-Ft
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:10:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id k28so1147417lfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 03:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6DnVKRB6NIRjwPWAXMLQ0NJgkEo62OoeU3KPTioqDw=;
 b=KObRodabLDVnh1RpbkhyXvi3gbBuwT9PIEfxCQHFdpvCFUN4d+kPA4VAHcRZ0RmfVZ
 4wIxqA6/QeN4pIEGPxiruC+Wizaj1UgClk2twBJwLYA2KBkeFCQVRwwAjmdMB/BoSkB6
 r0AGQiT09nh4MdZh/BYj9bHL+W2gJtzl2/Z/wSMvMN7E0k10z4EmkCrpKMeu3+5jfc98
 JQsmBEmWCQqQBBzMEAC9wIQz0e2+Tu9TzKVjO/TR1zp3LnZK8eP8DzkVpWzZzZeasvxE
 +Ex9E8rxacadZ+yRRA/FMveBBk1RwMPUPgpDv6wlQi9J/i9v18jGoBlxjLEMNJRwtqTs
 wGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6DnVKRB6NIRjwPWAXMLQ0NJgkEo62OoeU3KPTioqDw=;
 b=P1qGtoJV4cm1Tw8So3sP1gXAJNUJGyhnTKBSH080P3lLRInLQ3cLDiUb7GVEo8PGwX
 R1eSNFWN0tX0NYZls4fAWMqrqX2EEzhJ8QnkUN6sbDDF+8vGQVPYWeO2WhiouOhbPrME
 rdj2vkshcDDeOsldSpaxkPeabb3yi6zbX1x4mtf8B5MifcwEkjGq+V28zsCq5aLA3yue
 jh42/avN99EE9tiw18N5B8ChdHy9eKEuYDHKqanJeofrgjOBUnQCOvSqtKiNL7+TMg9P
 z9Jdj16DogtlFqHfB+SRn23cXD69Gsks7xpAUUXi0r9TfHNhVpBmcS2IA2LQm4f1ITlF
 JaNg==
X-Gm-Message-State: AGi0PuY12IMVtZrvyKUWrqjTIvrPgZYDs6sarVFTsjcQBhcCR9R5+1VH
 8fhSTG8j4BkPN4hMFrPcqr9STg==
X-Google-Smtp-Source: APiQypLiEWMoI272TzvgNnpPzocl0qlAVahabYTkLZn37KAuy/71WeWwggv4+DDRNoenNgGXkegsaw==
X-Received: by 2002:a19:ee11:: with SMTP id g17mr16425495lfb.42.1587550216225; 
 Wed, 22 Apr 2020 03:10:16 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id s6sm4246018lfs.74.2020.04.22.03.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 03:10:15 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v2 2/2] amba: Initialize dma_parms for amba devices
Date: Wed, 22 Apr 2020 12:10:13 +0200
Message-Id: <20200422101013.31267-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031018_577084_64357FF6 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 stable@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's currently the amba driver's responsibility to initialize the pointer,
dma_parms, for its corresponding struct device. The benefit with this
approach allows us to avoid the initialization and to not waste memory for
the struct device_dma_parameters, as this can be decided on a case by case
basis.

However, it has turned out that this approach is not very practical. Not
only does it lead to open coding, but also to real errors. In principle
callers of dma_set_max_seg_size() doesn't check the error code, but just
assumes it succeeds.

For these reasons, let's do the initialization from the common amba bus at
the device registration point. This also follows the way the PCI devices
are being managed, see pci_device_add().

Suggested-by: Christoph Hellwig <hch@lst.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: <stable@vger.kernel.org>
Tested-by: Haibo Chen <haibo.chen@nxp.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/amba/bus.c       | 1 +
 include/linux/amba/bus.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index fe1523664816..8558b629880b 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -645,6 +645,7 @@ static void amba_device_initialize(struct amba_device *dev, const char *name)
 	dev->dev.release = amba_device_release;
 	dev->dev.bus = &amba_bustype;
 	dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
+	dev->dev.dma_parms = &dev->dma_parms;
 	dev->res.name = dev_name(&dev->dev);
 }
 
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 26f0ecf401ea..0bbfd647f5c6 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -65,6 +65,7 @@ struct amba_device {
 	struct device		dev;
 	struct resource		res;
 	struct clk		*pclk;
+	struct device_dma_parameters dma_parms;
 	unsigned int		periphid;
 	unsigned int		cid;
 	struct amba_cs_uci_id	uci;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
