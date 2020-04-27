Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48831BB076
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 23:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yyOC171ab3zSw3PbjcFzdYFYkQ0X/869F9eOZu1i0n8=; b=o0WXDfzNos6FJO
	1O5sen6VUqdLDgAPSgScb1Cfv+ss+6SwaRpAXrbDLsH98EnJkZ/6Nqb8z6LFaMA0Rx+pbgXKGK8ff
	x40XyGM962r3vlgHbV+LZK+6RvsvGBDgR6oJx1E9VPFhV9GkFR89ZmnBUF+vNxQ9wkMna+4ns3GkW
	n9/eoIPw7SAfOWzVPSbOQ3888EUqv7eDaV6pmmugBzcyG6L28qdcV94FLnhZn77qSvUXgkBTXZRZS
	xAGbNFzpe+Uaz33eOO+Lis9608ZY8kinKQQYNnP3ciXjOIG35vUUhLTOuTNYLtM9XngL9YT5DICsU
	YrZ7gn5pKqGfpNSxH3pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBFs-0004IT-0k; Mon, 27 Apr 2020 21:25:32 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBFh-0004HI-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 21:25:23 +0000
Received: by mail-ot1-f66.google.com with SMTP id z17so29002925oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 14:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bHSI6o8zO6CmvmiakQTHUYeLvS53tgwRyLuJHvSfvHg=;
 b=ZSpwyAVlwAUsLzj8bz5jdFwO7o05HdI609wKTqpBOh9M/xJzpbVTnvz00VDESbbu1T
 TNS1M+WLAdp1E/cE8vXOKrCB1DMYsAkbE6ZkFPFCzSLZaU7OsXtFP+jP5DUdPYfxAFjB
 7cUONcWGpjvGjxZZrNGIWs1U8tFt5YvOzocGUSE7p+pgQNsz4tKkHAqLJzKOQHXBUEfU
 fohxUVcs3vwRMamxXb8AT3sZf+HM4vg/wJfIQ2qa1/oFgCL2Y7jRRVpiFiGSSpyyAjKn
 vzTHQehQqbIYa2jkW/yA3PloyXJtgk5GzV+lXwr+Xf5BxVGfaXSvpGAXyMWqH883AQKJ
 95Jw==
X-Gm-Message-State: AGi0Pua44JdXt8h5H2hvkRmZhJAnkjCufJTligdeG2omn/e6b5euRVPg
 d7L1v7+Sik0Eke2fSdjTkdKTMs4=
X-Google-Smtp-Source: APiQypJxlRgPHOg+9EFlBRPXMk+0b1d1+3y3FOgDIVik9YbGpXsXq+NTbKbhkf5Ac/02vLaANmOGQA==
X-Received: by 2002:aca:2b0a:: with SMTP id i10mr610234oik.22.1588022716012;
 Mon, 27 Apr 2020 14:25:16 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id g13sm4306195otk.62.2020.04.27.14.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 14:25:15 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] amba: Retry adding deferred devices at late_initcall
Date: Mon, 27 Apr 2020 16:25:14 -0500
Message-Id: <20200427212514.11219-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_142521_257552_44941BBC 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Saravana Kannan <saravanak@google.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Russell King <linux@armlinux.org.uk>
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
