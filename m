Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773601DDCF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 04:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdMylE9cRTBHTkBdSNCFuIwJ00ct9ccLAXSzOVAPqvQ=; b=RbXQgYkio/O5at
	FxYCASRs6VOfH9djPthFxIOchXaKPx2an896qlHDZpZVU84oPzqNu0yD6qY0U/Lt1ecfrQi1+nZnw
	dUC++Z+HInWWKHI5xkdpXi49lrZolnxNVdlvQ+SdV4OhYC6RXUCDaPLbievqoDXlJzhMYHKOCkECE
	UcnyniqTIzi2QncWqY+o4kWskERzNbYVqS0Sh/jCuHb6Con0WddFSeIpdu6QQulRGBd7qZo12z+ga
	GpRAwxGe6ihCaRTl28UEBDg38whMsJ4nmH6uwmwzgTtou8GyBKcwq+AULg14wCkSB/ECGMJewgx87
	mTi1IeyBlFXNzJvXa6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbx0p-0001BT-9C; Fri, 22 May 2020 02:02:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbx0Y-00018z-Dx; Fri, 22 May 2020 02:02:00 +0000
X-UUID: 370c5dc27eea4f95a7d6f9babb3040b5-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=DbdlJu8vuZUyyQAeAhd6YD50kjTkWp9bEKvDh4VAu5A=; 
 b=H2iF5wuNTraJnSdG7Ffis1XK7pyl3iR2z+l9XEAeYzo/8VWbcCPQ68hrW4TGFXoIKLDO22wJOB9a7zmIp0IAS2313vnVCuMbemcW/gwTHv2biWrbg+7MR9KtEuaxOBFxuI8c+jx6DAaiJtfQtb5VuGGVbkNwrl+q6+rPo3mMAUA=;
X-UUID: 370c5dc27eea4f95a7d6f9babb3040b5-20200521
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1930356894; Thu, 21 May 2020 18:01:47 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 19:01:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 10:01:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 22 May 2020 10:01:51 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v6 3/4] kasan: add tests for call_rcu stack recording
Date: Fri, 22 May 2020 10:01:51 +0800
Message-ID: <20200522020151.23405-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1DF83D308094557B8096DD8171A9C524EA3231510A950D2F5EB96F4701E47C662000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_190158_481930_003631DF 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Test call_rcu() call stack recording and verify whether it correctly
is printed in KASAN report.

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
---
 lib/test_kasan.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index e3087d90e00d..6e5fb05d42d8 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -792,6 +792,35 @@ static noinline void __init vmalloc_oob(void)
 static void __init vmalloc_oob(void) {}
 #endif
 
+static struct kasan_rcu_info {
+	int i;
+	struct rcu_head rcu;
+} *global_ptr;
+
+static noinline void __init kasan_rcu_reclaim(struct rcu_head *rp)
+{
+	struct kasan_rcu_info *fp = container_of(rp,
+						struct kasan_rcu_info, rcu);
+
+	kfree(fp);
+	fp->i = 1;
+}
+
+static noinline void __init kasan_rcu_uaf(void)
+{
+	struct kasan_rcu_info *ptr;
+
+	pr_info("use-after-free in kasan_rcu_reclaim\n");
+	ptr = kmalloc(sizeof(struct kasan_rcu_info), GFP_KERNEL);
+	if (!ptr) {
+		pr_err("Allocation failed\n");
+		return;
+	}
+
+	global_ptr = rcu_dereference_protected(ptr, NULL);
+	call_rcu(&global_ptr->rcu, kasan_rcu_reclaim);
+}
+
 static int __init kmalloc_tests_init(void)
 {
 	/*
@@ -839,6 +868,7 @@ static int __init kmalloc_tests_init(void)
 	kasan_bitops();
 	kmalloc_double_kzfree();
 	vmalloc_oob();
+	kasan_rcu_uaf();
 
 	kasan_restore_multi_shot(multishot);
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
