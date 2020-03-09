Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223E817D9C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oz7U1eYUcOO3YvPjPHaN4NDkfry4Ghwk7W84AGcPx1g=; b=AnOkOkrFKS3Gjn
	2oE7TtxHIIBdCzkpB2aYq79ux8fMB481bNVsuYBqwwstc5X2rm436HtKMFDA9CrZp3kRy/+xpkcTz
	JTuG7TuG2iYhoLPrrE9H5Ip/x4SQzJiA01UyrvnEmb8iUHvxJ/YGuKWYV1ns1brqMJ0MLJdvnz5l4
	GIE7sEqiWwkWlheoxD0vDJFy/oTNYkVPnxs7IHR6HcfOq9U5XMnS8Qwb2L90hQkRpxyHm0y3XeDyV
	8VDG+Uk24hAF1Z3DxrFBLYLQGN5jzLKCk6WZuRx9Btw7rlaquTj8gRHoDkTutDx5/lZ1x1gKxUGuk
	9qx7vouYcrtmovR0RWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCls-0008MG-KK; Mon, 09 Mar 2020 07:24:16 +0000
Received: from m177134.mail.qiye.163.com ([123.58.177.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBClg-0008Hl-44
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 07:24:06 +0000
Received: from SZ11061793 (unknown [58.251.74.226])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 72DD0261311;
 Mon,  9 Mar 2020 15:21:42 +0800 (CST)
From: =?gb2312?B?zfWzzLjV?= <wangchenggang@vivo.com>
To: "'Catalin Marinas'" <catalin.marinas@arm.com>,
 "'Will Deacon'" <will@kernel.org>, "'Mark Rutland'" <mark.rutland@arm.com>,
 "'Marc Zyngier'" <maz@kernel.org>,
 "'Allison Randal'" <allison@lohutok.net>,
 "'Greg Kroah-Hartman'" <gregkh@linuxfoundation.org>,
 "'Andrew Murray'" <amurray@thegoodpenguin.co.uk>,
 "'Thomas Gleixner'" <tglx@linutronix.de>,
 "'Chenggang Wang'" <wangchenggang@vivo.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] arch/arm64: fix typo in a comment
Date: Mon, 9 Mar 2020 15:21:42 +0800
Message-ID: <000401d5f5e3$622aefa0$2680cee0$@vivo.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdX14qokbDT0UdHeTo+lZgDpTUZRnA==
Content-Language: zh-cn
X-HM-Spam-Status: e1kfGhgUHx5ZQUlXWQgYFAkeWUFZTVVJT09CQkJDQ05OTkJLQ1lXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NUk6HRw4OjgrHj0jTQ0RTUk5
 CCEwCjVVSlVKTkNITEhDTktISUtLVTMWGhIXVQwaFRwYEx4VHBwaFRw7DRINFFUYFBZFWVdZEgtZ
 QVlOQ1VJTkpVTE9VSUlNWVdZCAFZQUlPSE43Bg++
X-HM-Tid: 0a70be2bbf969375kuws72dd0261311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002404_429288_7C04F750 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wenhu.wang@vivo.com, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix typo in a comment in arch/arm64/include/asm/esr.h

"Unallocted" -> "Unallocated"

Signed-off-by: Chenggang Wang <wangchenggang@vivo.com>
---
 arch/arm64/include/asm/esr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index cb29253ae86b..6a395a7e6707 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -60,7 +60,7 @@
 #define ESR_ELx_EC_BKPT32	(0x38)
 /* Unallocated EC: 0x39 */
 #define ESR_ELx_EC_VECTOR32	(0x3A)	/* EL2 only */
-/* Unallocted EC: 0x3B */
+/* Unallocated EC: 0x3B */
 #define ESR_ELx_EC_BRK64	(0x3C)
 /* Unallocated EC: 0x3D - 0x3F */
 #define ESR_ELx_EC_MAX		(0x3F)
--
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
