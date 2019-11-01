Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4847DEC310
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fISdushcCsYoL56jLSzOEkfJwopttDZaQxqRbpsxhMA=; b=A35btQuKwPR+Ip
	hFSGgFJMNZ4YRRLMHhSZzR9lNNgZjZ008RUjCLbyv3e5QhvdYllfL6DDDG2r+kdvrHKiFAAt/1xzc
	mI/5Aq4X27xM8FfzgKJCBg99JT9WfPyXQ8ytbGiip7OOYK8dkEAwdcAR35ez96BBD47Tm+WAr9WCx
	tq0F6ph5vQnC17zrwcwhC+QQAN6Qu562K9d2+L1GSmjuPV+y838oxgUPRv/eV2sgvXHFTPUcZuZmW
	aH/XCS06tUYgQ1GK3d6Rsrips0egtaJzZfD1OXjEAtm5JGA7UsxoXWNeJH9CVCyuXzQji+8LKsb2v
	0y2Jp3Ouyud++Tl66H8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWIj-0001mP-GM; Fri, 01 Nov 2019 12:45:13 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWG3-0007tc-39
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:28 +0000
Received: by mail-lf1-x132.google.com with SMTP id j14so7133969lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kyeKnOkwmKeZFZzRl62UDL9FeDrPQAcAwjRLFXYmB4s=;
 b=hdFnDRJdcgxhAccXp9uTboOxUbnJlSp0zSK/9NqGvvlqPrlSUt3SotDrKCgDfJ0z2g
 WZTvLP0QqJd7fWxqqZ488553cVAWmEXlpLcD8q/rA8qfW1cUKsdN1uJRZkHMMx/WqkIZ
 R4gwq+nWPpPxEACNFxX3JjQO2ml1dZnp0M0Ro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kyeKnOkwmKeZFZzRl62UDL9FeDrPQAcAwjRLFXYmB4s=;
 b=p/GoOUu/FgCTZm/yWwY6xqSY4oyfUotb66U2AMicIRZKR3MqqM5dE2CV4QRYecL6BO
 ZWOyemHw+FDrbvF8KRJVT+IkTOqzOPAkf4mRCAPzMGI98rWQBfUhqW+4gZKXwJ1AkEYh
 vQsRG1bj3i+jb/Henpb+hCPlQk+hyeN/KaGA7z1s174s2fgQupKIw90ZyJVSHcgPT7eu
 DQAtLpn3xmKMhz8NNe8PPd+QsLJ/s3QlwSlSGRFFVvsLqVI+lavzO9+PHExDzuaUpiF7
 dil9oUCboey8mEhhDV0ej3qxMWD3NAOFBmllHqul4a3NcdGD0FqhvvEY8L7mXedhpA3o
 Lw+Q==
X-Gm-Message-State: APjAAAVo2hQwbjqHqk+ohHhZaeKTOFSdID1X1/KD6ZgEsMasIPNDAm3u
 B6srlmID8gr1D614LgMUDLCMfQ==
X-Google-Smtp-Source: APXvYqz+D19y23LVE0Y+cV1TdLje+zl11XW4b/kvCYTngov3WvPxQrsppRZFBETw4cxKCzrx/qrcdg==
X-Received: by 2002:ac2:5bc2:: with SMTP id u2mr7138805lfn.173.1572612145317; 
 Fri, 01 Nov 2019 05:42:25 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:24 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 08/36] soc: fsl: qe: drop unneeded #includes
Date: Fri,  1 Nov 2019 13:41:42 +0100
Message-Id: <20191101124210.14510-9-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054227_232414_1AD003DC 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These includes are not actually needed, and asm/rheap.h and
sysdev/fsl_soc.h are PPC-specific, hence prevent compiling QE for
other architectures.

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
