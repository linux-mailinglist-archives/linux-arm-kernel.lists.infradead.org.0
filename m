Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8DB1318B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ulOQ2I6HBpI+Y9XwhphuN3ykB4hdZhl5nNBc/f/qyWI=; b=GVOg2Xxd8i3dtB
	9pbWbCfeBrLY5re/uT49lTY+iAtYNH5AqwrAYkjInBUWc0QwGmO8D31WJ8pRDCC8qEkVPt92Dy4MT
	QyO9OFByv/T3F9+TeGy9OHCc1JKHEAqSiX9JcxmhRRnmLf4s5+ApuA/iATESIMgRssUWR5Na8+wqu
	CiRR6TJsmTWVt0KLDfJ0kWYHyiXG7y4ZZNWbF5/2VkrJ/pf3ARD9Xw/co8JWa8nvTvqXyyUD1G3cz
	/Maze8NBP6Y2plCkog67HjYn+/lhJcJRZwBuyzDY2K/s5fMGFAbBWl/rO/qyxJXhl42CuFY/aEn7e
	ry3SNBYw4tvtoSnj/e5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioY3p-0007ta-W8; Mon, 06 Jan 2020 19:29:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioY3e-0007sO-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:29:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so51024268wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 11:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AziF7hcwzVCmI73+l3mqMfAODTCcsFcTOISK9zRuWzY=;
 b=aSROXP2lkWI/C9fl2SqMVw9evFILtdhYEVPVZUzRc3ncDWQXNwcf4RlxNP5aqA9fd3
 xb3ddQp9t1lR6p+valkq/xouFxdI+MZztRSefI6+FMOh0ZeZQrlxx1urYoeUyXpzn1jT
 7bJHUbL/52gBhhkMkrWX9dJ7A9dL5MgqBWsB9XMTyMGOl1ysknh6+RaozibxmdGPX6R5
 Zt58WVRSu7bmBTRCNuSOv4VQzTM9n4hrtDV8RI0AUbj41xEpl+62p7/gRfaQibbcs1MZ
 o8i1mvD3l0uLPmzo1S4LTCDIomQ+3UwzqBiLU+dYDstFWDxy+plcidxMslqFP2Khb9YT
 fsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AziF7hcwzVCmI73+l3mqMfAODTCcsFcTOISK9zRuWzY=;
 b=NN0t2VNVHvUJwjyXN1hoKUyl1y1lcgNxHv0gB7zlQ+DlWqHt4bsui6bqdBROH3R8sr
 wSLXd0ioIJtbQ7UpD2kscAh+tseypC6I5tsE3vOjvFOOaXrnha3CIY3gAeYpYcFQlytF
 ONObwOXZ77Ak2TNAHzxBY7Y2qa6WpJJDnozvc3YPUgCvXLSAT/Wh7A74u9h3lXT0wVeS
 ILF/Gew+UwiWqNmgvumdURF78AmjA+iVMht4fmID+oO8BUxqCb0EphflSzyXC5DLaPKO
 nU3TATkja8MK17I+f8kZRsi9fmimVG39dU+4upIENjkANlwF2IqbKQ9PM3EbDJalkQNo
 aIBg==
X-Gm-Message-State: APjAAAVoB1h2ApXHuLbkaPC1vxbq5U/XsYgXy51Tmb+tP9VG6ufi7iOp
 2KUmpSSF5PciOqZeh88wHx8eJSe4
X-Google-Smtp-Source: APXvYqywVjaNHfMTcQIiAZDYGOrIjcrpw2RwsIL4gX3S+GCkaLSIREZ99J0IRjkI0JEyP/pvDTouaw==
X-Received: by 2002:a05:6000:1142:: with SMTP id
 d2mr98653964wrx.253.1578338937062; 
 Mon, 06 Jan 2020 11:28:57 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 a133sm23883482wme.29.2020.01.06.11.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 11:28:56 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun8i-ss: fix removal of module
Date: Mon,  6 Jan 2020 20:28:52 +0100
Message-Id: <20200106192852.9218-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_112858_780834_DDF038DE 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Removing the driver cause an oops due to the fact we clean an extra
channel.
Let's give the right index to the cleaning function.
Fixes: f08fcced6d00 ("crypto: allwinner - Add sun8i-ss cryptographic offloader")

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 90997cc509b8..6b301afffd11 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -595,7 +595,7 @@ static int sun8i_ss_probe(struct platform_device *pdev)
 error_irq:
 	sun8i_ss_pm_exit(ss);
 error_pm:
-	sun8i_ss_free_flows(ss, MAXFLOW);
+	sun8i_ss_free_flows(ss, MAXFLOW - 1);
 	return err;
 }
 
@@ -609,7 +609,7 @@ static int sun8i_ss_remove(struct platform_device *pdev)
 	debugfs_remove_recursive(ss->dbgfs_dir);
 #endif
 
-	sun8i_ss_free_flows(ss, MAXFLOW);
+	sun8i_ss_free_flows(ss, MAXFLOW - 1);
 
 	sun8i_ss_pm_exit(ss);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
