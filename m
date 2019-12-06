Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDE4115763
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVy9BTrrLIR1DEcj7P8VahxjDW4mkqL4FlBwmDSH0rk=; b=ggeTi7/Caa6RpU
	HuD/h1+wVNdLz/TZgrGtVAWWeQo4bG+S4FF5EZOUbbLJzOWVwERsH78I5paGJx0aPxYZvnz7YEo+W
	b9q9NMhhVlk0922YJv6sbohm56P7O1gG1it5KblHrJyEEkykDiaRf93MjsuMgFGtk9Pob6wtF1mG1
	YJLmfDzg02uaSX35rJ7bn2dIOo0VxVDws9fI6axF/+PU67yjeX+jPfqIwo0segRPSZ9fZhm/gman2
	D4G+aQEMQeqi4OpfmUKeBoZaZ6TU6C9TVI9ge4kxbA8dVXOM1LxnFPM85eujjqQbXyy1AwxNkNRpk
	364WWx39/Ah1fnHU+tvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIdv-0004iG-Fc; Fri, 06 Dec 2019 18:47:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIch-0003Xp-Sy; Fri, 06 Dec 2019 18:46:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so3081139plp.2;
 Fri, 06 Dec 2019 10:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VCA0Lh1oqn+r4US697iCgjw5AryMojMo8zFhnnjBzkc=;
 b=PURWzZkG47zpj1FwjLfYXS1dTfzPkRvyXRkoXHy4WMu08UWL41Qb9xxBGlC5gQAgXv
 P4D4vkNfq1Yq1ruXHckUDoDSRI5/ZnKMOjxZ4nwt9RUZKytsSz/WFBvhaQsR3ybQ5aj8
 FDPhhTp2l3WuF+HYjLruP66uaikTQCBZ1C6k03mKOEnfVcHuDxAZe9Y/dix6qv1OW94Y
 uzJxt0s46pAsM8/IeDxfD0W9AAfyqUg1zB/Z1xBn9b/O/Q/IYiKQaB0nAtSoAOsyfGpx
 Wx/9zrU5m17uqSzWJlCAlkK+0FEcwt9m8fjkcb9YwJMQVMW8iIBaK5GTar3AIhd7XmRX
 eZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VCA0Lh1oqn+r4US697iCgjw5AryMojMo8zFhnnjBzkc=;
 b=lt95yjnphhGi1jMJ1q4pGBh9jpR2R+jKTcZsKJf0YSK1DSw+17Nfg9pg6JFV7LRQNH
 ImTGSdHJgT/NQZq+6I/4mqgtht3cRKEeJH2G1AmYGIRXNVrHij52ipAt1nDQufMMkmQG
 wquqit3nfJN1O2Pwe5jdIOPtyronSeK9pmOTFqufucxNawaK77LoG6UAju4LzvNB8tvd
 yC1V0/C6jupm0OcGH3C009ied+Yx3/nczZBGFW9sExwjH2L1rnwfNlG+oX/EvDJJ8EwT
 pUjdk2vkTnwP6CPM9qi2mmZLOHNcsTpgd76uSxjd+7DAGOdelzpJrFtLcEuup7ipFIcg
 czgw==
X-Gm-Message-State: APjAAAXTZgvk/igAm3kPs+rKk2xKdcbchz1L/Kudu+mJdsqIcD32D5jF
 f2zjTsr/MHQC9TjkuHlkY44=
X-Google-Smtp-Source: APXvYqwYjvDq6y29Blyu2XOdGiJ7Yu2PVUwlKv8vwV3l85aFyC7d4APbzS9Q+6LsrmLl4BEfRIqYQw==
X-Received: by 2002:a17:90a:e98d:: with SMTP id
 v13mr17397080pjy.107.1575657998981; 
 Fri, 06 Dec 2019 10:46:38 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:38 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 6/8] mfd: rk808: use common syscore for all PMCI for clean
 shutdown
Date: Fri,  6 Dec 2019 18:45:34 +0000
Message-Id: <20191206184536.2507-7-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104640_130241_1DED59E3 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the register_syscore_ops to common location for all PMIC.
Add missing unregister_syscore_ops in rk808_remove function.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 9a7be379946a..54f3999e4948 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -590,7 +590,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -644,6 +643,8 @@ static int rk808_probe(struct i2c_client *client,
 	if (!rk808_i2c_client)
 		rk808_i2c_client = client;
 
+	register_syscore_ops(&rk808_syscore_ops);
+
 	return 0;
 
 err_irq:
@@ -657,6 +658,8 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
+	unregister_syscore_ops(&rk808_syscore_ops);
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
