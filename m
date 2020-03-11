Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B6F1817D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syyR8vC/EjV8sfASVu/cw27YZZnolsKkI/aQJT6I1Y0=; b=UfrOhSgPfEZnRi
	NzihsCjY1qn1UbE/JEvUaW/e1UwG9NzvWw0XzpbgRBqsIGH1m73dAVrZzkocpB6MUNaw7mGzeyI9d
	SlDH/wM//JxaBXb2nMvJwyrVKz2w+3l0mxq6fmk3q5C7hQR1vfuIbDCTQmtIol0m7P/Ybu57NR1R8
	LeWWY334eMXUeL2c3lX4RUJKhty4Gf48+qsDJNFKaB7D/cQN73o0i981H15LVNuXopbAowap1ETSz
	hGsb3MFNe2oVVSDhw654e8RAa/0F3gyr/7EVPlxjayufyoQXLvUt4g0B0rqPrGAyyH9KYjXpp4h3l
	EPC23kg1wGoiOVQUmrcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0MG-0005GI-Rk; Wed, 11 Mar 2020 12:21:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0MA-0005FR-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:21:03 +0000
X-UUID: 569cbfae10dd48a98c0f7ee667a1ea6a-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Ko1BjI2ELzJodvKKe45j1AqO09tGfo0MC5W9HBQrrI4=; 
 b=hFd3ssV38dSzWcHGUfFxv41cNlIzg1K6LwKuaT4btZfKqojgk4NhpFB53ppr1KkIIPs/jga7i9b2NHg2TyoCvc6WzgszSU0G4a93S7uxpAPkhpr6nvMENo9FKWsr3guixQQRo9cT7+drVmlsfMK1GEZqTAaLjmR/w822/YcQaAA=;
X-UUID: 569cbfae10dd48a98c0f7ee667a1ea6a-20200311
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 786148816; Wed, 11 Mar 2020 04:20:55 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 05:20:53 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 20:20:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Mar 2020 20:20:58 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>, Christian Brauner
 <christian@brauner.io>, Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH] pid: fix uninitialized var warnings
Date: Wed, 11 Mar 2020 20:20:49 +0800
Message-ID: <20200311122049.11589-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8FFCA056A86FDAB388FAEAFCBF293114866B37C98B625B24FDEB9BC4584ECB9F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052102_387145_DBC3805F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wsd_upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling with gcc-9.2.1 points out below warnings. Fix it.

kernel/pid.c: In function 'alloc_pid':
kernel/pid.c:180:10: warning: 'retval' may be used uninitialized
in this function [-Wmaybe-uninitialized]

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Christian Brauner <christian@brauner.io>
Cc: Oleg Nesterov <oleg@redhat.com>
Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 kernel/pid.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/pid.c b/kernel/pid.c
index ff6cd6786d10..02944cfd4e51 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -176,8 +176,10 @@ struct pid *alloc_pid(struct pid_namespace *ns, pid_t *set_tid,
 		return ERR_PTR(-EINVAL);
 
 	pid = kmem_cache_alloc(ns->pid_cachep, GFP_KERNEL);
-	if (!pid)
+	if (!pid) {
+		retval = -ENOMEM;
 		return ERR_PTR(retval);
+	}
 
 	tmp = ns;
 	pid->level = ns->level;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
