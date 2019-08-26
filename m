Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05C49CCEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FxThMqCWaSyF1aBE7ZpKW1LGjxkal190LUSDydoRGVQ=; b=hDw
	QHM6k0qds4qJkTLgXdj3TzZ4tmPKrLXjJ0wWk6g4rSQ0dzFd+nA1p4/C/psZJQE8WJzY1dlCWNrpv
	FuthnOXlOmVn+n24OO8nPBI+Lu+ckb7upCT9pvsaH4S8mmfwh8FwinRHCpP4z8OOHd1u7EtR1WS6U
	v+XfJ7MiImNygqL7Sk7mmI396yToBBpOnj/Jp4VuFpV++EN78dZ+tVGaLTatlQjG7uy6zzFoURsJR
	z8XRMZ7L7Zxga/TbuTPUeGxm4KHA5TmqY0acLVtSRyIcR/9sbjQB/07oX4QTAaw3Mz4NJZBLLapPb
	VRCmkU+h9az8GF+BBXkUyXY/TPL80aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Bm2-00023f-2Q; Mon, 26 Aug 2019 09:58:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Bls-00023H-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:58:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id d16so15203761wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 02:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AoSobNwrgWG+0xMdeEJoRWL4tyvVfhtrdTcQZJSWFp4=;
 b=rwcggUp0ra5ExtdNoVbiDmiy4Dt53pQpNoPs0MtFGQAo7WakRCplYCMXCOdOCcoqti
 E1673MoIg6Zlm9soxPvMIqmcUItrb0Jj8sPrxbTB7t4Jz4Pf+lFMBVDl02HT9QLWw23J
 xkEt90T+dHcOh38l5gI9UK45g1rw1utnq692Jzkl0vC9b0Mds9GAia+b3v9l1VKAf/6y
 eh9b0ez79hQRecvrw6tABiLy+uq2wcT5Rj75DGTwZcY0JwdNHdD5icxErkJQEO549fUg
 2RgRxtjEydyGTv3AIb5GNYEtCFvJkQDrkoVce7t5d+6rIaNVD6qWEHtbSXghauDokrGV
 JhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AoSobNwrgWG+0xMdeEJoRWL4tyvVfhtrdTcQZJSWFp4=;
 b=OghJWqThAmItauj57Tb+cMJXfrrjgz14fz6jAtfU8p8BnWaQpl8zaAu17lXErYAbhR
 PQ75sIlLpZApAOmG09MrVy7kcOTF/KX5YU8lsqlXPBJgeWe672reVlVncLPj7bnMmYHI
 aKZFlpN8rZaDU3m4uDNh+Q1ZmtcLsKaLENjS5y0HYGehzpH5YLZETSQ0BWwCSM3mw8f9
 ay8hSs/i7TDIICPNZ+BjDbf/4PUeDFfWxcddeyq7O1LFLmk+maVBUoJSUTZRnrNN/wnj
 T9dODeBj/BJKETVjYRG122RiLnNUy6kvWz5kI7zNzmdM0g2FtH++hkDrwszIcnn3daPR
 deyA==
X-Gm-Message-State: APjAAAWdzEFeigQchWCAloMtrl8U68PEcCgbznqP9wh+x+AcE9NvD+T8
 eYqUOIAkrXC8HuqaMjxAM18=
X-Google-Smtp-Source: APXvYqxLWn0nOJw3QcFNjUzjt1itpQYJTgzTtNmSaUiVW/YJLEPS+u/ZdiCopiCpmSdQESeQNyCDbQ==
X-Received: by 2002:a05:600c:114e:: with SMTP id
 z14mr19782960wmz.161.1566813521900; 
 Mon, 26 Aug 2019 02:58:41 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8166:7500:a940:180f:b044:ac12])
 by smtp.gmail.com with ESMTPSA id 24sm11025551wmf.10.2019.08.26.02.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 02:58:41 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: clang-built-linux@googlegroups.com
Subject: [PATCH] bus: imx-weim: remove __init from 2 functions
Date: Mon, 26 Aug 2019 12:58:28 +0300
Message-Id: <20190826095828.8948-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_025844_553214_3A35F349 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ilie.halip[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ilie Halip <ilie.halip@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A previous commit removed __init from weim_probe(), but this attribute is
still present for other functions called from it. Thus, these warnings
are triggered:
    WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
    WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()

Remove the __init attribute from these functions as well, since they
don't seem to be used anywhere else.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: clang-built-linux@googlegroups.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/bus/imx-weim.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 79af0c27f5a3..d82e8c00523d 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
 };
 MODULE_DEVICE_TABLE(of, weim_id_table);
 
-static int __init imx_weim_gpr_setup(struct platform_device *pdev)
+static int imx_weim_gpr_setup(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct property *prop;
@@ -126,7 +126,7 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
 }
 
 /* Parse and set the timing for this device. */
-static int __init weim_timing_setup(struct device *dev,
+static int weim_timing_setup(struct device *dev,
 				    struct device_node *np, void __iomem *base,
 				    const struct imx_weim_devtype *devtype,
 				    struct cs_timing_state *ts)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
