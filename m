Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D08C4409
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sCtizpaI/q4ZQyvnta/Ssez7sX2ZsoTc0jUx7gzp3j0=; b=VDfNu2xXdvB9NmoTBPQE3PAvKf
	fd+DP/qpXqCeL5RV/la+lLhyiiGScJgV5+s9z0ypWAUHi26BsD1ETVgWgzD+h5p4ryRz3v4k5nmTA
	m2o8vWXcqZ6vK/wL2sTFjfGx9V8YBRUVLhCaFGIwOeaDfgO1PCdGG2HjReNMjaKa+DxZqpksv3Hon
	RJonqQQGDII5ECtRt5LYTB6aO3O78uSCpHcvyxclmRIOYpDcXtQ3j+ZvbtvyHRDVHkPjqekF8e90G
	tQ4jeG5J6IreGNTvXZZjGamQilNtHdfevxwXAeaVF2ejPpVlsGYTXaLRfWzBWuMxU61FOo4jfLDaz
	Smo7Q78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQyi-000857-7p; Tue, 01 Oct 2019 22:50:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQx5-0005NE-VY; Tue, 01 Oct 2019 22:49:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id j11so2951136plk.3;
 Tue, 01 Oct 2019 15:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MAMlkRnO5l7BTKTwRIiopLRzEQTrPpsCd+4MsukYmNc=;
 b=HAz4lDL4/HYy4Ox1QSCZ3kvs83mTwGsEqL60MTu/23VTwZHoyErK+WUt5t3kZyKIck
 YrwFzDaJDdqBgFIGjkIjKor6i2iwhTKxEW6l18Lkbai3McS7Fal1Gv9/wyepIKKfq84U
 VFUTkBIjcovYwb8z1TyZMurQOni9Q5Q7nyigZWHapWBYWeggFg2up3dAECedjaSRua+4
 aEwWBFqLGXIC44i31OcMMGuCqBqBjR9IzO/R2n8yX1JcgF8IMibIYMOuARrOba5ELcYV
 xfJqhGzN9tNd9cwWMFA2x2WlztMuRFFb00jO04J5C0r9j0NGHO/pe0YINATrFzePM5W4
 2W/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MAMlkRnO5l7BTKTwRIiopLRzEQTrPpsCd+4MsukYmNc=;
 b=UY5BTSC6Mc9A1tILDQnqjd8ikE2o6c+T9Ks8gArR1lwyzC95wXOXHc/SPyrhorrfBh
 BD024CT5Y0fTA47k24XKwkp+RLWyCWS0pjhkqKzsxqnK/1sUHMlnCZQXheZ/rFfJQr06
 7TuS3gse0e/E8A96PgLCqqnlRAThXPJZsn0uVFuw1VRZzRXLorjMmI2sVzxdnfWUG5jw
 +KOHZDnW4yfBqz7C1h9tF7SAIMNHIVSTZYSt7wTrMr1LnB0iEvseL4vpbCc/ZmRWWhAR
 IFHEyTlh/0mqIqdFnpBztb4CkAWAUstZHsEgWacpi3+c6BmyhzGF/JSKIBH44KvwMvFw
 2Q+Q==
X-Gm-Message-State: APjAAAW19QI1nw1SHoVeZW8K8EEiwEV4v+3Umnp2inZg4ORbsIELBsXn
 qAGyor2vN8jHdw5Wx3Xh4SQ=
X-Google-Smtp-Source: APXvYqxEhwZILl7XTzqS0JmTl5V0s3Q2tsvy5lvU7+vFWHRphKhv2LJaKswN152OGBrBamTuEaAp4w==
X-Received: by 2002:a17:902:322:: with SMTP id 31mr229858pld.150.1569970143390; 
 Tue, 01 Oct 2019 15:49:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:49:02 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] irqchip: Build BCM283X_IRQ for ARCH_BRCMSTB
Date: Tue,  1 Oct 2019 15:48:41 -0700
Message-Id: <20191001224842.9382-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154904_037912_CDC0AD77 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that irq-bcm2835.c and irq-bcm2836.c have been updated to support
BCM7211 which is under ARCH_BRCMSTB, build both drivers for
ARCH_BRCMSTB.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index d1bb20d23d27..ffd5f986172a 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -116,7 +116,7 @@ config I8259
 config BCM283X_IRQ
 	bool
 	select IRQ_DOMAIN
-	default ARCH_BCM2835
+	default ARCH_BCM2835 || ARCH_BRCMSTB
 
 config BCM6345_L1_IRQ
 	bool
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
