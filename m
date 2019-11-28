Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D3310CBCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnvS3Qt5i/nznEPHP89x+TfBZb3LQbmu8mG9PSSWbc0=; b=E1y6sJxovQ2SG9
	2gbD4RFKnPmSPpcVgFEvZkYUtwnGCXrcv6yFSf76UsRThptxcKvvkt1jirWwQw2lMxwVQBUzMGVb9
	C/SEQE5jSHyhdjLTu7tF8/iJFbgynvoEMhO/0XxHJTmb7x+WdoSbglYC6nFaegeNIFU26VmPQ7HlS
	B3x7kuWhigJKiUQ06nFrRqt+T4/69RTmixpG4iaG8ddpPFz2m/o4HyN5lprmLJ9s/gI0vJxwszGOX
	IR8Oob0sVQoeRwnqxzxoqhRPR7+0UQAO41OSZ0w/fEBcfJ5sGSYEhmN/QAREChKEk741SLTmrx09H
	i9E7QX/LxM+2OIPM3j1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLpw-0000g0-Va; Thu, 28 Nov 2019 15:36:08 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLnG-0006hW-9T
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lXPzWknvtf1pDS1t76ZMANmjBtlZNvhUYw0OaWSIA20=; b=ddnG8tkht/vmQ/znE5XIfdCtRj
 dfZiT5eyn6FrHcJkOqYxc/uxcWYglfIj4G7xaUM3TTYiZvdCzazUFOKPMPJVI3pGlFASjDzGdl8qa
 IDSmd2f4ba+6Vos98fmYwwnA2JUrcx0bWyaHZEW1rrjKZ4+pkms8dzVJgQgXcvr065qCcWVPqkvN1
 Bxpi5Nw0QAOw/cfefTc8lLzw7EyiGSROgi71JZ4lD00zgP/wP4QzKfuDNyG1DqnPIDlUO5oDlm1n7
 0Yj92/2Iv5VCFcD1Qwlvcg60Vy/lVPCrH9G0sD/XqhaMu+0ZSs/g/hjHzs2Rrbg7ZB6fQWpNh/27w
 Ks4dK5JA==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEL-0002sG-KW
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:18 +0000
Received: by mail-lf1-x12b.google.com with SMTP id m30so18408788lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lXPzWknvtf1pDS1t76ZMANmjBtlZNvhUYw0OaWSIA20=;
 b=JUkF75FCh3SS07DeV3fSdqHyMI/Noh9EyvHdbsMNF6gQ0gGlp80jLfFxeX5U7w9iWp
 qY3MwCyviAbjbvRjY8oH6xW8sFkuBc465mR7Q1nmPaV4vOaw1LqOqqMPDydkNzl6T+Hq
 6UDPgI9Fm9lhOr330fEtxCEBERw0sZ8tCYKpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lXPzWknvtf1pDS1t76ZMANmjBtlZNvhUYw0OaWSIA20=;
 b=g3VYc93okt3Lfd3AbXtmEzS0H2ja2IqrVk63uTp6p0ZWFuvbTu+UQfJkgkfPLxBe6g
 wglRQt1tsHve4KYsVuUFzKoiwbvBChS5AHJWBCImD4qzJXp8QopwG8Xj9Zfl1sPj1lWR
 zCC2TLXf/osRA41/1jwlpWNNeP/yq0hG9qgDhdKqd4QJZqOdAs4EO42SfpP5nf319TdM
 41uLSDNm+7OmzDmXLYL72Ah3J/FFq96M0iWf/IMAK38NvTvDKUnsaNyVS2v7hSvlri5N
 JvuzgeuPFTYLctWBEK6PS5k48sWrTeROl14Uk39pyU7xXBZ4dwYAQDNLh9IoTPH8gtbC
 N/TQ==
X-Gm-Message-State: APjAAAWeFHmiceVGSSC4OuzNyxk8r+GGEe81ReSLKb8/Qo/+A2/FuFsH
 viFA9MXgz/rK8/njEOXA+f2inw==
X-Google-Smtp-Source: APXvYqxqB79nXhmI19iqDCVPIpR55JcddF3Aak40y+BalSCh6gCZDPNp6IH1GtPhmKlUHBIQYWbqCw==
X-Received: by 2002:ac2:5931:: with SMTP id v17mr5144854lfi.166.1574953035248; 
 Thu, 28 Nov 2019 06:57:15 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:14 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 08/49] soc: fsl: qe: drop unneeded #includes
Date: Thu, 28 Nov 2019 15:55:13 +0100
Message-Id: <20191128145554.1297-9-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These includes are not actually needed, and asm/rheap.h and
sysdev/fsl_soc.h are PPC-specific, hence prevent compiling QE for
other architectures.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c    | 5 -----
 drivers/soc/fsl/qe/qe_io.c | 2 --
 2 files changed, 7 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 1d8aa62c7ddf..a4763282ea68 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -26,13 +26,8 @@
 #include <linux/crc32.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of_platform.h>
-#include <asm/irq.h>
-#include <asm/page.h>
-#include <asm/pgtable.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <soc/fsl/qe/qe.h>
-#include <asm/prom.h>
-#include <asm/rheap.h>
 
 static void qe_snums_init(void);
 static int qe_sdma_init(void);
diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 5e3471ac09dd..f6b10f38b2f4 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -18,8 +18,6 @@
 
 #include <asm/io.h>
 #include <soc/fsl/qe/qe.h>
-#include <asm/prom.h>
-#include <sysdev/fsl_soc.h>
 
 #undef DEBUG
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
