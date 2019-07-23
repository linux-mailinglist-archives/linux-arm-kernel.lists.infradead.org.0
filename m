Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD6871633
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MgkrgIRlmfTYLPwYpZr4h7xy9CS2e9OsJZrtIrS+B0=; b=e6muJC4HK50+yC
	taN0gpBrSjlCjhxuPyDCvUq1XsJ2lic6wvNXVKQNP2EVvHiAjqM7oLdMLsy4KeI+9Lvz06yjxv4jW
	pj303OdGSxJieaWRwAlZSZZv09ufGofr2GPPLCe0BSrelC0pC2y3hpfmWjBG4HRnIHWbHgEk5b4QX
	WYC6aevAPnduKCrc/dhUTCI9hhXGqVPzq9FYQEq+ULwqTyuNRIgQM3JnTbicFzr611PNYtoLuGmSe
	64uSx9oC1zwzJ1hhpnY4XgUb28CAJi/viK0tcNi6Yy38asDbYntB9ptmMZ/MuBruPee82m8hVUCjz
	fv2qQBeZ8U7lbggnLAcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hps9s-0005Aw-OR; Tue, 23 Jul 2019 10:36:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hps9G-0005AY-UR
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:36:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so18933998pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 03:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e0k274Ite0iMERdUs3CaRT2A3qlgOURGFE1j4THtpIA=;
 b=XGS1cEqOFmDtAzum9ByWu6rMRd+1Yg/yPTxw/WhFF4CQa6TxMxhXxrCZdzM7kYEdbv
 aGlRkSqR2VJ1nUa8tNg1iFQv6BhA3MDSst/dTnoh5HXeHFSNLAZ8K23eLub4EOq5bmoY
 /Y1/4uzKmGN0HPQAol1zo1Nfq4NaVqjozUNRCbaSxpklCZ/FezxYwn02PWn+qww5Ul65
 6qcIv7bBP9Pg6GEhQnvyFoBkDNg8J+c12nkUGKwLNMWvebBXT7QD/skEogzH6VgrZ1Ee
 XH5B9a4BhFnA7M2Nyzr7lYnsW/HqCmX6rBtlGuwb5rPgsNbCmZ2Il27Oapz0oUjSycQH
 7MWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e0k274Ite0iMERdUs3CaRT2A3qlgOURGFE1j4THtpIA=;
 b=GPprssWjxaYjrXN4cDJ3Itd2EEyLUHyH2e9Yh3VKJ1LbxD1qm6J5hlHeEcnu4xvaH4
 1m79vII2UQB2LaXqk7xfavLc+1Vj8M9px4f3Mx32CXtDq/+VuEo1m8jm3op5k5YDeHfF
 ikRYKN9BtH/cI7uQr3SGp85O8EoscBAzwlNA0bBkaCJLBCUjB9NOLJ9gL9WqOtoplNIz
 88cybTXXIJnndZE9LNEHpg8SIsN8a4uAXnMnPt5mUfsAuqUBtRs2ZREQLbFT4udTlat5
 lrJ79gNI/umJ2WccwM4unvyLIXTS/bpRbd4yPxuAiWKM+LlQe/nGR7VQv/HYmqDl3wvP
 gzMw==
X-Gm-Message-State: APjAAAXrcBP91bIXtsNDEvCj8+snrYiuC1TSMpN6ryoNnqWFnQqP38aZ
 IgXpQyQYCkpsb79M9yZpEhw=
X-Google-Smtp-Source: APXvYqwG3PzdUpTNEhKJKBKQ/nOL0xQw8O03OCR+9tEU4Ozf3dnrfvqxaziOQfWtEOcLagYEQL+z4w==
X-Received: by 2002:a63:1765:: with SMTP id 37mr6921267pgx.447.1563878157756; 
 Tue, 23 Jul 2019 03:35:57 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id h129sm40022315pfb.110.2019.07.23.03.35.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 03:35:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: okaya@kernel.org, agross@kernel.org, vkoul@kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org
Subject: [PATCH] dma: qcom: hidma_mgmt: Add of_node_put() before goto
Date: Tue, 23 Jul 2019 16:05:43 +0530
Message-Id: <20190723103543.7888-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_033559_003592_C37D2AD9 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Each iteration of for_each_available_child_of_node puts the previous
node, but in the case of a goto from the middle of the loop, there is
no put, thus causing a memory leak. Add an of_node_put before the
goto in 4 places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/dma/qcom/hidma_mgmt.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/qcom/hidma_mgmt.c b/drivers/dma/qcom/hidma_mgmt.c
index 3022d66e7a33..209adc6ceabe 100644
--- a/drivers/dma/qcom/hidma_mgmt.c
+++ b/drivers/dma/qcom/hidma_mgmt.c
@@ -362,16 +362,22 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
 		struct platform_device *new_pdev;
 
 		ret = of_address_to_resource(child, 0, &res[0]);
-		if (!ret)
+		if (!ret) {
+			of_node_put(child);
 			goto out;
+		}
 
 		ret = of_address_to_resource(child, 1, &res[1]);
-		if (!ret)
+		if (!ret) {
+			of_node_put(child);
 			goto out;
+		}
 
 		ret = of_irq_to_resource(child, 0, &res[2]);
-		if (ret <= 0)
+		if (ret <= 0) {
+			of_node_put(child);
 			goto out;
+		}
 
 		memset(&pdevinfo, 0, sizeof(pdevinfo));
 		pdevinfo.fwnode = &child->fwnode;
@@ -386,6 +392,7 @@ static int __init hidma_mgmt_of_populate_channels(struct device_node *np)
 		new_pdev = platform_device_register_full(&pdevinfo);
 		if (IS_ERR(new_pdev)) {
 			ret = PTR_ERR(new_pdev);
+			of_node_put(child);
 			goto out;
 		}
 		of_node_get(child);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
