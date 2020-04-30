Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1731C01FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lC/+rsUbM2+sUOIirPBytShJsGIZjCR59tpSpD/9CpM=; b=IO1epTC79M/DTU
	d/KAIDA7OPnX1jeQ4X3iBa3F9CuvUFlgtkYTCEEa+T9EhoZhe6yY2gdeQtXlDUEhCz5Sf7MdrRhxn
	OE1TZjvTLeJ1eF6RQoVTLy5iw9IjNZNViFp+GHGmKBlgkMRlWIlz17XqV6igGyC4pT7lxVCSKrHi+
	7uAzlm1xcTzw60mttZ9TaVbR9/cVIYFrh9uoQSErv9WHXiYsD5QGJqz46pFSZeoY+z8gW8Soi9B7E
	xMFdLCg85lFn+BCXltxGyigrub9vIB7IrkfBZ66oUzhq+4XOt2NN7lKqoqWJ+DMrEgMGsMO5gDx1R
	ta8/9bqoYElSrfesJSSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBrz-0002KY-PS; Thu, 30 Apr 2020 16:17:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBrV-0002F3-NM
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:16:35 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so7070493ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dcawBkXikPYOd9gFykEVGPuWXUWfQrJeZCwUFjbXlT4=;
 b=sosUSrAuUHwXK5OEpDrkqaJHrO0GGy0Ln5+fNdN+gN6s5xxybYMfk62DTRz82hFfDW
 3WsUtL5mZtTtjasdrGDXuLX2ENo0nhL8CRdGd74HWHwz3Y/lLcmgVn8w01cgM9gIYSWy
 1ClW/qZfGqJQKSpQZiLtz7DccWTt1sbgjnej1CuSydRY/DBLa+BQdaaVd4SgxYuTZAc+
 2YgxHtxvdynliAeIBWW300Rq2M7JTEnyXdt/G4CdzegQM8ORS3/eBubBGzy2nENr9s66
 tMOSZY6mY7hx0HwZufKzxtYA8dCj2iV167701I6iC3ADwXddcvMiFgS2X52N8DC6+Luj
 21rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dcawBkXikPYOd9gFykEVGPuWXUWfQrJeZCwUFjbXlT4=;
 b=ePkh2lu8poDcyFCtbpxlqqxR9yqkczf6q0jTppF3Hde1Vn9WCLzslmzs8NiDQBkNMy
 bPzzRY1oVRuJdqSHHab/7bZf02eYCkWz+wwPjpEbMB8zeVY2xdd2WXO53xjeWwXEQ5AP
 C4TvFg6R+e7G+imSILlBFn5+0NJe4fGM/hAF6a/r1A5qlJpLJOVPgqu2MJOZMCh1n593
 aN/QS+EBWiN1EJ5cYKjVt3XcNdQBnltU+122OruYkmgxwCIfMVRKPAepicRvCrXn/sQO
 1oQgu7VqKKO6gIgr0oBLp9+blR9lKeMgEpPJgZXZIRZKM52r17DcJ+1XYc1OuN8mH0Rf
 9MJA==
X-Gm-Message-State: AGi0PuY2asijGS/iK6rUtgUGsj5JDD4DyCTKOOVBHYs+gkueQoC+OIZj
 QcF5/EHaEifkHRIq6xY5gf4=
X-Google-Smtp-Source: APiQypJlHPjg7i2J2gTNDSPTCeeNvzQBhsBhfepNh86Pej0Lou55gA4cVl+9dZI3HWGt3Ys5ggHMhQ==
X-Received: by 2002:a2e:b012:: with SMTP id y18mr44709ljk.238.1588263391301;
 Thu, 30 Apr 2020 09:16:31 -0700 (PDT)
Received: from localhost.localdomain ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id k6sm60638lfm.91.2020.04.30.09.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 09:16:30 -0700 (PDT)
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Subject: [RFC PATCH v2 1/3] printk: Add function to set console to preferred
 console's driver
Date: Thu, 30 Apr 2020 19:14:35 +0300
Message-Id: <20200430161438.17640-2-alpernebiyasak@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091633_837619_8EED5D92 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Alper Nebi Yasak <alpernebiyasak@gmail.com>, linux-serial@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Feng Tang <feng.tang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, add_preferred_console sets a preferred console, but doesn't
actually change /dev/console to match it. That part is handled within
register_device, where a newly registered console driver will be set as
/dev/console if it matches the preferred console.

However, if the relevant driver is already registered, the only way to
set it as /dev/console is by un-registering and re-registering it. An
example is the xenfb_make_preferred_console() function:

	console_lock();
	for_each_console(c) {
		if (!strcmp(c->name, "tty") && c->index == 0)
			break;
	}
	console_unlock();
	if (c) {
		unregister_console(c);
		c->flags |= CON_CONSDEV;
		c->flags &= ~CON_PRINTBUFFER; /* don't print again */
		register_console(c);
	}

The code above was introduced in commit 9e124fe16ff2 ("xen: Enable
console tty by default in domU if it's not a dummy"). In short, it's aim
is to set VT as the preferred console only after a working framebuffer
is registered and thus VT is not the dummy device.

This patch introduces an update_console_to_preferred function that
handles the necessary /dev/console change. With this change, the example
above can be replaced with:

	console_lock();
	add_preferred_console("tty", 0, NULL);
	update_console_to_preferred();
	console_unlock();

More importantly, these two calls can be moved to vt.c in order to bump
its priority when a non-dummy backend for it is introduced, solving that
problem in general.

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>

---

Changes in v2:
- Use the correct format when referencing a commit

 include/linux/console.h |  1 +
 kernel/printk/printk.c  | 56 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/include/linux/console.h b/include/linux/console.h
index 75dd20650fbe..4b3fa34be245 100644
--- a/include/linux/console.h
+++ b/include/linux/console.h
@@ -172,6 +172,7 @@ enum con_flush_mode {
 };
 
 extern int add_preferred_console(char *name, int idx, char *options);
+extern int update_console_to_preferred(void);
 extern void register_console(struct console *);
 extern int unregister_console(struct console *);
 extern struct console *console_drivers;
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 6ede4a7222e6..efda422203e4 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -2240,12 +2240,68 @@ __setup("console=", console_setup);
  * be used by arch-specific code either to override the user or more
  * commonly to provide a default console (ie from PROM variables) when
  * the user has not supplied one.
+ *
+ * Preferences set by this function don't take effect until the next
+ * time a matching driver for the preferred console is registered. If a
+ * matching driver was already registered, @update_console_to_preferred
+ * function can be used to set that as the preferred console driver.
  */
 int add_preferred_console(char *name, int idx, char *options)
 {
 	return __add_preferred_console(name, idx, options, NULL, false);
 }
 
+/**
+ * update_console_to_preferred - set console to the preferred console's driver.
+ *
+ * Updates console_drivers and CON_CONSDEV flags so that an already
+ * registered and enabled console driver matching the preferred console
+ * is used as /dev/console.
+ *
+ * Must be called within console_lock();.
+ */
+int update_console_to_preferred(void)
+{
+	struct console_cmdline *c = NULL;
+	struct console *con = NULL;
+	struct console *tmp = NULL;
+
+	if (preferred_console >= 0)
+		c = &console_cmdline[preferred_console];
+
+	if (!c || !c->name[0])
+		return 0;
+
+	for_each_console(con) {
+		if (!con->next || !(con->next->flags & CON_ENABLED))
+			continue;
+		if (strcmp(c->name, con->next->name) != 0)
+			continue;
+		if (con->next->index >= 0 &&
+		    con->next->index != c->index)
+			continue;
+		break;
+	}
+
+	if (!con)
+		return -ENODEV;
+
+	pr_info("switching to console [%s%d]\n",
+		con->next->name, con->next->index);
+
+	tmp = con->next;
+	con->next = con->next->next;
+	tmp->next = console_drivers;
+	console_drivers = tmp;
+
+	if (console_drivers->next)
+		console_drivers->next->flags &= ~CON_CONSDEV;
+	console_drivers->flags |= CON_CONSDEV;
+	has_preferred_console = true;
+
+	return 0;
+}
+
 bool console_suspend_enabled = true;
 EXPORT_SYMBOL(console_suspend_enabled);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
