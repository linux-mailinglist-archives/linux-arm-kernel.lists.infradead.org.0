Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75643177A0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdlPj9Odc/Ianmei0rcwGUkC39ItFLkzGzBOyZvBTY4=; b=ZgfTQKjcWok8P9
	TW2nhL7ZRaWK5OltMfRNBzn0LxTy+O56qrVQhv8ImqEorjv9aAZgJRlqFGZp33QnO6CHWDyhTGHXh
	WeS99XzWiV+PnAdeDreNMK7AZ6aWw44Nq/zCx/iSDojCxqigX5OLrbal6CZGMykeENw40x9pk9Mvu
	8XBaUvxjJtZ30MaBiHrMzXpSzG7Sa297kJYNQYhIUUNtwyjA971B6csmz+oYNLF1mBSU1mTM6mxFI
	KURtnJMCtleNpvIDouwLevSvUL1syjJ2UinSsGiUjuFsINWMjG3YfjiJ3WoxRLcYMk48x6WMJl9ad
	Izy/z12V6Zcu7rj2m53A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99AT-0005er-8i; Tue, 03 Mar 2020 15:09:09 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j999P-0004nS-ND
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:08:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id b13so1698613lfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 07:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oH2DPw9yOnkNvy1Ktf77A4iViJfMOE/P09y2cJqfUP0=;
 b=mPul6xhaNAuxo8T2+NE+xGn8787mHR5kxItdLJQJgLjWA7RHBJv120FuQ0vlz6JeMi
 L86z/EMCuNHoLke+7BgdQPJLpMsDrJY4PNNIR4KHK/5id2D6YAD4T+9SbyZ/nEvaDU+3
 epDaF59obqiYBlfBmYhFIi5QVk/ZNTprB/WeyY83K/5ILFe5xaQ2Vj9aVWajv4R+iESZ
 JeO21O78P8bErOdDEp5lNIkLGaGrtMc/pQ4/tusG+B/6aOnA0XkiAi90SxaWaztVSOHj
 1sBD75JH05+mvHNLxdeTL1b7Th5uQowbmcuJJDknrkNnHyWmwp8THQeBzYamGO3C+TyE
 o/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oH2DPw9yOnkNvy1Ktf77A4iViJfMOE/P09y2cJqfUP0=;
 b=Zl5yuNcdiQeAdv5nsom+P+3t5OckfbzeDcjfL8WOgjNvqYOBt+u5GCmcEoTv40e+kL
 jqqA6CKQOd+pjKKlmss76LqS9EykLsf24HSecGwgum7FtpYuQO3C67C3iiZH9ItT/ZX7
 fXMT/rD+JpQbzNgIbc1i1JNaciSSPnV/BghZNHldZf2p3ZOASgQ9kGthPqICYaJeW/qF
 zOkXbngCjfcgnI0TnBg4e+t6Zi1cJBlithTWl1S3S0is7P0545ZfyCVvlQkzN5GS94Kt
 J5ig3R4OjthMpbOUpV4OmcvSGlY9XkauCOQuiGhWFiNUbJ8abqsq4tbjJaOF8DLIGA2I
 sCcA==
X-Gm-Message-State: ANhLgQ1brBoXPN6MHCWJAUPhI80zn2JWQe5FPBGh+RM9EICCP/FNLcy7
 ETgeuy83R2NLBxkcmiuxrqmiWA==
X-Google-Smtp-Source: ADFU+vvodELrLn3K9Dksie5B3U4dnmjJWJrhxSD42Lo+ggn0ROi0yWlkIY+w/726ufnV7RZRHghSUw==
X-Received: by 2002:ac2:5ca5:: with SMTP id e5mr2984605lfq.122.1583248082142; 
 Tue, 03 Mar 2020 07:08:02 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id n189sm12143135lfa.14.2020.03.03.07.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 07:08:01 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 4/7] dt-bindings: power: Extend nodename pattern for
 power-domain providers
Date: Tue,  3 Mar 2020 16:07:46 +0100
Message-Id: <20200303150749.30566-5-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303150749.30566-1-ulf.hansson@linaro.org>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_070803_793415_8EE913F7 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The existing binding requires the nodename to have a '@', which is a bit
limiting for the wider use case. Therefore, let's extend the pattern to
allow either '@' or '-'.

Additionally, let's update one of the examples to show how the updated
pattern could be used.

Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 Documentation/devicetree/bindings/power/power-domain.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
index 207e63ae10f9..dc232759013e 100644
--- a/Documentation/devicetree/bindings/power/power-domain.yaml
+++ b/Documentation/devicetree/bindings/power/power-domain.yaml
@@ -25,7 +25,7 @@ description: |+
 
 properties:
   $nodename:
-    pattern: "^(power-controller|power-domain)(@.*)?$"
+    pattern: "^(power-controller|power-domain)([@-].*)?$"
 
   domain-idle-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -71,13 +71,13 @@ required:
 
 examples:
   - |
-    power: power-controller@12340000 {
-        compatible = "foo,power-controller";
+    power: power-domain-foo {
+        compatible = "foo,power-domain";
         reg = <0x12340000 0x1000>;
         #power-domain-cells = <1>;
     };
 
-    // The node above defines a power controller that is a PM domain provider and
+    // The node above defines a power domain that is a PM domain provider and
     // expects one cell as its phandle argument.
 
   - |
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
