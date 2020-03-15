Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34592185B92
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sP03tYKKaFw7ltss6yNzAsWEgOXFyDXsnLTwpF8WmY4=; b=bSK
	1mWUxjLmYPGrLAyb/Im11Wbalk9unSxt+e4pKRM9wPS5mgteS7uJsEEnTJcsWu9YbFqx92hDEpGKS
	JgoszhBFFmYGypxNp41Pq/Gd02AhK3ot9UpiMbaJMVnlgsFdYSdogFbwIeXof4386A6u23JnCLvDa
	O4RwBIAmppkMQdmnv92bgILkSpJqofcshNyZnO1xkXglsfPOrLhY13UVpXiOjxYmsinrqeWbZSdpx
	UT3/n6YszbMuOBGiYOfSv/1em5pYJRLo7xMoI5pxkLf5GDwqcMybNU3ENIr8kNPdmjwtckfcwfGzy
	zX9AbpClfLh5g36j5n/76CdXLznPaCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPi4-0007U2-Ay; Sun, 15 Mar 2020 09:37:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPhu-0007TB-7U
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:37:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A1EFAABC7;
 Sun, 15 Mar 2020 09:37:16 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] perf: arm-ccn: Use scnprintf() for avoiding potential
 buffer overflow
Date: Sun, 15 Mar 2020 10:37:15 +0100
Message-Id: <20200315093715.8715-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_023718_418184_FA82A819 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

snprintf() is a hard-to-use function, it's especially difficult to use
it for concatenating substrings in a buffer with a limited size.
Since snprintf() returns the would-be-output size, not the actual
size, the subsequent use of snprintf() may point to the incorrect
position easily.  Although the current code doesn't actually overflow
the buffer, it's an incorrect usage.

This patch replaces such snprintf() calls with a safer version,
scnprintf().

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
v1->v2: Rephrasing the patch description.
        Replace the starting snprintf(), too

 drivers/perf/arm-ccn.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index fea354d6fb29..d50edef91f59 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -328,15 +328,15 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
 			struct arm_ccn_pmu_event, attr);
 	ssize_t res;
 
-	res = snprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
+	res = scnprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
 	if (event->event)
-		res += snprintf(buf + res, PAGE_SIZE - res, ",event=0x%x",
+		res += scnprintf(buf + res, PAGE_SIZE - res, ",event=0x%x",
 				event->event);
 	if (event->def)
-		res += snprintf(buf + res, PAGE_SIZE - res, ",%s",
+		res += scnprintf(buf + res, PAGE_SIZE - res, ",%s",
 				event->def);
 	if (event->mask)
-		res += snprintf(buf + res, PAGE_SIZE - res, ",mask=0x%x",
+		res += scnprintf(buf + res, PAGE_SIZE - res, ",mask=0x%x",
 				event->mask);
 
 	/* Arguments required by an event */
@@ -344,25 +344,25 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
 	case CCN_TYPE_CYCLES:
 		break;
 	case CCN_TYPE_XP:
-		res += snprintf(buf + res, PAGE_SIZE - res,
+		res += scnprintf(buf + res, PAGE_SIZE - res,
 				",xp=?,vc=?");
 		if (event->event == CCN_EVENT_WATCHPOINT)
-			res += snprintf(buf + res, PAGE_SIZE - res,
+			res += scnprintf(buf + res, PAGE_SIZE - res,
 					",port=?,dir=?,cmp_l=?,cmp_h=?,mask=?");
 		else
-			res += snprintf(buf + res, PAGE_SIZE - res,
+			res += scnprintf(buf + res, PAGE_SIZE - res,
 					",bus=?");
 
 		break;
 	case CCN_TYPE_MN:
-		res += snprintf(buf + res, PAGE_SIZE - res, ",node=%d", ccn->mn_id);
+		res += scnprintf(buf + res, PAGE_SIZE - res, ",node=%d", ccn->mn_id);
 		break;
 	default:
-		res += snprintf(buf + res, PAGE_SIZE - res, ",node=?");
+		res += scnprintf(buf + res, PAGE_SIZE - res, ",node=?");
 		break;
 	}
 
-	res += snprintf(buf + res, PAGE_SIZE - res, "\n");
+	res += scnprintf(buf + res, PAGE_SIZE - res, "\n");
 
 	return res;
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
