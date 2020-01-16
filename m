Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733B313F3F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IhDWHJ4C4deanTbTxsYs6xxTgHYjEaUkzU+BfaMTXMI=; b=HyyHBWctfzjtqKD2bpXV9CjUHc
	W3QOE40om+aU0XQ04UcG2ZMTVlY47N6N3OR5R2vA+mPhmXfoD8dsuYfe3Q0is9xfTn5tpvLL5+bjK
	SuRMvz6KCpYMPDFHeKQDfNRrETfTrxqQo4zvIrpijmUXqoHaG0/lo73M3OxgSv4MQzHLaJnL9c7m1
	2H99Jib7pIitblDnLA1X3ueZ+Hw5480zt+vAMWC9TkVSQgZ6Ah6XBCOMOgD/xFzvkgKWa/p2lZajj
	nssm3m/7OWLhyKxFcowbSSLkwGXtdTo5pXMDPw9XTrmlIeNL+9SphDZ6BQlHxCVzs8bNvku2dJeup
	Ds01jpCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAAE-0001CE-SM; Thu, 16 Jan 2020 18:46:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9nr-0000CE-QW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:23:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so20132016wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cov12SfkIh+oexBgHBZ+gRTZEIqEjsP9GuoevKtumE8=;
 b=IfE/AcGIBZtMogp4pJ1vnzNDiMAS/TQbIr4SdqcNp2CaG0nWlzRycN3Mpymhncv+NU
 pjkD8vNSb7Okazn9lRdv0n0SsTUVFq0pygs/44pOUz9Pu+GfBjQqne+pnLnCkFW0vRd/
 V00UfH2aCwQqKH2F1ANxuCFt3IsJr/sF+0inGS7HS6655If5kmngNKDxcK6E5im1PFis
 klHa2GuK/o+TeaMb9gCBWIGjL5Nd9oxEn+e1VpjpVoR6lxrvhmu0iIWabBKL9yENaEg6
 AUfRGaW4cI9RdSxXcvSki0QEHSgoATdNBdwV3uYVVXSfiqil/nszFaoJnHPDoMu06uTN
 Y2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cov12SfkIh+oexBgHBZ+gRTZEIqEjsP9GuoevKtumE8=;
 b=MHkCyY68lKgojc54GX07s50RsvH5OYk9Fytiv2YiRUfepoqH1XwHF0j5a7i260QO2F
 VLQvb230UU+1JF15MBS7gnQCTnBgGl/UxHxwmdifn/TBgfW76IF8KiTQscThAvCNoaaU
 W/kI6Oj/oueD5sg84+pdF20eVOSxvsJyeV111tgUPo13wAyEZI3/6Va9qPJek1b6/xkb
 jahma74H5tVSUvchNl4BKazn7/qQH6B2IedosrMnHrOSTkwPszOvV7X4q0t67OTmc+jb
 geQmTZVmscfUBM5n9Z2BHrMkJwl9NL2lc0DamO+tRjJZQgnnC0hznFwnDQMZg1YhSHd4
 wFzQ==
X-Gm-Message-State: APjAAAXl/vZsUtw97Jn1JH5awsMywkz0ICmKn+FnJoX2JZEk4j2soqwM
 ePJDEcT5nORyJnK/kxs66S5Qsm3Ol2KAXQ==
X-Google-Smtp-Source: APXvYqxWIejb0YpykDsuwCHNVjnl5GGEaOIWj+UApHCuOGElJG5HBES8xZ+lFCS57N2XCFS879y6GQ==
X-Received: by 2002:adf:f8c8:: with SMTP id f8mr4532434wrq.331.1579199013608; 
 Thu, 16 Jan 2020 10:23:33 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f])
 by smtp.gmail.com with ESMTPSA id b137sm1087920wme.26.2020.01.16.10.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 10:23:33 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 08/17] clocksource/drivers/bcm2835_timer: Fix memory leak of
 timer
Date: Thu, 16 Jan 2020 19:22:55 +0100
Message-Id: <20200116182304.4926-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116182304.4926-1-daniel.lezcano@linaro.org>
References: <74bf7170-401f-2962-ea5a-1e21431a9349@linaro.org>
 <20200116182304.4926-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102335_863917_80AD9041 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Colin Ian King <colin.king@canonical.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently when setup_irq fails the error exit path will leak the
recently allocated timer structure.  Originally the code would
throw a panic but a later commit changed the behaviour to return
via the err_iounmap path and hence we now have a memory leak. Fix
this by adding a err_timer_free error path that kfree's timer.

Addresses-Coverity: ("Resource Leak")
Fixes: 524a7f08983d ("clocksource/drivers/bcm2835_timer: Convert init function to return error")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20191219213246.34437-1-colin.king@canonical.com
---
 drivers/clocksource/bcm2835_timer.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/bcm2835_timer.c b/drivers/clocksource/bcm2835_timer.c
index 2b196cbfadb6..b235f446ee50 100644
--- a/drivers/clocksource/bcm2835_timer.c
+++ b/drivers/clocksource/bcm2835_timer.c
@@ -121,7 +121,7 @@ static int __init bcm2835_timer_init(struct device_node *node)
 	ret = setup_irq(irq, &timer->act);
 	if (ret) {
 		pr_err("Can't set up timer IRQ\n");
-		goto err_iounmap;
+		goto err_timer_free;
 	}
 
 	clockevents_config_and_register(&timer->evt, freq, 0xf, 0xffffffff);
@@ -130,6 +130,9 @@ static int __init bcm2835_timer_init(struct device_node *node)
 
 	return 0;
 
+err_timer_free:
+	kfree(timer);
+
 err_iounmap:
 	iounmap(base);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
