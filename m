Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD79FB19A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OoxSIm5VGrdUTy1xOjUAJVgiuZF53Yi5bpYWT1zePYs=; b=V054yOcVUm8j6XAhPCSYEf6oRk
	vQwddRmbXo9AVwZyPTPk3b3QBWP1beKTKlD7lqzs1shU66OuKMwimE5+4VGQSH2Wtz7CEtiqD3iGC
	lAWFScGeSTpJ0RvmHgGyr6Wyo4WN0k36qsl9Do8XnS19bRlUBHVQGEtlph8n6DAJtlF4Ws5eOM7Be
	52a4Xu05EUWBZ3+RkUGkcU99WYE5mTSZw8nwE0uJ1K6tEO5d8AfvrbnMQkDObBoUQFWkHuRiQ19LQ
	hqKwOxLODFHVaxsh/WhPnt/miQQTdWePavK0fsTCvo/MeFdwY3Jm0mVxXOcn2OXvOr5ohN8PgxsTR
	bPmYn+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsuP-0002N7-3E; Wed, 13 Nov 2019 13:42:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUstP-0001l4-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:41:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id f2so2391337wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xUHBzoq9SNl+3pMWbPtXPGVnvUBANpVssHw7iXkIZIo=;
 b=HHGRBnBMg8+wCvJsMAvdrY+RFtcPOQsLzz0e965o3Dgf6Fna1KhJRssZaGQZTyaRVB
 mBNNFr/+L71bYiuVTRNz3zLbSISnN21FY+7qXByWD3ElAwpaNugL+Qvk47JXWiZFvYzi
 u+T5YKnANIkZsBVVF8X90vHRkNfNN1EfLvbElXT+YabV9Te3dePfF4lJk2CRNVQUEwIk
 LvzydLlHkRAxncmIVdUDHHmGKlOIATxU3m8YGPlZrru68/+1rONF7/geBxdKjOGXwJDg
 69YenwXVro4CxYTfM4A8hZdwZjSRZWcBztn4U/MpErmsSIstiwTRV7DG2gKns1nDIbaU
 mp+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xUHBzoq9SNl+3pMWbPtXPGVnvUBANpVssHw7iXkIZIo=;
 b=E7fNE7umNdpPTGC66eOXucl5d5vx7oiApAdiGPebdf/S2LmyudzqJWEPqvl38Qh6bu
 EinKItxPpFkED+pyQgZxpIvKFZO+ISjho/B9wKlgBsmLsYnaOVCxXzL/PXBC9pUiEBCJ
 td2teQyfMAFNtMl3YMiUH7oMs7yf52hieRLUvvznDOLVAuA9vchuQvKTFgFOdZvdSGaB
 B9aK9Ixkjkep109kSjquNhnNcVNYYfrgsvu4WcHcy90pmJOkNkco7YbfR5ufhiKDxi+F
 YS+ouIwO8QFM3fQehXnjKc0KnOiwsYIzaRw7qEYTaJ02NkjBBjvXgL3hjQH/iQ9tAr51
 NLOw==
X-Gm-Message-State: APjAAAVggwZCunK6ZXslmtgL2cB7hDawK1WFbkzvbqILSK5C6YDZKzWZ
 GioeK4k7IiSoOlK/d+1eBfbiyanY9us=
X-Google-Smtp-Source: APXvYqzMeDEMOr6jJXevVw3EJPZivbRAyr1ynHZcgbxgkkqbWKe/6Xy9o/utpo+IKLlMcsg2v8kIcA==
X-Received: by 2002:adf:e682:: with SMTP id r2mr2992493wrm.358.1573652465812; 
 Wed, 13 Nov 2019 05:41:05 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 13 Nov 2019 05:41:05 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Mark Brown <broonie@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 3/4] dt-bindings: mfd: da9062: describe buck modes
Date: Wed, 13 Nov 2019 14:40:15 +0100
Message-Id: <1573652416-9848-4-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054107_244746_47F38436 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DT description of da9062 buck regulator modes.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
index edca653..bc4b59d 100644
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ b/Documentation/devicetree/bindings/mfd/da9062.txt
@@ -66,6 +66,9 @@ Sub-nodes:
   details of individual regulator device can be found in:
   Documentation/devicetree/bindings/regulator/regulator.txt
 
+  regulator-initial-mode may be specified for buck regulators using mode values
+  from include/dt-bindings/regulator/dlg,da9063-regulator.h.
+
 - rtc : This node defines settings required for the Real-Time Clock associated
   with the DA9062. There are currently no entries in this binding, however
   compatible = "dlg,da9062-rtc" should be added if a node is created.
@@ -96,6 +99,7 @@ Example:
 				regulator-max-microvolt = <1570000>;
 				regulator-min-microamp = <500000>;
 				regulator-max-microamp = <2000000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-boot-on;
 			};
 			DA9062_LDO1: ldo1 {
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
