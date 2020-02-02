Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D09114FD2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 14:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk4MHTWVWgmic2BcNHiOuU+Sp118CBd8wQhzCu54jns=; b=uihlW4/5zrwkmb
	A9v2btlc6pwsHfnAtYPWRUfflQFn1aVpbVL9xaSafz5KkrL0SXtncdEKhwuhJ0sla2Ftg+jW87frv
	upjyo19xen6C3rF2fPdcuHYpIovfIbr21NBdzjMmLTLOl/k0yHkswYNqlgo9MM3ISz7qcZ4qSL2iq
	DA5uGTp8jqZfYpFRUQl8NMSZu0hM0ig0aT0powUYYxmNmkN82l7J0DbSVbHD9TulqJJNrqATwL+rW
	l4GzLfGoBjIEFvkBykaJZqD+5w26/582pa/krMUAcehuj6prETnsem7FCncVh0jx0J0cgLvW5jsKq
	taiohRo4xS4f4p0b/R7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyEs1-0008V7-SF; Sun, 02 Feb 2020 13:01:01 +0000
Received: from mail-yw1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyErD-0007oV-Ex
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 13:00:12 +0000
Received: by mail-yw1-xc31.google.com with SMTP id a125so10492738ywe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 05:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g41y4TduYyE4Zq7XaNgfQZ1uBYpJA8BiIYoPp6mgrtE=;
 b=WqHN4WNpKRHbz5KbVH2wcfUM4s+eLtY9OB1l0MbE5xT7J+rxS0aIn+7YdN6npIGcj4
 ufTxwcx8G+4HpLKqBnUZ+rvW2TGwx78OtAVlQOf7mjYPqIFlD7Us5llDzZ5gjQtPWhQ7
 chCniMaQ6xBLI1Key30/9fisPEg9efhoDskNpki8mmFHbofIif5s1tgZyfgCuGTz75/V
 lszW4MSOXINJDGYfCFGrAflmi7s0zwSPrQhaHvJjCvpMpn1ePJ1NKK1T6L/GtoTOAkdr
 kmylhWwtX6Ed9iSE6LJNIQm8SX68upoP9DQz4m3rCCK3LEnZqXgCu2DhTf7l2SXfOky6
 OxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g41y4TduYyE4Zq7XaNgfQZ1uBYpJA8BiIYoPp6mgrtE=;
 b=NVQeQB4F0iBf0LU3j+O5lL9TmaLPwi8dyLYatLGxEMXkyJ+RXrNVBaANI8QQk/4XtB
 1Y+6hSRM+DjAxuLpFoXmCZ4vub3vVjJihYFpfu3SENacyCkRaz2jj/UpfBYkFgOXy8qp
 2Fw5Zan4DHikLum9QAPMvLHuNfyhbJuqNQUTL3mkUHYIaAJFTuzu9BmYk+QgpgqwNMs/
 eYBMTHRp4ISAcOGkNikoOBRifqmKGQ7hErhmLihz+L97ou7n2hEJG0y0/GMivDyFeZJs
 ABp7BlYcFQgveT2IDVOTpt4Zc4krvEpO+U4CeGGHrKfxrpKfIB+mHmQAUmlFRF7EnGFU
 JuVg==
X-Gm-Message-State: APjAAAV0dnjrIq/dta0f5qAHh6yjqkaA7B+tTxsGmtfFez4wmXCQBBZk
 Y5+8y3QjsHwuLaayJn8RHc4=
X-Google-Smtp-Source: APXvYqxESfjVSs4DtOWtMq7VLTeIVuSJZKG8ga+iAtfaG5fC/Sjp0XF06H7gjLbeQcvU/yBzLMS43Q==
X-Received: by 2002:a81:a703:: with SMTP id e3mr15769631ywh.71.1580648408393; 
 Sun, 02 Feb 2020 05:00:08 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m137sm7090013ywd.108.2020.02.02.05.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 05:00:07 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH V2 4/5] dt-bindings: spi: spi-nxp-fspi: Add support for imx8mm, imx8qxp
Date: Sun,  2 Feb 2020 06:59:49 -0600
Message-Id: <20200202125950.1825013-4-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200202125950.1825013-1-aford173@gmail.com>
References: <20200202125950.1825013-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_050011_504829_95B67D91 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c31 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for nxp,imx8qxp-fspi and nxp,imx8mm-fspi do the bindings
document.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: No change

diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
index 2cd67eb727d4..7ac60d9fe357 100644
--- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
@@ -2,6 +2,9 @@
 
 Required properties:
   - compatible : Should be "nxp,lx2160a-fspi"
+			    "nxp,imx8qxp-fspi"
+			    "nxp,imx8mm-fspi"
+
   - reg :        First contains the register location and length,
                  Second contains the memory mapping address and length
   - reg-names :  Should contain the resource reg names:
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
