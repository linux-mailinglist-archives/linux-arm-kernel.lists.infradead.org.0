Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90E563A1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+I9XFnV/O35JONCqhDYSHDOMZWpD0m4pV6d571wVn38=; b=A3sZ9hyxQwO3DJ
	CEnxu2IrndPffLxFb+S27Gr5K609VWo3o9xQcyjF9l1TfaAv5CWbFspZwhlXe/qY0MCAXVl3YGxjC
	945MMBbaxSjavsebPQyrP9xeMFf3MSd78Os5Ptc6R9qH7CVTI8cf0Km87aqH7/5T/xCtmtAn8mRqL
	d+cu7bEFHDjYLMhfSNMWTU1au4YyILptJZwyRAQ/CJCqMaqsAQi5newGxUP39j2yw52MATDAez+i2
	uS8p10Y+UblyuTonqPlzh/EFLYc2zZb7PhqjJYCGXlfeBV8RQ3dvkcDiq74sLnHLucLbGRDgL8FLQ
	UaUNX2brPHIheoYZYO8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktrh-0004qL-B4; Tue, 09 Jul 2019 17:25:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktrX-0004Wo-Cu; Tue, 09 Jul 2019 17:25:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so9305660pgi.6;
 Tue, 09 Jul 2019 10:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XOGAmvM9zKXLd7snltlz7p/GLyc46ilwqyDiqBZzWE=;
 b=ZLgjzz1KVtsioZuBLGHb69PORJxE1ZDIz2hO09tJG4HqTHrd8gzEE3+lBInpEOP++z
 uWXBvyAa04SdBddiZOory6OjM1PGsck6p98eR/nYwISlHFYOUKaqfdGtcqcfCFeJjpjU
 Ve/4+JwO8UVKInXVoFSx9Eb7QPSuYiDShZJw6Wfn/mGj3FpzEndERMAii85VmO3G5wT9
 ethTL/4vSVyLBYSm0erbJdtDfxdV86tEvJACtX/7R7Z4tsYpv6aRei5tDN2a+MQB8C4y
 XYRC7dy6PPRUNUfxdjbaIt9y8nPfEFq19acGb/lXTVoFbDkpaunwFAEiIfkdQ4QAaus0
 KE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+XOGAmvM9zKXLd7snltlz7p/GLyc46ilwqyDiqBZzWE=;
 b=bEfBCvhfdUh5wmX1OgvDipNDn1zmZiuIs8cgQIn0A2aTaf4+cBTyJO39cuRnnQZqT5
 mBxgK3c7/zp4SX2bfhKiTDdcPaNH7qUE5xD9m4akgmrPmvzeGNGsMB98VgWLmZAOLQvB
 BYPKY4YZNnJuDIqtpD+LZocgxwUtk0402z3wksxaZD2xvtd9zxScsTo2MkwYkiAlzQDD
 ZdALOO4D9kLs/sk1RgapYQfRLInwf5j3m744TvMVNtZfyjHGz5Sk4w+SFE5nFu7MzeIM
 zskI2frejGzKcOKQLAicIEzKBGeOnXDfs/4MdmHjoaXRFzv5xrzB/99dQNilQ+fdopm8
 oDWw==
X-Gm-Message-State: APjAAAXV5u37lQueWKvezYHR0cvDta181HSZvDT7iAnQ1sW2aO+2Llzz
 eqo7km4BzRCAnZjkFJZ+03I=
X-Google-Smtp-Source: APXvYqwLXsIz8247u+t2R6KRU6rsLxmsDMUTOhViknbtHjRrTGKfJhgq0XtVYDXMIgsn6RwRsAnqoA==
X-Received: by 2002:a17:90a:32ed:: with SMTP id
 l100mr1308051pjb.11.1562693106952; 
 Tue, 09 Jul 2019 10:25:06 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id 97sm4011201pjz.12.2019.07.09.10.25.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:25:06 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: minghsiu.tsai@mediatek.com, houlong.wei@mediatek.com,
 andrew-ct.chen@mediatek.com, mchehab@kernel.org, matthias.bgg@gmail.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] media: platform: mtk-mdp: mtk_mdp_core: Add of_node_put()
 before goto
Date: Tue,  9 Jul 2019 22:54:54 +0530
Message-Id: <20190709172454.13648-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_102507_450245_FABAAE4E 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
the case of a goto from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the goto in two
places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index fc9faec85edb..d0a3f06ad83d 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -145,13 +145,16 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 		if (!comp) {
 			ret = -ENOMEM;
+			of_node_put(node);
 			goto err_comp;
 		}
 		mdp->comp[comp_id] = comp;
 
 		ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
-		if (ret)
+		if (ret) {
+			of_node_put(node);
 			goto err_comp;
+		}
 	}
 
 	mdp->job_wq = create_singlethread_workqueue(MTK_MDP_MODULE_NAME);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
