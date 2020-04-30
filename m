Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18951BF0EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 09:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qhCWQDricfPg/6uxxq7khk617yzP7FL2UNipHp4S9qM=; b=hvC
	XG8RLDXf34NQE7zKwZURtooBIRMI76wmM205BLgcvuEs8RxEe8QloNLiWgCdIADM2+MgLu5VBNHcM
	3AMd2bnwBjjKeziI7SPw+8+gJdj/WMfKFzbGJ26rFqCGYlh3oPSRPjpXDlAtx3cMi4PirvN/htbiq
	LYUfT4S2xSAcehMITpWHujW6Svx1ldUkKDnGy2YAaoa7UsqYiybsgQgaoThdCwizIHTZdifi4VLO3
	BxoGctTvduh/h2wac7dpWs53US/UJj8wJzOTMLM/TatUKDxc1uZXGaPAubXrmVZy36b73NS+HhBHW
	YNy5IAfCS2tlGH0ObpdaJ97cD+SBx7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3N3-0004Jx-4j; Thu, 30 Apr 2020 07:12:33 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3Mt-0004I7-Pd
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 07:12:25 +0000
Received: from ubuntu.localdomain (unknown [223.104.3.134])
 by APP-05 (Coremail) with SMTP id zQCowADnh_FPeqpeDU+oAA--.9471S2;
 Thu, 30 Apr 2020 15:12:16 +0800 (CST)
From: Xu Wang <vulab@iscas.ac.cn>
To: linux@armlinux.org.uk, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ZYNQ: platsmp: fix ioremap return value
Date: Thu, 30 Apr 2020 15:12:15 +0800
Message-Id: <20200430071215.13448-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: zQCowADnh_FPeqpeDU+oAA--.9471S2
X-Coremail-Antispam: 1UD129KBjvdXoW7GF48ZFWxGFyktryDZr1DJrb_yoWxurg_Aw
 1xtanrW3sYqF1v9w4rCa18Crsrt348Cr1Fgry2yF92k3yUWr17Cryvya9aqw4xX3ZagrZ8
 GrWxGryayw15JjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbwxYjsxI4VWkCwAYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
 8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0
 cI8IcVCY1x0267AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwV
 C2z280aVCY1x0267AKxVWxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
 F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r
 4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k20xvY0x0EwIxGrwCF
 x2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14
 v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY
 67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2
 IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AK
 xVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUcDDGUUUUU
X-Originating-IP: [223.104.3.134]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiCgECA1z4i0Q2CAAAsf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_001224_205700_C090F75D 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [159.226.251.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In ioremap we should return -ENOMEM when it reports an
memory allocation failure.

Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
---
 arch/arm/mach-zynq/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index 68ec303fa278..308f74f9b4f9 100644
--- a/arch/arm/mach-zynq/platsmp.c
+++ b/arch/arm/mach-zynq/platsmp.c
@@ -47,7 +47,7 @@ int zynq_cpun_start(u32 address, int cpu)
 				zero = ioremap(0, trampoline_code_size);
 				if (!zero) {
 					pr_warn("BOOTUP jump vectors not accessible\n");
-					return -1;
+					return -ENOMEM;
 				}
 			} else {
 				zero = (__force u8 __iomem *)PAGE_OFFSET;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
