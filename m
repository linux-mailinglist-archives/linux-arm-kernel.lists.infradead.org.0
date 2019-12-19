Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301EB126793
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5vtka6b93PmJomtNgyfratGMHnAKRVUV2uNHiSlJWIw=; b=LSdDEeNkHwD32D
	qNtro2Imc8WjZuu+HJCGMWUe39IPrGHkIZgmNmJl8Dbyn52VqJJhBwUQ0q6JhpUmWqptdrPXwRyzg
	kkYQE6c1n71ONT2I/tEtk4Wuq+LWmPtm1SiTQx+Sn3ItjU+cwAyEJe9e39HOkRrooNWY6XoHEzbcx
	M+L0jdGkA+YJx7IVv0EqXzlxHbV1+WbAuV34gUokns3VJSLUgxYijj3yiqsJb+bxPLUJnPLqurp1K
	0ybKu0y/dvT9PTTjp7Ry/dGeGOU+rM0kCvgO/q3S86fn4p2BaRHh86/4sV4MkysCQNeKj+rud7Pm0
	pbtHvokCHlZ9wRwnWCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzBb-0004Cf-Nt; Thu, 19 Dec 2019 17:02:03 +0000
Received: from imap2.colo.codethink.co.uk ([78.40.148.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzBR-0004Br-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:01:55 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihzBK-0001qH-NY; Thu, 19 Dec 2019 17:01:46 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1ihzBK-001OuC-Eb; Thu, 19 Dec 2019 17:01:46 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] mailbox: make cmd_dma a __le64 to reduce warnings
Date: Thu, 19 Dec 2019 17:01:45 +0000
Message-Id: <20191219170145.334021-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_090153_706137_AC78C5A6 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cmd_dma of the brcm_sba_command is often set from the
result of cpu_to_le64, which means it should really be an
__le64 type to avoid warnings such as:

drivers/dma/bcm-sba-raid.c:583:25: warning: incorrect type in assignment (different base types)
drivers/dma/bcm-sba-raid.c:583:25:    expected unsigned long long [usertype]
drivers/dma/bcm-sba-raid.c:583:25:    got restricted __le64 [usertype]

Note, this header dos not seem to be covered by the maintainers
file, so just sending to the normal lists.

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 include/linux/mailbox/brcm-message.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mailbox/brcm-message.h b/include/linux/mailbox/brcm-message.h
index 18da82115476..db49dc360a6b 100644
--- a/include/linux/mailbox/brcm-message.h
+++ b/include/linux/mailbox/brcm-message.h
@@ -21,7 +21,7 @@ enum brcm_message_type {
 
 struct brcm_sba_command {
 	u64 cmd;
-	u64 *cmd_dma;
+	__le64 *cmd_dma;
 	dma_addr_t cmd_dma_addr;
 #define BRCM_SBA_CMD_TYPE_A		BIT(0)
 #define BRCM_SBA_CMD_TYPE_B		BIT(1)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
