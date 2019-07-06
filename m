Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C275610D0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 15:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ONyimwSzwTeYyz//g2cm0sb2hr0bUT0zU7Z/3DXgPX8=; b=VzSWP6a1wpJ8+l
	vhWYFqCzjovu1Im+afGskmYGlDyJacpaxUN3im3+dYGzvpxWx7bR53cJfa+p2aFbxdWLCu8GAJr6g
	piZ8Q89aLJAZb5O+2lSSs5L0tCDLLOppNyCfp3FcGzd42Ors1SSwfU5f75mk16Q1sbVhip7kjKM9k
	HGF6HgHHMtxulEn8gCZNBXs0q9sXjjDloftHfCjx8be/m1DltujXWiLYdFWBE2qJfsNdAzU3pDaus
	Jf78VezqlFCZCJYIgTZ1CDk+QSxN66NPw92MkglxPsuJyrPU0j/h0iWti99zlqtuPpuNOTrCri0xH
	oHgSSEzgaE65US6LNdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjkm8-0008MR-Qc; Sat, 06 Jul 2019 13:30:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjklx-0008Ln-8W; Sat, 06 Jul 2019 13:30:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so5460807pgl.11;
 Sat, 06 Jul 2019 06:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ut6IeCO94UUbJJFbHPkNN9BlqXZJ9Hk6d+0wH2eLEVU=;
 b=MAt2GM7NCEcrkO3H0T05ygT6Nn6q6eQ8iEBeY7KUf4FyV7cXqevSW41QpUSbOjLmij
 MUQVjQp+Jj0tdismhDEBdVFXrcv0Aao1Eryu5mJ4nylkHtaZMsPDHiA/QQwDkcUIVfoI
 tmscRnDD2vHqSCnmaCahVEYkZcfMb35fZ2tdJWP90CIxpA8/x5Dld9f5dG38EcGXykVu
 vlykA7k2ZcsZHcp1TlaQ7OoX9c0CxIuEm0Ad4bu8mkUtRRBrrwJr4k1toOWk3dtzMrFj
 ruroSybQRd23RDoTtATAiFusLOXeVxdOvsFPWhLAofuD8xgr6LFkdb50BbkDbNqV+F1r
 8RKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ut6IeCO94UUbJJFbHPkNN9BlqXZJ9Hk6d+0wH2eLEVU=;
 b=GmYGAZr+MT8lVZe02GkuepiNZXLpWuzJ41MaexERK7I2dDBnmsefcUM8rGUUTLYbae
 1hTrl8E20P008+xVk4cstKbexW7XobfUDu2rLb+dabRZZHKBPwYwxqjSWZq6Bdj9NhQH
 9fhAxH4pU0XlXyf/K/zZ+lSEdoJAbVkZDBirF3eZMKcoi0sJOsZZqNWoBYrLGPHGIR3Q
 wCvs7ZGrAL+FfKhJGN58zjW7A+AC3x8hXwgdX5wG1XBh8zU//Ozok9TSXHKyE1BHi0WD
 7ZT2Y8SAHDZzb0cYHiatXjwvo8e4clYqyakZ9ancb48lzrE/51xhXiqENSygMDlokE4A
 a9GA==
X-Gm-Message-State: APjAAAVS8Rd0yUeveD062e3ytJrpa7d8X/EWjsxIk89VRZ+u3w/8uHbQ
 ccLAcDOh1qUDi8s0B5w5LRE=
X-Google-Smtp-Source: APXvYqz5aMcqwlQglCOlf2ZKj5MRm4E9DEfSPhzDEheTgbBtCem0FQPO8JmcdQU6AEUnJor5Wa4YPg==
X-Received: by 2002:a63:358a:: with SMTP id c132mr2390181pga.375.1562419834089; 
 Sat, 06 Jul 2019 06:30:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 2sm11494343pff.174.2019.07.06.06.30.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 06:30:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: ck.hu@mediatek.com, p.zabel@pengutronix.de, matthias.bgg@gmail.com,
 airlie@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] gpu: drm: mediatek: mtk_drm_drv.c: Add of_node_put() before
 goto
Date: Sat,  6 Jul 2019 19:00:21 +0530
Message-Id: <20190706133021.3308-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_063037_330988_07CB0014 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Each iteration of for_each_child_of_node puts the previous
node, but in the case of a goto from the middle of the loop, there is
no put, thus causing a memory leak. Hence add an of_node_put before the
goto in two places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 95fdbd0fbcac..2dffbc8c6d73 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -524,12 +524,15 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
 			if (!comp) {
 				ret = -ENOMEM;
+				of_node_put(node);
 				goto err_node;
 			}
 
 			ret = mtk_ddp_comp_init(dev, node, comp, comp_id, NULL);
-			if (ret)
+			if (ret) {
+				of_node_put(node);
 				goto err_node;
+			}
 
 			private->ddp_comp[comp_id] = comp;
 		}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
