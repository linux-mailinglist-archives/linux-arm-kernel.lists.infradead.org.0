Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1836129A57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 20:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W46YBMeeNs3T1ljq+DHinE6/N/JZYgJiu5yq7jATF6Y=; b=FAy
	2msZGG7l/783FijYtoG7lzciUUih6fMhCw/AJ0Oh0GiHa8bkmYXm5zoH4CXI2L2Mx3Bp1wmsSumaB
	zjNB7kmHVIL66K8PO9N3GPnvypsEcydcqlKd5ShtOxm3cMcoJ52hbR4UBcjZkqOtRrOzSe5wa0Pb7
	xrpmOBCRE6sV/QshusC9+DxaY8dZqGdwvigIvt58QobG43v7xgd8AQOzaaumNq6KFzQT8LCunIGNV
	xHsQOss7NFSPvnLBKScUKLIGGXxj5Bw5oVMBIqBo7nbHR3PScNOyORax2VvofGDwgfsQXQyD4Il/0
	5KhArD/Jmd80ZOjWEtobHWay/EpzMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijTEt-0002lO-5R; Mon, 23 Dec 2019 19:19:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijTEk-0002kt-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 19:19:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so9621534pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 11:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4psQtWa90JQilxXsmGId8ARflofhAVS5Nu5SDmjn/4g=;
 b=cdxjrTgxNE4436krgq5tzOVmG2nYo+ZXj9106NQMnj/n7qcx0yGRnpiPPSV0NMwTMz
 8QGY/kv3u/vbc7/dILKMb3h1h0l7xBmgZSNRucKj5D//JpIcyel9Ztjcv2I4o9LI8+PI
 bPmw5aV9lS+Gh80O2TFL/0FxwoP/zJA57WaNbDC72FndUeiEuHQGo6FtHCOTyCm5vyyI
 GDUjzD7nrEij04BTpH18qWhML9jhKQTqPRWx6h2yQ96TZQKINLJpfv6m53860V14vBjB
 k9Xqmxcl4c8MdibdpKSUXCoa/GvwHKTbdT9eP78OgM7j2ZAUBIrvTkq6dtXHIcs7Ld2z
 qW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4psQtWa90JQilxXsmGId8ARflofhAVS5Nu5SDmjn/4g=;
 b=LR9b6kLI8BBEXoEb6CRe+06/DWuu4cpOIeGC6A73aImLYoxa5ptLuUqwwP5m0r957M
 PTlSbgP8ETlJ2NoQg2yKLx93vN1z+rpvDONxALKmroFXdR8CKNlxtuODr1MYl4x7GfUb
 2zJkzudMZej6vW3iPe/8xZNp7Xm+jnbgXCp0Uyf7YkFNxAPjV/KeDwjIIlePyV9o0A3Y
 E1SeEMEhEkH04Db7a9FHNvPwgCvp21oFWQAuEPceDOjO6Fj6xe72H1Y+5WpRukGI/RH8
 bmV9Nf7rBfxUKfwrIhPGH4Re8fNICkUcot14z11uTQM9UoddMYk1A01pvNU2K9wbXnw9
 QyXg==
X-Gm-Message-State: APjAAAXr+Is7uSvejLenT/B1RZW8A1icTVjyBEfHGx7fJ1xCk3v9d6PX
 QkT00kZacWrCz/GAk9QXzbo=
X-Google-Smtp-Source: APXvYqxJoI9edkamQRQwobrhpyZtT7J3qbiDFkybKTc/HflCC2LJMWXBcj1bU3zoVC3UyW+JX9lxKw==
X-Received: by 2002:a63:7b44:: with SMTP id k4mr32966608pgn.140.1577128765493; 
 Mon, 23 Dec 2019 11:19:25 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h7sm27175292pfq.36.2019.12.23.11.19.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Dec 2019 11:19:24 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org
Subject: [PATCH] PM / devfreq: exynos-bus: Add error log when get event fails
Date: Mon, 23 Dec 2019 19:19:23 +0000
Message-Id: <20191223191923.10450-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_111926_431079_DA271D81 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding an error log makes it easier to trace the function's error path.
Because the error code may be rewritten on return, print error code here.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/exynos-bus.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 948e9340f91c..634d63fd00ea 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -126,6 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
 
 	ret = exynos_bus_get_event(bus, &edata);
 	if (ret < 0) {
+		dev_err(dev, "failed to get event from devfreq-event devices %d\n",
+			ret);
 		stat->total_time = stat->busy_time = 0;
 		goto err;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
