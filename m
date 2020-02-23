Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD07169619
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 06:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DTJWZix7mQh3hZHG7HHBE45ZF1gR77oQeWk5s0sdp7Q=; b=maD
	xgkqrJNWIPdicWLe62Vzjwb9I5RyNFiTJFQCQp2vCMJHHwCzQJcgGI3tkHiaSAK4znJByAVbhsh9q
	WmhXojlPijDQ35rlH1zJ6jOLTNdwxfN67ePdwdOoIWIn+0cYZ/Fe7SwF59neMQmJbeJX76GSgq/Bk
	oj8/LEHsZBwAmI8ttWor0nyIqwGWrqingGrLMl64FSvaKwQPMOgoRkRbUhclQ+Qe2luy8W0LnlK7H
	6vYPkeVUrmHn3XIPAuUIA3rfVK392OgXsqEo7oLmXlnKTok9/b48YSBt1lDHFcu5EqjonRdYaPQIg
	OOpglCuzbS83y+XtJZdH962N6AHUiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5k2O-0008Em-G3; Sun, 23 Feb 2020 05:42:44 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5k2H-0008De-DU
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 05:42:38 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ep11so2612418pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 21:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sBcpUEikr4BVNDaC5sxBh2nBjtOfILlrf6tgzXt34O8=;
 b=IKPPeRPih+jfKOW4lu6ThGJsCEPhs768DPYXk+92Sg2BK6jnvCSVIv031QOpfQk8zu
 HBtlh2wZ63/JKwpBxnv7EktCFn7HmsK2nDHg5w/6AO6VLpkztl6JXjQn7rh770uH3r5b
 Tms281tqAloYvjz+GSzFUz6M/BqEye8qcVp0Dtu1vprx7fNeZZZh6+VKyYKgEZxBGL9I
 VDPJDJ9wGzSFnM+U/ZtVPPh7/qE4eqgwxlFgo2K3b/XrXw9USs8thwum2bWBReImjfAa
 8UEz5bolUrJ3HwPOZMTBuqBnOpsIUaGl+0leqvkI4BrEFB1gVe9C6C2Ncd5Tg6S7LwDh
 Zq0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sBcpUEikr4BVNDaC5sxBh2nBjtOfILlrf6tgzXt34O8=;
 b=mu7vPku8Vl/p9+E1f3EVgRim0ybbqWej79tkGmUwJQUXXEhV/PKUeWEveomuj67cXX
 aaIlR3NirAl1M4sLyKxTYNOklZYFKZRaAb47BQlKwKL06FN+rgQ1txo9IA4wao9RlrrM
 6xQx1VokkBO6tAlgz9dZwz4JVC+HikrNNC+8975bKEVAfkre0g9nJgdsSB/4iO8W8wYp
 7nL+rtoec+m4P96nujVXbykH6y4pKnMuNwev78uPuDGm8AJUjfD/VW0LkpInPHmwanvH
 POyxazuOkCOSy+j0dV0XTOHAoZ7foEn+O2PmsznbRSgozbFgCbF3lOn5HPUw+vpDO2U5
 /kJA==
X-Gm-Message-State: APjAAAWGJoIXiP5wcG4UNc6ZdjPCg0SuaXttsniuSWMGm5hlt1y84BXV
 OQ+QxUlBDXQPAH/8TaL2sTg=
X-Google-Smtp-Source: APXvYqzjsPedUCsVxjjtx79y1TvT2dc0ATqNmiVnXjfR7ppxUrfFB3YGktpiD3Kp1Z70qscXjV6Z0Q==
X-Received: by 2002:a17:90a:8c0f:: with SMTP id
 a15mr13348002pjo.86.1582436555656; 
 Sat, 22 Feb 2020 21:42:35 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id g72sm8306239pfb.11.2020.02.22.21.42.34
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 22 Feb 2020 21:42:35 -0800 (PST)
From: qiwuchen55@gmail.com
To: linux@armlinux.org.uk,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Subject: [PATCH] scsi: arm: list_for_each() -> list_for_each_entry()
Date: Sun, 23 Feb 2020 13:42:31 +0800
Message-Id: <1582436551-14244-1-git-send-email-qiwuchen55@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_214237_483263_62674756 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [43.224.245.179 listed in zen.spamhaus.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chenqiwu <chenqiwu@xiaomi.com>

Use list_for_each_entry() instead of list_for_each() to
simplify code.

Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
---
 drivers/scsi/arm/queue.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/arm/queue.c b/drivers/scsi/arm/queue.c
index e5559f2..da39597 100644
--- a/drivers/scsi/arm/queue.c
+++ b/drivers/scsi/arm/queue.c
@@ -158,12 +158,11 @@ static struct scsi_cmnd *__queue_remove(Queue_t *queue, struct list_head *ent)
 struct scsi_cmnd *queue_remove_exclude(Queue_t *queue, unsigned long *exclude)
 {
 	unsigned long flags;
-	struct list_head *l;
+	QE_t *q;
 	struct scsi_cmnd *SCpnt = NULL;
 
 	spin_lock_irqsave(&queue->queue_lock, flags);
-	list_for_each(l, &queue->head) {
-		QE_t *q = list_entry(l, QE_t, list);
+	list_for_each_entry(q, &queue->head, list) {
 		if (!test_bit(q->SCpnt->device->id * 8 +
 			      (u8)(q->SCpnt->device->lun & 0x7), exclude)) {
 			SCpnt = __queue_remove(queue, l);
@@ -207,12 +206,11 @@ struct scsi_cmnd *queue_remove_tgtluntag(Queue_t *queue, int target, int lun,
 					 int tag)
 {
 	unsigned long flags;
-	struct list_head *l;
+	QE_t *q;
 	struct scsi_cmnd *SCpnt = NULL;
 
 	spin_lock_irqsave(&queue->queue_lock, flags);
-	list_for_each(l, &queue->head) {
-		QE_t *q = list_entry(l, QE_t, list);
+	list_for_each_entry(q, &queue->head, list) {
 		if (q->SCpnt->device->id == target && q->SCpnt->device->lun == lun &&
 		    q->SCpnt->tag == tag) {
 			SCpnt = __queue_remove(queue, l);
@@ -234,11 +232,10 @@ struct scsi_cmnd *queue_remove_tgtluntag(Queue_t *queue, int target, int lun,
 void queue_remove_all_target(Queue_t *queue, int target)
 {
 	unsigned long flags;
-	struct list_head *l;
+	QE_t *q;
 
 	spin_lock_irqsave(&queue->queue_lock, flags);
-	list_for_each(l, &queue->head) {
-		QE_t *q = list_entry(l, QE_t, list);
+	list_for_each_entry(q, &queue->head, list) {
 		if (q->SCpnt->device->id == target)
 			__queue_remove(queue, l);
 	}
@@ -257,12 +254,11 @@ void queue_remove_all_target(Queue_t *queue, int target)
 int queue_probetgtlun (Queue_t *queue, int target, int lun)
 {
 	unsigned long flags;
-	struct list_head *l;
+	QE_t *q;
 	int found = 0;
 
 	spin_lock_irqsave(&queue->queue_lock, flags);
-	list_for_each(l, &queue->head) {
-		QE_t *q = list_entry(l, QE_t, list);
+	list_for_each_entry(q, &queue->head, list) {
 		if (q->SCpnt->device->id == target && q->SCpnt->device->lun == lun) {
 			found = 1;
 			break;
@@ -283,12 +279,11 @@ int queue_probetgtlun (Queue_t *queue, int target, int lun)
 int queue_remove_cmd(Queue_t *queue, struct scsi_cmnd *SCpnt)
 {
 	unsigned long flags;
-	struct list_head *l;
+	QE_t *q;
 	int found = 0;
 
 	spin_lock_irqsave(&queue->queue_lock, flags);
-	list_for_each(l, &queue->head) {
-		QE_t *q = list_entry(l, QE_t, list);
+	list_for_each_entry(q, &queue->head, list) {
 		if (q->SCpnt == SCpnt) {
 			__queue_remove(queue, l);
 			found = 1;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
