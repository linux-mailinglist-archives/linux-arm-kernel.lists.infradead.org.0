Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E43663854
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+LRbmFiBUHozZjuvef53G9v4QpKTvdVhgQMaNGk/5NU=; b=DyLkdzxWSWOovqJDwSuOxJZH+G
	9Tw59GiimuIr3x0EFrEPjJZ3xWkwyGlf7szdj/Mg040jEywLfi34jhQD452AR2949QlNFKv23LVmf
	W9O+rKuOXFoyHAD8jzynOCQ89+5GWNVy/VUPsBHBCITbWT2YV5e+e2dHiHwQ8/juG0jTolIFfVw5J
	YsmM9ZN27XAWPfYLuUKwXfeC4jCUwyJl1UAJTq3t5Pf9XpE/L2Gw2bsCiqzxio6w/RJumV6IrdIiN
	3kQAZnNPY+TMckXp1/Z4NlfDXkS7l/cCvqf1DUZvsCm8PLQWpCTSqkSfowFngo4zq/991am75mq0D
	/3xJ3OoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrgq-0004sC-VC; Tue, 09 Jul 2019 15:05:57 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrgf-0004rJ-FZ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:05:47 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7F57BC8D65A32B1F0F0F;
 Tue,  9 Jul 2019 23:05:25 +0800 (CST)
Received: from [127.0.0.1] (10.133.205.80) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 9 Jul 2019
 23:05:18 +0800
To: <julien.thierry@arm.com>
From: Yang Yingliang <yangyingliang@huawei.com>
Subject: Could info leak in preserve_iwmmxt_context() ?
Message-ID: <5D24AD2E.8080102@huawei.com>
Date: Tue, 9 Jul 2019 23:05:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
X-Originating-IP: [10.133.205.80]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_080545_771261_09CE7A4B 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Hanjun Guo <guohanjun@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Julien

In this commit 73839798af7e ("ARM: 8790/1: signal: always use 
__copy_to_user to save iwmmxt context"):

--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -77,8 +77,6 @@ static int preserve_iwmmxt_context(struct 
iwmmxt_sigframe __user *frame)
          kframe->magic = IWMMXT_MAGIC;
          kframe->size = IWMMXT_STORAGE_SIZE;
          iwmmxt_task_copy(current_thread_info(), &kframe->storage);
-
-        err = __copy_to_user(frame, kframe, sizeof(*frame));
      } else {
          /*
           * For bug-compatibility with older kernels, some space
@@ -86,10 +84,14 @@ static int preserve_iwmmxt_context(struct 
iwmmxt_sigframe __user *frame)
           * Set the magic and size appropriately so that properly
           * written userspace can skip it reliably:
           */
-        __put_user_error(DUMMY_MAGIC, &frame->magic, err);
-        __put_user_error(IWMMXT_STORAGE_SIZE, &frame->size, err);
+        *kframe = (struct iwmmxt_sigframe) {
+            .magic = DUMMY_MAGIC,
+            .size  = IWMMXT_STORAGE_SIZE,
+        };

The storage member of kframe is uninitialized, it seems will lead a info 
leak to userspace ?

In section 2.4.2.3 Initializing Structure Members of gnu-c-manual, it 
has no specific behavior
to define the uninitialized member.

Please correct me if I am wrong.

      }

+    err = __copy_to_user(frame, kframe, sizeof(*kframe));
+

Thanks,
Yang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
