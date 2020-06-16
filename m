Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5421FB01E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARRdsPReoS1mXoDpLbWIbfgYP8wcgB11xl/bqIGM9Ws=; b=hBjji2hZtF38Xb
	f/hpuxwBP6GeB0WYO3A572rTQG8JUFiKuIpP6kBes6c6xIEEilzRPy/LkNqOQvP0p1HtBIky0N6j2
	m0oN5lWD/BMy+g9B1/0k6FLx0J3UZI5TWG09tWWKmUNQmuVfkhwYur+CdLVK4jr42h1z2DTHpnCPa
	5C+DIp+A7EgaDkqwEh+S7FKi+sAa+7Mvz/tLFIkvTzOYLTyWN+I0NzwmhRJGfMCEc85D8Ea2uU43v
	J6WQ8W30I7Tl50R3J4OUv1KFkEXNnKDQIZJ1EKnK1kxj/YqC6Ch6NFQAcJZCAV0zO0pwqjqlRY3nI
	VLIhQCPOezvdmOXf5wCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAXw-0000xJ-1l; Tue, 16 Jun 2020 12:18:32 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWk-0000E9-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:20 +0000
Received: by mail-pj1-x1031.google.com with SMTP id ne5so1351629pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G9xOHne2zIdrUjfESWBnXW0No6K6w+tqmOd2DceQ1ag=;
 b=vVwdSymKu72sq4RCvUQabFC7yM4l3p4X/ndVICxDX1VNQCFAJO+UsygZD4b0YIPG2f
 1wbTpsJeuzP0Hu63LbbXIyH5mQMTWsFtoBTrv5dILeXsG1qougQOzVTTHJU8BI5IlxUf
 v0qxjbIjDGv6l/ewXU0Tk2tBv4f3LFS9ZLlDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G9xOHne2zIdrUjfESWBnXW0No6K6w+tqmOd2DceQ1ag=;
 b=lsXwQUQyKvjJGINWjrmj7TyDCwaz8II55DoJOi2TH9MSQYPViswoQtt13jB+D7ANNm
 y28LQTDLAJDn70Y+Pqn1RT87Gv3zpUi2pUqmgzUqva36jOSBMngXjpxUFE3hgph4F2v5
 EI/mo/n3wwZyjF+HPFoARB854g5uPx6wKyDuzERhIbnKq+0zZBjhturQPW/+V9BZQv6J
 eP/lnheOi5Ytz7+mWWjLjCOc00qFYyC87QBXuf4JZJENyplchjWMslcJazm3w0YVMyre
 U5UmzJUNBqf32y4GjstIy/xoZuGg6BlqO3+b/8xye/kqYNJY4tev4PPyTINPPyp6JpAm
 +qnw==
X-Gm-Message-State: AOAM533mWdO337U03hM+2wg5bAY6NX/gOkDBkTMmC/1YEGhg6zkfyhn2
 yozXdL81XnbKjc7RlaxOmtBqiARP7K8=
X-Google-Smtp-Source: ABdhPJwI/fPYMP20WdWnNJgrtyVxLXkzPa5mk+7lTJLw+H3YRP46fxdZKBkxp6hwOt1VYmsV8cVduQ==
X-Received: by 2002:a17:90a:e007:: with SMTP id
 u7mr2537564pjy.208.1592309836718; 
 Tue, 16 Jun 2020 05:17:16 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:16 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 03/12] dt-bindings: vendor-prefixes: Add 70mai vendor prefix
Date: Tue, 16 Jun 2020 21:15:16 +0900
Message-Id: <20200616121525.1409790-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051718_173326_B080E8C9 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1031 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for 70mai Co., Ltd

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ba5bd3b0ed9a..53cd050668e6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -23,6 +23,8 @@ patternProperties:
   "^(simple-audio-card|simple-graph-card|st-plgpio|st-spics|ts),.*": true
 
   # Keep list in alphabetical order.
+  "^70mai,.*":
+    description: 70mai Co., Ltd.
   "^abilis,.*":
     description: Abilis Systems
   "^abracon,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
