Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB42B91DBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kKq05Mz77+Xlst3b3JSzYOb7F38gBv3YnEuPuj+Os74=; b=RAzQtxxUCqhLbr
	f4J+Lm6EV7AVjl0F7Ij1PqPBe/a1xu0FmYvLc+RUkz5PJ0dAZQPjzlypMLDo5aV1KuYf6FVhGfa9d
	2F40QJjHafpHJL4LlgtxzuRRQognIRNJuNfGUvkAyv/dmEzBgBn5dhwqJlaYv1BV+LX3vu3q0oXpA
	VAepwC16Kq+/tYTmLOKFoRpRP4Ufu1fP9tonfUcfJ16ftV4u6qek+KJiViHTJFyWKd19eeUCEZWz7
	oOODZLRW2v8nWUbdWk2v4ovbDPbl/yEhIV52bvufqx6W/X6ZkqMmQF3VYtASOnq7MdfMqgSVY0Glu
	PQV09VVZuOJyMf9kA0Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc2I-0003Tu-Hy; Mon, 19 Aug 2019 07:25:02 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc25-0003TT-F4
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:24:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id i30so647335pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sEiIl57BH1UnpigrfcmtcS/+u7ss59hzQTNXNLQX8k=;
 b=ebNrBQTm89VrGyszHKb0JXq4atLLs2dVkzh284BbuHTOS6x539wBM0oFTauKN80T5K
 6Dvd22LJ9BaGdROHkLWhXwgsVl/gZXL+4F/869QVCdSnng7W0WAXktMDUQlmCT+TPUx7
 IO/4QNdZe8PJslVc3xCy/DNY9dLCZz9AIBI6s6lelsAmuLC9yeDt8KShhkvI6Qic0Q4h
 TnotgpExho7SKRtl2cflg9LXG/IE31mrSQQXMmWfbfPyRp9vymiuoT9C/at/F40qPTrB
 QRzeQRA0D12TjSobRVRuw6EXbXJdF/Fk1fI33vRxJX0bciQ/0iv43UfcUz3/PAXeLq0M
 hPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sEiIl57BH1UnpigrfcmtcS/+u7ss59hzQTNXNLQX8k=;
 b=I8OdP5xnvLPWwNs6T9JQgURDMznO2cQmfzOyq4fLp1f9qkzW4ESVBX0G4zGlCYd5tl
 EpQn8XwicSxPLJ7HP1zpZAoNB+CDagaXK4ONCevlvD2nPgGOFC3XACn8c1cdBCSNfV8h
 xIXA7pQfNwFO/Ku5T6PacWY+ZvtgCtC9jJUNScbFefpoxc2QlW1TroITjNEbrrCWIiWx
 K0hq4MLRP5C9D22B/9sJ2FmPI0Q/7yzUGYZMxm351AZBXabmlJmf5PRl48yeluwBH8t0
 06o8tNh3eD1/uj8LXHX0U835G2Lp59wYJFHltrUdEFHvx7/WuXEqU5fhO7yG+CRutWsp
 hI6g==
X-Gm-Message-State: APjAAAUiwQLRC9uEmCbz8aHvbGJ++3yP1DxSIgDgPfEYufi8lrks1qiF
 JMaGD2EaUeWYEce19+ngn0Rp18pf
X-Google-Smtp-Source: APXvYqwdNNKfTGcPy3tFR86j9Kv69o3x6r+CjS+JP9c9oRwhwoUTd+0ke6YkZ7cfR8UGQOQ+gm/94Q==
X-Received: by 2002:a62:db86:: with SMTP id
 f128mr22257886pfg.159.1566199488833; 
 Mon, 19 Aug 2019 00:24:48 -0700 (PDT)
Received: from localhost.localdomain ([110.225.16.165])
 by smtp.gmail.com with ESMTPSA id u3sm11064496pjn.5.2019.08.19.00.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 00:24:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: patrice.chotard@st.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH 1/2] usb: dwc3: st: Add of_node_put() before return in probe
 function
Date: Mon, 19 Aug 2019 12:54:35 +0530
Message-Id: <20190819072436.31402-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002449_508100_F69EE22B 
X-CRM114-Status: GOOD (  13.41  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The local variable child in the function st_dwc3_probe takes the return
value of of_get_child_by_name, which gets a node and does not put it. If
the function returns without releasing child, this could cause a memory
error. Hence put child as soon as there is no more use for it. Also
create a new label, err_node_put, just before label undo_softreset; so
that err_node_put puts child. In between initialisation of child and its
first put, modify all statements that go to undo_softreset to now go to
err_node_put instead, from where they can fall through to
undo_softreset.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/usb/dwc3/dwc3-st.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-st.c b/drivers/usb/dwc3/dwc3-st.c
index 16081383c401..6f52c749cd58 100644
--- a/drivers/usb/dwc3/dwc3-st.c
+++ b/drivers/usb/dwc3/dwc3-st.c
@@ -255,24 +255,25 @@ static int st_dwc3_probe(struct platform_device *pdev)
 	if (!child) {
 		dev_err(&pdev->dev, "failed to find dwc3 core node\n");
 		ret = -ENODEV;
-		goto undo_softreset;
+		goto err_node_put;
 	}
 
 	/* Allocate and initialize the core */
 	ret = of_platform_populate(node, NULL, NULL, dev);
 	if (ret) {
 		dev_err(dev, "failed to add dwc3 core\n");
-		goto undo_softreset;
+		goto err_node_put;
 	}
 
 	child_pdev = of_find_device_by_node(child);
 	if (!child_pdev) {
 		dev_err(dev, "failed to find dwc3 core device\n");
 		ret = -ENODEV;
-		goto undo_softreset;
+		goto err_node_put;
 	}
 
 	dwc3_data->dr_mode = usb_get_dr_mode(&child_pdev->dev);
+	of_node_put(child);
 
 	/*
 	 * Configure the USB port as device or host according to the static
@@ -292,6 +293,8 @@ static int st_dwc3_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, dwc3_data);
 	return 0;
 
+err_node_put:
+	of_node_put(child);
 undo_softreset:
 	reset_control_assert(dwc3_data->rstc_rst);
 undo_powerdown:
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
