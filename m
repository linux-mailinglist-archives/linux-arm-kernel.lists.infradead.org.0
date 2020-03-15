Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F741859F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 05:01:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:Subject:To:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VUsjMVWHoG09DuxkasgLf4YWqaV29CCHQ40W4VqM9DI=; b=bekwJjKHZ0MA1L
	GGbeAjtiAyPTh7oVEP2MCAZt1Ius57at4tk0VAVLBq+0SnI4eihjFaK4k97H/kgGEmpdONpukwfl0
	GbksCavhC5QrrL6UkrxE7srx801eN2+VptJIQWzavz87eDDVmWr5bkA+pHpz4ukiyFxvUP9jcdWxB
	44npYI/2D5e5HzrGK6Nl3ppDfVFLNT7LMRnzhzaogT1/+hdFZqlacI307fZivdBZ+me3T17vw4F+q
	BDKC2ldw1PvN7YjtfD9D0jWHOjZaa2IWk+mq2Vn8T50W+CwTSKKSkg2U6h7+7As6PtcsKW0dpS63B
	NMTKMAbhUMt9ytYKQ5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDKT1-0001U1-Af; Sun, 15 Mar 2020 04:01:35 +0000
Received: from m176148.mail.qiye.163.com ([59.111.176.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDKSs-0001SD-Lb
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 04:01:28 +0000
Received: from vivo.com (wm-8.qy.internal [127.0.0.1])
 by m176148.mail.qiye.163.com (Hmail) with ESMTP id 1403C1A3D78;
 Sun, 15 Mar 2020 12:01:19 +0800 (CST)
Message-ID: <AOoADQCXCJCLyVN7qh-tYqrl.1.1584244879067.Hmail.hankecai@vivo.com>
To: catalin.marinas@arm.com, will@kernel.org, broonie@kernel.org, 
 alexios.zavras@intel.com, tglx@linutronix.de, allison@lohutok.net, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?UTF-8?B?W1BBVENIXSBhcm02NDogZml4IHNwZWxsaW5nIG1pc3Rha2UgImNhIG5vdCIgLT4gImNhbm5vdCI=?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 58.251.74.227
MIME-Version: 1.0
Received: from hankecai@vivo.com( [58.251.74.227) ] by ajax-webmail (
 [127.0.0.1] ) ; Sun, 15 Mar 2020 12:01:19 +0800 (GMT+08:00)
From: =?UTF-8?B?6Z+p56eR5omN?= <hankecai@vivo.com>
Date: Sun, 15 Mar 2020 12:01:19 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZTlVOS0xCQkJDQkxLS0hKTFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQQ8JDh5XWRIfHhUPWUFZRzo0FDo*KjgjODE4NwItNUwKE1YP
 IgoJF1VKVUpOQ09JT09DTEJKSEJVMxYaEhdVExoVEB4YGhI7DRINFFUYFBZFWVdZEgtZQVlOQ1VJ
 TkpVTE9VSUlMWVdZCAFZQUlNSE83Bg++
X-HM-Tid: 0a70dc5a6ef29394kuws1403c1a3d78
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_210126_850245_D175CD18 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: kernel@vivo.com, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a spelling mistake in the comment, Fix it.

Signed-off-by: hankecai <hankecai@bbktel.com>
---
 arch/arm64/lib/strcmp.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/lib/strcmp.S b/arch/arm64/lib/strcmp.S
index 4767540d1b94..4e79566726c8 100644
--- a/arch/arm64/lib/strcmp.S
+++ b/arch/arm64/lib/strcmp.S
@@ -186,7 +186,7 @@ CPU_LE( rev	data2, data2 )
 	* as carry-propagation can corrupt the upper bits if the trailing
 	* bytes in the string contain 0x01.
 	* However, if there is no NUL byte in the dword, we can generate
-	* the result directly.  We ca not just subtract the bytes as the
+	* the result directly.  We cannot just subtract the bytes as the
 	* MSB might be significant.
 	*/
 CPU_BE( cbnz	has_nul, 1f )
-- 
2.21.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
