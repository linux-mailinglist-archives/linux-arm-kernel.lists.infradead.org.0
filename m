Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6501C1E34B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+BLVnmvDNWthZHXXbuQ5a6twpoWzCUwy+iPPudrYdc=; b=ht8yrOXizaRUXU
	QKULcmQm8Vv61NmHOO3mpGrk9BIKr0Vw/DJLNu8FB1OeAth51zBJm8A3uyHJQPcujRO/9KfWANhZS
	RFPF12rNHJrxqrKJY7pWCe/C6tpPh25tEPOM3G3ML5/54aA4JKb5e17DaPUKa87Oz/FBBi0H3yudu
	h6cfDEyag8J8hsrliAAbyoIN6iPwAnPSXht0AEcY2s2oScyWJPW3fOHNFeDIl/NjjiZqbBtkCBWSW
	xiHp729qFI7DFr5sKP/FBxUZs6OUz3eVEpO3NEDI7nSfcYv6OIX/0V7UKHiN1lU0kPi0Oc43na/TM
	vAj0/ja3vq7iBd/0Nneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkqU-0007yV-Io; Wed, 27 May 2020 01:27:02 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkpz-0007o8-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:26:32 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ecdc16d0000>; Tue, 26 May 2020 18:25:01 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 26 May 2020 18:26:30 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 26 May 2020 18:26:30 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 May
 2020 01:26:29 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 27 May 2020 01:26:29 +0000
Received: from sandstorm.nvidia.com (Not Verified[10.2.50.17]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ecdc1c50005>; Tue, 26 May 2020 18:26:29 -0700
From: John Hubbard <jhubbard@nvidia.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/3] misc: xilinx-sdfec: cleanup return value in
 xsdfec_table_write()
Date: Tue, 26 May 2020 18:26:27 -0700
Message-ID: <20200527012628.1100649-3-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527012628.1100649-1-jhubbard@nvidia.com>
References: <20200527012628.1100649-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590542701; bh=dh1gzeuNEWLitRp0xsCGNIPzRAxdFNy5pUtT9em+Tw0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=RkYxm/hyg+xoYnaGAzqo/4SyN6yQRENIXgDZ9qxIHMh/KZ4fOzJUcaP7+B/a9SDNl
 YoqGTptxuumMIO5ZZq4QTlffi7hw/e4yfS0CwoQw8LAaVDfzOBvshWlmeC26sT7mHN
 L2yf0tBOGlRWxYRoQygEkTNNAyt3kCnHXZX69t+VTxDb2gdzBBnoNMut81OwQCC/Ea
 dqx2Lg5lIii0ycJl/pJcLf8rjcaRcO8YqW+FdaX6vH4yiIPMwn82EqwIo4YavaGlQk
 2uulzrko8VtwRn52Jpzh2CjY6Y4bDuUw8XFWOHGL06rjMLfXwdp6fBUM30y7zoVp0P
 uCHE6n6G2n2/w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_182631_140923_8B177FAF 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, John Hubbard <jhubbard@nvidia.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return 0 for success, rather than the value of an incrementing
"reg" index. The reg value was never actually used, so this
simplifies the caller slightly.

Cc: Derek Kiernan <derek.kiernan@xilinx.com>
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/xilinx_sdfec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index e2766aad9e14..7e2ee3e547f2 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -648,7 +648,7 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 			 ((reg * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE));
 		put_page(pages[i]);
 	}
-	return reg;
+	return 0;
 }
 
 static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
@@ -727,8 +727,6 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	ret = xsdfec_table_write(xsdfec, 4 * ldpc->qc_off, ldpc->qc_table,
 				 ldpc->nqc, XSDFEC_LDPC_QC_TABLE_ADDR_BASE,
 				 XSDFEC_QC_TABLE_DEPTH);
-	if (ret > 0)
-		ret = 0;
 err_out:
 	kfree(ldpc);
 	return ret;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
