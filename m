Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4AC1813F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f0PFCtDwxCoblcuenw3IWf13i69Y3hMTt4PIGaRwM2I=; b=oF6
	/K+iamLrNtJoH6SxpgfYub1FkW+erDggd3Nra9IKOzWCu6vXcUy99kCTdR12maOwGWUzzSwuilt1l
	f8N77d2QNxsKIoNHWBmAYD22PeuG9Pz2P7/GPmXp1+zB/iT4EHXUCNRiZvH7OCO4t31Ck5VAHyFak
	nnkJq9FQYMDyECUVyZYpVNJgLwkh5wTsN9LGRooeInG9HxLQgH0AvnzSS7HLbXTvFHfPPA3u7kIRQ
	Q3IazDV9Fda4WqdUx/rihFITtK9ZL+X2ubC4tUjXfvmrnHbih8v4pWFjy76avAone+SHXZysi/Udr
	/tz50q3Kwld3HzFNFJGcO0re8H1Yltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxJW-00047m-2a; Wed, 11 Mar 2020 09:06:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxJN-00046v-Vt
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:05:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A056EAE85;
 Wed, 11 Mar 2020 09:05:56 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] perf: arm-ccn: Use scnprintf() for avoiding potential buffer
 overflow
Date: Wed, 11 Mar 2020 10:05:55 +0100
Message-Id: <20200311090555.20232-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020558_173017_9748A2C6 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/perf/arm-ccn.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/perf/arm-ccn.c b/drivers/perf/arm-ccn.c
index fea354d6fb29..cee579d428e7 100644
--- a/drivers/perf/arm-ccn.c
+++ b/drivers/perf/arm-ccn.c
@@ -330,13 +330,13 @@ static ssize_t arm_ccn_pmu_event_show(struct device *dev,
 
 	res = snprintf(buf, PAGE_SIZE, "type=0x%x", event->type);
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
