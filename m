Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A481F52E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4uylMw0uLIoaAx1ESnZw9cIGPNzlmTD9xHb6qufCEsY=; b=oOy
	4GMkrADDnD4p4UAnQeMZ8fEhT0xrWMgbBB9Upnnq7yDsxd/x+BwBnBEk03B7rOEvQPXTkRJ9x138M
	9ZWoY6FCXLpyWNAER+t0VopJrGafV7SQYolS9mhZwH5KqXxTpl7KG2iUS/BHKoaX3HDA35HscJoNV
	HYWO4M4Rs99UEyyapnsD7SVJzjknVyPxxis1vIC2dd0BLcxOWVzDTU0b/khTiHxyU0d+TcSYwh/BT
	98lEQum6mN37IIG8jFjEppnhKS0aPeHH1ri2SsbWy5H3M6lnJ+fzGCFiFQqZi3utivH8v1nVmSqYQ
	GMMg9a477Cj8t7+rqXur1NNybZkTJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiyeB-0002cv-SD; Wed, 10 Jun 2020 11:11:55 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiye0-0002c0-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:11:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591787507; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=eobXzs++Nf0GymnLw2TDR9m8XDGyQ+cTGJFMu+d5QZ4=;
 b=ZGFe8N8aOjMc/rwEk6bM4QxIug2DQrJd4t9284PUDgme804b5CNyKyri+dEBXu9mywXszmFG
 HNqoVk8ychAxd6hy2iPrDdYAhOmBp4c3Bri9HcE8aVc4oPKirfyFojyLiBdLnQ7PCHBDHYf3
 nKLb2TG0O6mzx0i61/mi4a0BgQ4=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5ee0bfd46bebe35deb7181a9 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 10 Jun 2020 11:11:16
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 727EBC433CA; Wed, 10 Jun 2020 11:11:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from localhost
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: sthombre)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 43575C433C6;
 Wed, 10 Jun 2020 11:11:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 43575C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sthombre@codeaurora.org
From: Shyam Thombre <sthombre@codeaurora.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, ard.biesheuvel@arm.com,
 mark.rutland@arm.com, anshuman.khandual@arm.com, sashal@kernel.org
Subject: [PATCH] arm64: mm: reset address tag set by kasan sw tagging
Date: Wed, 10 Jun 2020 16:39:44 +0530
Message-Id: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_041148_096636_A43845E8 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Shyam Thombre <sthombre@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KASAN sw tagging sets a random tag of 8 bits in the top byte of the pointer
returned by the memory allocating functions. So for the functions unaware
of this change, the top 8 bits of the address must be reset which is done
by the function arch_kasan_reset_tag().

Signed-off-by: Shyam Thombre <sthombre@codeaurora.org>
---
 arch/arm64/mm/mmu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index e7fbc62..eae7655 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -723,6 +723,7 @@ int kern_addr_valid(unsigned long addr)
 	pmd_t *pmdp, pmd;
 	pte_t *ptep, pte;
 
+	addr = arch_kasan_reset_tag(addr);
 	if ((((long)addr) >> VA_BITS) != -1UL)
 		return 0;
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
