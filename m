Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECBB165B76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXXsk/yJw3t1UaTEFn6esdl7ZieX60vdY78X5GP1zj0=; b=Qydw2XUvRIeYPf
	5yEPH1GM9ZiCAwQwSizCqnO2QBKvDzVLmsGeoJYTzIGG6wsvZIZHE5vwDuARe6yALuvcqbPEl0sBi
	aZTvcM4KAyktmV4m4cU1cp/kK8oQert2w5587u8KgddXBlp06kS3FxQJrmCf7uynUdr3/YukMQVaV
	4ku06VWZymExzdkAPljeXdXhy6CeDnNbWFFiNE73N8On+88BzWerwclEHso183mtB6ztfqwBeAvGO
	VRdlSvS+XO2afMcWawiG8qSDgVJaVxOnRPe/FS9D2ncm5dD2EGABbjloxxlHYqPPDGOQr8+/5hoLF
	eL93em+Tj6uqSy0nTWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4j2n-000670-Sl; Thu, 20 Feb 2020 10:26:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4j2T-0005vC-Fh
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:26:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B996324656;
 Thu, 20 Feb 2020 10:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582194397;
 bh=daVsCmO1v3JL3U9U9GNYclPkuq++4cP0R8XAHe7Vg8k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g2145Zze13qEK073wjwE5VbuPHwN52BSdqZifhIV/6Sm4hpwmnnUnIc+cWNOBNh6Y
 oHFa0p1m7guvVv5E9/HImZ+8k8/cS3nidAIHNGA0Uz16nS1PWMlrrNzUzWwifoV9Gw
 M6SUN6lyZfdFA/BUEUeZ3t9xiSnxwLlAiWJfXLs0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-serial@vger.kernel.org
Subject: [PATCH 2/2] tty: serial: samsung_tty: remove SERIAL_SAMSUNG_DEBUG
Date: Thu, 20 Feb 2020 11:26:28 +0100
Message-Id: <20200220102628.3371996-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
References: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_022637_570356_4B31CD99 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Donghoon Yu <hoony.yu@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since a05025d0ce72 ("tty: serial: samsung_tty: use standard debugging
macros") this configuration option is not used at all, so remove it from
the Kconfig file.

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Donghoon Yu <hoony.yu@samsung.com>
Cc: Hyunki Koo <kkoos00@naver.com>
Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
Cc: Shinbeom Choi <sbeom.choi@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/tty/serial/Kconfig | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index a310bd22f1e2..fa4380b0b869 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -259,15 +259,6 @@ config SERIAL_SAMSUNG_UARTS
 	help
 	  Select the number of available UART ports for the Samsung S3C
 	  serial driver
-	
-config SERIAL_SAMSUNG_DEBUG
-	bool "Samsung SoC serial debug"
-	depends on SERIAL_SAMSUNG && DEBUG_LL
-	help
-	  Add support for debugging the serial driver. Since this is
-	  generally being used as a console, we use our own output
-	  routines that go via the low-level debug printascii()
-	  function.
 
 config SERIAL_SAMSUNG_CONSOLE
 	bool "Support for console on Samsung SoC serial port"
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
