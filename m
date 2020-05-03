Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AF11C2EFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 22:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IPOjxa4PCk8ePasziUcf2tcWodzwvhQtaREuUnzmNwY=; b=Y54fVhEGzaG3s/
	sbHobWFno7RVk+s4yEIHxJax2MgtNKpuuKaf3WNeTLSgX+cm1N5GAt5kdLyDv1kwR9OQ0jGTn9Bb3
	lZBT53kXK+4vOR4O32hM7SNZdKUDBLS63848Bm43ew4ZRP712+D+XBd8eGCujuv9MhJ4nuYzMNBbG
	UWcmOlE1t82TGe9w6iGXlDyvMihSmWSrE37DVVBLz0ew+Ife7GAl97ZuHOotgTi5mnP9Rgtj1IgrR
	bvcaym3+/9RZC7qPYa2Fj7wcJQSe9MeOcSQ3FBslCreQG16VbSpXOsbT+2wMqL+8qF2+94TOLriVZ
	6ScDoBcLFmo3be7kJ6xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVKnS-0003QI-08; Sun, 03 May 2020 20:01:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVKnJ-0003P0-F5; Sun, 03 May 2020 20:00:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so18393292wrv.10;
 Sun, 03 May 2020 13:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=QqRdtHtAi8l/8c9aZkszbUa8kmMqeeh3ZFLZmpwUXmw=;
 b=rsR9nTkgNRQ+kOj8RXQMdPcb5bI+0UB8BKi8B9ep9Fqf9BS/e8KvpLxdg1mVz4ugaU
 4APvVLy9nGW/n6+rSDItFmATfsqLJLl/9LICi9eMNdXubXIXs57PsYy93bHAlhPj4mp5
 d1S6ahLhalEtMEIv1t3YNmwqb55REwYOa3Im+f6Daq5d+8T0T0CSmzfFQSXALCv0EeZP
 0KaPRpqYq+BPrpvJP8L1mE/H7707aUlh2To2vNkqES7iOLcW17IKBq6fBR45BHcFRLlp
 0F9RrnhzOnUxXvegK2atG9ikLrHzK5Piz/vCm5cAmlrT58VOwNEDZTGp0vd6RX2PwKCL
 79dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=QqRdtHtAi8l/8c9aZkszbUa8kmMqeeh3ZFLZmpwUXmw=;
 b=bPawxF+4kU/BxREulXMAxtIXlhQkRxPhcoG8MtlSebSmsvUBa8nyQQVzfabFnfs0ka
 RkHqi0PRqxJiuXPVMw2E0qY6VN/TRy2rYYbK651WpN6nVp3aU+n/clVD3RBS50b8Ts45
 oG1RD0Enm7OKQ6Ua+NkFsxnEDEfBcQhbgHwkG2PE+wGQvjQvuV4PUHB1jjGi6jRAfh0P
 n7RdMaY+WijEfy849pTrQDjBMFKWJFdGnnA02BWscq+oJHEwlyppsHJ5JoPHOvAaIVzM
 qoXtp2ZqqTAATzc/ZOwlDV06100Y2v9CE9zHfM/7Bgw3UcIipQYtj7Uba21Ga2iyaw7y
 Jegw==
X-Gm-Message-State: AGi0PuYs6xpIif+EGBWwIyCIPGk2RKBJDW8KeWH99t+JicGs/QN+wA4E
 6akuN0ivExzEYaNsSunR2C0=
X-Google-Smtp-Source: APiQypJ644QIvHgh2YqgFFZPR//UNfvakJMh9tvgXPWNy87mnUXcL1Kt5Wzc5PopV/ZAmqfmph3Ypg==
X-Received: by 2002:adf:9264:: with SMTP id 91mr2600213wrj.362.1588536055673; 
 Sun, 03 May 2020 13:00:55 -0700 (PDT)
Received: from vasteMachine (s559503e2.adsl.online.nl. [85.149.3.226])
 by smtp.gmail.com with ESMTPSA id q4sm9080597wrx.9.2020.05.03.13.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 13:00:55 -0700 (PDT)
Date: Sun, 3 May 2020 22:00:33 +0200
From: Jacko Dirks <jdirks.linuxdev@gmail.com>
To: Mark Brown <broonie@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-spi@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] spi: bcm2835: Fixes bare use of unsigned
Message-ID: <20200503200033.GA3256@vasteMachine>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_130057_506245_26E40FDA 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jdirks.linuxdev[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Jacko Dirks <jdirks.linuxdev@gmail.com>
---
 drivers/spi/spi-bcm2835.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 11c235879bb7..e10b8f3b4bab 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -191,12 +191,12 @@ static void bcm2835_debugfs_remove(struct bcm2835_spi *bs)
 }
 #endif /* CONFIG_DEBUG_FS */
 
-static inline u32 bcm2835_rd(struct bcm2835_spi *bs, unsigned reg)
+static inline u32 bcm2835_rd(struct bcm2835_spi *bs, unsigned int reg)
 {
 	return readl(bs->regs + reg);
 }
 
-static inline void bcm2835_wr(struct bcm2835_spi *bs, unsigned reg, u32 val)
+static inline void bcm2835_wr(struct bcm2835_spi *bs, unsigned int reg, u32 val)
 {
 	writel(val, bs->regs + reg);
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
