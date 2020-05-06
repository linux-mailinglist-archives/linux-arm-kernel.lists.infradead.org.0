Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A37D1C6777
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OUJ3Pfe1v4vHRSPMUvbKYeFYNqpXr9a2I96ts69M+xo=; b=JSitvZoGCCPeJO
	RGdSVIAAXQWJ/l53XsjE5k80ETT1mO5bqgyTLgiaHPX946sYkAR12+ChbS5qrzrsl7WxDuweaG4Qd
	+YCk4dh6vnr44C9d1/CBsWGFAzfaglTPnxnhfsC3yCfoUgkBB9lElMjr8JqkqzVmvVAVu9IdQxsie
	KGqFt5o0pg0qoQGFtyokTUhqvJOzHnnPw0EWLtlTd19zrteIiY2RmiLH9ofBCSPiaEtiP5kUOR0lE
	xZh/YLxCahcpPMrEhjGGlGtNA/0T5fmNdYvWfhs2809QyrNiQxeHTfuxCOnBUzv6Bv2xK1Pa56BNc
	00yvB4bdf5L22dZ+V24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCd2-0006k9-RM; Wed, 06 May 2020 05:29:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCcw-0006j7-1O; Wed, 06 May 2020 05:29:51 +0000
X-UUID: bbbe335e92a74f5cbb8e5be17b1e14db-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=GyIzn8Fjf5emeqtXboCK49Lm5jVHGDGdEVCXXCPcZZs=; 
 b=FbLP9ZbngPwnOOUdKh6Z69BnqWzSsgwIvZNO1sTYwqcb78j+xhVGJNEKPNZoTv/yjnQrcSWcfknd/L7eIyWsFqqzzjJulMKcevO779Z5q+caOk9lKjnETPfKXgQdKtJKnzPUmXo1og3IfjK4pCjdpQF/6FG6EgWFgREwdIITtKk=;
X-UUID: bbbe335e92a74f5cbb8e5be17b1e14db-20200505
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 494662919; Tue, 05 May 2020 21:29:46 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 5 May 2020 22:27:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 13:26:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 6 May 2020 13:26:55 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Jonathan Corbet
 <corbet@lwn.net>
Subject: [PATCH 3/3] kasan: add KASAN_RCU_STACK_RECORD documentation
Date: Wed, 6 May 2020 13:26:55 +0800
Message-ID: <20200506052655.14639-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_222950_092680_50DFE0F7 
X-CRM114-Status: UNSURE (   9.36  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This adds the documentation for the KASAN_RCU_STACK_RECORD config option.

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>
---
 Documentation/dev-tools/kasan.rst | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index c652d740735d..368ff0dad0d7 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -281,3 +281,24 @@ unmapped. This will require changes in arch-specific code.
 
 This allows ``VMAP_STACK`` support on x86, and can simplify support of
 architectures that do not have a fixed module region.
+
+CONFIG_KASAN_RCU_STACK_RECORD
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+With CONFIG_KASAN_RCU_STACK_RECORD, when call_rcu() is called, it will
+store the call_rcu() call stack into slub alloc meta-data. The goal
+is to print call_rcu() information in KASAN report. It is helpful for
+use-after-free or double free memory issue.
+
+Record first and last call_rcu() call stack and print two call_rcu()
+call stack in KASAN report.
+
+This option doesn't increase the cost of memory consumption, we add two
+call_rcu() call stack into struct kasan_alloc_meta and size is 8 bytes.
+Remove the free track from struct kasan_alloc_meta and size is 8 bytes.
+So we don't enlarge the slub meta-data size.
+
+This option is only suitable for generic KASAN. Because the free track
+is stored in freed object. so free track is valid information only when
+it exists in the quarantine. If the slub object is in-use state, then
+KASAN report doesn't print call_rcu() free track information.
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
