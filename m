Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136E14EB0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUjzmwdY+lzBzWmGRXOPFE0rrFcY09vFA6Je7kCuYbQ=; b=ubpaKU+t9LJSlo
	JqhlnUqHJ3MDeWvym7bNRIMlzOHuJ6I9Zilsk3QhK5nNtT0DT62ZveYoP1SBQNdgm9Rm3/ErOIGqz
	L9t4iZwer9yGGan1xqTyrqgdhXa803xQjZW49cnev7Mgc1VQGlAUA79sUq9SHhDEYF5SKYTuVw4It
	qXZRKcPqL770hVwaNWENpg98V8kWwoLQSmpNVTgWS6Vxytl/i8egK64aI1XPI/Q7IZtxZn6DqDakO
	YGEh5yShc6ZFyu39Gm6s0hY05OOb83oZBoYnMlI+LE0bANw/y7bfpF1Xu6/R9DrC5zrkc0Q+HVMQF
	09uDAIOzPlW2MzCG6EJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTkI-0006ct-9l; Fri, 31 Jan 2020 10:41:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThf-0003VV-7e; Fri, 31 Jan 2020 10:39:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C7360AF43;
 Fri, 31 Jan 2020 10:39:09 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/21] staging: vc04_services: Get rid of
 vchiq_platform_paused/resumed()
Date: Fri, 31 Jan 2020 11:38:23 +0100
Message-Id: <20200131103836.14312-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023911_440694_BA61B70B 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vchiq_platform_paused() and vchiq_platform_resumed() do nothing.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.c     |  3 ---
 .../vc04_services/interface/vchiq_arm/vchiq_core.h     |  6 ------
 3 files changed, 19 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 1ffb2aea947c..5f59145f251b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -269,16 +269,6 @@ vchiq_platform_resume(struct vchiq_state *state)
 	return VCHIQ_SUCCESS;
 }
 
-void
-vchiq_platform_paused(struct vchiq_state *state)
-{
-}
-
-void
-vchiq_platform_resumed(struct vchiq_state *state)
-{
-}
-
 int
 vchiq_platform_videocore_wanted(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 76351078affb..71342826ed33 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1798,7 +1798,6 @@ parse_rx_slots(struct vchiq_state *state)
 			}
 			/* At this point slot_mutex is held */
 			vchiq_set_conn_state(state, VCHIQ_CONNSTATE_PAUSED);
-			vchiq_platform_paused(state);
 			break;
 		case VCHIQ_MSG_RESUME:
 			vchiq_log_trace(vchiq_core_log_level,
@@ -1807,7 +1806,6 @@ parse_rx_slots(struct vchiq_state *state)
 			/* Release the slot mutex */
 			mutex_unlock(&state->slot_mutex);
 			vchiq_set_conn_state(state, VCHIQ_CONNSTATE_CONNECTED);
-			vchiq_platform_resumed(state);
 			break;
 
 		case VCHIQ_MSG_REMOTE_USE:
@@ -1908,7 +1906,6 @@ slot_handler_func(void *v)
 					!= VCHIQ_RETRY) {
 					vchiq_set_conn_state(state,
 						VCHIQ_CONNSTATE_CONNECTED);
-					vchiq_platform_resumed(state);
 				} else {
 					/* This should really be impossible,
 					** since the PAUSE should have flushed
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index c31f953a9986..72c88fe5feb1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -593,15 +593,9 @@ remote_event_signal(struct remote_event *event);
 void
 vchiq_platform_check_suspend(struct vchiq_state *state);
 
-extern void
-vchiq_platform_paused(struct vchiq_state *state);
-
 extern enum vchiq_status
 vchiq_platform_resume(struct vchiq_state *state);
 
-extern void
-vchiq_platform_resumed(struct vchiq_state *state);
-
 extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
