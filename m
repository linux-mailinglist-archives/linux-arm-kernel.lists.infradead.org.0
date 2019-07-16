Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A96A1E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 07:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tNd4BvSmFdGFPK4IYPztDOik1l3+4QymKuRJTZ1TdPs=; b=SVle+JQ+LQje8v
	ZYThBeyhq5wSBGN6rTru3VcJWb+d9IxwnsHULwya/+U0PSCIKU0i2a7L4JzbQP+r/UWcw6cN31mfS
	8hxpl7EQq17mluy0gHld725LKGCAa4cdx9SWd3rV3sc0bMOudCo0WiFk3xNR8ZXHpMFQbmLcuR04n
	9jB+yNlnpUeproRebE9u7MEFSVsdvhLR34AI5qMkIpXDEDmHrJjJrm/QM4mCROmgSFJ4PU9fPT3mm
	/dyut3ZoxQ5wIdgYpvw7aFvlu+EsKYy/2tt62zwXfM5FfxSanzoTj3KNTGdeQfZqbvL2FtB9qY4eh
	TkTjSfDPKLrv4Sa9TeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGAz-0002Lh-Bd; Tue, 16 Jul 2019 05:38:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGAo-0002Ky-27
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 05:38:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so8528959pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 22:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dkDvJESbfgarF5psH5TI9KfGPlZBY5Pvyob+Ly4gKF8=;
 b=o1wZbqSpkuQBVBsXUFfptyzSKhzuaZmxcFFIoWCXB/xynZ5BVwDkmj6etKX8HHtnLk
 OhR8Nuory5f3D0SCk7V9A/rb3VpoF49qI0OHhkSQ1z+yVXVEEVJT2PJ1Q7VVznXaQBbO
 qgCwerr5jIeXOxISQoJlT2muWTKVXzXYXWL44sMQG1T4zXEU9bBnBlY1ULHT5DNtdZFT
 KQ6qp6lO6+70Z08oJm+ipg5ry/kI0ukjiRHiA9WAKhu1PlohST8mvYzUhYcpSA6WlmqX
 EA6w7LUyY6o7dCCF8KwrrvldyH4c3d/uJDZteKBYrO0ahiQwkDhNrkxCBG5mvMcfmPTf
 nmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dkDvJESbfgarF5psH5TI9KfGPlZBY5Pvyob+Ly4gKF8=;
 b=tQVvqtNlsLaENWYqoFv/G3lSP7mCA70mvpi5NY7axoGrNm5oZrLI0Rfalu8uGocibj
 L1KKcU6Si/rSS9MTwnN9ATr7QfNDtJpH3DKlMI6BszE700fEZlQSxKRE3caS2xSemCJW
 Vi/+gihd7E8zFYBG2YQ9+V69MzN7hU2G5rv/5sFehaXi35xawdZGYCrfPRnnVnh8a5xM
 FlmRfYfYGHDioAYrsUImkrUbcO3fNHc5nDnRwv3VVGpxs6pmNHMwItbBnWxWUkTsSPb7
 t/5GSHVS1lZ9aQK4+vVJ+BnmFE41Uiv69tfzviBKhWUzO/t33XghAuO3qmW68mCmMhs/
 m1JA==
X-Gm-Message-State: APjAAAVc9i3GgVm4rxTKDvdR5DSZoCRTtcDTupzUgvqKVtc9G0ZV22IK
 oYhaSjHCpq0la71xQN1JeoY=
X-Google-Smtp-Source: APXvYqz29Kt/DIaEzG6cZYr8hZNUNgfuMYgQvzVP23DdS0M9Uhhi4hD3xTJFEKv4Lg9FdY/yuZI/PQ==
X-Received: by 2002:a65:4509:: with SMTP id n9mr15786941pgq.133.1563255524645; 
 Mon, 15 Jul 2019 22:38:44 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id v27sm22866779pgn.76.2019.07.15.22.38.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:38:44 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: patrice.chotard@st.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: [PATCH] media: platform: sti: c8sectpfe: core: Add of_node_put() at
 goto
Date: Tue, 16 Jul 2019 11:08:31 +0530
Message-Id: <20190716053831.2613-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_223846_105422_2A343687 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a goto from the middle of the loop, there is no put, thus
causing a memory leak. Hence add a new label that puts the last used
node, and edit the goto statements in the middle of the loop to first go
to the new label.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../platform/sti/c8sectpfe/c8sectpfe-core.c    | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
index 3c05b3dc49ec..85ab20492c2d 100644
--- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
+++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-core.c
@@ -771,7 +771,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 
 		if (!fei->channel_data[index]) {
 			ret = -ENOMEM;
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		tsin = fei->channel_data[index];
@@ -781,7 +781,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 		ret = of_property_read_u32(child, "tsin-num", &tsin->tsin_id);
 		if (ret) {
 			dev_err(&pdev->dev, "No tsin_num found\n");
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		/* sanity check value */
@@ -790,7 +790,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 				"tsin-num %d specified greater than number\n\tof input block hw in SoC! (%d)",
 				tsin->tsin_id, fei->hw_stats.num_ib);
 			ret = -EINVAL;
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		tsin->invert_ts_clk = of_property_read_bool(child,
@@ -806,14 +806,14 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 					&tsin->dvb_card);
 		if (ret) {
 			dev_err(&pdev->dev, "No dvb-card found\n");
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		i2c_bus = of_parse_phandle(child, "i2c-bus", 0);
 		if (!i2c_bus) {
 			dev_err(&pdev->dev, "No i2c-bus found\n");
 			ret = -ENODEV;
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 		tsin->i2c_adapter =
 			of_find_i2c_adapter_by_node(i2c_bus);
@@ -821,7 +821,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev, "No i2c adapter found\n");
 			of_node_put(i2c_bus);
 			ret = -ENODEV;
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 		of_node_put(i2c_bus);
 
@@ -832,7 +832,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 			dev_err(dev,
 				"reset gpio for tsin%d not valid (gpio=%d)\n",
 				tsin->tsin_id, tsin->rst_gpio);
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		ret = devm_gpio_request_one(dev, tsin->rst_gpio,
@@ -840,7 +840,7 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 		if (ret && ret != -EBUSY) {
 			dev_err(dev, "Can't request tsin%d reset gpio\n"
 				, fei->channel_data[index]->tsin_id);
-			goto err_clk_disable;
+			goto err_node_put;
 		}
 
 		if (!ret) {
@@ -883,6 +883,8 @@ static int c8sectpfe_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_node_put:
+	of_node_put(child);
 err_clk_disable:
 	clk_disable_unprepare(fei->c8sectpfeclk);
 	return ret;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
