Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11FE16B0F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DyX5LOdPKi6ND1TMH5IapReBkj1WWYuC4nlQCVxYkOc=; b=Uzxkz9DYsOAEvdGsj38yTQKtLE
	rY+kAiK65G/9SbOejpk14gW5cRH4gKyu04H58NZHxFH4hlBortYHv7RE0mcbTJH36iEY7MwU78up7
	7VAV5cqrV4akG9Igsemx5XJcjW9+iPguDe4e4yKGNrpIiS4TRUu3xtBiqG+bG2LWCjB5883LurM7e
	WGQ1mXdxxyEHQEvbkU7aWT2RcFQfqu325qKwPwlgdZxE3mBsu0WlJBozynJjZrm90MhxyKz8LCP8F
	Qq/j6jPCHXMGs5u06/dfti1cBreoYrCLdr5nCtpcNp4v0NnMJNyayur/f8PHNwtTDJwC1HMbF2nA7
	6DRB6fug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KJ1-0000q0-T7; Mon, 24 Feb 2020 20:26:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KIt-0000pI-15
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:26:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so706196wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 12:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oFJFMPloKOQ/IG47taQgRmVN4tJaMKxeC+zVgEVtvZE=;
 b=BNfZNGy7WdEPe3PKPsg9YivRp+RUhv0+ve6J8VFZEmqTUOfoLrH7KYhCvGR2g01D4a
 Pb2Qd2nnV24DKXlrAiHclHT9p98ECp/bhL/RJPy8WzBhzoWZXL9q7Tx/NpJ+sjQyaXTA
 AytsgDPB+Jh/1R1K6frQ4plfMfnPujtX5tYQufhsqIeCteqiqsPSCbqxu7xebcQ+K3h/
 AKmdd19qKkwx/PXzTZWPeQh4qYXyKesalj0rkwsCXvgOelKj1nfxpxOlufrBMS1Ddes8
 /igORiPavhgkBbvaF3Y0jaWDYsD3UvKoVGAKJnelrQpDPSE8TSOtb0nSK1pgx0YyVmWQ
 2+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oFJFMPloKOQ/IG47taQgRmVN4tJaMKxeC+zVgEVtvZE=;
 b=TckpzfdPfU0VNC7KCKcI2yukdMv18FGZuwRZqNn6VXTvEfMtoPO1xzr7+vScY1Axig
 jIgZMvpWQWLycHfMCdpOF/H3H22+XAPXskSkg8Kv5uZzymNmTApiAgIr1wpQuPocQ4wk
 tBKbYEOOoZtU1LjZmXCddkLMlVuH5ZaDXer/DDXzO0F1uD4V3z5bNGefhGUEIchphfA1
 3J5N9kBdRgVhKr9LUcd9KADb2epI0HpIWLIlXM/oeb75dgG1zzyArceg/A5tJu6zzhik
 /Vvbfnre7cfLNO59D7/IxWa8eqaAqZhCP2ObgiiG9XrYtKnd4qLA4+r/iWXUnJ0L8DWz
 hLbA==
X-Gm-Message-State: APjAAAVrE3qPVtnksaTnqTa18jL/RqgDukHCG1qryWdDICN71WaqbtuR
 2wHBMDNt8Q0B3mtavg8ioAmCSA==
X-Google-Smtp-Source: APXvYqz6tJk9pKs3DlwhvMLLlWxvdmWF7oCGr0eqdeFZlTpXS6ZQYBkZW/MD5mv+P/ZNP0JEtY3uqw==
X-Received: by 2002:a7b:c3d8:: with SMTP id t24mr183019wmj.43.1582575969920;
 Mon, 24 Feb 2020 12:26:09 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id a7sm13356602wrm.29.2020.02.24.12.26.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 24 Feb 2020 12:26:09 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 2/2] crypto: sun8i-ce: fix description of stat_fb
Date: Mon, 24 Feb 2020 20:26:03 +0000
Message-Id: <1582575963-27649-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582575963-27649-1-git-send-email-clabbe@baylibre.com>
References: <1582575963-27649-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_122611_067755_6F111642 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description of stat_fb was wrong, let's fix it
Fixes: 06f751b61329 ("crypto: allwinner - Add sun8i-ce Crypto Engine")

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 8f8404c84a4d..0e9eac397e1b 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -214,7 +214,7 @@ struct sun8i_cipher_tfm_ctx {
  *			this template
  * @alg:		one of sub struct must be used
  * @stat_req:		number of request done on this template
- * @stat_fb:		total of all data len done on this template
+ * @stat_fb:		number of request which has fallbacked
  */
 struct sun8i_ce_alg_template {
 	u32 type;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
