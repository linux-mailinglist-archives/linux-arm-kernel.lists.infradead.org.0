Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81651097CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 03:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PesisQZRkYyDSImaF3gf+PhgD4oH7cjZux1TIisR6VE=; b=LFtEw0mR86e6Rx
	943C0tXqOGYzjHj9o11K8YreiYhNdkegDE0vnPIiTs7g/e28giCrBQk0oIzIAEfzfxSLc5DHLkoWA
	BCsfSC6o3D6+q0FPUxlPbX3c+Tte5Rg6PgQjdZIxVKwgxAUT3QLiYFnUhRzk/7ncUp5jvAsD3WR3i
	v+o1MYBpPhKol092PsILm/JkyR6GgI2YMgkaPvzlokZ31R5gU8tThyYgvwUoaH6U6qZ4vKhMy1kXV
	V6W6TAyg7Cy7pNGp6G7Sd2jRA6I7qGumHcpDhmluoZnVu6QH8zYyPAySuoa9CdLAakpGAuatVMPM+
	FQ1maN/3UZSuRN/49Q+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZQVe-0005XJ-3g; Tue, 26 Nov 2019 02:23:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZQVR-0005Sm-Ll
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 02:23:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id o8so3052125pls.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 18:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CD0CzYEX/o6Zd/uHP6vbWB6WMoC+4GyO2IXO0mq1OcE=;
 b=FUsNAgPNgMBrg+0iybequZCMxQOlKxjlz+oXNDgAn8Jku3YSeWHZP9QDGhlkW6G0v4
 2VLkOEdhyhaeeWmCmNMnO30N8TqUHA35JVMlmoIu1jlrflWbYz+yuGG0py3W3HnFW6rb
 x3rs8PUhKP67wje1fO22KB0s3VM6KCe0BZaeoi1i2x9+psysSjMnT7GRh03eKKE1Yace
 wIMK9jr7YU0Vv+nKdySEZ0z2k8O1Dmm41DS4Zlt4OthY/prcwe3t7JfwsPdYky1ueZiu
 LmfrI39msbRnsxGpHgs9+BDcE3VlL1dbPoQ88AJWhLVZhTckHlrboyjkSIdWPE/WePF1
 7wTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CD0CzYEX/o6Zd/uHP6vbWB6WMoC+4GyO2IXO0mq1OcE=;
 b=NsDp2naRzvZlU22FN4l1TmLDGZxbksNN9LfMZfsszhcRD6bSDi9htUIbztMzbn4dqb
 byTgdSAU2wYYIZVTA1HofM+CtADRnF+HcDU+HXbMea2NZyfWfp1WWNggT/YuwMS9/m6C
 Pz0qrbS5X5Xau/zNjE53HfJUbNO3M2J5oLbldh1DSkWdPIURV9ks/AxsHQNW6yR+OJcB
 ajERX2UBn8e67CsTynRp5woHmzdYvsuYBH106AF5sX+Al4WRBJeGQCs8s7X3bkO1MJLe
 jxPgDgzayuZhsojizxjK/ZX/5okSOcEERvJF8IXtUALSbbG57sWUpYwwkN54Olo0lBx2
 jQyQ==
X-Gm-Message-State: APjAAAXu9zrCduR9klEg5eTBMPbjayuWm6UfLt1bdAzs+vQoqeMBYZRP
 OVimiKTveTDxfzf8TlSwYa8=
X-Google-Smtp-Source: APXvYqw6UNaft0xfeIv2zeZrxqCAJefQOKEyciNUpcWkgvrwqQ7cKd++GUsr7IxJw5bpatflGHbbcg==
X-Received: by 2002:a17:902:6909:: with SMTP id
 j9mr31706313plk.136.1574734988435; 
 Mon, 25 Nov 2019 18:23:08 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id q70sm666568pjq.26.2019.11.25.18.23.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 18:23:07 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 2/2] reset: simple: Add AST2600 compatibility string
Date: Tue, 26 Nov 2019 12:52:43 +1030
Message-Id: <20191126022243.215261-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191126022243.215261-1-joel@jms.id.au>
References: <20191126022243.215261-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_182309_734630_BCB6E9FA 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
