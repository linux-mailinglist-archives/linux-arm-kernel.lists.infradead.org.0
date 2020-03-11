Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4192518221F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWcTq7SVaCzN8nEi13FMFs6L/v1sW80FJtHrv4f/Uc4=; b=n5orAP8Kamp0zr
	v8wANXlccLf+kp2d5YO4Gdg3JDyWLfmqGdHoZ7d363oyDwAhVZW535bcQV834AYvLDLfi8YHCEmTg
	/cYeDjAHXvcF9YnJk7A8NT66CbpmMxL+O9Xq5FM4mHWdGZ9a2hnQBF7Stft3mLCFArLH2148IIa/d
	akiVWUQRm2QDft6yiwCgT4h1Zddr8tMVESmBJmIEoPVJ/dKSfLOY3CjiYXfxOG51swrVGEy5uRnrJ
	GI6SGFtPNTpjhWhKLh7DLm2HO8Ob9EH1SWkZ9Yba7nwFgVkUefItPf94FLY+UT9zU9GGfjAgR8QFw
	KzzL2yA4E67KMYQbT16Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6tw-0006YR-2u; Wed, 11 Mar 2020 19:20:20 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6t6-00063K-Rq; Wed, 11 Mar 2020 19:19:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so1545765plo.3;
 Wed, 11 Mar 2020 12:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iN1lIy0/f67JfCi9KU7uh6n3lgkv7oAoZ5NZ3robPh0=;
 b=BfRQMt0ipgIFCsbepxc9l/xVpH3h5JT7quohnIEoWdro74//CquJsdriyla9b7QShh
 xdhsTWb+9hwl8ivWbbOHSq1aRRafUqRVsmh1R6Y0L5NZuukW/PvO/p81LYdadlpHmfPr
 3fnhkVIi6b5tCbqP534B/yAnACgpkdWA8GZpXzMMerkdn+wN1Cio3sYXjP3FwGj0mp9K
 SfnpSzxn4zW1Mk5XGUvc3b+PWSrQOU2Ct2eQnaifytiDdyzu1F5MMTpbTMthiWYkF9ZR
 hwXA0ViLm+Uw4fIAWd2KBIPc6SiX0DWe2CFpr9qpPwvViXhLGUlw3ZRRnXKWakd2PtCl
 rzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iN1lIy0/f67JfCi9KU7uh6n3lgkv7oAoZ5NZ3robPh0=;
 b=YY8blDgGWyY2WBjJgNSYlZHxDurPWMPCEQ88zWiHIIzZ3DODAcjDLr+3o90izESKQd
 EetseEdgEJKDZKJ/KMQs9aGEiWe5kcCwQW80AzrYQZNVv9UhP+ct5GWTrTDPxvyp6BVd
 o8hPyVvxZq/kUob/BZ+fZwcYpf35vbutpx9YimBGttPWJCjtuPCYE4EXTDPYzjuqLz82
 L+DQB98i2oxHOZdw+YB1Gh8+KKhcQ/jB0tnsnxL6UGQGxImy6kRE1Jol/PAKEb6GqFNv
 DgkHGLNw6cM+UOYT8RXDCNtVw3uxzhzGevQRIWbF5cL6+C/wBpvgWqhvvU3dRbjLM5RP
 G6kA==
X-Gm-Message-State: ANhLgQ1CyWRC5x4QFRVlNkmbp7yOi6jnrC6566iA7eT050s1HceRpXH5
 sgx0rDP9vL8co66E3o2MS8I=
X-Google-Smtp-Source: ADFU+vut3MyakqoUhMIetlzMKR/p4VXgaNSrjQMPOpcFkSKePWWm++E+Uy2ID9u1cYMxZFT24UeMyQ==
X-Received: by 2002:a17:90a:d593:: with SMTP id
 v19mr200036pju.177.1583954365043; 
 Wed, 11 Mar 2020 12:19:25 -0700 (PDT)
Received: from localhost.localdomain ([103.46.201.94])
 by smtp.gmail.com with ESMTPSA id z17sm3792673pff.12.2020.03.11.12.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:19:24 -0700 (PDT)
From: Aman Sharma <amanharitsh123@gmail.com>
To: 
Subject: [PATCH 2/5] pci: added check for return value of platform_get_irq
Date: Thu, 12 Mar 2020 00:49:03 +0530
Message-Id: <53b57606d7bc2615a43b1d5159200dba0435af6d.1583952276.git.amanharitsh123@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583952275.git.amanharitsh123@gmail.com>
References: <cover.1583952275.git.amanharitsh123@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_121928_939059_EA8AE0F1 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amanharitsh123[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amanharitsh123[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, amanharitsh123@gmail.com,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Aman Sharma <amanharitsh123@gmail.com>
---
 drivers/pci/controller/pci-aardvark.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 2a20b649f40c..40a4257f0df1 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -973,6 +973,9 @@ static int advk_pcie_probe(struct platform_device *pdev)
 		return PTR_ERR(pcie->base);
 
 	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
 	ret = devm_request_irq(dev, irq, advk_pcie_irq_handler,
 			       IRQF_SHARED | IRQF_NO_THREAD, "advk-pcie",
 			       pcie);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
