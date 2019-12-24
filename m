Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281D12A29D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zpe3jr+h0NHAdEgoi2bQANDeXbD+GNudxp11Mzg1ouk=; b=L49
	rOuF3wv//C8465WB8l0S7WsrO1UTa2MBUo0dQ5Kr6At6s62c6H63JuSo2dVEufcMJGqoqnue3D3jH
	M94VwD76frSzlTvxA5n11d4suyv1iHUfKxoOUoKS4SVNPktD45VWmv+NrEhEq1BAVrkv/hA9Vt4uu
	5g7KHeErCeMl15vHx6fAtRF70UQoGp+JrHnwrgZ96VVHf05amAZcHtH74OkwZ+R3MP3ZmY6HzEbcy
	tMQgrmNo6f4720GAzgZkgwXBjcIWRoEiUcmFEJk/nZ5QebLqvddrm0QG3BRUdMzcxnAmFL+UUVyFO
	vPnLlRuQXnZ2p3lkz9AaJBmCJTirLpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlVn-0008Fo-5E; Tue, 24 Dec 2019 14:50:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlVW-0008FP-3s
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:49:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id p9so8546716plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 06:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9qJ4QX/O9pedWC4ReUIXSopENMJeF9k7yOnEg+shTPI=;
 b=VnTbozAKz9ZlZBmyU0uHx+ynZVdyU9j9ngEcgnL7gZI+fAuAqNQ9eQoQsIThbSHN//
 rkMdot+Njbcfqihx5iIiV2Enbgzt9FYxl1hGG0qJ+tx9XfQPThetZkmjYwMEXVhZoVxx
 3438FYt0+yiQGZ65v+kVzBwLc0g3fnGxcw9mWIzVpLhnC462kfnzXM79uqnnaRxiTvoD
 NynOyCwKp2Iamv+qGGQICg2f21yM+6p8/aYLwTne/7VMMyX3A3tCvJO+tA9KKG7N8iOf
 bN2IL/INffw4WM1mXxRb19Zoq1PNy+XerEVmGr/7eXXhpEPwif8R6usTobK0emG6yp7L
 BygA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9qJ4QX/O9pedWC4ReUIXSopENMJeF9k7yOnEg+shTPI=;
 b=C352Tin+xt5osK6Mt7I5B5aMV6W70hek143pMb4Sh9gaFgdk7Q5BkPx2zDi7gJb1Wr
 9Y3Ic79v49RJUBxQvrsEZxspSelAqKBtyZcfvhuIwLKKBT48Zie7Hdm7AC2iShvTvh0U
 21yLYoMuNNfxq455cwyNUeCm4nbbUWrinX2pCHElj7p12J/j05F0SWQuWtkg4LvYsWK/
 5xWzifeWwcv4j/j80/COuMmxwsQc1WILtHSihlFP9XZ8nzBkoD8xQNYD/KV9i9IU78Wm
 zR8WbLZoK/Mo/8BAC2NA1EfH+nDcYf6J2gUt2cOa+XluIxgsfG46n8zb+h/PmjI1wcAu
 U8iQ==
X-Gm-Message-State: APjAAAVOC/rxv1vXZAYdg2wmLvsLS2Qh+KIiH0V6MNGt0UW8YHy89NQI
 suVejjR86j1z7VEKFCu6xfc=
X-Google-Smtp-Source: APXvYqxhTEg2NXHaE+Zd7wNoia2SxPlCI7V18qlyqQOOfP3FcLQripV1VQyu/HVcttF/iQLQIO1fdA==
X-Received: by 2002:a17:90a:a386:: with SMTP id
 x6mr6578091pjp.116.1577198997673; 
 Tue, 24 Dec 2019 06:49:57 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s18sm24669905pfh.179.2019.12.24.06.49.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Dec 2019 06:49:56 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] PM / devfreq: exynos-bus: Add error log when fail to get
 devfreq-event
Date: Tue, 24 Dec 2019 14:49:54 +0000
Message-Id: <20191224144954.26152-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_064958_178341_9DD40C19 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding an error log makes it easier to trace the function's error path.
Because the error code may be rewritten on return, print error code here.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
v2:
-update subject and fix over 80 char
---
 drivers/devfreq/exynos-bus.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 948e9340f91c..a4c6187b1eac 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -126,6 +126,9 @@ static int exynos_bus_get_dev_status(struct device *dev,
 
 	ret = exynos_bus_get_event(bus, &edata);
 	if (ret < 0) {
+		dev_err(dev,
+			"failed to get event from devfreq-event devices %d\n",
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
