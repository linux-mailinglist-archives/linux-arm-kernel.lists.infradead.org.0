Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF91746BC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5cm9z/Wjb6RZynyGnbXcbpKBowMKXgZejxh3Elia10k=; b=pLhmZD9ka7NSthIZnfQdySqrpk
	ZvKgIinn+067iEc5VxjD6XN002+6sDJCQG3cbpHAlLGACtGN3l65SQ5VhabMEBvVSiptVuPackjmP
	mQ6IoAE1kmC1L0U1+zHrfNSPMyg1pzX5TB0kW/zt8Xbn0oxMoIjg+A23apDHLHNqrdwruOi9dugAQ
	Hzy+EAw4U/dCxjI1alXuebqGcy1oIWJwv1GcZoh7fOrXAhDKI/b7QhpDs9lin9qDouhhgrGTi5ir1
	SawaQU6+VXLieohUJSLdV0lSNTMkWZItkTnFdsazIRLAu1K07nIoC0nq8EcBy9E8wPAFA1QhdUeSS
	AoDpUgog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j813l-0005M8-Dr; Sat, 29 Feb 2020 12:17:33 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j813E-00054T-42; Sat, 29 Feb 2020 12:17:01 +0000
Received: by mail-lj1-x234.google.com with SMTP id w1so6383452ljh.5;
 Sat, 29 Feb 2020 04:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NmeW9ngS8eifN3sjrGPI1hv1F6A8Nf5uvazYyp+BS9k=;
 b=fsBF+G4rrEavnF+deIdP/ZIXTHhFb3889bXztI6LtHsY8wWGlxctMe+BkXmv3Ob2H2
 3yvmUfXu5eevF8q9+7pUZJl+2HysP2echSLEFErLmDwQ4tybS+6SAQ+kkIjCMt1EiIyL
 uqZLIeln4glcBLnvAbjmTIDzAvClK4mCiLpOEMcZ1pipEK1yiWQYM4wmcgxDzzx76dRx
 z5x0x0afGREgGohTSF0X7dUK1m7Hng6MuYGXLbLPPi3hjMhOKq2gdftxc1AwlI0G6lUM
 XkKsljviErQv5OfynUOeaZ6Q5ii6imWqtiSClUrcGyN9Wn3xr5ZDH3M08mPZ5IOupEB/
 cKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NmeW9ngS8eifN3sjrGPI1hv1F6A8Nf5uvazYyp+BS9k=;
 b=IeGO/5REN4B0+IDxgsDw/ckZ8jxOVViJSaUA5Y1cgIFThp9o4gV/0+AczqIZ5WvUJL
 UE/EHNK+j2gtpCXVhF7FgVafhMBVdiljTC+8+WaPphG6agmNf67GX3SOkIEoSXaf1ADR
 v8ZoB/wOC4Evnb/T9Lo5mfHz5ZBssFmtvZItT52uJb18aUb/Z///Yta4ktv2Aikq05I+
 I9+0Ac0sqj2LArxOr9995Lu8CyZ6eB7a7lhf1EPmE+24aHUs5LdoJSHsD+W9xEv2D+OY
 CmAD4gDQZ4M7dutBKbJhvtC5G9R2NycGoib/uAiMVVJ8JGp98BlF975AxDkr+fVWI4TY
 Qi0w==
X-Gm-Message-State: ANhLgQ1JRoKx/BrolTf/q4/GoqjFb7K++d4FrqR1CWrJe8gmGQgJ0Jlg
 Tds6duQVmCEDfsqOGWNbP3Q=
X-Google-Smtp-Source: ADFU+vvZe2Fm5iD/DxxWhWMNcaKeu1vbIPgY+k5XIhBFqHSSJoUbfekOeo/upkJ/GuljLDMmof05/g==
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr5935430ljj.97.1582978618295;
 Sat, 29 Feb 2020 04:16:58 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id x1sm6270232lfq.46.2020.02.29.04.16.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 04:16:57 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: add vendor prefix for SmartLabs LLC
Date: Sat, 29 Feb 2020 16:16:02 +0400
Message-Id: <1582978564-81491-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582978564-81491-1-git-send-email-christianshewitt@gmail.com>
References: <1582978564-81491-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_041700_173464_AB60C247 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SmartLabs LLC are a professional integrator of Interactive TV solutions
and IPTV/VOD devices [1].

[1] https://www.smartlabs.tv/en/about/

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944..a34ed82 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -901,6 +901,8 @@ patternProperties:
     description: Sitronix Technology Corporation
   "^skyworks,.*":
     description: Skyworks Solutions, Inc.
+  "^smartlabs,.*":
+    description: SmartLabs LLC
   "^smsc,.*":
     description: Standard Microsystems Corporation
   "^snps,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
