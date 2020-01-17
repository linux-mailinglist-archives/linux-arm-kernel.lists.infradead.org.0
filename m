Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D5C140CD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dBNnMMxkVVj4JJU81+lvv7didLgy9WDLR4qv/J9QZ+M=; b=GcziCSITZ7etjAMrxGvpbTOugT
	J+N5lWLanu5b8CCKsJZ6rMOnUBY5qsMrfqYpCfuDWSQKq9nUsBhdIiAvmD/Digi0U4MwjtsEPPSIr
	fPD6FxQuvGaXDFc0D3kOQn9P0LKvwSTEF/LYnvjDnTqFZAnJ4BxVq1FPh5oN201vFn75TwYNDsT3B
	SWJHcLe2fJk6s59+eKyCTTw7ON2m7NRl1W1xO9K/gTNonS/zOHBI6h1YgfwEnCuc49oOroRFBg8bg
	UDdinqE02qSwu8bTLMajWkFyIM5KdSysidL7PZeq8ii6Xx24jKHdHEU5oesCAzgWiGrh7HyDRThRJ
	nByQg86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSp0-0001k8-AP; Fri, 17 Jan 2020 14:42:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmC-0006mm-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D97EBABE9;
 Fri, 17 Jan 2020 14:39:06 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 11/15] coresight: add coresight prefix to barrier_pkt
Date: Fri, 17 Jan 2020 15:40:06 +0100
Message-Id: <20200117144010.11149-12-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063908_548304_3084BAEE 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

barrier_pkt is an exported symbol. Add coresight prefix to
make it specific.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-bus.c     | 5 +++--
 drivers/hwtracing/coresight/coresight-etb10.c   | 2 +-
 drivers/hwtracing/coresight/coresight-priv.h    | 8 ++++----
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 2 +-
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-bus.c b/drivers/hwtracing/coresight/coresight-bus.c
index aef99c3f7362..7bbe824436ce 100644
--- a/drivers/hwtracing/coresight/coresight-bus.c
+++ b/drivers/hwtracing/coresight/coresight-bus.c
@@ -53,8 +53,9 @@ static struct list_head *stm_path;
  * beginning of the data collected in a buffer.  That way the decoder knows that
  * it needs to look for another sync sequence.
  */
-const u32 barrier_pkt[4] = {0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff};
-EXPORT_SYMBOL_GPL(barrier_pkt);
+const u32 coresight_barrier_pkt[4] = {
+		0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff};
+EXPORT_SYMBOL_GPL(coresight_barrier_pkt);
 
 static int coresight_id_match(struct device *dev, void *data)
 {
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 2d5a542e5464..fdd6ce865dc8 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -526,7 +526,7 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
 
 	cur = buf->cur;
 	offset = buf->offset;
-	barrier = barrier_pkt;
+	barrier = coresight_barrier_pkt;
 
 	for (i = 0; i < to_read; i += 4) {
 		buf_ptr = buf->data_pages[cur] + offset;
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index e6eec9f46e13..9212bc8a20c8 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -65,8 +65,8 @@ static DEVICE_ATTR_RO(name)
 #define coresight_simple_reg64(type, name, lo_off, hi_off)		\
 	__coresight_simple_func(type, NULL, name, lo_off, hi_off)
 
-extern const u32 barrier_pkt[4];
-#define CORESIGHT_BARRIER_PKT_SIZE (sizeof(barrier_pkt))
+extern const u32 coresight_barrier_pkt[4];
+#define CORESIGHT_BARRIER_PKT_SIZE (sizeof(coresight_barrier_pkt))
 
 enum etm_addr_type {
 	ETM_ADDR_TYPE_NONE,
@@ -103,10 +103,10 @@ struct cs_buffers {
 static inline void coresight_insert_barrier_packet(void *buf)
 {
 	if (buf)
-		memcpy(buf, barrier_pkt, CORESIGHT_BARRIER_PKT_SIZE);
+		memcpy(buf, coresight_barrier_pkt,
+				CORESIGHT_BARRIER_PKT_SIZE);
 }
 
-
 static inline void CS_LOCK(void __iomem *addr)
 {
 	do {
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d0cc3985b72a..52b287481b8b 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -519,7 +519,7 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 
 	cur = buf->cur;
 	offset = buf->offset;
-	barrier = barrier_pkt;
+	barrier = coresight_barrier_pkt;
 
 	/* for every byte to read */
 	for (i = 0; i < to_read; i += 4) {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
