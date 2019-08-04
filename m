Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F4F80BB9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 18:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pV58AGuRmwl3Di6cP5gRokbzY6BS96lrIgfdghiPAFw=; b=ZoZyg5Kf49Xq0O
	oKm95QMHwy/9pglH07xtx5iM8K0fgQ7vgZ9Tlw4WLivUg1Vkhv/cpmGPglezTxQyME6Jr22/j88Ay
	UL/e7dJmBuLft/1lncTGBuQqcAmlqtWf2lXbIbCoXT2fDhZx4fkmMgJ+gzBr2+OSRWNbO0/8tSqE6
	PiSra0mnsbLLfaRHmTjoZHOVida1Nm+xOIJkp7weCUnsE5JRHvybVOBWIWIJWT7nFktQr/oqZDMpv
	f1ju/O3s5GtHRp2rkCUYdSoB27CfvGuEOx/B3I3oDUX9bo8d1WoQi12JEOjIrio82M47/YI2q1XBz
	zQvb4/JudU44S9wot6xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huJTM-0008Ku-Jc; Sun, 04 Aug 2019 16:35:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huJTF-0008Ka-QP
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 16:34:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so38430582pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 09:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RMNZF6KtAhN+Gy6BEZNu5CSdVLgGJb/v0I5vpK538AU=;
 b=lyTErawfTJoMJqfE8HkSCDA8rN+sB6eXWpSvvbRnPRj4XddswSwG4eKflR5VgJg9wE
 X5oYDehddYJjdMzDimNru2HH6v/2H/LJfFJEAihVoshqwClSNoCUT9u7XaFdhoEicsAK
 +iRyzP7KXmcHgNymdH23UH4fczWS0DnImq5SntepN4LL9SF5NP1jooO/GYoHNFyvltTN
 Elg76GRtO0ej16csnkWcqnW+ss68TE2JXz3k+yf+jF9wYhkpX5AP214GMb+tGAYvQ2Zz
 6osUFy5sgJKLp0jw218rjeyxq8Xq+j6xgf/AefiYfq/ISNGh3+pmR5GoN8+MlUgvAYtJ
 bLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RMNZF6KtAhN+Gy6BEZNu5CSdVLgGJb/v0I5vpK538AU=;
 b=qPOO3JCkz/DHSi8F0pTA49uLSgIOwoRnWS8aaJGpbWg15cXihT/goXqcBYoyg0Q2Cf
 pIFvuY3QQdWOqYxJYKachwRltgWOk0Fp5oaNc1o8nPOwL6pHiQfWkw/tdEchqq72hYwU
 uvzAJ6IJCx73QukS47dUj7ZJWI0ypP4IEvXVx7xDEG/ULRkPu95hTRoh8L0Jya2Rc3n3
 BbzLFI6BnxQg4J8dG1ivZEh5uOR5QR7+mDrzhLW/WqaC627/Y5qaxB4gkLgUwDXTYb/V
 WSfXNEtTF+4qLfi6eUZQU3uvS+SLIWzkylCkiHAix3cIF83OF97h8UerK/Pl4wbXx6Dx
 O1tQ==
X-Gm-Message-State: APjAAAWAdFyark8RaOuit59+CM+wWfuNn5iGAZct3zeSP3MZbgWY+uZY
 GLhYpd5Vc7PJL/l72bjsZPQ=
X-Google-Smtp-Source: APXvYqwPoWuNw9I9Cs1c3kM0bkcz2Tck+syFhD3GywXmw+F40iMATsaw5FfLo6ot9vLlER45vbQhhw==
X-Received: by 2002:a63:c118:: with SMTP id
 w24mr131695706pgf.347.1564936497094; 
 Sun, 04 Aug 2019 09:34:57 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id i124sm148519507pfe.61.2019.08.04.09.34.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 09:34:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clk: versatile: Add of_node_put() in cm_osc_setup()
Date: Sun,  4 Aug 2019 22:04:44 +0530
Message-Id: <20190804163445.6862-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_093457_884462_667DB61D 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function cm_osc_setup, variable parent takes the value returned by
of_get_parent, which gets a node but does not put it. If parent is not
put before it goes out of scope, it may cause a memory leak.
Hence put parent before the function terminates.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/clk/versatile/clk-versatile.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/versatile/clk-versatile.c b/drivers/clk/versatile/clk-versatile.c
index 90bb0b041b7a..fd54d5c0251c 100644
--- a/drivers/clk/versatile/clk-versatile.c
+++ b/drivers/clk/versatile/clk-versatile.c
@@ -70,6 +70,7 @@ static void __init cm_osc_setup(struct device_node *np,
 			return;
 		}
 		cm_base = of_iomap(parent, 0);
+		of_node_put(parent);
 		if (!cm_base) {
 			pr_err("could not remap core module base\n");
 			return;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
