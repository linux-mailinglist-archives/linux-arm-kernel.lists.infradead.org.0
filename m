Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B116B6CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ui6N8lLhVQgfcMMI4qtGXxCrDsvbCXkpGBaK7wSuNug=; b=t9oFx7PUtMKqVb
	vdDTydirObuzMe+04ql/970XmJ26LCFLAqjM9EAMDdIrtBuNC57ce926bUDYzr9fedqmIZkaMbBz9
	8tD5H6vs7I91Djxzmf8JNqPM9ix0nRZn3IuQI8CQ41PNIdyAAtqAKkpGp+tQg5Z7WGOQyoo2JdEWi
	e36/Qk2dFo4fQMKETap0ow8GkTuZAxUzfTpGEmk7/P1KcAwYLVG36T5sf7kztIYSOcl0OQP3xJUdh
	8HCumiV8xKx3Gz0PMJ714P6p3LgERi4HpcYeAIofBuC6AC46iwLGIFyjkizVvBgcF/Pmnp4ZmUzW+
	PA+zMsfdaq+HpJH6o6DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnddl-0004P8-V1; Wed, 17 Jul 2019 06:42:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnddY-0004OJ-Rl
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:42:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so22413141ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n5aqcp2NSGgY4pex0qsofteYZtwUFwtOhxOnuOJSh34=;
 b=kQDEi21Jyk3Neupuj4rhxxlekmTi3nIP/p6wtsbTUv6OPWlcKJA4wzmJx4dIddGZ33
 OV4EthJYZxonNLf15aYqc29VtKGyM6OVKCf9LXViY+CnQkqCC+bRifcCBb/7MGI368gQ
 hEjPaDZbBHLvHDzcqTp7U/p3gJXHPHxOHmfDaI5wUMaNbB4i8ql03BulC3JDjBRs9XlZ
 WnOieEPxHpUeZguxMbNn+j3remcl3KEQc6FUrIjRtTsifMtOTlKWi+HXKuuECD2yoywr
 mnOKyQtVQKligAGHdWFlluHE8SizGNTMJN6r2Ll+kHmsI+jLoKCMbzy8MUNASAMExyBT
 T4Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n5aqcp2NSGgY4pex0qsofteYZtwUFwtOhxOnuOJSh34=;
 b=nKybzqjXmn+Gqx0NNbGKWubZN+YeWqiHC6Ci+l9pr15kW0utbyooqP822OX0dFugh+
 aizdR2WtoNXCw/MpXdSqvvGVQhFiLm6Sdsq+6+cqVF6/yUpm42BchYHJUZCVrP7GLKGN
 bbVM3WrLlv0WqqqK9VhzsSZCm/UtmsDUcMv7hDy86gdZF4sOJZgoaZ42yvXG05IYaIVg
 7m/T14LwUHR2gKUApeBEUK8fi0lkxx18544dwJX7LfUVJD7XG7StVMvr48Pa9uRpY3Pd
 1SQ4cRKSwWFC0GOeQDJTCIIGdGmtgqwQq8fVAO58aSQ1Tkb8oTa2/mVmLzae7IUGSSii
 FnNw==
X-Gm-Message-State: APjAAAUzIqcKO0Woh3Gb5WfYUOWn2cMeOfN5jT0v+Nnu20uNkrePQHhO
 Wtd7HO4UJZTtpZBWHAouy9VcU+TH/G8=
X-Google-Smtp-Source: APXvYqy21qPPCsIpWBZ451ouJKR0lP5c9caOxkVAxaR2RxYDTYnX2epOoJIu977PN7n+5irpT/90iA==
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr19521969ljj.185.1563345718537; 
 Tue, 16 Jul 2019 23:41:58 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id l24sm4271854lji.78.2019.07.16.23.41.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 23:41:57 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: ux500: Stop populating the PRCMU devices early
Date: Wed, 17 Jul 2019 08:39:54 +0200
Message-Id: <20190717063954.7469-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_234200_910169_CFD89363 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRCMU devices are getting populated from the MFD
driver and that is enough for them to come up. We already
have an early quirk for the things that need to happen
really early and the PRCMU timer that need to be registered
really early will find its own node just fine as the
timer/clocksource subsystem looks through the whole device
tree for compatible nodes.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-ux500/cpu-db8500.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-ux500/cpu-db8500.c b/arch/arm/mach-ux500/cpu-db8500.c
index 9580525102da..3875027ef8fc 100644
--- a/arch/arm/mach-ux500/cpu-db8500.c
+++ b/arch/arm/mach-ux500/cpu-db8500.c
@@ -110,7 +110,6 @@ static void ux500_restart(enum reboot_mode mode, const char *cmd)
 static const struct of_device_id u8500_local_bus_nodes[] = {
 	/* only create devices below soc node */
 	{ .compatible = "stericsson,db8500", },
-	{ .compatible = "stericsson,db8500-prcmu", },
 	{ .compatible = "simple-bus"},
 	{ },
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
