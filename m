Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897DF39B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2wpWM07qgZHk3kqUjdDZ7kOs7+4yLJTdYI5EKX+k3M=; b=AWjol65UnzJd7a
	pddl6DmSIsyYEaQvBoif692mQzkvfWmXB08VJPmZPu2ngGHqABFI5GXxSSHaWzvBwYU0naDThlxFR
	TnuC9nrWgRZZtuD3YYdnm+AeRZM/nDpqotLepdsJWTJ5qO83x4u/0ZAovI9Mntk0YQokeXxSYKzUy
	8q9f0rTXdhrlgJ9hGM6tqIFdyhfarKBiU+W3eOrnWTowUx5oUTn3eewHgV2Lq1PRb2h78iFdnXJiG
	EEFmJAIXaTNhi5tvxFzzFrl0Phss+LzQFV7Q+4DIjnTQrzmAxl1cuSrWShj8zU53tC9Z588y+sTSE
	/fysKUYsMrJtKKDOjwRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSogL-0001Ke-Uy; Thu, 07 Nov 2019 20:47:05 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSogD-0001Jz-UH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:46:59 +0000
Received: by mail-lf1-x144.google.com with SMTP id z12so2648710lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hRPY2QI7LGnP1fwI1XGEjgN8hS6ZNhTh7sEjWEKqz3M=;
 b=JDNTcnPLIR3fsbrNqa6N8UdbU5UJ06+eIb46PaBZElxxZJ8daq2JSQIPXF9wjccjKr
 Lv7909Hj0a3WPsRP6EBc4FSkoe1R9eSdVUghC6Dm1KAFXKTYk6vkkSPAPBGwLqpjHxWr
 Jj3sfxBbyJxGFDdM2BBUzKHAzy4X+VApms/gx/DVLH6ggX0jq3HJjKDn9vsQFCJ7aZ1X
 4WUfIcIWwaCXpNy7DzyQGjhImgZKIcGd82TGA01cmFLUuOB8bD6nYbh4fwT8qg/jhavo
 RJCMMR7+tc4dcMR/udColJ0eDoTN7zJCszjrr+emx/wnH9nwuTUU47QYNSCBZmZ53ztQ
 zpvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hRPY2QI7LGnP1fwI1XGEjgN8hS6ZNhTh7sEjWEKqz3M=;
 b=A+Vy+aoCFw5fr92yS2DddQ0gxHjLhVceLKSEqYwzCCgOBpB08R5RFxFwNgH4c8Sas8
 gwMWbYZ+u+20GcW0kXhfbweK8XmD6crxme3bEt0iaA/Hrn1uxtkQAejI0mza8/pKRNAT
 lzhI8mUfuC4bKvTY07yezta+h66esiWvMpd+oweg0OwoknPc26D5DA2TLb18KcgwDHBa
 lfp8KPCmJ2rWKJeU+jI1emouVYbwN+jJEMpUmTrpboacZvvBdMJfVorwRqB/6d/XgPYu
 vGLLizaS6RaUyT/5IN20qWfCdRVWZt9/CWeREvE2uuBtoJMdk4peru3F2zHAsUbG/hK+
 carg==
X-Gm-Message-State: APjAAAUSA5TGuZtIDkq/vvCqMYxTrJ3sQTAq2mUbutcBcDOr3M5eA0D7
 2HX8sRzWx9TnURPkUSRa5qs=
X-Google-Smtp-Source: APXvYqx+X9FSowYO/oLK/7eoF1bHHGrqtHJqTZvVurYmumhD/sMFQJXLVI+wyUbSqo58WGBDXL/LDA==
X-Received: by 2002:ac2:4d10:: with SMTP id r16mr3947997lfi.70.1573159615527; 
 Thu, 07 Nov 2019 12:46:55 -0800 (PST)
Received: from localhost.localdomain (h-98-128-228-153.NA.cust.bahnhof.se.
 [98.128.228.153])
 by smtp.gmail.com with ESMTPSA id g26sm1419323lfh.1.2019.11.07.12.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:46:54 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: megous@megous.com
Subject: [PATCH] phy: allwinner: Fix GENMASK misuse
Date: Thu,  7 Nov 2019 21:46:45 +0100
Message-Id: <20191107204645.13739-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191020134229.1216351-3-megous@megous.com>
References: <20191020134229.1216351-3-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_124657_975146_376AA3AA 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rikard.falkeborn[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 tglx@linutronix.de, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arguments are supposed to be ordered high then low.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
Spotted while trying to add compile time checks of GENMASK arguments.
Patch has only been compile tested.

 drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
index 1169f3e83a6f..b1c04f71a31d 100644
--- a/drivers/phy/allwinner/phy-sun50i-usb3.c
+++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
@@ -49,7 +49,7 @@
 #define SUNXI_LOS_BIAS(n)		((n) << 3)
 #define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
 #define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
-#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
+#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(2, 0)
 
 struct sun50i_usb3_phy {
 	struct phy *phy;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
