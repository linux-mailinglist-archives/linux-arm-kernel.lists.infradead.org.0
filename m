Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0731A10CB59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T2FFm8mYJbpjER0RYfLBjksItge/CelSIbIhXwicNM=; b=QHyiA0WxXNG67U
	PAgQJGfOE4GMKcWTrNnBArIXIlzb4LogM3kshA+zLERjXp2F19pNcE4H5sUtiAbfVhmqGC24MidX2
	ri6hbGwOr1rPLAFxKPiStErK41UbKakFztiYfCr9TRKjI8TQ8QPtkUGVAnwDe9PXV7uK2AsokHorr
	4IFvJIGjW47A07DgXBpbtxq7DolS/zYsJgWsBur7KQ5KjyaKD4cEKhZkMs8vKzpk8hwiqM6OWFGP6
	o216h8XlgHjTgvKgR+zJIlza/fMwyosjWeVf/ntvE6FpE21H8J2xkJdR2VdFJFQiDAsaG0WFabkik
	wCujN7A8Uo/EJOfOssRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLPR-0002ft-Iz; Thu, 28 Nov 2019 15:08:45 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLFB-0001AL-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:18 +0000
Received: by mail-lf1-x141.google.com with SMTP id l14so20242075lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ApKAjcbgk3TFllS4KVlYulsx0IXhA9sg3keVA4kG7Kg=;
 b=Cu0pEa3DGH8Jq4DqyrRVVK+6bn2ungANZKmPnurdLgGvoCh7zh9ab2EKVG+2ifp9f9
 rF8n9op4NSmEteqozoQv7Ma5TFukZVpXhMk//1OFvFLfiiCXPFq6mIrgqPDMuC4k0F+i
 tPXfxNLVhzbivJVrd/o409oUcl06X8HPclCC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ApKAjcbgk3TFllS4KVlYulsx0IXhA9sg3keVA4kG7Kg=;
 b=eGWWNrpr+TLHxwp1Ma/mwkrWEEIB4n5z1VWhV15cuNnYSL9WoKKmz5F/Tt6rf5FN8f
 wXdr/RNQaKYRJVjedv8J5/4ll5hRGolHuP9hwlGq5okbWJLMM6MOrGni/lDEe5fM4ewO
 BsMEwok/Eh/RLOWXRzTQXZyHjZnMNeJ7hl4gVCFJCSKcCmS+1wSFzOSbgoh3vQmJRm/u
 /9lsMM/8lSexugSE++VTta73OXWPzAZC2NRijfDUA1ttN5u+tRSXj82TUlekcXF1zwc/
 XQ38Ivc3+SwBvCSvw8xUYBhK010W1A9NgreBP9v5GYTQzQXbEx7Y6DhfEXd1Ld+uS84A
 qHXQ==
X-Gm-Message-State: APjAAAXvWLQEewQMI4n9pqfTsfTarFq98AUc4itrBunKZ5LwVfMBr4di
 iF40cyOG/jcGms55YWbCDh6TOw==
X-Google-Smtp-Source: APXvYqwJ2pFRjS+aCBBi6M5p/vBXoIE7qINVl1Cxd1FpO3O+0xRHnhugtUuDHZc9+RuUfUWk5qB68w==
X-Received: by 2002:ac2:4adc:: with SMTP id m28mr8797486lfp.26.1574953087899; 
 Thu, 28 Nov 2019 06:58:07 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:07 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 49/49] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Date: Thu, 28 Nov 2019 15:55:54 +0100
Message-Id: <20191128145554.1297-50-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065809_730129_5948846E 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are also PPC64, ARM and ARM64 based SOCs with a QUICC Engine,
and the core QE code as well as net/wan/fsl_ucc_hdlc and
tty/serial/ucc_uart has now been modified to not rely on ppcisms.

So extend the architectures that can select QUICC_ENGINE, and add the
rather modest requirements of OF && HAS_IOMEM.

The core code as well as the ucc_uart driver has been tested on an
LS1021A (arm), and it has also been tested that the QE code still
works on an mpc8309 (ppc). Qiang Zhao has tested that the QE-HDLC code
that gets enabled with this works on ARM64.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
index cfa4b2939992..357c5800b112 100644
--- a/drivers/soc/fsl/qe/Kconfig
+++ b/drivers/soc/fsl/qe/Kconfig
@@ -5,7 +5,8 @@
 
 config QUICC_ENGINE
 	bool "QUICC Engine (QE) framework support"
-	depends on FSL_SOC && PPC32
+	depends on OF && HAS_IOMEM
+	depends on PPC || ARM || ARM64 || COMPILE_TEST
 	select GENERIC_ALLOCATOR
 	select CRC32
 	help
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
