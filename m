Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0091BF8890
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:30:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuUQC9wwx2DArLT19Hss4Z2C4QegRnAO+s8zn6cDe3Y=; b=UdMV7gX1s7LyBL
	lFvH/e2zZmZaJG5VhxbvzUVf7OO1L6gLWswbYNoisW5TN4AQ9BWGt4je6gkh9vJEDEn0eCD6a2+3l
	in9W8zuFeQ2a3sfSQq6ait0KYo/8qyOhDxQywuJatw8iuzb+oSDCa2MTlup7xF5TXHi0LcDd9NKK9
	ljOxejwqoD3d7UMVZ0dJMZ4AZz6lrzY3k/YMMeb/rB45VxHxsYyy0GlWTSYDMJVAd5IHeXeieZ5hn
	pwbDqr2Oj96Bbq78fcN4sWYxqiNOVM+uRP6P6X0hezLE0SlqP8B5P+cgl63WYLBmluS0tc2vTS6sc
	cACgQUqZkba2vGQBh2sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPgc-0001Fz-ND; Tue, 12 Nov 2019 06:29:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPfu-0000qX-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so11147450pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U/bWaj0szJR7cn04OcMANcYdDLfd8dXKvtkQWnPu6Xg=;
 b=OvKlxnDR83/iuTJMCCeYcCHFlWwwqHFeMn/Eqk8aTc60JZoQAlcFR3v+/1oJr/pUNi
 IaHvh0unSfRo7FEQgx+lwi64ZI+nos0+2W1tuRSBZQ6AT+vacyNTQoeX+a23+c56oSvH
 SPdgd7v4TLuI0nvJC7Nr+jLfC0hW0WBp3kAFqwPywYj1+3VJuJPkgTLh5QslEL0RY9z2
 1N1pRnX9jNJbLobDWIZjhW+J4dtiPMc95Q7nBL1Ug9Ssr2l7EMpCXH3hxLY7aS0SwF4K
 zaMdPAyUNqNyD8cIcvIZ3/O9MpgeFdYVvbRIlq5JmUM8vx92iQYwCNqYLTAwrQmXMuLQ
 MKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=U/bWaj0szJR7cn04OcMANcYdDLfd8dXKvtkQWnPu6Xg=;
 b=oMHwmirDO6oRXWMv9pF0AMS2vqDI2BOfD6xhxM0sPLKlnxPV1P+LvFXoCUpkLvD0Lg
 m4/ahyg4j7iLoQyOREH2MNn5yXs1zjwcCVgPp/vCxwyhgqo0WLusZmNXLjPhujyP2iuJ
 QwuI7EKVhvICIzij3dMbuzR4JXfYYxlEdiysWT6b5juEof5LNTYYa64RV7RDDsCYX3bN
 veOGwPClu5eZS9Rry7pa+iu7mYK41ScAIi2STpT49l61Gvw/9CDXquYmYeQbGWDNtDkc
 KgIPUSwsfGS494YbWqh7CRX4aOdBcABsW8ATqy0Zleu+fTB6Wq3GMzu/Ln9JETd9BkN9
 PMGw==
X-Gm-Message-State: APjAAAUFuMD2a8e/M8EhoTTh5mevtVyAUNn5PPvY706xSbZsX03aDDad
 IaFs31LGSwCCI9ccCILe/8g=
X-Google-Smtp-Source: APXvYqy+fUimLndQRp4lL9ZASeVUtnRJL4udnnXTh/5ojc2uFhtolJG4UhLP3TeB92+3sKdUXv6SKw==
X-Received: by 2002:a17:90a:1a08:: with SMTP id 8mr4339048pjk.12.1573540152191; 
 Mon, 11 Nov 2019 22:29:12 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:11 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 2/5] ARM: config: aspeed-g5: Add SGPIO and FSI drivers
Date: Tue, 12 Nov 2019 16:58:54 +1030
Message-Id: <20191112062857.32638-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222914_369080_DF04C4FB 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are recently merged drivers for ASPEED systems.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index b87508c7056c..b0d056d49abe 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -155,6 +155,7 @@ CONFIG_SPI=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_ASPEED=y
+CONFIG_GPIO_ASPEED_SGPIO=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
 CONFIG_W1_SLAVE_THERM=y
@@ -237,8 +238,10 @@ CONFIG_FSI=y
 CONFIG_FSI_MASTER_GPIO=y
 CONFIG_FSI_MASTER_HUB=y
 CONFIG_FSI_MASTER_AST_CF=y
+CONFIG_FSI_MASTER_ASPEED=y
 CONFIG_FSI_SCOM=y
 CONFIG_FSI_SBEFIFO=y
+CONFIG_FSI_OCC=y
 CONFIG_FANOTIFY=y
 CONFIG_OVERLAY_FS=y
 CONFIG_TMPFS=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
