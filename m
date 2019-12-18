Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B29C123F59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 07:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OOoKqlRxZZYIMifvepQtdeiTYw4BKOd6vNH4TC0fH9w=; b=n8l
	NwNqJJUgV31l5nRBGR0sTq76yXu6v2uvMTuhN/AF3mZo1QVl64KIc6dL4cxIZaYFNvtUZVV6WDrGY
	1FyeZRjIpnLJfyspD6SJsztV72DLtmTMcPDXn6rgPM2aKPL8ap2s+nWLf//lkgd/FNFmqEK4j/1cG
	qWMewomtkZcdJjj1GuBWepzpk0c7OLwY7tX08oVmi8Q+N6/d5LP2nLYu2Zm78t7nRjNmv58szkbXx
	W/ioHuqOWxn4bc8BvNYSvjEX8NZ9QkI5vnrLfrtOM9trzOvksa0M9SWLZQNghX6S2+6XrhOWs5p3D
	LU48Hwv5X3sYSH/fjxZYbkgV0xmc84w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihSO0-0001tw-O1; Wed, 18 Dec 2019 06:00:40 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihSNs-0001t2-76
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 06:00:34 +0000
Received: from localhost.localdomain (unknown [159.226.5.100])
 by APP-05 (Coremail) with SMTP id zQCowACHcKBnwPldBQYSAw--.4719S3;
 Wed, 18 Dec 2019 14:00:09 +0800 (CST)
From: Xu Wang <vulab@iscas.ac.cn>
To: sschaeck@cisco.com, bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com,
 james.morse@arm.com, rrichter@marvell.com, joel@jms.id.au, andrew@aj.id.au
Subject: [PATCH] EDAC: aspeed: Remove unneeded semicolon
Date: Wed, 18 Dec 2019 06:00:06 +0000
Message-Id: <1576648806-1114-1-git-send-email-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: zQCowACHcKBnwPldBQYSAw--.4719S3
X-Coremail-Antispam: 1UD129KBjvdXoWrZF45ZrWktFWkGr1fGr1UGFg_yoWftrb_CF
 40kF4fWryDtr1xC397AwnrAF9IvFyDu3W0gF92ga4akF1UXr17XryDuFWUWr4fu3yUuFyD
 Gr1UtrW7uw47KjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUb4AYjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
 8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0
 cI8IcVCY1x0267AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwV
 C2z280aVCY1x0267AKxVWxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xv
 F2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r
 4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACI402YVCY1x02628vn2kI
 c2xKxwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14
 v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkG
 c2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_
 Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8fwID
 UUUUU==
X-Originating-IP: [159.226.5.100]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBAEIA102SzegqQAAsQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_220032_635166_AE57D077 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [159.226.251.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unneeded semicolon reported by coccinelle.

Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
---
 drivers/edac/aspeed_edac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/edac/aspeed_edac.c b/drivers/edac/aspeed_edac.c
index 09a9e3d..b194658b 100644
--- a/drivers/edac/aspeed_edac.c
+++ b/drivers/edac/aspeed_edac.c
@@ -243,7 +243,7 @@ static int init_csrows(struct mem_ctl_info *mci)
 	if (!np) {
 		dev_err(mci->pdev, "dt: missing /memory node\n");
 		return -ENODEV;
-	};
+	}
 
 	rc = of_address_to_resource(np, 0, &r);
 
@@ -252,7 +252,7 @@ static int init_csrows(struct mem_ctl_info *mci)
 	if (rc) {
 		dev_err(mci->pdev, "dt: failed requesting resource for /memory node\n");
 		return rc;
-	};
+	}
 
 	dev_dbg(mci->pdev, "dt: /memory node resources: first page r.start=0x%x, resource_size=0x%x, PAGE_SHIFT macro=0x%x\n",
 		r.start, resource_size(&r), PAGE_SHIFT);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
