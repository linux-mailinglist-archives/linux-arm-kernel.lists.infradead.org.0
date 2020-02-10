Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FAF157D9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:42:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LE97M5sQacwkFX29ixP3FJwlKaQwtgBp468n6LPpf+8=; b=cRYyH2W6SB7KzL
	66fbdmfa/fewUMYl9DlY6hhhnzOJEzXZpOnW5nSCysjFIlSC+x7LiaFXPOQ+ZI0lF+U9TMi09fmOi
	0cqvWThyOf+P/ZHjNT0Nzv2oFJjszurBLiRHCNFA/1LUPdxJXj7KgHJCuzm/6TJ8smkvYpe03wwu5
	0H6XeNlJcqF9GKpPjX3niJlPL8/SmvV71guw0Y+EvOQllRJRZ3nRrWoTnfQYG4jU2rMLZrLkM45yO
	7twpwkCp/5HXUWcTbGLlqjuFm2t2ChYpkN8yvjExY092sQHk7xSFX8s16QlDGybwlnxFkiuy5rdnB
	awvYJ8Yf9Gz5TpUtuCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AGe-00061L-0Y; Mon, 10 Feb 2020 14:42:32 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j1AGY-00060E-8v
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:42:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 01AEfxVY025063,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 01AEfxVY025063
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 22:41:59 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 10 Feb 2020 22:41:58 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 10 Feb 2020 22:41:58 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTEXMB01.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server id
 15.1.1779.2 via Frontend Transport; Mon, 10 Feb 2020 22:41:58 +0800
From: James Tai <james.tai@realtek.com>
To: <james.ttl7447@gmail.com>
Subject: [PATCH] [DEV_FIX][THOR][B00] Support multiple IR key [REVIEWER] Simon
Date: Mon, 10 Feb 2020 22:41:53 +0800
Message-ID: <20200210144153.27184-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_064226_456564_2D06A5C0 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: James Tai <james.tai@realtek.com>
---
 rtd16xx_pm.c | 27 ++++++++++++++++-----------
 rtd16xx_pm.h | 12 ++++++++----
 2 files changed, 24 insertions(+), 15 deletions(-)

diff --git a/rtd16xx_pm.c b/rtd16xx_pm.c
index b34ce94..1779670 100644
--- a/rtd16xx_pm.c
+++ b/rtd16xx_pm.c
@@ -44,7 +44,7 @@ unsigned int IsSuspendToWFI;
 unsigned int suspend_ChipVer;
 
 rtk_pm_event_func_t wakeup_events[RTK_PM_MAX_EVENTS];
-param_pwm_irda_key_t param_wakeup_ir_key[RTK_PM_MAX_IR_KEY];
+param_pwm_irda_key_t param_wakeup_ir_key[MAX_KEY_TBL];
 param_pwm_gpio_key_t Param_PWM_GPIO_Key;
 
 unsigned int bt_wakeup_flag;
@@ -119,7 +119,8 @@ int ir_power_on_check(void)
 	unsigned int key_mask = 0;
 	unsigned int power_key = 0;
 	unsigned int custom_key = 0;
-	int i = 0;
+	unsigned int power_keynum = 0;
+	int i = 0, j = 0;
 
 	sr_value = ACCESS(ISO_IR_SR_reg);
 	if(sr_value & 0x1) {
@@ -131,22 +132,24 @@ int ir_power_on_check(void)
 		if (sr_value & 0x2)
 			return 0;
 
-		for (i = 0 ; i < RTK_PM_MAX_IR_KEY ; i++) {
+		for (i = 0 ; i < MAX_KEY_TBL ; i++) {
 			key_shift = param_wakeup_ir_key[i].key_shift;
 			key_mask = param_wakeup_ir_key[i].key_mask;
 			custom_shift = param_wakeup_ir_key[i].custom_shift;
 			custom_mask = param_wakeup_ir_key[i].custom_mask;
-			power_key = param_wakeup_ir_key[i].power_key;
+			power_keynum = param_wakeup_ir_key[i].power_keynum;
 			custom_key = param_wakeup_ir_key[i].custom_key;
 			tmp1 = ((reg_value & key_mask) >> key_shift);
 			tmp2 = ((reg_value & custom_mask) >> custom_shift);
 
 			if (key_mask == 0 && custom_mask == 0) 
 				return 0;
-
-			if (power_key == tmp1 &&  custom_key == tmp2) {
-				ACCESS(0xD8007640) = 0xea000000 | (RESUME_IR << 16);
-				return 1;
+			for (j = 0; j < power_keynum; j++) {
+				power_key = param_wakeup_ir_key[i].power_key[j];
+				if (power_key == tmp1 &&  custom_key == tmp2) {
+					ACCESS(0xD8007640) = 0xea000000 | (RESUME_IR << 16);
+					return 1;
+				}
 			}
 		}
 	}
@@ -409,7 +412,7 @@ int rtk_power_on_event(void)
 
 void rtk_power_on_event_init(struct suspend_param *scpu_param)
 {
-	int i = 0;
+	int i = 0, j = 0;
 	wakeup_event_int_mask = 0;
 
 	if (7093279 != trace_power)
@@ -422,10 +425,12 @@ void rtk_power_on_event_init(struct suspend_param *scpu_param)
 
 	/* Enable IR Interrupt */
 	if (suspend_wakeup_flag & fWAKEUP_ON_IR) {
-		for (i = 0 ; i< 2; i++) {
+		for (i = 0 ; i < MAX_KEY_TBL ; i++) {
 			param_wakeup_ir_key[i].protocol = scpu_param->irda_info.key_tbl[i].protocol;
 			param_wakeup_ir_key[i].key_mask = scpu_param->irda_info.key_tbl[i].scancode_mask;
-			param_wakeup_ir_key[i].power_key = scpu_param->irda_info.key_tbl[i].wakeup_scancode;
+			param_wakeup_ir_key[i].power_keynum = scpu_param->irda_info.key_tbl[i].wakeup_keynum;
+			for (j = 0; j < param_wakeup_ir_key[i].power_keynum; j++)
+				param_wakeup_ir_key[i].power_key[j] = scpu_param->irda_info.key_tbl[i].wakeup_scancode[j];
 
 			for (param_wakeup_ir_key[i].key_shift = 0; param_wakeup_ir_key[i].key_shift < 32; param_wakeup_ir_key[i].key_shift++) {
 				if ((param_wakeup_ir_key[i].key_mask & (1 << param_wakeup_ir_key[i].key_shift))) {
diff --git a/rtd16xx_pm.h b/rtd16xx_pm.h
index ebebc79..10c1eab 100644
--- a/rtd16xx_pm.h
+++ b/rtd16xx_pm.h
@@ -14,7 +14,6 @@
 #define SUSPEND_ISO_GPIO_BASE 0
 #define SUSPEND_ISO_GPIO_SIZE 86
 
-#define RTK_PM_MAX_IR_KEY 2
 #define RTK_PM_MAX_EVENTS 8
 
 #define RESUME_STATE_ADDR (boot_offset_base+0x118)
@@ -33,10 +32,14 @@
 #define BT_WAKEUP_ACTIVE_HIGH (0x1 << 23)
 #define BT_WAKEUP_MASK 0x00EFFFFF
 
+#define MAX_WAKEUP_CODE 16
+#define MAX_KEY_TBL 2
+
 struct irda_wake_up_key {
 	unsigned int protocol;
 	unsigned int scancode_mask;
-	unsigned int wakeup_scancode;
+	unsigned int wakeup_keynum;
+	unsigned int wakeup_scancode[MAX_WAKEUP_CODE];
 	unsigned int cus_mask;
 	unsigned int cus_code;
 };
@@ -44,7 +47,7 @@ struct irda_wake_up_key {
 struct ipc_shm_irda {
 	unsigned int ipc_shm_ir_magic;
 	unsigned int dev_count;
-	struct irda_wake_up_key key_tbl[2];
+	struct irda_wake_up_key key_tbl[MAX_KEY_TBL];
 };
 
 struct ipc_shm_cec {
@@ -93,7 +96,8 @@ typedef struct param_pwm_irda_key
 {
 	unsigned int is_valid;
 	unsigned int protocol;
-	unsigned int power_key;
+	unsigned int power_keynum;
+	unsigned int power_key[MAX_WAKEUP_CODE];
 	unsigned int key_mask;
 	unsigned int key_shift;
 	unsigned int custom_key;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
