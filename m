Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDA810D01F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 01:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PesisQZRkYyDSImaF3gf+PhgD4oH7cjZux1TIisR6VE=; b=Wqm4mTLquIEQGz
	FOPNBwSs2Z4JjLbynQoKnAaUgN9aIy6AN4lxPFBml8APMQJpd9mn15dbYmH556LsTYHZSI2yWJWeZ
	98WuQZXpr+zvYNmM2SjVd4ZcjZweq7UhbiHZGYVU1gnP8G6uEkGx5orbdqcmIExRRNio5jMuuJ8BJ
	iBE5AMYeICRiPDL0+rnyjeZLjtIPHjRzQLUThFBkepi9DC3vp1kOw5DEuFbYnjReYFxwczGgyMSCj
	P6HtgU1fCGYM2Cj/v4FpV0lbFq4kUaJ5MJybDR9wLvs+6iZm3+sZoB0+QJB44chHiAjks19qk5t3h
	r+T9xGIPhhrHAV/7jokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaTqJ-0001zr-CL; Fri, 29 Nov 2019 00:09:03 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaTq2-0001w6-NX
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 00:08:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so4728797pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 16:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CD0CzYEX/o6Zd/uHP6vbWB6WMoC+4GyO2IXO0mq1OcE=;
 b=UYCvHEtNIYBwa0Za1WBa3dxE1m+gfbQgwgTFwnEcA/XvoOoDQPKR/8UFMlICqzcOj+
 MaiJhlhqUMrtgsOx5uExZR1tttyaSvFblAYt184ik6ZOTv4D7ElSLQA9fuyY3h73bDkQ
 rMBh34ddwhMNb2b8R0DM71jQ6lHEE+jbtdygRCjjOzVJnGfjD2WeKUX2rtYvUw8uPPmY
 Za5R0DWjR/+FkKIdWP7KK6X3qhAklCtjT+lWGbE3QYN8lzaCInn9UnrqIqPGAcm0Ch5O
 G3p6h2MSgc/qUXFBfn2fsWAQxiVm+pKA4ozodjlnePLhyyTz6EAWuaoSobGxCqNcKLs1
 JxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CD0CzYEX/o6Zd/uHP6vbWB6WMoC+4GyO2IXO0mq1OcE=;
 b=SGuM2pehrpXj5duUhdMTsgGy976s5ba+Ze4SEnuV2RlmBsbKcc5k6L2b6WEAXayXp/
 sO1vGGcP/XRAHhnldSVuywebSFfgRw8ekxJi9KaEklhSQUt7WX77AvyT/40/Xl9W0EW8
 5wRoYMq4mXY4uRTcsGgqCQp6bo/QpDPGKdzeE3N1CLIhiZ9mSZKQ905NW8EiGuk/RpJ4
 Dfq2nK8D5ne5343FHa74cGG8AYELMhivJQbWiBOqsgsVR59s+bKAPHRHtjKC6QcqWS1+
 iO2rUR0dBCBCOtZNc/bfjAVaK+OsLn/sl4G0kQZA8RqWIJsvci0CPEswVO5BuJjLvhxV
 +U3Q==
X-Gm-Message-State: APjAAAXUzE92AwXrPtda9mjj2jZ79aDs9K+LEDJaoGNkxI10GkmnpxBy
 WcyDQKIUAMv7OmZCc3Pk7gKyz+D1qX793A==
X-Google-Smtp-Source: APXvYqxmjyy3ULMbqx2R9Xe9O17n8M/xUNkdlkz/MQq0OYoeEpeaKw2qXPIva5xZ4guojBbM3mviHQ==
X-Received: by 2002:a17:902:ac8b:: with SMTP id
 h11mr5022220plr.87.1574986125721; 
 Thu, 28 Nov 2019 16:08:45 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id d188sm21302075pfa.157.2019.11.28.16.08.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 16:08:45 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 2/2] reset: simple: Add AST2600 compatibility string
Date: Fri, 29 Nov 2019 10:38:27 +1030
Message-Id: <20191129000827.650566-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129000827.650566-1-joel@jms.id.au>
References: <20191129000827.650566-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_160846_806767_651070CC 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 Brad Bishop <bradleyb@fuzziesquirrel.com>, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Brad Bishop <bradleyb@fuzziesquirrel.com>

The AST2600 SoC contains the same LPC register set as the AST2500.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Brad Bishop <bradleyb@fuzziesquirrel.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/reset/reset-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 067e7e7b34f1..795c9063fe7b 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -125,6 +125,7 @@ static const struct of_device_id reset_simple_dt_ids[] = {
 		.data = &reset_simple_active_low },
 	{ .compatible = "aspeed,ast2400-lpc-reset" },
 	{ .compatible = "aspeed,ast2500-lpc-reset" },
+	{ .compatible = "aspeed,ast2600-lpc-reset" },
 	{ .compatible = "bitmain,bm1880-reset",
 		.data = &reset_simple_active_low },
 	{ .compatible = "snps,dw-high-reset" },
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
