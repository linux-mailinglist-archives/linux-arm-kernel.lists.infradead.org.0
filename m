Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2B3104D97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wg4yUqVlg61E+JbcbUogPHzij/JzYiXtPPNNd7jYTPw=; b=qj1ssj8YLZYBHY
	HYSip43zJpBZYNm0WGnqjfpd4Ux3TlUJq87Qm6kI9rI1phjEe0uEjjBIVsyLI/zJecpjTKrl3PhBC
	xctLuknOvgEY6Vg77Zdio2MrmhxZyXcE/Zq8NZmojkUBEUEeTxiuCLzK2QGRn+gsd6+iaos5+6fRA
	zNQjz2uSCz0bGzw4Dc6peiRWxXFe3EEK5Wnw9BPwR9Sj8XnDkE9Bz+j7BrDWwXyVYMp+jWmlEirAp
	95K/5MxIl6tqw/qdTVUzdw03m8DMljbXCdb5P2VpRSKvv2pD+26iI0SoKthFNfutLSjJYUazJTV9H
	AfSeWyAVSmpn2GdCSIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXhao-0002uG-EJ; Thu, 21 Nov 2019 08:13:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXhae-0002sG-Ui; Thu, 21 Nov 2019 08:13:26 +0000
X-UUID: 0c63917b8d284f5380b58643958a4581-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=U97mKHK8idOeQxpJETaSEs2XLJJYwjnYHMcOchdEF+g=; 
 b=SJt/F7SyKCEqREcvs+FW59AwJMxgQkTUFhIt0sEmSuDcXpPD5l3fzGFmLcZBEpJbM4Trh7w+PYETKFwOw8wbuKTU7BKbZncbOnTgCkFciHAFgkcp61lrP1gxhXdRLOFuWoqX69NpwIZ5MsmekvZlLXRvmC/rPoDhyXD8QRvcHW0=;
X-UUID: 0c63917b8d284f5380b58643958a4581-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yt.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1199080665; Thu, 21 Nov 2019 00:13:18 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 00:13:22 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 16:13:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 16:13:37 +0800
From: YT Chang <yt.chang@mediatek.com>
To: YT Chang <yt.chang@mediatek.com>, Peter Zijlstra <peterz@infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] sched: panic, when call schedule with preemption disable
Date: Thu, 21 Nov 2019 16:13:05 +0800
Message-ID: <1574323985-24193-1-git-send-email-yt.chang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_001324_993426_6207080C 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When preemption is disable, call schedule() is incorrect behavior.
Suggest to panic directly rather than depend on panic_on_warn.

Signed-off-by: YT Chang <yt.chang@mediatek.com>
---
 kernel/sched/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 7880f4f..214e8d8 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3861,9 +3861,8 @@ static noinline void __schedule_bug(struct task_struct *prev)
 		print_ip_sym(preempt_disable_ip);
 		pr_cont("\n");
 	}
-	if (panic_on_warn)
-		panic("scheduling while atomic\n");
 
+	panic("scheduling while atomic\n");
 	dump_stack();
 	add_taint(TAINT_WARN, LOCKDEP_STILL_OK);
 }
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
