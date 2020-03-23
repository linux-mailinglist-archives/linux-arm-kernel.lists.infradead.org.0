Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AB418F321
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFulcVXzD2T79+zzX59XoZp+hX7pBhjikUzEB4p+0lQ=; b=IlFrxEIy4vLKwh
	TcgrDOYC3UjTJzWd5pmbXalNCAyPAGneqJIKI40E4Jd8Mf9hRF628o5qz6pMRpug+0SiKh78X1H8d
	BE0dUdsorYMxRCB/QbsF6vw0u18wc4yXLKvkpJtXtVNmDLRaXqUt4j4Va48/PkSvLjMtikGEKfHTs
	ErwhJ/JjebfxEelIMblmdlkbgW8ZRIXTKmqTyYsg58xyqkWwL6aGFGNsRpwkOgyviWt5Pi4OwdmVz
	6upd1/uHWbuaN69zCpRzRFjzdrhM/k7C0SY+ugu2giJCeabWyQzbq2yq0JWGsz1G4xkIPDlqESyAX
	v+Hm7bEvTrRH62eWuI3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKdk-0007QZ-Vi; Mon, 23 Mar 2020 10:49:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKdV-0007Pg-Vq
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 10:48:51 +0000
Received: by mail-lf1-x143.google.com with SMTP id n20so9814718lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 03:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=myXNNOjoobSEA/eA0whlQCS4O/6vRCkk1D3R/DCqh+I=;
 b=B2qCjKD/5EObCU6LYmdV2FfqM5/r3TYNz4ixlrgXvaxEo2NHwIjN25YZ3kG63Trq3v
 rRrNTnrmqZu6HgWQbGKhFQ0RV8UbKmCvfy+bIX56+XLRPaBz3GGhVi+Grmebxj/NRjUh
 6BUwBKIW7FeDw8scUykNrWRHYdveW+cVp67RT/pIeKZPVTzi7Zj8CLzLQhTKNxkvqjAx
 1LWUY24Sa3rw90vzOwqCRihoNcf0R/fC5YaTTeB6gnflQO2cEfJI6OJEnEo3wcCfryE6
 GNbB06eFM9qKrWhagHJwP5/my/y9gUve4WJgt4iUTxrCW9ud8B3wPLdDb9d03yPScUHh
 2erQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=myXNNOjoobSEA/eA0whlQCS4O/6vRCkk1D3R/DCqh+I=;
 b=afJkpR2bC6jJbmujWHCUfYZSvzEAl7NXEA5g9iTfkNWqwTN2Ub3/FNmYi/q8wjaEmZ
 PQIHd5oj7Q5suAE+iOtwdWiMkxELJUNHUYloxuuAJDwFqtHFXhJyIv+Czd1+3BN1pjUf
 iyD0/kEAiEt49CWEY5aihyl3uENLeyZUEAWUsCZE/+UIw8GUkM+gGTG33oV8p//hdxnb
 9FVaPmhpidm4doVpdz069pGFGEeBa2jtaAewAUtIlJ5yWO4cAT26WAfiKdfP1CvlQAHP
 IqrR7WyXEPiKduyLFkAbqXEEwVzJfhoiw/iFqNclK00hKgLyy9FRMn7ML2BE1y5BZZmE
 4+bQ==
X-Gm-Message-State: ANhLgQ3PrbaUwBrLmoN+8lAVFp4MpPyGzgIzgRlXZa+9q9+WH0tH7m3e
 EJIRppreEwo34KkoEVjBN6TzKui1XPk=
X-Google-Smtp-Source: ADFU+vscSL6yH2OmnTbzM/qR6j1QPbA4Ivlh3SOlk2IlRojZSN6VtN7XeGMrAsu36u7F2x+T77pG2g==
X-Received: by 2002:a19:5019:: with SMTP id e25mr8549651lfb.68.1584960527448; 
 Mon, 23 Mar 2020 03:48:47 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id b198sm1611076lfg.11.2020.03.23.03.48.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 03:48:46 -0700 (PDT)
Subject: [RFC PATCH 1/3] printk: Add function to set console to preferred
 console's driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
References: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <b6d95636-adf2-254c-b992-7304cfd6b6c3@gmail.com>
Date: Mon, 23 Mar 2020 13:48:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <44156595-0eee-58da-4376-fd25b634d21b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_034850_025202_C344BFB3 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>
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

The code above was introduced in commit 9e124fe16ff2. In short, it's aim
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
 include/linux/console.h |  1 +
 kernel/printk/printk.c  | 56 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/include/linux/console.h b/include/linux/console.h
index 75dd20650fb..4b3fa34be24 100644
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
index ad460623454..6b16c973587 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -2212,12 +2212,68 @@ __setup("console=", console_setup);
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
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
