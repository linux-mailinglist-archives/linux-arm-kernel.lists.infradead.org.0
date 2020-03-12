Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FCD183C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUi5ZqgJyNqBGbA9DwvthrFiNSNVAWFHkJi/RW+ueW8=; b=jdRk7+eULFDDxj
	Wn4XbXT7yjWmQHjP9k4ztM/hn9REDkXfeQsJn3J2ukN5LxBnVhLOVJwv7szsWFGeXEZMdAnBvMPiM
	k+SIvjq3I8+ubp8klEa0+OQ5xhIIApAfNv3thfP4uOiktRkylIcmSCSPBh3E4vxH23O//alpnh4MI
	GRRe2/TVPQk5H7gJLfEfXxYtktrDuTl0kXyAsMJ3SW2S9mGqrjg+wDoeXmJ+j7fiGHnYCF/fIxlMp
	mJd7t5A/I0sC1kV/gQIc0DYYtqqTDvN6NMbdWZLUFleH8ZnwylB5/gkqAPJDY+aPYLWzWn6qstsDw
	fnHBfA0cQAdsnnTD1SzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWKQ-0003EF-Lg; Thu, 12 Mar 2020 22:29:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJm-0002l2-3s
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EC2341A11B8;
 Thu, 12 Mar 2020 23:28:39 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AE43D1A11C9;
 Thu, 12 Mar 2020 23:28:39 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 28EBB40AB2; Thu, 12 Mar 2020 15:28:39 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 1/6] soc: fsl: qe: fix sparse warnings for qe.c
Date: Thu, 12 Mar 2020 17:28:22 -0500
Message-Id: <20200312222827.17409-2-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200312222827.17409-1-leoyang.li@nxp.com>
References: <20200312222827.17409-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152842_311636_4014EEE5 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following sparse warnings:
drivers/soc/fsl/qe/qe.c:426:9: warning: cast to restricted __be32
drivers/soc/fsl/qe/qe.c:528:41: warning: incorrect type in assignment (different base types)
drivers/soc/fsl/qe/qe.c:528:41:    expected unsigned long long static [addressable] [toplevel] [usertype] extended_modes
drivers/soc/fsl/qe/qe.c:528:41:    got restricted __be64 const [usertype] extended_modes

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 96c2057d8d8e..447146861c2c 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -423,7 +423,7 @@ static void qe_upload_microcode(const void *base,
 		qe_iowrite32be(be32_to_cpu(code[i]), &qe_immr->iram.idata);
 	
 	/* Set I-RAM Ready Register */
-	qe_iowrite32be(be32_to_cpu(QE_IRAM_READY), &qe_immr->iram.iready);
+	qe_iowrite32be(QE_IRAM_READY, &qe_immr->iram.iready);
 }
 
 /*
@@ -525,7 +525,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 	 */
 	memset(&qe_firmware_info, 0, sizeof(qe_firmware_info));
 	strlcpy(qe_firmware_info.id, firmware->id, sizeof(qe_firmware_info.id));
-	qe_firmware_info.extended_modes = firmware->extended_modes;
+	qe_firmware_info.extended_modes = be64_to_cpu(firmware->extended_modes);
 	memcpy(qe_firmware_info.vtraps, firmware->vtraps,
 		sizeof(firmware->vtraps));
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
