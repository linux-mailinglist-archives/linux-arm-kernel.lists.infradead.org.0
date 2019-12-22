Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE36128F99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 19:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vo8fKXJUUTnTdfxQX83uCKA2syjVX0kXm7dz13Ff4D0=; b=OBewgRG4KkDfSZCewTQPV2LpU+
	kzXtQc7k9yEL7triTGYfyQLWb4LDgfFWBT1SW55C6SRp/oRXK+7/i6EVTpb8eBhWHfif9qQFOftv/
	0oWG5ES+H3ZHQAt+otfjKoLWyizgZ3YoekDZK54DWaz1KTWAS+Iqoj75342lGrlBx7udVNHkOq/ua
	aGHywpRSErjm9k9lvQK+laGexEnk/iQEShxYTPsJ4IYf0kLkV7buL8Gwit/Wg0ilIRrPFO/DnteAu
	KlJSXHJzrwOP5hIV4xdneHtrA2DioVzNhLpMiuOpLBtaA6pEjttb+MvucLUbJqXNkkvMypiea606Z
	5QaMmbuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6LF-0004Yo-4c; Sun, 22 Dec 2019 18:52:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6JV-0003I3-40; Sun, 22 Dec 2019 18:50:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id x8so7694114pgk.8;
 Sun, 22 Dec 2019 10:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jPs8btFmLJCvfF7hm3VTorkXTs5PUOJURx/gZ3fO9eo=;
 b=U9wWDWIi3n8EDeWs3WHwGy7eoXyLGsrOlw/hUKX+ISHOS3xn5Dad3I37IpGKVcYmpX
 c7ssXhvzL+NYvVCdQBGVuc50r3MblDmMPwNUscnf9MONE6923+V6+iIWt1bajkdgp0y9
 RKw8mWWzpDFxm6SCqJ9rApfBvxXwgdNBdG/M/2FR2KOsCmKyZPm+Ud+ZyGN7hbvJkTqe
 x3teVL8N7hNg6tKSDWuiLMPbAf/L/TBXIyBM6IBj0/DfwNpcMRvYmN+mBnER89RTEuJ+
 ffKqxUz0SFPgfauy3nPc89x2GmKowZLpaEAnJRv7PQL00t1LmCsx1YS3S906MMWlHTmU
 OFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jPs8btFmLJCvfF7hm3VTorkXTs5PUOJURx/gZ3fO9eo=;
 b=o1u4ht7Iah9Uaf9p9VFzBWM0JK1zm0XNkBPKrwWzWfhfrX1Ecowcntjfl4cahVjT5N
 PmwqSJU2R4P+6s3Y+xy3N+Gq6f9IQmOZyyKf5CiGdoW1t+C2dWL3zIoRXCdzOzH29HeP
 RRaIikD7wLxfmkNzTXGIc8UVEa8TkvJO8pH9mME0EHI8Eo5ACsA+iz7FW/8cMBRVR53R
 Ysb35wKXFV40YD6N4yYTZU2WEcFR81QbHqZ2u/oYvYskHzjK/06XEfNqD5vzugaZT2Di
 72CUK59gTiLunN5h4yz21sAjfXIBmsA7pGjtZv03TcqCgIfcGz7qUOAvBpt0iYkVxsn2
 PyGg==
X-Gm-Message-State: APjAAAXwj8+NB/KLivHCbCwDJ4+VLLrQA26dI7fKud3jxqLjq8HUurYC
 /RewPePELnumHTlyL5Ric2s=
X-Google-Smtp-Source: APXvYqy5fHyoKX5i2orUytoXPpDCOFDkYgEOajqHueKFcpqGwfh052+BcQyINUsUMtnaA5I3q4bl8g==
X-Received: by 2002:a63:780d:: with SMTP id t13mr26159519pgc.82.1577040646922; 
 Sun, 22 Dec 2019 10:50:46 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id 73sm19170792pgc.13.2019.12.22.10.50.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 10:50:46 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: ssantosh@kernel.org, paul@crapouillou.net, matthias.bgg@gmail.com,
 rogerq@ti.com, tony@atomide.com, lukasz.luba@arm.com, kgene@kernel.org,
 krzk@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 allison@lohutok.net, tglx@linutronix.de, yong.wu@mediatek.com,
 jroedel@suse.de, evgreen@chromium.org, rfontana@redhat.com,
 digetx@gmail.com, pdeschrijver@nvidia.com, john@phrozen.org,
 alexios.zavras@intel.com, sboyd@kernel.org, kstewart@linuxfoundation.org,
 info@metux.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [PATCH 6/9] memory: ti-aemif: convert to
 devm_platform_ioremap_resource
Date: Sun, 22 Dec 2019 18:50:31 +0000
Message-Id: <20191222185034.4665-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222185034.4665-1-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_105049_218412_E3C98CFF 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/memory/ti-aemif.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/memory/ti-aemif.c b/drivers/memory/ti-aemif.c
index db526dbf71ee..6524229f634a 100644
--- a/drivers/memory/ti-aemif.c
+++ b/drivers/memory/ti-aemif.c
@@ -328,7 +328,6 @@ static int aemif_probe(struct platform_device *pdev)
 {
 	int i;
 	int ret = -ENODEV;
-	struct resource *res;
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct device_node *child_np;
@@ -362,8 +361,7 @@ static int aemif_probe(struct platform_device *pdev)
 	else if (pdata)
 		aemif->cs_offset = pdata->cs_offset;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	aemif->base = devm_ioremap_resource(dev, res);
+	aemif->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(aemif->base)) {
 		ret = PTR_ERR(aemif->base);
 		goto error;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
