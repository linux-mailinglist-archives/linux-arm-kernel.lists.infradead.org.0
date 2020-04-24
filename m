Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8290A1B6E39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 08:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gs1tyNlOZ/mnyzITeWQKEaI4DdrswVP+W6rINjy2PT0=; b=DNPmn5XB8KYVTu
	YyAx0uLuiyNcyoqj+gqqD3AhcSWid9DWeyUA/kzzFoum6+cjEQ475tGmHJJwLNmPYJIdG0HsJgO8X
	A5irx5c5mARP14kH/ZZ1+ZQX+zTRc6cRboAvjZlrPZoEVgNF3g5z7YewOu/3CURxXR9qzWUcIiXQH
	nFkijHN9GdnUBYF9QGnS4NT2sgww4TiNWwZl8h0n3XnJszXbnZyhUDdtUYfZtKuF2YT4FsmaO2ZED
	NrMnpgkQaO8+jsE/n+ybnKeqcqKEfudeomZe/SX5PAlS8v7kOdbvwcIK+hXzCV1gHqAwN4XlIzTzp
	fUV2e+vpaph8pFn76mlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRrwJ-0005C3-F5; Fri, 24 Apr 2020 06:35:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRrw9-0005AF-9m; Fri, 24 Apr 2020 06:35:47 +0000
X-UUID: f1dab4cffa6d4e969ed54308efff02cc-20200423
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:CC:To:From:Subject:Message-ID;
 bh=gUH3k9xdy2IwCn6QUAzl7AD8mJmLALhoEKFKTESkF1s=; 
 b=jki6o9F6WW1XujiN/G4WEpbPvfu8BrkV3rEMEY47hvBAMRH8nnu+6A2rqsWwhCJOgXMoXBd6IkEEhhop3QWFegVmC8Krqg8mLEBg4SQGZucJQALgku9Mw7El+oVuyiztqz0VBUuigyEXC3Z9ueB030obO5DTYClS6mg2/iK3Gn8=;
X-UUID: f1dab4cffa6d4e969ed54308efff02cc-20200423
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunlei.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 976859729; Thu, 23 Apr 2020 22:35:34 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 23:25:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 24 Apr 2020 14:25:29 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 24 Apr 2020 14:25:27 +0800
Message-ID: <1587709294.9792.5.camel@mbjsdccf07>
Subject: [PATCH] printk: Add printk log prefix information.
From: chunlei.wang <Chunlei.wang@mediatek.com>
To: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
 <sergey.senozhatsky@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Date: Fri, 24 Apr 2020 14:21:34 +0800
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4701CD02712B8E95F383685B50F21C734F359AC30BDF287C31E6FEEDDABB905B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_233545_347898_4631FFF7 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Add prefix status/cpu_id/pid/process_name to each kernel log.
example:
[ 8408.806432] (4)[19963:kworker/4:1]wifi_fw: ring_emi_seg.sz=4164,
ring_cache_pt=000000004f5ca8fa, ring_cache_seg.sz=4164
[ 8408.806729]-(4)[19963:kworker/4:1]connlog_log_data_handler: 1
callbacks suppressed
Status now only include irq status. If in ISR print too much log, will
cause performance issue, we can check the log to find which module. We
also can expand the status in future.
cpu_id mean which cpu print this log, we can check specific cpu's
action.
pocess_name show the log process id and name.
These information is very useful in embedded system, it can provide more
information to analyze issue.

Feature: printk
Signed-off-by: Chunlei Wang <chunlei.wang@mediatek.com>
---
 kernel/printk/printk.c | 52 ++++++++++++++++++++++++++++++++++++++++--
 lib/Kconfig.debug      |  9 ++++++++
 2 files changed, 59 insertions(+), 2 deletions(-)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 1ef6f75d92f1..9cb2a4c2157b 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -60,6 +60,11 @@
 #include "braille.h"
 #include "internal.h"
 
+
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+static DEFINE_PER_CPU(char, printk_state);
+#endif
+
 int console_printk[4] = {
        CONSOLE_LOGLEVEL_DEFAULT,       /* console_loglevel */
        MESSAGE_LOGLEVEL_DEFAULT,       /* default_message_loglevel */
@@ -610,8 +615,35 @@ static int log_store(u32 caller_id, int facility,
int level,
        u32 size, pad_len;
        u16 trunc_msg_len = 0;
 
-       /* number of '\0' padding bytes to next message */
-       size = msg_used_size(text_len, dict_len, &pad_len);
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+       int this_cpu = smp_processor_id();
+       char state = this_cpu_read(printk_state);
+       char tbuf[50];
+       unsigned int tlen = 0;
+#endif
+
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+               if (state == 0) {
+                       this_cpu_write(printk_state, ' ');
+                       state = ' ';
+               }
+               if (!(flags & LOG_CONT)) {
+                       if (console_suspended == 0)
+                               tlen = snprintf(tbuf, sizeof(tbuf),
+                                       "%c(%x)[%d:%s]", state,
this_cpu,
+                                       current->pid, current->comm);
+                       else
+                               tlen = snprintf(tbuf, sizeof(tbuf), "%
c(%x)",
+                                       state, this_cpu);
+               }
+#endif
+
+               /* number of '\0' padding bytes to next message */
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+               size = msg_used_size(text_len + tlen, dict_len,
&pad_len);
+#else
+               size = msg_used_size(text_len, dict_len, &pad_len);
+#endif
 
        if (log_make_free_space(size)) {
                /* truncate the message if it is too long for empty
buffer */
@@ -634,7 +666,16 @@ static int log_store(u32 caller_id, int facility,
int level,
 
        /* fill message */
        msg = (struct printk_log *)(log_buf + log_next_idx);
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+       memcpy(log_text(msg), tbuf, tlen);
+       if (tlen + text_len > LOG_LINE_MAX)
+               text_len = LOG_LINE_MAX - tlen;
+
+       memcpy(log_text(msg) + tlen, text, text_len);
+       text_len += tlen;
+#else
        memcpy(log_text(msg), text, text_len);
+#endif
        msg->text_len = text_len;
        if (trunc_msg_len) {
                memcpy(log_text(msg) + text_len, trunc_msg,
trunc_msg_len);
@@ -1964,6 +2005,13 @@ asmlinkage int vprintk_emit(int facility, int
level,
        if (unlikely(suppress_printk))
                return 0;
 
+#ifdef CONFIG_PRINTK_PREFIX_ENHANCE
+       if (irqs_disabled())
+               this_cpu_write(printk_state, '-');
+       else
+               this_cpu_write(printk_state, ' ');
+#endif
+
        if (level == LOGLEVEL_SCHED) {
                level = LOGLEVEL_DEFAULT;
                in_sched = true;
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index d1842fe756d5..6e6c783cd570 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -35,6 +35,15 @@ config PRINTK_CALLER
          no option to enable/disable at the kernel command line
parameter or
          sysfs interface.
 
+config PRINTK_PREFIX_ENHANCE
+       bool "Prefix cpu_id/status/pid/process_name to each kernel log"
+       depends on PRINTK
+       help
+         PRINTK_PREFIX_ENHANCE which is used to control whether to show
+         other information about this log. The information include
+         which cpu about this process in, whether in isr, pid and
thread
+         name. These information can help to analyze issue.
+
 config CONSOLE_LOGLEVEL_DEFAULT
        int "Default console loglevel (1-15)"
        range 1 15
-- 
2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
