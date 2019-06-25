Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04D05551C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0Sj6hjavldAn4EaegqpcP6dQKKZJJwQl0o6XQO0kKY=; b=TzLqamEkn9ki2s
	fTK18WOdmFeGDwsrEwo8syRogf9qiVm500Zs0ljFqUmAP1Qlo3RPZSyUGYTPj13fgD3qZfJixHqQp
	nnV5Nex/fDBbOcyPpgWc1XXegzHrDjvrj2EOtj3ABMoBxfy/DWFGlARVmj2Qr+/YjDMWvTMT1wPJO
	N1FOypwEDoBQZCiOzmiHbT1ho6yN8fUXuUkIcYq8RQqG2stUsuS+cIbeLwWkmN1SGF4kTjNXEvaEM
	ZCJ1Od3H0KmhzZkn6OxRNDGR+8Gjg9JSB8LenQEACt82+cJ/l/ErkDC7NznwGvTrFgVKlgV/ch0q8
	YeolOcWlCPsudy6ySTBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfodp-0003vp-5N; Tue, 25 Jun 2019 16:49:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobg-0002EK-3m
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so17474027wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bWqeg/uRBmP4v1S0mrfdgUlh6T/cak+6t6geY/+2zUc=;
 b=unkd+FMrbJN9AzanjOJ4wpmc5HlH/ET5TudwrnAvOcWYz1FhJuNWwwXVCCo/y84G6i
 nH2bHVyL1b8OXnBdWWvQ9MPcfVs/5S5DYUf7iCUuZS47RVYNIleEcEDKbEsYWLMeLJ6e
 TLKLP7ZrGuZSCTyJbu20xIi0iuhnhI4FBK6EYE/Os57yaBo1IYfBAiv9pUjyFW/4j6Q2
 rpsOjD52BAjQRBC4//y1jisx8bzNWSTn0Xf52FSCHwQHBaHwrjO82XvDAsHMtRvJpfDn
 9iuwnV+CGdKw0aqvwaspbpSaq14/rrZ3eqD1COJr+X3VxcezUlVryu0Eo02Tqu9s5TrR
 DbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bWqeg/uRBmP4v1S0mrfdgUlh6T/cak+6t6geY/+2zUc=;
 b=PSKN0yJvAnwciExV/hrAoOZJpCfTYjbZTtp8oFVEBZ5riN15BtgkeDP3whT6IXmqiu
 LhMmWFZHbnhpDLpWupb4qYNh/EUbRaH0vt1i3c+pf/lB4fp2UcvFmu+HS9Wzzop+yTBC
 u9qyOqb8h7iDGR1+IGFSZwrqW8JbHChJZ0FpRMUkLDDfHKS0NV97tUcZbKyGiiaG2cFx
 Xvf6OWByIexGVuEsN0eSpw/0GCVGMuUfvUXHnMKYJR1Rr9VDfcEEYwE9087KZ3fRLP2J
 xipwamMY+fF3yVChvx0KwkX/vEAa7Gu7PB5/PyCvq+sXdjMCWgMGE+1EJUCd30NEKeq0
 Qrlw==
X-Gm-Message-State: APjAAAXamaccYaeVFMTsN3+qOOOeCvXeCVs8S+0r07sbfcI4GUuzB4Th
 +YUJFGd7NBq8vmHHX9QRXDiRNg==
X-Google-Smtp-Source: APXvYqy6K2OKJaRWYw2cM2myPOUo982DJCOgC+HO5QqOBSGkx5aQTFdQWGebuD8lsFMVewG0rHya+Q==
X-Received: by 2002:adf:f948:: with SMTP id q8mr17100963wrr.196.1561481262770; 
 Tue, 25 Jun 2019 09:47:42 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:42 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 03/14] mbox: qcom: replace integer with valid macro
Date: Tue, 25 Jun 2019 18:47:22 +0200
Message-Id: <20190625164733.11091-4-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094744_158888_7C76D673 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct macro when registering the platform device.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index a05dc3aabac7..c8088e9caf02 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -97,7 +97,7 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 
 	apcs->clk = platform_device_register_data(&pdev->dev,
 						  "qcom-apcs-msm8916-clk",
-						  -1, NULL, 0);
+						  PLATFORM_DEVID_NONE, NULL, 0);
 	if (IS_ERR(apcs->clk))
 		dev_err(&pdev->dev, "failed to register APCS clk\n");
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
