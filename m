Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4515DF4CE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksARTpNh9fB/0Oml8tmfxVuPawOLRnfRSmCQ+QIflZI=; b=tHxaydge4Xzq5y
	FBHohVBOT7+Nz/jR2BiQbzoJ9hqHbDe6cSI5qVHgwmkXL/ICsQweLA+HXc6SXkU1mb/DlAvWFkHgK
	RbGFcQv+19Twk57GMeQfoxfgEK6Zt5Ws82qoQuAjvCGtAK7Y4Jby7tJ+PqO47KBxdtuSsfRG8oK3j
	R854qZb2Fh6SRO31r1H0QYy8ta3MgKl0ZjkLVCaocBkUulgBKKulAJUYuzBh47TPyiCQAR3WlS32s
	bHucLPmlO5VpDJOLkuKbsx9+RuNmgjO20cYtiYLMKPirUThyhZgGwtXX46WplyY8kOvyqEp9Phm+A
	iJjRtCWSnsKuk2hkHdGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT468-0000i9-FH; Fri, 08 Nov 2019 13:14:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u7-0004r7-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id m9so6114833ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zHMD7aDRcAnceTlZ0tE45j1n7viMV+uwJbkB9Il7bT8=;
 b=eGaarsbw1EKw6pefhZScDY8YR32XWY0OK62VQmAXGwS02Lsok7Cew24ssbH7+23CdV
 pCNtXVY4hCMr1BBWQwaJnKG9A3nmttVVy/tw2ceMFowkpf0wPbzqZCdgPNs2LC+HYuL1
 fGPRoMpFjxf4hp3B19FgA4ZCX5/HrxQzcKJAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zHMD7aDRcAnceTlZ0tE45j1n7viMV+uwJbkB9Il7bT8=;
 b=V9g7abc0DyAWCqoh1gI2SlgwjE6CsksX5+khZiAG8DIj3qaSXwDZwjArGTKYsXtBsI
 2Wq2vPWpKQORnLWlyKpcDOToRrprwO2iDMGR7kttNO6ueRepcSRL/fDqv48H8mw/YST2
 NqFLFX7FEXoceHeBkzyqFh3m9jA85Ks4QGciRh3QeQDrAjAfA7oX3FvfCP4ROlktPv/W
 nx4sbsVXDjv3PcxkaXcVpCb4m5+0YduhSLv9eEEGBnLhFTLW9cvDBVNhtTzLk0l87ZJS
 3e8iDF6cWkimbP+X1LgkdU7XbTUtP665Zzxfg4d/ffaCdgMICBBmZ6SDK3hmAnSEfP6d
 x30g==
X-Gm-Message-State: APjAAAXkvtPN8lhDOWPPQszzNaYynKtZltsJIXGmTOb0VL6orwOk2Pon
 lLSKH9NGEZqOn9p4cXCV3qOIlA==
X-Google-Smtp-Source: APXvYqyMeD/Z3Mfx+EKRD5Ea/1OpAHbYHw/xX9JRktv3gCIUdIApbq1aUzUWDJoePEO2SvwM0dFnVg==
X-Received: by 2002:a2e:94d6:: with SMTP id r22mr6708575ljh.7.1573218138299;
 Fri, 08 Nov 2019 05:02:18 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:17 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 40/47] soc: fsl: qe: drop use of IS_ERR_VALUE in
 qe_sdma_init()
Date: Fri,  8 Nov 2019 14:01:16 +0100
Message-Id: <20191108130123.6839-41-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050222_581944_414D1C16 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that qe_muram_alloc() returns s32, adapt qe_sdma_init() and avoid
another few IS_ERR_VALUE() uses.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index ec511840db3c..5bf279c679ef 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -365,16 +365,16 @@ EXPORT_SYMBOL(qe_put_snum);
 static int qe_sdma_init(void)
 {
 	struct sdma __iomem *sdma = &qe_immr->sdma;
-	static unsigned long sdma_buf_offset = (unsigned long)-ENOMEM;
+	static s32 sdma_buf_offset = -ENOMEM;
 
 	if (!sdma)
 		return -ENODEV;
 
 	/* allocate 2 internal temporary buffers (512 bytes size each) for
 	 * the SDMA */
-	if (IS_ERR_VALUE(sdma_buf_offset)) {
+	if (sdma_buf_offset < 0) {
 		sdma_buf_offset = qe_muram_alloc(512 * 2, 4096);
-		if (IS_ERR_VALUE(sdma_buf_offset))
+		if (sdma_buf_offset < 0)
 			return -ENOMEM;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
