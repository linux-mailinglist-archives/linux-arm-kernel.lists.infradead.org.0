Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBB3F2BCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UFjVTbWHeQyY2L7pj2j7qWTOo8gCbHnuDAXEQcQr/KE=; b=DgCY7KGzw5iHENww2/iGmfhR8q
	/dZT26ucLBObUTUWkcCXBxVN9dX1gomkCbYYjXZOydY+r48k0VyeUDokpY+OVd3HpWa6hCzyJLo+m
	V3EHqAS8bjqeE3ucQruV/Km3173KB3wm/z6LS2XkuaRxI1nGutBfXV4m0Ecym4toBMM+I1Gu6w/U4
	CMnqQZRvbLzt+FISzT07f2JICJTnBN+sAcjFQ1Io1u/xge4A7U4QM+JEpN6C9caotLqqA0il6qCXW
	ZIhEL6pC631LE7ASyKXutLkOUPbIRlsOCdyOU4uX3RxAAdhHQOYzVXcg7EqnXbkYHAolTo6yViFhj
	gzQwTDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSefx-0002Im-AT; Thu, 07 Nov 2019 10:06:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSefG-0001My-O6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:05:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id 8so1717177wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y4QrBSeK+hGh96w3EkNRr4uaK4vS4b4d9bYcu1vsj1I=;
 b=pCBjLTt1tKeJRanuVDAc9NiX/RFST88Q7X0GOtrWKOfAbTN8fyN8eQkx3HX7hLXysn
 i2CsPZeeY2FOvHN2AjMX/wQHwSeJCyNi4TEaWNR3MUYyOhNcbUr2OlfUP3DOoL9pIWi1
 RIb8MsqHH+EXZhPAXEWWjexZ2Cl97Gx5um1qcUt4435RgQMkqX51AQPdfxE695WF6uY3
 u05xs8nifHepL6hTjb1ARmrEmmjqeq4p/2MvK50zSoL1LKUJuXSU3KpYJg5gE3VdNQ8w
 KOPve6pVRIQLqM/XppO7ptHYpmjjDGgIbs5YX+5cGm/KoYTEkAoA7CtdXt7SYooBwfTy
 GFGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y4QrBSeK+hGh96w3EkNRr4uaK4vS4b4d9bYcu1vsj1I=;
 b=Y+w1O13UVMvfDv6gBbSHvsph48FDZDQedbJncbq+HuHnUVy42+PyErjK790nEp4tiP
 eDThXrN+F4v0KspZuMQm4EoxEBZGXxt3rhtbtPuD26LkG9aDRtHc2HDiLOSmEjMmorBV
 dKUMmBU5LclafDze+WKYxy0MWagbC4UR0qdYaaNalRmaaaZXf5XKm1uUpFlbyDFjfMQm
 /mZfJ2JE+CXSnVd2hFkehYNauYUyLapVsfuUxKPKmhbntiLg0sup7BqXsHl4HJQO94Gg
 K6vxwcrEYcAfnKP7a3nZYzEOZ+C8UgMiGALQr9PV64pAktl7byLBpweSi1UgBW9FX4Xt
 qxMw==
X-Gm-Message-State: APjAAAV6i+T6v+XkTQ3IBjw/Sg9q2uHJ6eFDeHRYG7C0i8EVVSl+AQsD
 MSFzjyKBR0UGATQRpyLEsnk=
X-Google-Smtp-Source: APXvYqxzdHgmIC2FjgOq4HoxeBvcWfv1hR6LcFzdGk8UgnT53wvX8OUhBAvs6MO0TbQnVfT4xpfHKQ==
X-Received: by 2002:a1c:a404:: with SMTP id n4mr1925909wme.135.1573121115871; 
 Thu, 07 Nov 2019 02:05:15 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id v184sm2225860wme.31.2019.11.07.02.05.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 07 Nov 2019 02:05:15 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/4] dt-bindings: regulator: describe da906x buck regulator
 modes
Date: Thu,  7 Nov 2019 11:04:09 +0100
Message-Id: <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020519_264477_8EF700F4 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DT description of da906x buck regulator modes.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
index edca653..5989411 100644
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ b/Documentation/devicetree/bindings/mfd/da9062.txt
@@ -66,6 +66,9 @@ Sub-nodes:
   details of individual regulator device can be found in:
   Documentation/devicetree/bindings/regulator/regulator.txt
 
+  regulator-initial-mode may be specified for buck regulators using mode values
+  from include/dt-bindings/regulator/dlg,da906x-regulator.h.
+
 - rtc : This node defines settings required for the Real-Time Clock associated
   with the DA9062. There are currently no entries in this binding, however
   compatible = "dlg,da9062-rtc" should be added if a node is created.
@@ -96,6 +99,7 @@ Example:
 				regulator-max-microvolt = <1570000>;
 				regulator-min-microamp = <500000>;
 				regulator-max-microamp = <2000000>;
+				regulator-initial-mode = <DA906X_BUCK_MODE_SYNC>;
 				regulator-boot-on;
 			};
 			DA9062_LDO1: ldo1 {
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
