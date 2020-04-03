Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7244019D79B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uJswWLaRmnehAxScZ/B2hDKvzMPZjx5gtuHi32eWLBM=; b=OUs
	Vq1XWs2TK+qWs1c/c5QyczFmIZDHIgtcqS7PsB0PxxmPfcxcA4RZJCjhuWX7/shkR4v6XPCfVSkQM
	o/7K0lYAaOf7N6+pPZ4Z8jKExB+Vfrakt0VsqGTsLPeL/yKrBkuCtiZU6HK0FW+QENNrBVyhRfEOX
	pLDupaCKjdipxoJ59UoM2fonfCr+Qqz4QUqK0omjIioLW8CHpIrATcdWyN7AQkxeXcbQXrNz7qv4U
	PEUzEAQoWReKAGNT+zI2sr1oiuEQ782eRqSHTxwP2NGrKsz9xIWnJA7atSPhlhAzOXwPHj8CRiSiK
	vUh+aCG4atr1Qrv1eBvYwqKlWrNl78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMPe-0000L4-Mj; Fri, 03 Apr 2020 13:31:10 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMPW-0000Jf-Hc
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:31:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 416C0C00F7;
 Fri,  3 Apr 2020 13:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585920659; bh=I+coQQYX8vUxLf/p9XNt7bvLAB6yAwx3gaBMedvAiWI=;
 h=From:To:Cc:Subject:Date:From;
 b=AJBXoxuZrsgXWc01+8942AONmG/bFGHAPowhKHVm3FZVzKDZf3C0Gp/rx10Tociej
 iFxT7uNJP1Q/8k9/gZueOL3SsaIPd2r+txxOokOJrbSJ6Ox9Ad6On5zWmRL9KQ7GZw
 JsgKYieUUjZSyCYarZIKekvMH+1ZW2itUeNLaeLOTtqMj7SlS2nA06sO03y8Yy/lbk
 o9pcYhVdOhr1cF85rOpqF3WTpqhedBLjkdoSWh47EK6y4ofq3AFwJQq/5CQOepO8aH
 yTSonVEuy9qzR9iMunLJaTID7hF4H688netdOwU6NceXnzWHRYfUxRMyKSEoMSIDr8
 sb3pnzLrcFcxg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 948C3A005B;
 Fri,  3 Apr 2020 13:30:53 +0000 (UTC)
From: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
To: yannick.fertre@st.com, philippe.cornu@st.com, benjamin.gaignard@st.com,
 airlied@linux.ie, daniel@ffwll.ch, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/bridge: dw-mipi-dsi.c: remove unused header file
Date: Fri,  3 Apr 2020 15:30:36 +0200
Message-Id: <171ff1fb3918664a570dc8f2f34b446612505f76.1585832665.git.angelo.ribeiro@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_063102_619015_2FF69E05 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dw-mipi-dsi does not use any definition from drm_probe_helper.

Coverity output:
Event unnecessary_header:
Including .../include/drm/drm_probe_helper.h does not provide any
needed symbols.

Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: Jose Abreu <jose.abreu@synopsys.com>
Signed-off-by: Angelo Ribeiro <angelo.ribeiro@synopsys.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 024acad..582635d 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -27,7 +27,6 @@
 #include <drm/drm_modes.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
-#include <drm/drm_probe_helper.h>
 
 #define HWVER_131			0x31333100	/* IP version 1.31 */
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
