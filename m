Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BC81EC10C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/84+Xzv9wYXjXxsrOfAsHwY4PctCFPoScIapKHvVZQ=; b=MFjkRnjkwfu7Pdxl7LwR10MnqC
	jaDR3RVPMfhtOjzuHXftGRP9JGstnQViIHKY7cq8Kts6u2pM8b3KyTkIlyuJtX7DMHqVYE0lOHioe
	6wkVrMKQXuF9KMWkRWnixhbj1mgf2LQkVX3EyPcMuVowHXGMRmOXpWi8zw7SV4d84oTd1+UwA/60x
	hZGVE4HTOO7rKZp1F5zPwqKNmnwK7+IIcvblajPxnc9UX0AtUsvFoHir1Xk/5N2bq6shVCaXEe7wM
	HBx0ZXwB5dXiOfXozaDI6IfmXK+g/NZvok8RpBk+agM6AghrqVu2E0ytINKsTVnCWnLvP8VPMSWO3
	rp2xk3Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgApw-0001lo-Bt; Tue, 02 Jun 2020 17:36:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgApp-0001lT-4c; Tue, 02 Jun 2020 17:36:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id h185so4374358pfg.2;
 Tue, 02 Jun 2020 10:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Uce1GUg/yeAXqzZgy16vemL5SREKQhoWq++yzE0HX/k=;
 b=Xq2HkgktcbP09b447MRSywQnvS/ELe+9AihIJrcVVuSVUy55gNXjhQr7/8rqMwt0Vq
 Ur9ztyYu7A4/EYgrHVPyu77LTe1Zlfa05TswMKF3CwTmqiOYkbOliwwgbhrf0zFtsU0Q
 95tbh/amSpR5VYzUaZi2b3cXSv4T/gO3azZvbx1uGQp8QzR2aDoQTDkDANhBeVPkU6Tq
 MlEglM6NM/UddT0W/FY5ai/n20C+g6KIWaJThwXeUOaq41/Vrc8nZhYPo2oEXRppjZVC
 6NFNvfrVNyCScTlPkMmGyaVkwyrAUctbo3uRKpVlHnU1ZswKvoBnAqfOA3LgbqUv4ytq
 58ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Uce1GUg/yeAXqzZgy16vemL5SREKQhoWq++yzE0HX/k=;
 b=Oa7MbPYek3qpiGkp6XaU96WmrbiMhlVTfecoJLrlHcM6aCsz+bfWNKv0ov6vJHG6G/
 OCtQs7uaQlPxDoadXUcl5z35YxGluQ0vuL/i1E9Rzsi2xbQTXkU+oZ0qqoIeB98OZpTU
 2U/DA9W3X7awHoTrfs8f9Ai38C0VmrY303iC9zZnId2cREs+m+D4PqC2KjS9V7dCTj5l
 e+q17KGPZMgN/de9NzRQSAvGx7T/9Rva3OMCPpPQjNfHqVjBkYrGSbsOx2QgI+tBYft5
 SFEZ6YRlI/7rHFVEkKXDtXwaLI79FLjjYbQVrYvtWD0aWLyiUq3sUF72IfvwMIRlvtf6
 7ROw==
X-Gm-Message-State: AOAM530oxwNYQ1lS1zesIlLGRykboDjUXObi2iS2wNnjl8VPoULiB8bv
 whPJSFVmVK+ixDRObi/8gUM=
X-Google-Smtp-Source: ABdhPJzojgq3mk4y99SD0KUo/tv5azMA07TY6lAMuLSGuWWXOIsLruARqyvangOgvctSu8ulNVAw2Q==
X-Received: by 2002:aa7:80d0:: with SMTP id a16mr28203334pfn.188.1591119380338; 
 Tue, 02 Jun 2020 10:36:20 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.35.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:36:19 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 sboyd@kernel.org
Subject: [PATCH v3 03/10] clk: actions: Add MMC clock-register reset bits
Date: Tue,  2 Jun 2020 23:03:05 +0530
Message-Id: <1591119192-18538-4-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103621_179091_E4FBAAF9 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds reset bits needed for MMC clock registers present
on Actions S700 SoC.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes from v2:
	* No change.
Changes from v1:
        * No change.
Changes from RFC:
        * No change.
---
 drivers/clk/actions/owl-s700.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/actions/owl-s700.c b/drivers/clk/actions/owl-s700.c
index a2f34d13fb54..cd60eca7727d 100644
--- a/drivers/clk/actions/owl-s700.c
+++ b/drivers/clk/actions/owl-s700.c
@@ -577,6 +577,9 @@ static const struct owl_reset_map s700_resets[] = {
 	[RESET_DSI]	= { CMU_DEVRST0, BIT(2) },
 	[RESET_CSI]	= { CMU_DEVRST0, BIT(13) },
 	[RESET_SI]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_SD0]     = { CMU_DEVRST0, BIT(22) },
+	[RESET_SD1]     = { CMU_DEVRST0, BIT(23) },
+	[RESET_SD2]     = { CMU_DEVRST0, BIT(24) },
 	[RESET_I2C0]	= { CMU_DEVRST1, BIT(0) },
 	[RESET_I2C1]	= { CMU_DEVRST1, BIT(1) },
 	[RESET_I2C2]	= { CMU_DEVRST1, BIT(2) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
