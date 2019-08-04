Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA2980B94
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 18:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yTqjslAtHU7BESsDncZ6rApcncg0Tcmko6o4ql+o6Ms=; b=qp05D4nXvKCezc
	pR3U/avesQ9k8rE9fgNjYge9DD+6cuW12HweY5pzr5FzeCjD5rKHVQ5FRudyd2jt7VKL3tGqZfENR
	0/q//0N4mBQHngIc7oK9hCPFrMfcTCTJSHqiZMc/V0aXVDB/GrAfu+xY6A1gmvQnYCOims9sSefVZ
	43Z1o4dbsRS0tdoDdBPg2oKCXzo1S2e5e92NhBcEd3a3kYabgzKM8wbPAZnbdSnIGx/um/K/UKrNM
	M5gPyrcLvoAWFczykbsNqp9Af04IERSaBT+XcmW1QbQtukjAOsyqIqvD4bW+8vTu3KasMkitYWd26
	ryWp+38GHYglFygiqyew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huIxi-0008Dk-Th; Sun, 04 Aug 2019 16:02:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huIxc-0008DR-NX
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 16:02:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so38360730pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 09:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LeGjYEzEnNd+LP7E7X1hGpTj7PNVozz8mf2RHENRFPs=;
 b=LQytGn6C2tlkbNTMXkKZ2UyVakSPWDuBvnr2zYpndh4VptsQvTykzeffX86XeALTgk
 u8V7q4xuIO4nY1eainybsqRRCkUU9UZlaffx/Mex4LR1mcNDxNllViZbEwkZoTaK522W
 wNmbSEB1xFONhovQ+m5fvb60LMQaLRZo0Rr3nclUoBwKBFLotbBQx8P+D4Hk6VSSomcf
 uAFJYT+MpMD/OhRYnG2IH5A9GbIq8Y8dH6GuknoM6u4uPRzsp2pZ8WQGQtUqzKdk/t6M
 QjVvRlovZa8Le8dedeV0qILbbCFLc6E1OaiO2i3+6DMhS2WVshgPVhzxMovkkd/M6ZvF
 JLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LeGjYEzEnNd+LP7E7X1hGpTj7PNVozz8mf2RHENRFPs=;
 b=bUPcpz1qdGXsp8CyJh22poVZnlKdOth5chAflyxJukBuRRNjoAypt0Xl45CHqBA+C1
 WIQU6WUx51PnieaE6Z+JAVhiXhkbVFeG/cEwpkJCG1OCmnj+JqaZvwYDe8t/MLMAttrQ
 piPxxAoP6K3x+U0dQ+MzTzwvHMpDSlcGGhTUur8xSasrcQjjEaBtkG3B1yTRIOicVdJz
 vwqHBfXpAwo9ad/6A+5FlLFXsc8lgrucNbdbEaeEqJJkiQB7p8BKXROEb1xi/fFEW1TQ
 Mu4cGX2Y0bAv2FuMFKsBxGj1FX1CJX++wpAuwOXF9YRhum4Z7Q/LE0Aocb3TTN276RlM
 VU2A==
X-Gm-Message-State: APjAAAUtC5lPWGcDt6ZMnmvxF+c5sD5vPdpyze+XEz7JLv0k88zrEts2
 LYeTSxwt6nqWl1xGn1J8aLc=
X-Google-Smtp-Source: APXvYqyW3HshrRKiqWhhL7Xm0gBHnBObsgshWMul17uZfpv0UekHsFJKsZHv4yQsC3HGKCgiksvnzA==
X-Received: by 2002:a63:89c2:: with SMTP id
 v185mr27001405pgd.241.1564934535868; 
 Sun, 04 Aug 2019 09:02:15 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v22sm80865042pgk.69.2019.08.04.09.02.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 09:02:15 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org, tomasz.figa@gmail.com, krzk@kernel.org,
 s.nawrocki@samsung.com, kgene@kernel.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH] pinctrl: samsung: exynos: Add of_node_put() before return
Date: Sun,  4 Aug 2019 21:32:00 +0530
Message-Id: <20190804160200.5139-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_090216_770268_56E9E4EC 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/samsung/pinctrl-exynos.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/samsung/pinctrl-exynos.c b/drivers/pinctrl/samsung/pinctrl-exynos.c
index ebc27b06718c..e7f4cbad2c92 100644
--- a/drivers/pinctrl/samsung/pinctrl-exynos.c
+++ b/drivers/pinctrl/samsung/pinctrl-exynos.c
@@ -486,8 +486,10 @@ int exynos_eint_wkup_init(struct samsung_pinctrl_drv_data *d)
 		if (match) {
 			irq_chip = kmemdup(match->data,
 				sizeof(*irq_chip), GFP_KERNEL);
-			if (!irq_chip)
+			if (!irq_chip) {
+				of_node_put(np);
 				return -ENOMEM;
+			}
 			wkup_np = np;
 			break;
 		}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
