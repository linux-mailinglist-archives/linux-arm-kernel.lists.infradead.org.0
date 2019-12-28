Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B9412BE99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 20:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YG3oD+8WCB7o6dVJWmCSSDBOPoAvZwacbKKeSPome78=; b=N3M
	JvoAAAO73yuvmNBVVyGxEeQY4D5woad/1Ldh3ns2e9V1pJ2GdLcepP9uAAGJK4WvOB0UvmV8CLDzy
	0yx/K2jM6N9h9OAaVg6NKgacEIQvvNbqE1R+nQzYO1eGrmXoJf/rdVdUB93CxrBDifpYksrEysmei
	u3M2m6FZE6Fbb/VxIO4UGPNP+JB58DBcNIgqu0FPhRwRf8LqboRPbh1B1XCn/cic5KyejgkkpXqdY
	MF/mdfvFvdxv1aLMW2lniXaPtF+kGLtfaOrjyZfsadXJ7VD5F7R3VVQdsht21gWk5Aqq/pw4wxoEG
	k05ksE7BfUdPJu9MPD1dvjdhNMIUltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilHQ8-0001V4-2e; Sat, 28 Dec 2019 19:06:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilHQ2-0001Ue-5J
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 19:06:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so16360733pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 11:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ExkNmsId9T+IvJawOK9l5XqVWSk7e/vQjn+tqWFgqBA=;
 b=Ce+EFQyTJmQ93Ihqs4/E8gy7ty2ORo+rR2upNWrFHg8HE55TplCoOOTq7fkVCLYpEA
 /B0gQ27VwJJka5SrxxJ23JpDXDkVBoCdBdq0LWKJZb3GfmD0FXxRv7ynK9cvVHCcmlwq
 8LlKAUfIafn4yBgpiICP65i2jMgUtyJ13YKAE5u16H4o3lqE8pCX7uzLNIBPfmxnu8gb
 cCphqsBKkLlBkRPe/Rg/pt18syTCsND0VU7MDo53p5LQGPA8HU7osvEqMK6x+5v/wM0b
 NGQq3H8GrKK1WCRvn9t5s4Q/tI4H1UcmjqKdLeDZXSvTuXnQ4jwmJckROY/y7+eqTndn
 XJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ExkNmsId9T+IvJawOK9l5XqVWSk7e/vQjn+tqWFgqBA=;
 b=rin7PphmE7eNH19MeTAEt9sAp5JW7QXQv3GOwEKdpuDosksRAKfepWbiL3pQ9rgZqG
 RLrLO/9PQEqS3Iq86sB4oZW7W8khOPJ318bmln99BZptTEpFS18DHIr8vESTXairtdi3
 yn2M81hkJyX1CvuenYcYYSptgdVugWmeussVGHW42VVy/QluUftmacRaSQH5TRqACfRp
 /l6O5NcHWXJRhmomXrsTVDo5GMgGnT7S3iouPDobbeLoF7Okk1h8Z8NPsCOqFRHH2szn
 ApuvTV7hozn8Ub+QSoxiTRfG9iNZxxufa7Le4uMoO2OplqcoS2f3GkZ4JClLcaR7e9YW
 4gZQ==
X-Gm-Message-State: APjAAAWXGrC5BgtGP7ru5MiRJWqtkP9TQedQ6J650adozUIV21/VGW66
 XdkcOk+2K/sRV5631DRTN5jslFDxHFM=
X-Google-Smtp-Source: APXvYqw6F3EIJfl5MzAdn7+WNC3mpGfr9bNTwK4QG6AMwATj/5WwYSBlLMxLhTsD1cjLhQewg4z4Kw==
X-Received: by 2002:a63:1502:: with SMTP id v2mr61363657pgl.376.1577559993191; 
 Sat, 28 Dec 2019 11:06:33 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id x132sm44273943pfc.148.2019.12.28.11.06.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 11:06:32 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jk@ozlabs.org, joel@jms.id.au, alistair@popple.id.au,
 eajames@linux.ibm.com, andrew@aj.id.au, linux-fsi@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] fsi: aspeed: convert to devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 19:06:31 +0000
Message-Id: <20191228190631.26777-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_110634_227965_FEAB354C 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/fsi/fsi-master-aspeed.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
index f49742b310c2..edd0b287e7b7 100644
--- a/drivers/fsi/fsi-master-aspeed.c
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -422,7 +422,6 @@ static int aspeed_master_init(struct fsi_master_aspeed *aspeed)
 static int fsi_master_aspeed_probe(struct platform_device *pdev)
 {
 	struct fsi_master_aspeed *aspeed;
-	struct resource *res;
 	int rc, links, reg;
 	__be32 raw;
 
@@ -432,8 +431,7 @@ static int fsi_master_aspeed_probe(struct platform_device *pdev)
 
 	aspeed->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	aspeed->base = devm_ioremap_resource(&pdev->dev, res);
+	aspeed->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(aspeed->base))
 		return PTR_ERR(aspeed->base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
