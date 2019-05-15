Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CBA1EAD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlUXQQwMW2jriNQ/biTreJ5kk3D7c8E/dOgbZhTlruo=; b=mVgtbLI5cocIBc
	Ztj0sqrbhyh+0aKpmqZfVvlmAjmKsOZOVpz2u1sn3wtzW3m8VKBKsKlXxMO/q6R9MOc3UreBfOeRb
	HWeJUOQkdRa5JTiD4M29pPzLGChiqb8cXrJIdiJmjlpn41d0Ym7woP8HNmxgGB0OzRMG1RYcZraQY
	mpbjOAGMtBNFv5RxsO7Q3rlmG0mwwDzOYmFWO736GvJHY/H16MsAG4LuuPetAaIg23gtpyMET6rLl
	ve7XGBetd+qZFOVD3KCUOd/ZYdeEb7WCiub1uIDc7ZJc4+fFf9DBxRKl7nJ+lRu5Xz3posU0G2h5R
	hBRfC0oQmfvMJv/gr1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQq3R-0006mE-PH; Wed, 15 May 2019 09:18:29 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQq3K-0006lZ-SY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:18:24 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 339C08B7995CE51A24C9;
 Wed, 15 May 2019 17:18:15 +0800 (CST)
Received: from FRA1000014316.huawei.com (100.126.230.97) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Wed, 15 May 2019 17:18:04 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <shameerali.kolothum.thodi@huawei.com>
Subject: [PATCH 07/60] arm64: cpu_ops: fix a leaked reference by adding
 missing of_node_put
Date: Wed, 15 May 2019 17:16:44 +0800
Message-ID: <20190515091737.18578-7-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190515091737.18578-1-Jonathan.Cameron@huawei.com>
References: <20190515091737.18578-1-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [100.126.230.97]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_021823_234318_5621F61B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Wen Yang <wen.yang99@zte.com.cn>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wen Yang <wen.yang99@zte.com.cn>

The call to of_get_next_child returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
  ./arch/arm64/kernel/cpu_ops.c:102:1-7: ERROR: missing of_node_put;
  acquired a node pointer with refcount incremented on line 69, but
  without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 arch/arm64/kernel/cpu_ops.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index ea001241bdd47..00f8b8612b69f 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -85,6 +85,7 @@ static const char *__init cpu_read_enable_method(int cpu)
 				pr_err("%pOF: missing enable-method property\n",
 					dn);
 		}
+		of_node_put(dn);
 	} else {
 		enable_method = acpi_get_enable_method(cpu);
 		if (!enable_method) {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
