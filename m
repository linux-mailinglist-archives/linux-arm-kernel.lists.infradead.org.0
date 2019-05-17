Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A521C00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKV1/g2WAA/amDiGjmjdvtagrmvschf2h9CraraLzNc=; b=BCasYiKkCEJRwD
	YdGJDTXP3WHBa1pKS17Vbq2nYqKm6V4bq6iBL8WjYfEyHwUZUdetSoXcWwZ8+lEqBS2RY9CMFkKPC
	IvmDbtiQAl9ujNsYyP6i0yxAX2+o/MhDJy0A9O+OlP+nOtuFMUOUkCFUBz0dttJeXOHlXpF0CDz/+
	Ja99Wnmf7k7++v9v7Dj7gY4HKt1zk+I50pN+SHU/U63GGBSn4o236iNCJY4+FoG1heeWYYwWL31Oc
	9UXOD8RjTLHc/bofmxmyZQPP2M5iiXYMfzpMVNm/h3UoHA9vebkk+DcunMifBRo0kgRnSZ2tHZnGc
	33oiQo11HtNePdclDtbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg2P-000061-I1; Fri, 17 May 2019 16:48:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1T-0007UG-ST
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id g5so3608307plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O42F5A4GX0eA84yy8Ef+AkKPQRwJmwFWVhtyExm+PVY=;
 b=PYP/b3+x4BUW2tXl5EeWPVhQ2Ydr9f0XlD8JFJZdeKuWGUm9x2gBEwCIanOv3mBLby
 T3lJRIqhz+aMnbrOABRtKWxma2+WZvjeN4x+PFt3loQXcwqG8h15GMZTzENSWae+cGEi
 HfbFUHK/8IaOWGApHdEcikH6nKx9xsnyyafPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O42F5A4GX0eA84yy8Ef+AkKPQRwJmwFWVhtyExm+PVY=;
 b=Q9Asx1TDQHpdCnqN6cpMhUoKcyJ12oy7Ic0B49KntDk45hMdoq2O3gnudDv7v4k430
 NtbuKSyVJZuxdVCOqH8WARFtWhHhRcrrGk4IUUtwBtHmBYQfMXMePEuHqMiCaFKN7W0W
 lAjwkOik+OPO38lk2HPFN+fGjUD2Ih7TXVy+1EOD9PrZh4pyAYtHXTbMNJDa3PKE6mZ5
 fgwTRn4HC0rLjXOD4arTSzzUmIRlVi6qWufOXeek2M95RvC8FdwIs84Vo0ArpGRKr8gt
 9oMImrSlfEnMzU04OoimyYlqAVKwjqaJ6iAQeaI3lg215JmbIog6OorTYmq1EFQSePBD
 hjAQ==
X-Gm-Message-State: APjAAAXx9GfAH/NunPiBdeYsJKJCc+65YUK5i17TC16NdExG8avkor3t
 uzrtpjpbueXn9tywC6tx9fZ/ig==
X-Google-Smtp-Source: APXvYqz5grEEF0O5CgARwN/Kl3T5APmZtPmXKSBTqLDuepRs1NbjLFpphhsqHJa3rK39CAOOKrQTJA==
X-Received: by 2002:a17:902:968b:: with SMTP id
 n11mr57741397plp.118.1558111675502; 
 Fri, 17 May 2019 09:47:55 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:55 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 5/5] soc: qcom: cmd-db: Map with read-only mappings
Date: Fri, 17 May 2019 09:47:46 -0700
Message-Id: <20190517164746.110786-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094756_128841_7C59FF84 
X-CRM114-Status: GOOD (  14.98  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The command DB is read-only already to the kernel because everything is
const marked once we map it. Let's go one step further and try to map
the memory as read-only in the page tables. This should make it harder
for random code to corrupt the database and change the contents.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/soc/qcom/cmd-db.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
index 10a34d26b753..6365e8260282 100644
--- a/drivers/soc/qcom/cmd-db.c
+++ b/drivers/soc/qcom/cmd-db.c
@@ -240,7 +240,8 @@ static int cmd_db_dev_probe(struct platform_device *pdev)
 {
 	int ret = 0;
 
-	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
+	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev,
+						   MEMREMAP_RO | MEMREMAP_WB);
 	if (IS_ERR(cmd_db_header)) {
 		ret = PTR_ERR(cmd_db_header);
 		cmd_db_header = NULL;
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
