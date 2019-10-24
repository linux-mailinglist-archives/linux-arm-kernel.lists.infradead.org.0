Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99284E31C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bjK/0P0bBHUtdj86GJTuM29MD0aJtUdlvY0AS00fVKY=; b=nXKYOrZYdhY0QZ
	YfO/8koicELfVKvYerdY9738DSsoIS0Z56ho/CqAG5uCW2pNPQmX7sFdCqCP6clEenjacr7sYZcMP
	Dtqbt4l4KBgIb9mo2QO1e1CUbkG16PHjIF2cz7vVkPOIjaXa9259PxwIGl1wpA1kqYY7a5PXa+7+C
	pnhjaxioL2lnhomv4RH9eSCyLrhJcyBmwDgm0fdktN1mrjJvHgebc15r3bGkmTUhGKJ3aAXUDzlvp
	/axruypuOZ2V1gpLseMgv0yfzAiJK/utpeXzoXEdICMkiWzyKdmTUr4rj/HNMK/QfPLQe38PCjev3
	qXXq57biCru12X3vdomw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbrF-0000mD-7a; Thu, 24 Oct 2019 12:04:49 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbqs-0000be-9O
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yjEErNkewmQR5Q2WNYK/rHCp/2XDWdch+SsXBjuP1eM=; b=boPS5LP47nszXQgItEiW3G8Xd
 OwbCmEgjU0xH1qlwb5O8V0vmRRaAsm+El+E5uRGJ/FTj+S1JiBSKvVujJa0M6FRsnP38BqLe0uCDQ
 y9yUrVU9xJ3PUgdI1koL7WVnOplbWe5sBtWWdqgZRri49nZeMLZeZkQK/ToiCOrFn8qaE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNbqq-0003SN-9Q; Thu, 24 Oct 2019 12:04:24 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7F1CE274293C; Thu, 24 Oct 2019 13:04:23 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH] coresight: Add explicit architecture dependency
Date: Thu, 24 Oct 2019 13:04:20 +0100
Message-Id: <20191024120420.48893-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_050426_374096_87FA1EBE 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Coresight hardware is only likely to appear on Arm systems and currently
the core code has Arm-specific barrier operations in it so can't be
built anywhere else so add an explicit dependency saying so.  This will
make no practical difference currently due to the way subsystems are
referenced, the subsystem is only pulled in on arm and arm64, so mainly
serves as documentation in case someone wants to increase build
coverage.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/hwtracing/coresight/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 7a9f5fb08330..6ff30e25af55 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -4,6 +4,7 @@
 #
 menuconfig CORESIGHT
 	bool "CoreSight Tracing Support"
+	depends on ARM || ARM64
 	depends on OF || ACPI
 	select ARM_AMBA
 	select PERF_EVENTS
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
