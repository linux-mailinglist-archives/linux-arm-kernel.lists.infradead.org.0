Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ED519403
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GKw/+aTJSFYGJsSHsCLVnO0gnnERr50iuGFPWiixdLU=; b=a+M
	LiPQTyuRHNdmhUPMqJ8bxehra9oXoxj41xBSkmZnGtaqUZ/x6wlDAnCnW6B8HtdVvedp+aEZpm0Il
	iMT0xbbTLGMDQljDmN+cOQ/Ryv20NtIF7ejw2BXfOtWdDloIrObW4GmTZmqYdZvgr6rz++haBUXLX
	JZKpjfOQKiJm9MuaeGPZlVy4K2Rg5MJhTdoAC/DJxzqrSMwq8dZMrUYwXIw+0YS0HdRkyBwIabzTK
	UX4TT57qkmzvq0EBxV0B4mwqxVKjp2ObUXmRrsG1s9sUeOizLo3sKcgazfZH9bMGsBcaL1dBRRBrA
	F98GtulPnwXlU50BRcy3upy41MXK2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqDm-0004YP-Fa; Thu, 09 May 2019 21:04:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqDe-0004Xy-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 21:04:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so1826404pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 14:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PXOftG3/6YrbgosB/Tyod4caSVXtKhg8wDNSGkZ5bv0=;
 b=ZNrv2KQekf2+/q3ILwAE77MgwqImbEpT87eBY/d5YyVuf4e7bD4nK5bL1XJdglu5kY
 cbGJWBXP8KNcec/eBtP50guZC8FzrKzhLgieoSRpPS4AGEan4taDW7a6mmtJZFxP/gW8
 waL82qZRwop/8Q4nav+fDjgSWMrnaWXHH2cxHSd20FMcoDzsGrm5PeqPMl1cE5M7k+sy
 W10EZp7sPe8fw9umaEDnAI97QwFy/TdW5c0Bv4bZseBEDdx/cS9S2rwlBoVO0JnW1ml0
 hsTNsoQbfS4fNI25DdIjhX1qTomjLTLKD59S5v8HIA2spMxDoBcEaMlKH+tgNONB/0cN
 dbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PXOftG3/6YrbgosB/Tyod4caSVXtKhg8wDNSGkZ5bv0=;
 b=EI9E3ne8LbfhfdKliUcoXLCThkffTSzZfk/aWUK+OD8dO4UVlyZzozeXOiKOYeHJr+
 R/0KyIu1bFvFfYfgxhTyQbj3yG6ftl2Fu6ysdCi/SHq9588pMdL2/hfuWasXvZhUN83K
 Zk1ZeP4obi/FJTIyOXbChyxsI3/gOGg/Ni9oyO9m0xWUIremLTnfVP441xkJxoacILVl
 uiW15RgpBvE87yCLR80bqmLF6JxGlJvPeUyZs7YMuSEk4Z13CsOpFVoTg3p1NWplhy8l
 70/sC81DtjXNIVcb33C7Rul7VP/PdFf272lVjpxUBWDbrKXSYBxdcbaJl/gP7ne455L2
 d+OQ==
X-Gm-Message-State: APjAAAVOmtbrMiSvMbz/Q7VRDYC+RdXh8Cm5fsbXxq70qiG4oTYq3aFo
 goweRMJYIMbNyKAi9uK/e83sk+Hx
X-Google-Smtp-Source: APXvYqxr3PpAzcv8um0n5MiENHdZ04NnND0L7pY74JcKcDwFJyjOygQVhzi1RhBosXWZcKmfe6PfPg==
X-Received: by 2002:a62:5286:: with SMTP id g128mr8275883pfb.226.1557435886054; 
 Thu, 09 May 2019 14:04:46 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id l129sm6510430pfc.61.2019.05.09.14.04.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 14:04:45 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: Allow selecting BCM2835 I2C controllers on ARCH_BRCMSTB
Date: Thu,  9 May 2019 14:04:36 -0700
Message-Id: <20190509210438.28223-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_140446_937052_7A2F4709 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Vignesh R <vigneshr@ti.com>,
 Ajay Gupta <ajayg@nvidia.com>, Wolfram Sang <wsa@the-dreams.de>,
 Eddie James <eajames@linux.vnet.ibm.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 Elie Morisse <syniurge@gmail.com>,
 Karthikeyan Ramasubramanian <kramasub@codeaurora.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kamal Dasu <kdasu.kdev@gmail.com>

ARCH_BRCMSTB platforms have the BCM2835 I2C controllers, allow
selecting the i2c-bcm2835 driver on such platforms.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/i2c/busses/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 26186439db6b..7277c1051ca2 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -435,7 +435,7 @@ config I2C_AXXIA
 
 config I2C_BCM2835
 	tristate "Broadcom BCM2835 I2C controller"
-	depends on ARCH_BCM2835
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB
 	help
 	  If you say yes to this option, support will be included for the
 	  BCM2835 I2C controller.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
