Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624A144B43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h93WxNQ+MU827+OkOXCSlkNHqtYwJfk46AhLXbcKFQ=; b=ImwO6O2BSam8Ij
	rvnTKaVN3ouseedRabfXz2r19cjGTIKIfFQh2C9iFFUtyI5IJ7zQuaq+RrREDJLlEb4DHbQFS8pwE
	Ox3GuPtv2i2hqTyrRQIJfrZ3UnuZRMiiY806jDBaDBGYBKgiyVrYlQ9Ke9J1pEaShZsIIWPSZV4ZN
	Xe6mvhxbH+xXZWnOS6RBN/Cbyf6a8cSPDxjjzLy8WdAHaphGirXqfJASFrgyX7j+BsFmCNAIvpWHs
	zoUOm05bycej9CGLIJQ733rDI9z4NyV8UCfx+g9qC7H1koafx30PMFUboEImARV1BdImAkGp7xRnM
	qNFvmUxy/IudGreyGbOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUrd-0005jJ-Qp; Thu, 13 Jun 2019 18:54:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrB-0005aU-Ij
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:53:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id r7so6503034pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T43YpeB6KPwzAeP2AJF/MUSVY3ntDzP4uFwV6vk6NQg=;
 b=j9mr7D0Q6WW70PaeAtZuQL8G13f13pQs9IWPwKl+tPlMpbbUYNHSA7/2znZNRp4i6f
 xuPGM5N8BaXMZD4k9kcCOJvheE6bxtkD9vhqrtzOQlUR2aj++rY26vh/QPKy1Nx4sSA1
 k6tcIi7x5mhhp3NQyTlU98pZFu5OqX4r0AHls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T43YpeB6KPwzAeP2AJF/MUSVY3ntDzP4uFwV6vk6NQg=;
 b=aSVMp+aghcA/oquocPatco55NbG3kWlVzfFr9V7jIuqIr7Nciw1zZxmJD6RZzSGmh2
 uhKV8bKB4il+xvuqV/uI6j3VyQb2rwaSAyd0U1TlU03t8KqLzgJrNxSbTfEK2LnxoCou
 NAFOPW4+TCqCk0/k3KWiGC0yTPIvZiZfNGjXDtKw2wAhOg22iTrvtSf04KDF1z5Pjw5m
 wwidcRBvgextEfD5xpRrxPeCjGXvAKqcEHo/H3db+vaanBQ0Y4e1VpJdp8e9yEu3MnHA
 ADVtI8I158x2GURjJIaSVJHcqMhiM2u9pqghExYPFWvn6ypswFCLTjB1ey2eoI+1Nady
 IW9A==
X-Gm-Message-State: APjAAAXndue/TGpO//GwjwXNMNukpR9uLIyZXTssWJcZXkDY4I0hFDhB
 EgMPpv6xBpqmkla2qiOKV8RTeg==
X-Google-Smtp-Source: APXvYqyVfFXF+RWaOpNVOg11XNoCvv+xPHrf1CT9JUGH0iqGtinHj2ErGGLnXkVZWEBC2hZlm3HTDg==
X-Received: by 2002:a63:d008:: with SMTP id z8mr32305004pgf.335.1560452031872; 
 Thu, 13 Jun 2019 11:53:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:53:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 1/9] dt-bindings: display: Add TCON LCD compatible for R40
Date: Fri, 14 Jun 2019 00:22:33 +0530
Message-Id: <20190613185241.22800-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115353_666873_90C6428D 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
are managed via TCON TOP.

Add tcon lcd compatible R40, the same compatible can handle
TCON LCD0, LCD1.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
index 31ab72cba3d4..9e9c7f934202 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
@@ -160,6 +160,7 @@ Required properties:
    * allwinner,sun8i-a33-tcon
    * allwinner,sun8i-a83t-tcon-lcd
    * allwinner,sun8i-a83t-tcon-tv
+   * allwinner,sun8i-r40-tcon-lcd
    * allwinner,sun8i-r40-tcon-tv
    * allwinner,sun8i-v3s-tcon
    * allwinner,sun9i-a80-tcon-lcd
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
