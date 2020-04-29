Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69621BE96B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55B8vy5R81765T3/As+VdemOstQVhann3fTSbXHxlkI=; b=uq7qVB6OqqFNrj
	DmXyEiv4zx/Za3rrrTAHl5AmgUCJCgLzI2M5RhOw8IIsm+09+S0b0LLlK6pfNhbJQGm5ElBtzOqm/
	7fV0MDSd1flyDgsszGq/N6jS2Fw9jndUxOjE/kaZ/v5oJiIw0onfHwnu4SuyBgVT2F2Uf9ipD4dSZ
	KXgbhkrOthIUKVh2HRDL4WLxC76YNa9cPt2LUSfhnc0w59Wf8vMFlbKpcRhJZETd4taKhRqgnBDrW
	cF1zE6VubzCQBa0jtvEODY6odlEJMIG0V7xmXuoY7MmCTuElIQ1MXk3jWGaUXDoPn/GZtrC2p6A5B
	G/UsGQTToVBr/MHvqWrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtoG-0005sF-5V; Wed, 29 Apr 2020 21:00:00 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmr-00054S-Sg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:35 +0000
Received: by mail-oo1-f66.google.com with SMTP id x16so753928oop.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fvDZPYS6H9HDGHwxJM3nkwWID3WCQsyjXK3Xs8Lgdrk=;
 b=LUi/v3xn9Nh67E8IocQA0VFkspmzWd+/fne34OY/m+Ksx9B38qxD6RJtCK9W2txqRf
 WAGqqIqw6GRaWaKPwdK8zODnGH0fStXYzaX+p2QE6sNeGaGqAwLsC/sXgtuGM2D64eoC
 PAsj2uylJh1T/XWxKEcQvYfdqLJJRGgGJEHw8WXFQftVfIuOPqjp+KaLPGQSeJ+rNCsW
 wuF524L6NVqScxRGkQs4QpURKkbXTo0uxYnvXIiJyWFmBAc1dQxCc9WjSnlz90YQh5+p
 ezbRFBEcog8lIY3D6RiFEDEJAU7hUAZDdLrozliNPB8hNuYedPvGkSpBH6R0gAfB3wst
 3C8g==
X-Gm-Message-State: AGi0PuZ+rXWqmbUnQPh6gAkNj6SVycx9tqKOOin8kc53wJyR7fjlBW5L
 hmo+LQ9mMs6HgcoRyw7QkLi4+AI=
X-Google-Smtp-Source: APiQypLli0R0MaoqAgHiLNWiKMhf+xW515Euvb/NrzLKICWLWGqC2Ukck1Jb9yu3tupivtQoI9YbHw==
X-Received: by 2002:a4a:2fd3:: with SMTP id p202mr28859228oop.33.1588193912719; 
 Wed, 29 Apr 2020 13:58:32 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:31 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 03/16] amba: Retry adding deferred devices at late_initcall
Date: Wed, 29 Apr 2020 15:58:12 -0500
Message-Id: <20200429205825.10604-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135833_966503_A9B1D5AF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Saravana Kannan <saravanak@google.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If amba bus devices defer when adding, the amba bus code simply retries
adding the devices every 5 seconds. This doesn't work well as it
completely unsynchronized with starting the init process which can
happen in less than 5 secs. Add a retry during late_initcall. If the
amba devices are added, then deferred probe takes over. If the
dependencies have not probed at this point, then there's no improvement
over previous behavior. To completely solve this, we'd need to retry
after every successful probe as deferred probe does.

The list_empty() check now happens outside the mutex, but the mutex
wasn't necessary in the first place.

This needed to use deferred probe instead of fragile initcall ordering
on 32-bit VExpress systems where the apb_pclk has a number of probe
dependencies (vexpress-sysregs, vexpress-config).

Cc: John Stultz <john.stultz@linaro.org>
Cc: Saravana Kannan <saravanak@google.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Russell King <linux@armlinux.org.uk>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Tested-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/amba/bus.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index fe1523664816..e797995fc65b 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -505,7 +505,7 @@ static DECLARE_DELAYED_WORK(deferred_retry_work, amba_deferred_retry_func);

 #define DEFERRED_DEVICE_TIMEOUT (msecs_to_jiffies(5 * 1000))

-static void amba_deferred_retry_func(struct work_struct *dummy)
+static int amba_deferred_retry(void)
 {
 	struct deferred_device *ddev, *tmp;

@@ -521,11 +521,19 @@ static void amba_deferred_retry_func(struct work_struct *dummy)
 		kfree(ddev);
 	}

+	mutex_unlock(&deferred_devices_lock);
+
+	return 0;
+}
+late_initcall(amba_deferred_retry);
+
+static void amba_deferred_retry_func(struct work_struct *dummy)
+{
+	amba_deferred_retry();
+
 	if (!list_empty(&deferred_devices))
 		schedule_delayed_work(&deferred_retry_work,
 				      DEFERRED_DEVICE_TIMEOUT);
-
-	mutex_unlock(&deferred_devices_lock);
 }

 /**
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
