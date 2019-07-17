Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B276B65A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dKVQX+3Jy5YiuMPM+prj8c7nOjdPTdtLml5hg9HldZQ=; b=B3YTDe/6TBXYQChvK7kwpMVwmZ
	lh2w/4v5wJEklqCA++FJBvKZ4b47ctbjAc1Kh7fn55xq5gIXAtwhOo14gnynnM5CTTd9nUvQU0t6A
	DZs7hMZE/sFrzPK3hvJ+FBaz2p/vJCAnSFTH59XnD2hmgk1TPeQMeHzllcW4BFmzAEqeDxrVLJuN2
	dy4xg6ob1wykY5ZJuvQ/wRewT9nhwZerrYSXe5g/+Ktba4AYux+dlz/frpcf1ANwd44AqJIXqgG22
	H/wPdTNBlEO0IdryLOJiwPmPAYYM1iJHcE454UrAY0OJ96CWD2I/XQSP31szeKg3CUSNDzQBSTwh6
	hf2uu/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndAM-0006t4-QB; Wed, 17 Jul 2019 06:11:50 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnd9h-0006Wu-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:11:12 +0000
Received: by mail-pg1-x532.google.com with SMTP id o13so10597820pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rxjGrJMP1hpxMB6zVTeQy9AZszZ72B624ErR+RAbbCM=;
 b=ZzYceC2OChsPGS2vpmrexEdklm5EoB5tf1aBMFg6jA2ot+XYQR7urjAGkuAjghzku4
 65l51zAlox2SI6SdyenABJDJC8LgCqAUD49JhfC7t7bH9/fKLZIKabhoq9fUct10LV9O
 97AibNE35b4hi9WjZPrDjXnqlYDf67IJPaKvF+L8L8oryM81dk12ebnqyZXJ4FaQs2pj
 SqVIjwlXHiljM9WLoPAApn09WwzojHRNWlGmc36mo9gLQ8wooCOUy1kRBa+00iVDYqpC
 vvbKTPaa0/WVu+Lcl3owMVpKHxUInduj7w6jbB5B9YY0M9CJpcRpLkY883dFgb+cHgSy
 2q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rxjGrJMP1hpxMB6zVTeQy9AZszZ72B624ErR+RAbbCM=;
 b=SraTCxa7g+zPPsLMYJyxM/kMc+U4RRCecSjW7kZYeYwpma6wtaMB+PnNU0sld+CsAU
 D2vI9rKKRU6v+f8S87txyZFLLOygoxXR9p6Jft+rL/MaocxelNYBvtUS2G5BKt9/j5qn
 xaa7LcvDF6TDpJbyz+/ftnNV2bkvDJp4S+lPUXLZ9SyZUZi8KH32FO39BYqw5eBm+HqI
 r/cl7RF6a1jBBypQOlXprNRysTdKOdYkozuOaRe8hVKIFtiMzm3ICadiB3BIzhcO61Jl
 4A331Hf2FQ35XgNc9loIZhSrVv/+AgQNzNrUYH+a5DfZ1/npTFYzVugjMkAo1vJ0YWeE
 Waew==
X-Gm-Message-State: APjAAAWm7XTnhtiMGffW1H557yiZO9Yp/+F9MRPZQyGK8aUtYGJJV+dT
 nFtPwrVrC4K9XCXC+PswFlTF
X-Google-Smtp-Source: APXvYqzXP8tcS4UU5zL6p3U9o3cY9LFJ9E45fr8SnzhLehnihIs217ic/N+BCZP+YeattNw8ToK/Yw==
X-Received: by 2002:a63:4185:: with SMTP id o127mr1301569pga.82.1563343868160; 
 Tue, 16 Jul 2019 23:11:08 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7301:59e6:f493:40df:9c8a:5041])
 by smtp.gmail.com with ESMTPSA id r27sm25993313pgn.25.2019.07.16.23.11.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 23:11:07 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: Document i.MX8QXP AI_ML board binding
Date: Wed, 17 Jul 2019 11:40:38 +0530
Message-Id: <20190717061039.9271-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_231109_457466_CF245C15 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document devicetree binding of i.MX8QXP AI_ML board from Einfochips.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..8e9209a75478 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -180,6 +180,7 @@ properties:
       - description: i.MX8QXP based Boards
         items:
           - enum:
+              - einfochips,imx8qxp-ai_ml  # i.MX8QXP AI_ML Board
               - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
           - const: fsl,imx8qxp
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
