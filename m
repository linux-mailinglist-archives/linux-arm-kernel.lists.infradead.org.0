Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73975128F1D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qBQIVDGiS4QgFkqHU71+chirkDIZiQpQjkDlMhPHBLg=; b=SjnFlbzwaihCfPrXtjVo9t3XwO
	NK8bVLAyD7FDN16WIPtC7juF0Ng7UY/bsjW88ycdAyve4FcvtsCvPqaA4kvX0bsjGn5z388ww/m9z
	vwi+m8Ycr1LvqvSnzQv9Yp9osRFxCbbIyDcTsO8d58rZDEbttxNJJtUXlYosvntgB5j+blz2MFLIy
	Rd8IfVu6KPl/swaStFM/8uTekx9RNoi9S64b++d1REKVFSWC5ytk+XvCmlJCtw38ZGekKUlpkslfX
	sAx3UuYrVU9gImRocxiZCzcLHz5lKYHNyNq+Cxz1ZXyQrkVwzqT3kFo+99luJGiGOfDFUkPstiohv
	jwAUa7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij5Ev-0005FM-MK; Sun, 22 Dec 2019 17:42:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij5EY-00055q-Rt
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:41:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id c13so6294404pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sq1nZxgdVlOFdZ13j/feTQWw6xV90se6Ya+xGUWD2w8=;
 b=nn4+IngbVUi2MOy8sEb17xGRRJWcWgHlbgkTtGiYKDZSaa8GUNLuJPygCllvkWx0Ii
 I9xiiujiey6lyACnlOf05QnTH9uQibuyGCT0hspRupDaWSAAM8RtzgBHS6bAsPAAvBcD
 /ldoOe347ktrCssPFEOsWHL8gR/t1RKAclID8F2Dv2+0E7/c8acpf3dPYvIbFDTgSVR1
 olR9wYx/dTOjKNSooNoPc58rtOw3+Gz/5InaKK5+3ybhFUGkTLuhYxa3mJyy9nmlwuT3
 37fyYZFCdBFnYZLtmfSDnrMBRg3cxt2KEWR02H7NzWsnR5AEqnhIaxysZ8MuID1Sjrln
 hONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sq1nZxgdVlOFdZ13j/feTQWw6xV90se6Ya+xGUWD2w8=;
 b=AH82vjCnAKk92nbNl3Ir1q4vfuhLakZaPvVi8B4X5pWhD7ebkB5QD6HekiuECMG075
 0YshvE2832WpNkBk3BEslCgNqBZuJ6ij1aBstxOrX1w2DCbKfDQzwZ0Serxl0neqZbrC
 dWCVfyflWOABAbjr2wdn1jKlDztBqhYcP5bbfBQoDijzJDqiclfGc1zMrWKR6GYxnZw7
 HLzNIgJh8CjkefMsp2B2pPUtMLvcqkXMk4deTRd3gHcLw5cbdVOt1G91vIM8+YC5TFvC
 1THCC+F677f2avZr8bF0s7t7Iz0CJAmyqQOe+qa34/9Wy3EJ4fjyujq9duM0ugzNWa9b
 kzfQ==
X-Gm-Message-State: APjAAAXd1QKCDhELoJbaioFRQFSgeAdZLgj48yo8ja4LbXs9ItDxq33R
 D+cuUf/M6PxbFXH1CswKooo=
X-Google-Smtp-Source: APXvYqxT5s6ngv8ij7A1pTe1bgYyWS6Z2EYVa48gRLQTHFu8lG8IxBYiOFE+eCCDweL/ZVHdWTx1MA==
X-Received: by 2002:a17:902:b407:: with SMTP id
 x7mr26002206plr.52.1577036497923; 
 Sun, 22 Dec 2019 09:41:37 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r28sm18703054pgk.39.2019.12.22.09.41.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Dec 2019 09:41:37 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] PM / devfreq: exynos-bus: Disable devfreq-event device
 when fails
Date: Sun, 22 Dec 2019 17:41:32 +0000
Message-Id: <20191222174132.3701-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222174132.3701-1-tiny.windzz@gmail.com>
References: <20191222174132.3701-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_094138_899892_0B89733A 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The exynos_bus_profile_init process may fail, but the devfreq event device
remains enabled. Call devfreq_event_disable_edev on the error return path.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
v2:
-change subject
-rename lable to err_edev
-add return value check
---
 drivers/devfreq/exynos-bus.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 7f5917d59072..948e9340f91c 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -335,10 +335,17 @@ static int exynos_bus_profile_init(struct exynos_bus *bus,
 	ret = exynos_bus_set_event(bus);
 	if (ret < 0) {
 		dev_err(dev, "failed to set event to devfreq-event devices\n");
-		return ret;
+		goto err_edev;
 	}
 
 	return 0;
+
+err_edev:
+	ret = exynos_bus_disable_edev(bus);
+	if (ret < 0)
+		dev_warn(dev, "failed to disable the devfreq-event devices\n");
+
+	return ret;
 }
 
 static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
