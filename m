Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01063202408
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 15:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MG3IpEhcWHR4I+d1SaQoBudas/Cp0Nmb+srv0GaorcM=; b=ZnA94kZaLXBDM83yeGrnzvXrDA
	+7qgT7xVLCWyv2bBC+S9yxeugwGrmDcgRFE2dPTqICTrdfjYVB6GG3aE9EETXwCAHQTNwnaZbtKV5
	+xsw0PkBwGf22cIPBsFI5wojdgyZ36VUF4vy0686xVC2qRewOs1w77cV5N9ukCfE0B7PCEqQlQjXL
	sXu6mHUnPu6ENc84jGluQeicfqnwr/AdCpRuDQz3FlT5SBh8dAdcb/GLVLa6HkIQ1Fc46uhe/vU3p
	ijI0Ch6v3J3jcVf3l8XktCQZupT3Rp7//TRu5onZguYQGGrZFpsS3MRP8AgEz3bOarPsrdU0tUuwj
	qooZnODA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmdqP-0003pE-7S; Sat, 20 Jun 2020 13:47:41 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmdpv-0003gi-4i; Sat, 20 Jun 2020 13:47:12 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x93so9955820ede.9;
 Sat, 20 Jun 2020 06:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H2ID2fGwkugGQwDPqZjtWoCLEB9/5e1tlaFputOTEeY=;
 b=pLAUXQfk6RuczjJ8WBsEBqLFtMlXBq44qFmjvrXpUGKLKa405OLXNm0eiuXzFquYLp
 gSDwUJs/+SWrFUCbo+aCO5Xs1jFIYyISGQDkpP4tfJMoo+xklUtD1o3A4UzYeVge4Mke
 QZe/YP7bAjJ3wzVj0fVOYBNaT9cSBa9YrXM9ZYh73BGpN8YsOvJVmQpgsYGl4lyzeMnD
 Ij1rrYTd8mvfVnI7ChQpx8dEgbo8LLyQhusbU9IWQXjGPiFRXtqWnrSyc9lqKurWn8iK
 tNmAtP0anejlEXCwe1ikY8/n8W0l7RQzhyDCqlrm6NGlpL0bTpOUHKCNop9Rq9SD0Q8/
 Un7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H2ID2fGwkugGQwDPqZjtWoCLEB9/5e1tlaFputOTEeY=;
 b=gGYfYAmzRGe4rc2PBRMsd57/zfiLGsgrCMbZL7F44Sf9i8WVGYdNvT0yLaVzCGtDY4
 bfeFOchVMZU9LOGlpVGdCZG34Ugopuo4XWbXts5AFgh0QZKE/eMqFnQ5x3JGJlVgQQVu
 OwIAQvE2BqjjGxR1CvAGG3B68T6f0qSBIaFDBc1ijT0fU+ilHP26xIX0eYumOlMiv/GM
 WES5xucw1zP78F8aiRgzOKYkLlYRwts4/bQ5lfJR/GBIga4vBB+T/5DoaiHPVt6gr3uJ
 Mkx9PZMtckL9xwZxVgXK9xwCB1STnmx6io2ZF5TZl1FVt2VcyRpXn/Q2TmEnzMQcr6Qj
 Ax1A==
X-Gm-Message-State: AOAM5338c+Fd4rhTdZ/8o0YM5EQI3pB1EQ2wg+/ln5KBLvBHInJqKAxj
 PlkcGA2YuVTxWL882PHERc8=
X-Google-Smtp-Source: ABdhPJzCl74SXvEQ4HCzy32o1R7AhFnWNWfGky/p5usTupGOxs2lIGa886Jg3F8fmFR9ibThxbyopg==
X-Received: by 2002:a50:8e16:: with SMTP id 22mr8292214edw.273.1592660828129; 
 Sat, 20 Jun 2020 06:47:08 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s17sm7192368eju.80.2020.06.20.06.47.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jun 2020 06:47:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 1/2] dt-bindings: arm: rockchip: add A95X Z2 description
Date: Sat, 20 Jun 2020 15:46:58 +0200
Message-Id: <20200620134659.4592-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200620134659.4592-1-jbx6244@gmail.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_064711_185749_51BB6CB7 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add A95X Z2 description for a board with rk3318 processor.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d4a404509..3d44b3cf0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -25,6 +25,11 @@ properties:
           - const: vamrs,rock960
           - const: rockchip,rk3399
 
+      - description: A95X Z2
+        items:
+          - const: a95x,z2
+          - const: rockchip,rk3318
+
       - description: Amarula Vyasa RK3288
         items:
           - const: amarula,vyasa-rk3288
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
