Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CAA185595
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 12:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9+Cqsou2AW5aBT06eNB8c7kr+GLLZyuqgMYOV9mWHEQ=; b=WQv
	GDL4/T9caYezHkzAmMtJGNz1te5s8Isct0C/NN4CrRYBST9GBt1nkbkKpwwQyw84z5x/KA5pZEqhc
	f2c4h7x7KBtWx7Mc9BSp7Wz4IxF7xuPG28FpF95FiuhdGaZwOOfEbA2oJncBYvU1foIROEyCYNFQS
	47HqwuyoE7sWVAMkzprpwoINO+kgYb93VfoRUSz+JulVlm+gxIl00Q9w+2/gvN8ZyzVRgqSvz0BUo
	rFPIk+/fCsgWb9xOrq4zKE93b7dTXZvN3MOHlnPL2Scc/MEtTYNFLA7gpXYYatC3/SMj9WzZhGSAB
	hKqFhP+vOx/OILNXnisKLsuC1WopOKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD4df-0003Zj-Oq; Sat, 14 Mar 2020 11:07:31 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD4dW-0003ZF-0d
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 11:07:24 +0000
Received: from localhost.localdomain (unknown [58.251.74.226])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id BBF91663E8C;
 Sat, 14 Mar 2020 19:07:13 +0800 (CST)
From: Zheng Wei <wei.zheng@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Brian King <brking@us.ibm.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, Allison Randal <allison@lohutok.net>,
 Enrico Weigelt <info@metux.net>, Yunfeng Ye <yeyunfeng@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH] scsi/ipr: fix wrong __VA_ARGS__ usage
Date: Sat, 14 Mar 2020 19:07:03 +0800
Message-Id: <20200314110705.121122-1-wei.zheng@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZTlVJTUhLS0tLSkpPT09LQllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MhQ6ORw6PDgzQzBDHkMVD0IZ
 Oh8wCwhVSlVKTkNPSkNPS0hPT09CVTMWGhIXVQweElUBEx4VHDsNEg0UVRgUFkVZV1kSC1lBWU5D
 VUlOSlVMT1VJSU1ZV1kIAVlBSU1KSDcG
X-HM-Tid: 0a70d8ba042f9373kuwsbbf91663e8c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_040722_216889_776DBBCB 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
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
Cc: kernel@vivo.com, wenhu.wang@vivo.com, Zheng Wei <wei.zheng@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ipr_hcam_err uses __VA_ARGS__ without "##" prefix, 
it causes a build error when there is no variable arguments.

Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
---
 drivers/scsi/ipr.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/ipr.h b/drivers/scsi/ipr.h
index b97aa9ac2ffe..de3401972354 100644
--- a/drivers/scsi/ipr.h
+++ b/drivers/scsi/ipr.h
@@ -1813,14 +1813,14 @@ struct ipr_ucode_image_header {
 					hostrcb->hcam.u.error64.fd_res_path, \
 					hostrcb->rp_buffer,		\
 					sizeof(hostrcb->rp_buffer)),	\
-				__VA_ARGS__);				\
+				##__VA_ARGS__);				\
 		} else {						\
 			ipr_ra_err((hostrcb)->ioa_cfg,			\
 				(hostrcb)->hcam.u.error.fd_res_addr,	\
-				fmt, __VA_ARGS__);			\
+				fmt, ##__VA_ARGS__);			\
 		}							\
 	} else {							\
-		dev_err(&(hostrcb)->ioa_cfg->pdev->dev, fmt, __VA_ARGS__); \
+		dev_err(&(hostrcb)->ioa_cfg->pdev->dev, fmt, ##__VA_ARGS__); \
 	}								\
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
