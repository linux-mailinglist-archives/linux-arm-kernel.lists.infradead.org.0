Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01722159CDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XplCMXFvFFOHOgI8KyPJhbP8fRw8jZFSLhOcLVaD4m0=; b=EyvxZTW6zOawgs
	cn9xg8X/bkznLqcu0nl4iurPlVdGMGkJHimrl9iTx+USVXYwVOxirRY1AiQa/kUC6rOfjzmZh3Q6L
	ezwuZ7MOyh/wkA7SOQraLlKbV2gozNoFyN885IeSvHahtMdb+xwYLYcBtrTbEmAbxPW1nAfejeZ7t
	qJQlWgtQ6BixIDgprSaL5tJbdSsn8gqboAjGeeOvztz12xlbsMQJLNpyMs3VXpJJq63/nQ5ctF58C
	Rf5IM0Tpxm0f3jyqQ40lkbcD8aH7ozjSWg/xTb2s6UInY80WJY9XzKziVkU2G+MtUx4nYPlmLF8gq
	+ku0zhql+xtA576VBY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1edi-0007Yb-Uh; Tue, 11 Feb 2020 23:08:22 +0000
Received: from gateway21.websitewelcome.com ([192.185.45.95])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1edZ-0007Xr-RP
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:08:15 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id 73F27400C7FC1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 17:08:11 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1edXjLGdxXVkQ1edXjjaAX; Tue, 11 Feb 2020 17:08:11 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qvSfuQFYsKcQDgSgLyA1EHEVbWWRJ67nDjKo4aX3BbU=; b=hC+23mR00EvCRhNIYaUSj7/XZ/
 tr2JQnLc6zHX6LdlmSrBmXVFO9ocqAgmy+GLsfWKXPV68Viyfm+hS+hkCTAj+T3/mXK1eq6N+C2bN
 1nu214K1/asD6QUsNsrD6UKpMaoGt93ewnWl1W2Hc8bRnWK/7W0A28rRt1fDCm4FtBK1I4vPVT9Ww
 zs6JDAqav5dc5+fWdp5CLiA/KgAZDWq3vVarAtpRroYk4odw2x6W/oGTkwQX66ukYl7UD6GoHEBIs
 eX/kwBSiAw7Dcy/gWhTWmUet4d+hvkEMU5RAyZYx5gQY/Ts6jCis17+LTdWEkKIWdonjfr/l16WJD
 WYobjOKg==;
Received: from [200.68.140.36] (port=21183 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1edW-003Trm-1q; Tue, 11 Feb 2020 17:08:10 -0600
Date: Tue, 11 Feb 2020 17:10:45 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: driver: Replace zero-length array with
 flexible-array member
Message-ID: <20200211231045.GA13956@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1edW-003Trm-1q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:21183
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 11
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_150813_934975_5862E395 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.45.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/firmware/arm_scmi/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 8f952f2f1a29..b40f71edc92d 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -148,7 +148,7 @@ struct scmi_shared_mem {
 #define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
 	__le32 length;
 	__le32 msg_header;
-	u8 msg_payload[0];
+	u8 msg_payload[];
 };
 
 static const int scmi_linux_errmap[] = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
