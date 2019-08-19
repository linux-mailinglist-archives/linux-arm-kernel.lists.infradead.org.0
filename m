Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E365191DC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BoVWLKFa8tmNLpU/tnXk2MZtFr9vg1b05w2l02RWqGg=; b=Uo98LqWcxAWEyk
	tsGmVF32xmkQqxlla9HlwJ0T8ldgjVLXATpHqV5gU+Efntv3//3uBLS9bT57qlceeVCUGgnPGwv6f
	fPHjj1A5sIi1xC78A1LFGbOL9qz7iXEcNJ+9LciKH9WiYSPZBqO3alpYgEloylX9QinFZK6Aj7FHr
	tivXRGmd2LdAgOLPMms8QeDFaXF6bReo2dPw/mEy3ibFzUA55drYjv3lw0MoRA/lHrUIsCiUkDNsS
	P+Y5qi8wZpfkyG5Y6/xVXf/hPq7M9qeU1rJ+emyFpOPvtlIPNzKClk7XRvBtcAsfIX6WPPGIEZeml
	r6ne62T9MYXdC4KrQ4ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc3Z-0005vP-6o; Mon, 19 Aug 2019 07:26:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc3L-0005v2-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:26:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so537917plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ASzfI5O2O0aWIzLNo8xD65QuwOFz+BCrJzy7+F0X8Ww=;
 b=ci9rammUMjyOze+UXBOsKzZwtnQCYe4FoN8pe6vwjr40IWJ9pIV9m3XXtK8v1hhbGH
 69cv6JyKSj8cvqso3/yQdy+HatDG6s24gEbMTZBYUuUcjuUAJlxlCwe7PbRs1tp/gf9t
 6MK1FL8RLYFc/r9LJ+AI27peSPcGGKa9JlZBMQ+NFCA9rRKBrV5aymABGl3JjNuvqlvx
 f6aHj3iXexDx3lXvJjK7+O8Tpb1yLHybtVvr5ksF4xfhfXRURyHa5iFeLvvDpW/MZkln
 YZFiWL/sxh5vjsckWRs3hHwFDtrwF9zKuEI5weF3feC3HlbftI68fxlSwp1ODIxEN7dw
 Zg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ASzfI5O2O0aWIzLNo8xD65QuwOFz+BCrJzy7+F0X8Ww=;
 b=MfNy4cJogAkEBmGB/RadRyk2h+WLXgb2qqyhRLvHiqIH33FL/5NY9vMb1U6zpEPwC7
 sFB1crJL3q15dROHXdAMoI2+nphvYsfRB28VMR1XbmDfKdVtvG50+ibCrcjqWCN2Zpux
 ptnIYjijQZd7zLa1rcfpipwwCv9ISy4sQm58J9YEWGWk7cBf18ulJgEyjZ2hT/7SQhN/
 mJDZhBNWuQY66xpASs5QYan1YmQG/LwlfwkO8nNhs2S5fNd8kdVApmcnuSPPIYb/OJXB
 YhzEdvyZ8fQWSlA89wiJYZfCMBhy4QW4F9RM2rDDUD7cbGDjqwTVCaR1p5BPhtI2K1Hv
 pVdA==
X-Gm-Message-State: APjAAAXN2wJ5IhvcbLyjQtzw5T+pLPuID1eQFXZHlMeXOQCXluE6SQI/
 7o0KhqSLxsA/1j4MCUO+LJ0=
X-Google-Smtp-Source: APXvYqwy7mYs6DlMVHYPVsq+Q6t3f4vuDfDFsrMTgxwx051CaK+bm48qy/KOljcXfPe2nLVkJ8o6SQ==
X-Received: by 2002:a17:902:8e8b:: with SMTP id
 bg11mr19754178plb.93.1566199567038; 
 Mon, 19 Aug 2019 00:26:07 -0700 (PDT)
Received: from localhost.localdomain ([110.225.16.165])
 by smtp.gmail.com with ESMTPSA id q33sm11395493pja.29.2019.08.19.00.26.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 00:26:06 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: agross@kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH] usb: dwc3: qcom: Add of_node_put() before return in register
 function
Date: Mon, 19 Aug 2019 12:55:55 +0530
Message-Id: <20190819072555.31568-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002607_442681_558A281D 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The variable dwc3_np in the function dwc3_qcom_of_register_core takes the
value returned by of_get_child_by_name, which gets a node but does not
put it. This may cause a memory leak. Hence create a new label,
err_node_put, that puts dwc3_np and returns the required value, and
modify two return statements to instead save the required return value
in existing variable ret and then point to this label.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 261af9e38ddd..227f4fee184a 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -528,16 +528,19 @@ static int dwc3_qcom_of_register_core(struct platform_device *pdev)
 	ret = of_platform_populate(np, NULL, NULL, dev);
 	if (ret) {
 		dev_err(dev, "failed to register dwc3 core - %d\n", ret);
-		return ret;
+		goto err_node_put;
 	}
 
 	qcom->dwc3 = of_find_device_by_node(dwc3_np);
 	if (!qcom->dwc3) {
 		dev_err(dev, "failed to get dwc3 platform device\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto err_node_put;
 	}
 
-	return 0;
+err_node_put:
+	of_node_put(dwc3_np);
+	return ret;
 }
 
 static const struct dwc3_acpi_pdata sdm845_acpi_pdata = {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
