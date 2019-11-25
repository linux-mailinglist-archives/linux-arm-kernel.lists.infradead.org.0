Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CD9109160
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 16:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cbzZapjzFzWUCK8JH0Vx3FhlMjTH3BpMEO0wjF8EPgo=; b=bfgqHhmscQiDvr
	NLfdzKAE4VGJmy9wUsDlI5IDtZFfQkpCM+zh9OKxhKYWQy340a6EX79/VVtr6poUVXiQcQkHngEJg
	Dv57bgsSCEISN7xZsOJOTf9WIZXJQ1HpYUWgEEA7V+EfLiY3pzWpXl2pMZKVLDLUADWmR0As0m46n
	gPjpTyddacMESSCjr3huVP90LWilDdshaEIMH3a7UyyYDeFRq2EF0YJyJ0hgHlFgdtQATF3DiYhTf
	g1jSR3aYioCs6T808fkCtfbkeWvhRAj4V7HMv3VDMGF4oFvxmtx0O5tG2RP3kOQTsy11TH4hcAm13
	MnZmk39T1HaJNovvitxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGhP-00062w-Cc; Mon, 25 Nov 2019 15:54:51 +0000
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGhH-000624-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 15:54:44 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R401e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07487; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0Tj4pjJn_1574697251; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0Tj4pjJn_1574697251) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 25 Nov 2019 23:54:29 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: avoid double free in error flow
Date: Mon, 25 Nov 2019 23:54:09 +0800
Message-Id: <20191125155409.9948-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_075443_575989_A1942F57 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-arm-kernel@lists.infradead.org, Wen Yang <wenyang@linux.alibaba.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If device_register() fails, both put_device() and kfree()
are called, ending with a double free of the scmi_dev.

Calling kfree() is needed only when a failure happens between the
allocation of the scmi_dev and its registration, so move it to
there and remove it from the error flow.

Fixes: 46edb8d1322c ("firmware: arm_scmi: provide the mandatory device release callback")
Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/firmware/arm_scmi/bus.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index 92f843ea..7a30952 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -135,8 +135,10 @@ struct scmi_device *
 		return NULL;
 
 	id = ida_simple_get(&scmi_bus_id, 1, 0, GFP_KERNEL);
-	if (id < 0)
-		goto free_mem;
+	if (id < 0) {
+		kfree(scmi_dev);
+		return NULL;
+	}
 
 	scmi_dev->id = id;
 	scmi_dev->protocol_id = protocol;
@@ -154,8 +156,6 @@ struct scmi_device *
 put_dev:
 	put_device(&scmi_dev->dev);
 	ida_simple_remove(&scmi_bus_id, id);
-free_mem:
-	kfree(scmi_dev);
 	return NULL;
 }
 
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
