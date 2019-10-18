Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5EBDD5A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 02:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1rtpoc20Q7WL39Igbxvo5NV9QObCgcC3GDbwSsVJkCk=; b=MKv
	0Jw0Yq2VE0KarlAx3UXbQnBhCh3mozizkTyGjbG7Q5xjRcHfs1xlzHy1gKCXs1H8LnmoUqIhYr9gQ
	oBYlEC3V93f+SpCiDGnRDWhWurYDJGQ/1lzZZ0ixtZCNl6PB7FgMFLeR5baghr9fCnUKmOHvCYa8C
	vAQXqVwIEjwXlI6Z7DZ/W9KHE6myr/hs+Vj570GCetCAu7jl6W+AHxR1h7Gh8TOHxhgLa52zk6qXY
	33SFC3QYKH+oWE0PZTu8oPgZkFZaiNi4j/rnBkg7H87j+X66FA+iLqDdITsAikaOhkYCtMSXj8TWo
	RR8KtxT6WyNpx7Ju+422xyWlJRGMU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLcDj-0003tO-5C; Sat, 19 Oct 2019 00:03:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLcDa-0003sr-Gw; Sat, 19 Oct 2019 00:03:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so7757560wmd.3;
 Fri, 18 Oct 2019 17:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WAd+eoXj8rMBgjdwJQ/n/lojcxhy8TyVDnA3tTrrWOQ=;
 b=baAQReQxk6oaFS2zApSA26y2fVX/yf1YvO270iCIx5N9S2FJn9xbq8S3V/Ixxn86Ji
 MnXzioVccBIzj1yKb7Dp9SOSr/ZQ1RObfnDh2J2LW1jEOtVbxubAw5NXSMTwynu+hlPn
 qNmNaU0n3NA6LI2NhzbQQEggNIjVSk971V5i1DWc7f9kwFwoSqM/SL7kSUl4glHSMMlH
 2ZXoLBqESIwAHEGXrh1E/zJeDqW3RBtgI/iDM3MTiK6rt91d/pBf4jEtZGQuVlGJkF8N
 8WGnPWM/YQv/T5qd0oVbSdyZsjTbH6ksjBiSN2Xa7ZrAWww7+LoHY7NqhH6SGzffH503
 3ytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WAd+eoXj8rMBgjdwJQ/n/lojcxhy8TyVDnA3tTrrWOQ=;
 b=r/NGKrmDOMDLPQaf0GrgI5bql3+YCTD/sKwstWO3L/liT/DoVBNkvaXl1a8tp3ZryV
 jBhBsShIP0niY+h2H67jSMkXFLDVfzbxAVERDlizxTB8SzJ8JrRibKCcors4z34TxWvt
 zfwv6UskCOpcRa3AviRAIcBdNiKRDe8f4e62/aYrYA8R+uOYmScJ/720+VvICykszUIs
 nxkokCrEzklm7E8itgNsmKjOss59WMLj4F2/Vp6bwJ/qC1GmKG9RQHEm35PNXHArPnXm
 HIGla2bZrNiq6Ar/tAvXA+3EEzmjcbkFt4hNEKJVzsb91tlMLA7RYZJRwAXjZTzj95mX
 uDBQ==
X-Gm-Message-State: APjAAAUECzktbTAbvQYy7cNxfaM82darmsJ9dULH4wDAPOaD48ARJ5xv
 WHnHz/T2ossN5V2flKyCthWCi1wj
X-Google-Smtp-Source: APXvYqxof3tazM3aejcDp5mrzkrOBHEEWgX3P6zZRV+hbvxON0hRCN69++MGXx6cJSkWf0+D9ku2KA==
X-Received: by 2002:a05:600c:2319:: with SMTP id
 25mr5327041wmo.3.1571443416275; 
 Fri, 18 Oct 2019 17:03:36 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n3sm7760800wrr.50.2019.10.18.17.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 17:03:35 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] mtd: rawnand: brcmnand: Fix sparse warning in has_flash_dma()
Date: Fri, 18 Oct 2019 16:38:44 -0700
Message-Id: <20191018233844.23838-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_170338_586399_DAA40D01 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:BROADCOM STB NAND FLASH DRIVER" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "open list:BROADCOM STB NAND FLASH DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse rightfully complained about has_flash_dma():
+drivers/mtd/nand/brcmnand/brcmnand.c:951:40: warning: Using plain integer as NULL pointer [sparse]

Fixes: 27c5b17cd1b1 ("mtd: nand: add NAND driver "library" for Broadcom STB NAND controller")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 15ef30b368a5..73f7a0945399 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -909,7 +909,7 @@ static inline void brcmnand_set_wp(struct brcmnand_controller *ctrl, bool en)
 
 static inline bool has_flash_dma(struct brcmnand_controller *ctrl)
 {
-	return ctrl->flash_dma_base;
+	return ctrl->flash_dma_base != NULL;
 }
 
 static inline void disable_ctrl_irqs(struct brcmnand_controller *ctrl)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
