Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2718391DCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7Db3hjlSpUmCUq/986qfAgYv/AOnxzHh/iQcFEvuT8M=; b=tDp
	KXc5sypou6WSL9oZB77Ybp+o9OntNdqPIMypd5rXqCGcGalMGgUw+iSYUG3Tzue/UDa7RB841ZJS1
	5SKkQRSoGZ0Qz1zFzGbJSf/l/xLdr+HPvTZP3rY1nVddizQObc86GXGC7UWq6Yw7E3LqfybSRTC2m
	W/qd7xe4/HwLZ/6X6l/Lpn5wxrvFxMqCYqpJV0t4CWfY+aGgjuQVgRPdHLbtEFz3A7pEr8POWqbQn
	Eu9pRoelBvPg+zw5y1jNf7Yn+d70xVzqFzrsJPRCZEaAa6a11dJ8Yzsgrd56JEDJh/8tQB91TwdCZ
	VzURdSbMQjW8giLU8tnv3vPCBTofqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc5q-0006zZ-6U; Mon, 19 Aug 2019 07:28:42 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc5a-0006zB-7K
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:28:29 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x7J7RmL3006232;
 Mon, 19 Aug 2019 16:27:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x7J7RmL3006232
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566199669;
 bh=KlKgZRIRmY7DJ25kdvWMZBaaLiZzDkAo1IiDuDvncA0=;
 h=From:To:Cc:Subject:Date:From;
 b=MvbLElasiQybP0hWkMmTrEy5UwJlLmP/b220ksZOl7WpMCcROP+LEhmoc7edCWfK9
 4rlpUO8GGslq1B3hVt8AalUWnr+DIYAKa/fxajCFAy3WHP2HMNjUD4h7vBJiMGvrBh
 TGOVJHc4AxC+JOxvnf3Fz8Oj0VLhFycqtXse3/zNMlrHTqa1gPEGLA6V2L0Ut1BHTZ
 pJnQihnPRLuuaOtDtuH7lqMSIEXwDx4M+tbowA9EeffmxJ0PCgN1MHG14mg2Ouy80/
 dCV081W5x/1ERxFbHLzYJ2zw7zVIzKEc6fU4uuxYXrQsDoc4GhOjZiaVp4yqt9rB2b
 PVYa6YHAYaTLA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: add include guard to linux/scmi_protocol.h
Date: Mon, 19 Aug 2019 16:27:39 +0900
Message-Id: <20190819072740.11257-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002826_473834_84D12F87 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a header include guard just in case.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/scmi_protocol.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 9ff2e9357e9a..8a840e644907 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -4,6 +4,10 @@
  *
  * Copyright (C) 2018 ARM Ltd.
  */
+
+#ifndef _LINUX_SCMI_PROTOCOL_H
+#define _LINUX_SCMI_PROTOCOL_H
+
 #include <linux/device.h>
 #include <linux/types.h>
 
@@ -288,3 +292,5 @@ static inline void scmi_driver_unregister(struct scmi_driver *driver) {}
 typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
 int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
 void scmi_protocol_unregister(int protocol_id);
+
+#endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
