Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8DB145308
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMZugspbEhsVtxeElJjJuT/hPbs+vLeh9tQnxMt4dKI=; b=KN0FC7FNCirmYM
	lyTLx/Ytw58IInuAzeDwijYX17SMr/ZsARS0ZLU8AZv33GZ8KRaK7EY/ZdXtmMlf0KBqxJOTY9FFt
	pcpNm+vdhaYlWBAwhOb5lnOfzy3vsY/p9yV9myjU5tDDRTDKHpcOgWDc72ju3SSx7Fgxp4nexrQhn
	ZEmyA9pdN0rZlcmpReTmjIrfVNAD7i23YSCWi854K1Iv6UF+iu9HRhYe7mzHzbORNQWPxoC0FzGLD
	aqNyp34PlcfgDwtVgn2Gt51/WSKD05CrmKqTampRaz2mWUwyo77JskcBXI0tr/kjPJfswtkmbqgpo
	OsuYnP5ptKFTCaawslKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDXv-0006Zg-3E; Wed, 22 Jan 2020 10:47:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDWA-00050t-Pu
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id u2so6632836wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vXhhnXKXoxYSpa1+LXBS7VNs2uspXwnX5jIhIQmwFrM=;
 b=EykB0ac2kjYrYahu/jZIfG6FfpaSNjvW7yVd/WDy3Fs3kS6TW94qvZDp2Z9zG6y7kk
 P182nzjKGL3aJwP3fYx1VS8CqcqsglP0XtShXtt5mB83h7kB/UbCZwsbp6itjDxeZffB
 YQgI0AiY2tL/6LwGZDDHn51fT+IL2IyLOtJQbC8iWc60bEqkTi5iz8TYmdwyp2skjvuS
 J6QJlKUQwoIRUe59EjCf264gffqZjLFpzOEQ2lNaYtjUU9bkehFD0RuPP4ufl7wraoTK
 6cIcb4utrANC0cdjxDGPLZ1PkCSHMLDxt7jewacut+G9zXpgQ50ouZwP7IZT5fnbJL5k
 AUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vXhhnXKXoxYSpa1+LXBS7VNs2uspXwnX5jIhIQmwFrM=;
 b=VDttGQC0+kmYGGSHFU9byQHloj4qxQb2wdJGE89dGSL/Oe+murvqcnV8upSXVtM2rv
 xCiM1Jd0CiQV8UiUZeLiL+ZhnRSPuZ2AIldHrSkScr+oOh3W7E/LL7i7dl8dMhVbyq9v
 8at8z/r3LXPNPCOVr/7lvbqQTqsfl2MBZGsjmWrJw5EeuaWy2NWxV02q/qDXxr6kQvMp
 SADCUWrYtVve1nMNIIkiJguL6fSl076cDlamoiQ28pi/mU5hfG6qqVbOGaKxUVvPHnQ+
 i2rv5VBJ5yVs42nYTVIGf2UOtnNavyXw7W0/31xgRxokhjjC+Fkyag2lTusR85TUaPY6
 hJ6w==
X-Gm-Message-State: APjAAAXopZLqktibLtmWkucWerwNAnnBsUsYKS5CuaoX8Wr5KkAphKK2
 OdswQMpg2LtiL3zQ8oBrvBA=
X-Google-Smtp-Source: APXvYqxzgTFSZ6oqp6dWOuexRw6nwIAhgLOfYgEFyNAyKcSwm1Rtry4hWg/6bgd0XM2rcSVRYbPuVw==
X-Received: by 2002:a1c:5945:: with SMTP id n66mr2249307wmb.98.1579689949561; 
 Wed, 22 Jan 2020 02:45:49 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:48 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 7/9] crypto: sun8i-ce: increase task list size
Date: Wed, 22 Jan 2020 11:45:26 +0100
Message-Id: <20200122104528.30084-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024550_877700_3EEF40F7 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The CE can handle more than 1 task at once, so this patch increase the size of
the task list up to 8.
For the moment I did not see more gain beyong this value.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 ++--
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index f72346a44e69..e8bf7bf31061 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -321,7 +321,7 @@ static void sun8i_ce_free_chanlist(struct sun8i_ce_dev *ce, int i)
 	while (i >= 0) {
 		crypto_engine_exit(ce->chanlist[i].engine);
 		if (ce->chanlist[i].tl)
-			dma_free_coherent(ce->dev, sizeof(struct ce_task),
+			dma_free_coherent(ce->dev, sizeof(struct ce_task) * MAXTASK,
 					  ce->chanlist[i].tl,
 					  ce->chanlist[i].t_phy);
 		i--;
@@ -356,7 +356,7 @@ static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
 			goto error_engine;
 		}
 		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
-							sizeof(struct ce_task),
+							sizeof(struct ce_task) * MAXTASK,
 							&ce->chanlist[i].t_phy,
 							GFP_KERNEL);
 		if (!ce->chanlist[i].tl) {
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 49507ef2ec63..049b3175d755 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -73,6 +73,7 @@
 #define CE_MAX_CLOCKS 3
 
 #define MAXFLOW 4
+#define MAXTASK 8
 
 /*
  * struct ce_clock - Describe clocks used by sun8i-ce
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
