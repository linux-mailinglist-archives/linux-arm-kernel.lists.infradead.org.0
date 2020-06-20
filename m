Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E3202524
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Avc8O8z/VSA/K3FqgYNupDH2+U//od30nodVuiel5BE=; b=GT6JMDnIA4HZZS
	/BWnO8GP90tl6MlscfZYxwXXuB9htaFTlbrTzK1g9XQPzRB0rBcoqfbXFeEEUz25R7BKQcJBiKYMx
	KI7gK1uoZC4rSMKOkiAPneGWFabNKVqV68Zhlmk0WtinwC0M2jhsOTX9FiY4jhFiTaNa0iHttgmJk
	khqppR5qWpciOTsuLOGFvaWl6naq9563iqKCHSEJBVNY2QYjCLs/3Ba/UgBQa23AjzJ4XLKAALIo4
	anbPMRUvs8n/ZBgoZqlK8Lgl5/Nkr8xfjd01eHRSH6J+FLfT0eK/KNv/gBlEGEFjYQ6cnw5ZVBIj/
	2YoqRpG0PvMHlfHu7sCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg92-0001DW-Qb; Sat, 20 Jun 2020 16:15:04 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg8b-0000zB-7r; Sat, 20 Jun 2020 16:14:38 +0000
Received: by mail-ej1-x642.google.com with SMTP id l12so13546768ejn.10;
 Sat, 20 Jun 2020 09:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5h5wp3ORTZGg5e5YMKB8xdQFo3Gs3K18kYJZ7b2m2TE=;
 b=dJqnEphIZ9aCR3dnamuWUmn7XcxtO80UGRVABq6YRlVHbfHbEQLES6ZGaZbUhUbUXR
 cSCkI3szBJfP7LuvU//wqOt9FGRK/TKnzMjKl5/Svu0J6XfThgHu1XVW0RrND3nrN3QI
 4hpRUScwefTOIALoskYBZt9XSVhM/uwRpmjFDaQLYALq2I5Sjj64KZq9c3HG7XbRmsmY
 RmB5X1XWpUk/HD/gYOMXukfkqx8x5b+3xCALiv0laXLVKmce1kQ06vYvyGV40kKviBqG
 yzP38MaT3Sob4sqJoyOZoPmEhE/BfzvsGM+qf0g+MQale2I1Z7KaQQyzMwZkzMNs5l3E
 p1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5h5wp3ORTZGg5e5YMKB8xdQFo3Gs3K18kYJZ7b2m2TE=;
 b=N6dggN1kJToTyr3FA4zLAVjmbLymMGhDcyA/JZWD76Yt4VtAvEp6F43sn5yvYBgXsu
 KQnYqL8rdAOtkFrejlnRXJdhxPl92jHCTZFbWwlkHAaO18WtUXdzcJbl1b+jKxrBCHKe
 eIhvoVSOJEhA5IRDKBtZYKC3v3d5ZCZLRRz4kK6Su0UDsSSjgrMXQKEVXbNv6b0MSt2S
 0EAjtCQSTDhnRkHly+8rF2F1Lr8KwnwAWOHfWoBKBErIJcnu+oL0MHu5lc411a3wek5S
 atu5YDvrAmMBOJmAZjAtz7i73W22dJPF+1nXxeyrrwIl8Gi1EUyzFsLKoD1o0/R7KYML
 dbnw==
X-Gm-Message-State: AOAM531Q85ee5M1Ib7UIlsgq7W4ulkxyHO58NkqBhSdR8hr9eYWlw7Tp
 xlEj0Rm+51d+LYJA3BkaIQBS4Uxr
X-Google-Smtp-Source: ABdhPJz6vp1hbLrRNQlUxG58MU8/EMo2gCfh7fH9Nj4MsFkWxILUFGJzWYl3rl3ptvKLdtrRaFlN4g==
X-Received: by 2002:a17:906:b207:: with SMTP id
 p7mr8271872ejz.23.1592669675716; 
 Sat, 20 Jun 2020 09:14:35 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v5sm7511031ejx.123.2020.06.20.09.14.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:14:35 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH] clk: meson: meson8b: Drop CLK_IS_CRITICAL from fclk_div2
Date: Sat, 20 Jun 2020 18:14:22 +0200
Message-Id: <20200620161422.24114-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091437_378815_464BD08A 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop CLK_IS_CRITICAL from fclk_div2. This was added because we didn't
know the relation between this clock and RGMII Ethernet. It turns out
that fclk_div2 is used as "timing adjustment clock" to generate the RX
delay on the MAC side - which was enabled by u-boot on Odriod-C1. When
using the RX delay on the PHY side or not using a RX delay at all then
this clock can be disabled.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index edc09d050ecf..3d826711c820 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -293,13 +293,6 @@ static struct clk_regmap meson8b_fclk_div2 = {
 			&meson8b_fclk_div2_div.hw
 		},
 		.num_parents = 1,
-		/*
-		 * FIXME: Ethernet with a RGMII PHYs is not working if
-		 * fclk_div2 is disabled. it is currently unclear why this
-		 * is. keep it enabled until the Ethernet driver knows how
-		 * to manage this clock.
-		 */
-		.flags = CLK_IS_CRITICAL,
 	},
 };
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
