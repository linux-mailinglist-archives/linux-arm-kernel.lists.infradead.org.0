Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CADE1F8BEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 02:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ooHv+tc6nYEJfcWgm5V/Ry926WTQhIEip+zEhmv5rc=; b=kf5TMUIAEQP0+q
	vxFji19SxD7vqPwBE7RFk93Bwo5QZZ+V1gAM9X935oOPpJgUIpN8L6bSMPXnsn42sD9vmXkzefzdz
	6CUwAVUK59Apaoge0UB+C8AKATC+IFcRoFIjatPnkvFtYCjlmD+BOfI+vHwWLVB+96b/8pFtIg+R/
	+QhLDXEhUoqZdxsod0CGOd1G1Ql6C7PfGZ+eaAVIaYDG2funYRcu9EJyHjszOLhsJCAA9b9Fvsn7i
	f9yZAYk7gsln02CE/hyzhPc02aS0J31OZtUElY5PEI05ug3zcW6WqRA5X+aVVgqH/4g+3sv6xkGld
	m7K9JUr5ZR8/7xG90/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkcqj-0005cM-6k; Mon, 15 Jun 2020 00:19:41 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkcqL-0005Pe-Go
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 00:19:18 +0000
Received: by mail-ej1-x62d.google.com with SMTP id dr13so15511769ejc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 17:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=79mtyeZRq2M0mbofzOHg0zNB78sTVjll89dsFzzw1/A=;
 b=NHpYiO0pJV/aIO/FAwrExUQ0w2HuXfi6XgL9WspR+elldDdqxgXm2xWfHM8w6/vb6Q
 7FJu91sbuk7hjeb0I3TzkkOJz+KUJ0GDpJvVngCm/D3UNV2DaKq6d+vAV6XSU0r5NmgM
 7hYbFtX57qXclSH2Qs3KF/6BtS/RQ687VLqZ8yOnMpJ67YMPN78A/bXYzYOlaJ5SL5cP
 KVsp5uyUC6wPgFf9kCAVQOHfZWq+lJXpfnd5yxUuTe/ULJKpvdVf446HbXeWYpQRRKMZ
 aaxrjXBbjF58XPeweVCjESM6LDz8rKExO24nwH9H6uHP7PhyiS8gz1jjg9z2RPz9Bghx
 goMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=79mtyeZRq2M0mbofzOHg0zNB78sTVjll89dsFzzw1/A=;
 b=F00d1JVbWUjtobSaBU8qlw+K4Z5r84Kpq1CDs4bT07TcpBYEVMVdDl3TjIlCmGlBfD
 rgJ/PNPao1jkba7ZyeZvmRUxr2wRkP/T5W4p0LbYA/kl34D83RjUKtv09lmZ14pqdBMg
 zTXGuWJnoGHZZe/qU3KKW+XFXCNa6VLYglslHfHB5A799gEmLBC2SWoNgSalYDYijrVc
 TBrG6kis3xWJJZFBCtRmzYWu/VLa1v4I6tEqbU5jm0xuSmGgwhZziyF6N24XoY9qo2xh
 I++Bh24akHHfetxQjfUCgW5U9VeHRp3BbEIV/4odQiT8+e05vLBF4yPF+5RpBTSx2D/4
 y/SA==
X-Gm-Message-State: AOAM532RBn1bSZCd2ED18Gmtqt2DiJsE72E3N7wtEarKIdm1DCpvJ06S
 EXEJrXjoRsxdbxAlvwuLpveaMlcm
X-Google-Smtp-Source: ABdhPJyWxRtGqOVWJHbPHm8CKtWRtRgzWemc3OYy+Bd9RL/zDPoXbrCJYveSipGIWh3fX1pGc90CQw==
X-Received: by 2002:a17:906:5283:: with SMTP id
 c3mr21898256ejm.22.1592180356065; 
 Sun, 14 Jun 2020 17:19:16 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id m30sm7450666eda.16.2020.06.14.17.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 17:19:15 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 3/4] dt-bindings: arm: actions: Document RoseapplePi
Date: Mon, 15 Jun 2020 03:19:10 +0300
Message-Id: <40f7d54f9502f0d33f2dcf18b02c6de0d55d2ecb.1592123160.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
References: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_171917_561034_BA4B5630 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define compatible strings for RoseapplePi, a SBC manufactured
in Taiwan, based on Actions Semi S500 reference design.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 Documentation/devicetree/bindings/arm/actions.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..787cd1b4f26c 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -18,6 +18,7 @@ properties:
           - enum:
               - allo,sparky # Allo.com Sparky
               - cubietech,cubieboard6 # Cubietech CubieBoard6
+              - roseapplepi,roseapplepi # RoseapplePi.org RoseapplePi
           - const: actions,s500
       - items:
           - enum:
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
