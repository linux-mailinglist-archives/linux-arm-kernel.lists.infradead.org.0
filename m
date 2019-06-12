Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B841E60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5dpuBBdEdYu1tog3ZzDqVJhiUquh+ZJu6145I9NFN8E=; b=rf+dIIzsRo9+S7w4EN0tQwR2om
	KHuI04BTyvegOtLwO5UfxhYYqDx/RfGFUAmsC7W2ikv/OkOB2Ih56YUI7e8DPNMIW8DKdSfoYv8Yk
	a0yc6JpJbwSvouHzAbsCrL9HgA57ZEpOakwcWnuBYAem3Ucu9A4t72yoOcLtW2maFWWbKYyLLbDiI
	GjesuVzeBGN+8oXZH9WvQZ4J2+D6Q3ZSJD6UG+QLtWqiO0U3RWB2rjpEjELTUF9WhoRN9PnwyWFtl
	MWBxhPM6keu+Hc0bx16ec+lX1dLhk5A0K0jPkH1mCAWXi8XETu45LSRLSK/0TTqijyIz9BN4Ov/Cz
	zLBMZYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay7C-0006gb-A7; Wed, 12 Jun 2019 07:56:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay6L-00069q-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so15176plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fl90wvGVk9jQf/e3ED2nkXc10vHdjJ0BRJ8wEykJJm4=;
 b=DyFfgQQEx33mWJYiam6MYxvlG5nNkiPk4WCy+71VVasj+drxJg4JufGNFag39gfBEH
 zSr0p6ZySEs9Vb4s9fSruFnjk083UoQt1dAJ4v9r36BI/G4+w6wc6YDXy8MznwFvb6PI
 xzXGKBOgdDXnJ6KvOtldHLy7rk0UPyZ/Ft0P8nTKlNScfLIYyaBJhBdneF3HNjOtP5Dw
 J6CAweQoC3TLOnsXB9kf9xDoMJQKV8fdD2/AOPlBBy8PnfnoUFUrNt4PZ4G0cSrX/2BG
 1p34vLC0YZAaptN62xEiP6S45+MFJgjIVD2HV14gVazd9qNgNEjFwswjK/vwsWG+xD0L
 vgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fl90wvGVk9jQf/e3ED2nkXc10vHdjJ0BRJ8wEykJJm4=;
 b=lQn9Gvy7gqdHb4FuS7vfA4KG0U2PoL44ZO444+ffLFe8FhYH1Nm8JpeFlC8ASLXb+8
 Zgb8KZcAVfAc6KF2FBxRqOMfEEXUV5lVbOh1COX//ieCZy0URtd1pRwS7z0IHpiRy0l5
 X3Wi3gAzJmiIFf+wjs+7JqPbBzI21kEO5qkiQXfIsULuMqyGeQPgrUymWMMzkz20DlWK
 7Pl0MCQ6SHToaxuzgtu8GNDH5lPKmPkmVyVa4N2s6D6mSBTmypf5T1V76o2c9wxuuOSI
 xIn0dSGMfL7uKgVdz/cyd2ibWd0N0MQ7Zu2aRWpvhyfDMwxD4JBMol6Jv5D3sR1LydB8
 kiuw==
X-Gm-Message-State: APjAAAWWUMI33092hzJUJtQfKwRtna8+s0H/hCWhANsxTZsP+eO9a8VT
 UDJxV/b4Tez2PD8wXKpvNBlg
X-Google-Smtp-Source: APXvYqxWBYUdZW2Y4YlWacoCLLvBzvetdV8f6Kh7h4YdWN/CXwrhdOPQFCd141iMalRdxN8KCq/8mw==
X-Received: by 2002:a17:902:61:: with SMTP id 88mr3378053pla.50.1560326121013; 
 Wed, 12 Jun 2019 00:55:21 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 00:55:20 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v4 3/4] dt-bindings: arm: stm32: Document Avenger96 devicetree
 binding
Date: Wed, 12 Jun 2019 13:24:50 +0530
Message-Id: <20190612075451.8643-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005522_128438_98D8CFB8 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit documents Avenger96 devicetree binding based on
STM32MP157 SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index f53dc0f2d7b3..4d194f1eb03a 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -25,5 +25,7 @@ properties:
           - const: st,stm32h743
 
       - items:
+          - enum:
+              - arrow,stm32mp157a-avenger96 # Avenger96
           - const: st,stm32mp157
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
