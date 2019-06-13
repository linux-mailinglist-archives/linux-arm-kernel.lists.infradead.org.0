Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A069436A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2AUz1WwiLjV61sxakhqweqzuG0tpkY/t8LNqxpjIS/w=; b=REtKOsiP5m7tR9+Rm+0c2qwSys
	4CmiA9CR9MKvuFAAnSeaCLjTxVqIb/fwKf/pAqrE7hoUW21johtZ09HRZ3xi2u07V0xWUyruwVjA/
	3JmW+lLHqNQZ+k2rSxZJHIkXOnR31LDkM1NkWlgLDr60ZAK7Y+zTxGyZCu0V4r5AAvXaBjN0whv0o
	7+TDrj5tmDcY1O1OJjKAoF5DjAYYNQtUpd9Fno/+M1ZnDc01SjtAUd91hlv3rr9e087EN/nj9TR8p
	mBz3SEky71ti5A3PGWa1nybNaMr5oyQECpQnEwyl9Or52I6fXqfl0nJhhAOUtnq9ufwhY7foUJhYn
	+uIX1OyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPpL-0001Ry-ML; Thu, 13 Jun 2019 13:31:39 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPlF-0004UJ-GV
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:27:27 +0000
Received: by mail-pl1-x632.google.com with SMTP id s24so8140787plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IFployeILFCgzGZc2q4P5YydzBLQjjv9PpitRIu8EHs=;
 b=oal5G6DKmpM2gjoDM6Nizu518dqxAi54e+Dkgt9/++sLxleEpXsbc3zsgWmlMKkRgs
 sfxH2RdRFccPtBUE26F+nw5CEJJ26aAO5cFgbH7Q0cf1E1u0FhcbPJMz0K/tCdbhNkJL
 clMxQOS9xSK6aPBdGg64uYtKxqMO4nKQIXmveSRZ69W9LbNgtKVNTmCfxpo2ft2YRwVk
 s23BZ1u3uiKYSZ9m9SrjdQ7M+5OSoycKzvry9uheTMQI9+1jS5tE26I7OHaZkrOs42ow
 FXxsYpDKiubQSlB9xiH3rCroDve9qOCcDRvOt2uj/4NdYBaOxEgMFD52E9i+cojiLdsQ
 3aBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IFployeILFCgzGZc2q4P5YydzBLQjjv9PpitRIu8EHs=;
 b=kzHWXxuqyoZesGdpy/9q56SmHkgiSiSJC6DPrzYruE+gZEuFelze+h5e4+LJYo+faT
 12aX8K6sU5QVE9fx2WxHCxAiI5yeemwQwZWZnHqzXQbAtv6Nu3FVZ/HU97nuRURHe613
 RoFATZe1UmVSfnnznkSzsmwdKgIzPKM5hrN5NV4N9tJTaOiYjkgp8+n+okqtY27zJd1l
 6l0VqQQMbqNtx8pU13zQB+aDPz4C6tN9jkJF7BEfUa3AgfLKTepS+JkLNEHskN4squG+
 38+24875q+EfTT4WC96gMmRg3/lbSCGfDWdpPtnabi9mP+MWmtUdAWsj6nDgKsS+qS9J
 tIXA==
X-Gm-Message-State: APjAAAUz4sAsrnEpXoKaKIHF5Mu0H62MVtAFW5QCHQkWUuqQye3amLZj
 2nd/+ygyJ18C2EaGNYIhTeAL
X-Google-Smtp-Source: APXvYqwTQd2pSdC7wJ4QhCSJEa/h6HwqS5fR4fIfIeiMuFebu68tpzNh3RDRYOL149zZxa3JIcFljA==
X-Received: by 2002:a17:902:b695:: with SMTP id
 c21mr35731043pls.160.1560432443695; 
 Thu, 13 Jun 2019 06:27:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7141:4858:bdd9:1134:3bdd:7ab4])
 by smtp.gmail.com with ESMTPSA id y14sm1837pjr.13.2019.06.13.06.27.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 06:27:22 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 festevam@gmail.com
Subject: [PATCH v2 1/2] dt-bindings: arm: Document 96Boards Meerkat96
 devicetree binding
Date: Thu, 13 Jun 2019 18:57:04 +0530
Message-Id: <20190613132705.5150-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
References: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062725_617675_3D9B3901 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, yossi@novtech.com,
 pbrobinson@gmail.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document 96Boards Meerkat96 devicetree binding based on i.MX7D SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e2cd6ad26bd..dcd6c90b0cef 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -141,6 +141,7 @@ properties:
         items:
           - enum:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
+              - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
           - const: fsl,imx7d
 
       - description:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
