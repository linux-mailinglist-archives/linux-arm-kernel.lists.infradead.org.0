Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA8C151207
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 22:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/PJdqfj/LcCBVbQLFpzw2QznDZPcELzpR/KATQ9o3Xc=; b=aH7
	JH7NkBa57KlyKT8tLTWC1Y85Bgoe62KE8ZCin2oSYvDaQ1h6hUph4nTH7ePueN4kXnBu4xXbuaYc+
	QkeOl0uDi61TBpeQ/H9se1MJtBmiIj9yCrq3/SM//f+wEwH0IPIJquPPcVMSWEyMYFEOc5ZMplA4p
	ew5/Jx/Gm3Uqcm0KbmPdAPCDmQsfdbh6Jxp6dSIZcKmeGsqbqPZn6kZCBrP3QnuyY1Cw7bFUqep+G
	VGUkHVDEgcK3wxBUuQrAQvM7iRQbb9XfsRn+eBXuY4yEJRhBNW4DM+vSuKUvb9jZQe0+19xE1+fkl
	xXKYslCh2g2COAzF2SYahP+pWIyIc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyjV3-0007II-5g; Mon, 03 Feb 2020 21:43:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyjUu-0007HZ-Vw; Mon, 03 Feb 2020 21:43:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id q8so8259006pfh.7;
 Mon, 03 Feb 2020 13:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4utvhxtA7zvr4Iu+DFpm/vNXzWR8TFP5LHSqSIJBCWo=;
 b=AjF/en/PwCT4W2EHQ5+3AviOlyIo9uYNWYWol1vasV9sf8IdjnbhX0VVoyzxvrEf/D
 GFZdJygPyQAUvAfYJcknUmlv/ZtEEyBxTFc9ZsL0fnmwF2hX+u7HoCsDurh8jvMg1FWI
 ZWHACVb5FbOXuB2KNwYM0j5X+9+pI30sBWK2io4DQOsjatvjLtJ3k8LvU5jD6h+0bApj
 nji7QoFrpIa/EfyS9aE1H8PnCdnd46+Bv/wWa0lI/yY3MRhmscM5HAz8FUe4N0GHhpMf
 AblamewqllV4aFJNX9rqC38Bfrua5qSGpBXfEvK4rxqB8uDXrzrhq3DbRWcLI4ZsALte
 Lfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4utvhxtA7zvr4Iu+DFpm/vNXzWR8TFP5LHSqSIJBCWo=;
 b=cK0CdZohyrWD1ttl/5DdcsulOMWlqPOKdyuLcDpl5BwzNB6bZ2f4p5aXDGn+T6Hmi5
 8mMa8j8UTBVBj0ljEIdZyQrQy0KfebA0Y4RxXkpzSD+20/06UeOmuSsfov1js/q2gPGS
 wzFq9VBUcRZaPrL3NcpTXgJ8XJRG3qU7R/CBIU33rVV0Reis5wd8ZM5HS2qvt3yhlNmJ
 aDitpvZgOElOfIIJ8byq2HkB/sOXoJxvT3uWLtpNcxcVZla7nMQEIQ+59Vtly3o/v3se
 N7gZG0msfJMe6mm7cfMzQ1cQkwXP5Vl0rO47UNQl+Yprin7BnPYtH/kkiSdGbLgyJks9
 u3gg==
X-Gm-Message-State: APjAAAXDo26fPDtUFkQp7ee8OI+aZOYvejPrNQ8ZmAOhuguDF5ti1hpz
 CdY8hoCc+z56UgUP04njSBs=
X-Google-Smtp-Source: APXvYqzqvmjhjyfBbCiXK6ubgSKYGKoWsiXrEE1FSXHo7/8RTwhszxSZmlrQQ8mbNKUBQU48ZmIo+A==
X-Received: by 2002:a63:6c82:: with SMTP id
 h124mr27098458pgc.328.1580766189626; 
 Mon, 03 Feb 2020 13:43:09 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c26sm2947558pfj.8.2020.02.03.13.43.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 13:43:08 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] pwm: bcm2835: Dynamically allocate base
Date: Mon,  3 Feb 2020 13:35:35 -0800
Message-Id: <20200203213536.32226-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_134313_030118_5BDAA0C2 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Bart Tanghe <bart.tanghe@thomasmore.be>, Scott Branden <sbranden@broadcom.com>,
 Stephen Warren <swarren@wwwdotorg.org>, Ray Jui <rjui@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer 2711 and 7211 chips have two PWM controllers and failure to
dynamically allocate the PWM base would prevent the second PWM
controller instance being probed for succeeding with an -EEXIST error
from alloc_pwms().

Fixes: e5a06dc5ac1f ("pwm: Add BCM2835 PWM driver")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pwm/pwm-bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index 91e24f01b54e..d78f86f8e462 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -166,6 +166,7 @@ static int bcm2835_pwm_probe(struct platform_device *pdev)
 
 	pc->chip.dev = &pdev->dev;
 	pc->chip.ops = &bcm2835_pwm_ops;
+	pc->chip.base = -1;
 	pc->chip.npwm = 2;
 	pc->chip.of_xlate = of_pwm_xlate_with_flags;
 	pc->chip.of_pwm_n_cells = 3;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
