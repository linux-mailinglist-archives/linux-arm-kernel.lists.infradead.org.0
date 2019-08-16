Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5792990564
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APP/oP5MSFAyCN+Q2vTzaFGYu9UAbOyjRrJ78f6AwjU=; b=n4VkZO3pJ8YIdx
	Kt6l0iugvMgchXi/UgRx4mBhAYyf+Jf8NSzL9w/+LsjwiYFfg0H673IRPGsQV+s99pIooyRbWJJ28
	0vCz8Q5v73CY7yyZaV2CJHWysXWJ/UN2N0y0nXNnUTCRngUNfh1SJt6TIVKfds36goDok98kStSSx
	++CpGCM2oq7E+966enQdtpwKIp9NrgemSR4mzYEUP8LuTB0OZ7IarueoCZBJ2JOR5DXVzP255ehhA
	yLb5jYmO7l3voFsvWrIEdhqQmwf2Q9ZS1e60xgz7spr3HuGKdYUKXOogq3V52N5RqWJjshh2E3Qz5
	uqeuBWgT3285KDni+96w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeiZ-0003he-IP; Fri, 16 Aug 2019 16:04:43 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyehy-0003MB-Cr
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:04:07 +0000
Received: by mail-pl1-x643.google.com with SMTP id bj8so2625359plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 09:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BrRMkjc2qGWCZLIX9694c7JW7Gvf0FMcBkwT0dY+kis=;
 b=hcp099JLXcAtr20hVTLWgVQYFXbhVo4XXLQW1gdi3X8wRO/iMDfVRxkZdA5NU7sAQh
 voXm3CvwWdBYwGJz329n7nQ8rE8+eLKw/vWJpi8Vovk6mb3R8BEURRIiFAo9gYUrP5OU
 bPQkYgp6sSWijbk+aWW8MqL9P2yCokXbfiOzbpgVJ/T3OaYnbYTg3JrwH0ELewheo8Op
 ArXIuD2xkn+/ugivUTwZGh4XmqUo89Feh6zy5EIJ6BvpS3OQ80lWi/FFPmDleMc4gu0g
 jBkFdbXQFne1ffs23n8Yt6XafDq894mNsogG9+FL7rU0hfCNzuDO2ClfSF8v/MYWG5/e
 AV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=BrRMkjc2qGWCZLIX9694c7JW7Gvf0FMcBkwT0dY+kis=;
 b=fDOCyw8K5FqRdzPaOy9PKBDw4e4aXaW7iyEVuwe4EqsMOaTxT3ELo4XyggKxXiDRid
 2t5WfWwAJwin/0dgokarjJJV1saBzVynkDXTmFGt9mU8SezQrGDYJ/5SCzjxV1H2Vfp7
 035bD+fP4tpLiTencX5I/VB7RQH+W0qaiIs0IILf77FYixVfFApi2QabNrs8SMW7Cfj/
 uOjPOO8tgBiGHtoCvdbQ+m8j8WnFl8bobXSaQIOrfzhtLuGh8FIe6rvYLrsBGIJ/D2sa
 c6+8Kb6pvuObHGn8dpsG8wvmCNgC+6HugL/s5YQsRUqidvJQ7DrOUfCfUBG0aWa8paWw
 4G9A==
X-Gm-Message-State: APjAAAWyC/ynwtaWFxw8jil0ewnfd79b5tfEbNnA53vy94HGfQ+MHxOr
 eX2yvpvVW+re9yHvobW7SNI=
X-Google-Smtp-Source: APXvYqxiGn8dbBBUwz6+A3QeDJEhGVLcHKlXkwSQ70P6UKBPE5EgJgZ0TGRQnwNFfsCB+8cciHU9ng==
X-Received: by 2002:a17:902:a01:: with SMTP id
 1mr10269948plo.278.1565971445900; 
 Fri, 16 Aug 2019 09:04:05 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.19])
 by smtp.gmail.com with ESMTPSA id m20sm7578607pff.79.2019.08.16.09.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 09:04:05 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] watchdog: aspeed: Add support for AST2600
Date: Sat, 17 Aug 2019 01:33:47 +0930
Message-Id: <20190816160347.23393-3-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190816160347.23393-1-joel@jms.id.au>
References: <20190816160347.23393-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090406_605063_8E1DBD2A 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryan Chen <ryan_chen@aspeedtech.com>

The ast2600 can be supported by the same code as the ast2500.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/watchdog/aspeed_wdt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/aspeed_wdt.c b/drivers/watchdog/aspeed_wdt.c
index cc71861e033a..94f73796ba9d 100644
--- a/drivers/watchdog/aspeed_wdt.c
+++ b/drivers/watchdog/aspeed_wdt.c
@@ -31,9 +31,14 @@ static const struct aspeed_wdt_config ast2500_config = {
 	.ext_pulse_width_mask = 0xfffff,
 };
 
+static const struct aspeed_wdt_config ast2600_config = {
+	.ext_pulse_width_mask = 0xfffff,
+};
+
 static const struct of_device_id aspeed_wdt_of_table[] = {
 	{ .compatible = "aspeed,ast2400-wdt", .data = &ast2400_config },
 	{ .compatible = "aspeed,ast2500-wdt", .data = &ast2500_config },
+	{ .compatible = "aspeed,ast2600-wdt", .data = &ast2600_config },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, aspeed_wdt_of_table);
@@ -259,7 +264,8 @@ static int aspeed_wdt_probe(struct platform_device *pdev)
 		set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
 	}
 
-	if (of_device_is_compatible(np, "aspeed,ast2500-wdt")) {
+	if ((of_device_is_compatible(np, "aspeed,ast2500-wdt")) ||
+		(of_device_is_compatible(np, "aspeed,ast2600-wdt"))) {
 		u32 reg = readl(wdt->base + WDT_RESET_WIDTH);
 
 		reg &= config->ext_pulse_width_mask;
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
