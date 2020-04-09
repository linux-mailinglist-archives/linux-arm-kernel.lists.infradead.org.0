Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290E31A2FBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+RuVx5UCnAWQcf0CSMxb07fyXkLAMR/F0OVBitn4ty0=; b=cwgTBHev10yqxR
	pi/xdlUR479SsJTa6WyJaw34zx6/dylvA8ANUyX95Cm2mTXFw3DxB2OxlC8r1IDd5iafEhb01ufqE
	y2sF+abx/IbizuzklcuN+rdvq9jTxaPYQBxHyeAfbs6sxDramF1UBspZ4Q+YK4m4yvJzyweXmkG4b
	Lix5+eZpInttvtpK9Tnf0h1bSDUDYT0wWxrsUDjTm7vIqArocXQ9erLICiDPmxKmF5bJmx7UnX56s
	3RtEBBVO1RV4sK3IelyyhoMDP3TjGdK7d5J3nQnaVLWOQuAv6ZNCPZQDVysLF1d+JEdSyl8qAWTBi
	Xl27Unc+QrLNCe0CEffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMRFn-00038b-Rw; Thu, 09 Apr 2020 07:05:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMRFh-00038I-95
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:05:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id w145so7106121lff.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 00:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wQ238dmMNO0NeDBy2E+C5WT/Ni8JLUesfjuaRncrKOc=;
 b=UmX2dla9lsoiWLpFQZPC87OMAPuiPk4A9BZjKH2/n71yjovcXvL052YTpoZDWAVj4k
 CPdgi5bK1u2HlPnUo44xb4r7eeJsO0dm7xUJa5jOfwYwdzXKNTb0Ih7O1YpzOmvFDWIs
 Nkh7/XDoWkrWkDcOyF3A9mb/5oHDb3hU6WRy7A61mVcIMnkSNTKq12ngA8Bq617SgptL
 cFVy5RYswS5Qv+4M7DqPGN9KusN/bF1sSNuyCGPRS/cYPbz8Tjm2JeIUuSi/7x11WxmV
 0kNt8UdqxcDOOQ8mF7z5DUJs5ufXTBQsqeArHSo1GvGNBXlZPblW1Rgn8Y5Wnmpxv+Y/
 Ppfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wQ238dmMNO0NeDBy2E+C5WT/Ni8JLUesfjuaRncrKOc=;
 b=giF+p5IZrGA46pPfAwyw1FSovBGOkQbR5iUoj9zspJj6/NGZJMmc/UqCyNCuErS198
 sIH417UMGGLknfvdrbyuMa62Z8IUPPgeRuFDjrgw0O+8kcrTSL8zNRuJdZ7WXYwlDcbW
 w0rR9cdu0UAspO8A7cpZAgwjyR3FcFFRSP7mqyRoJ70Z3YBmGYuPNbTGW7R5fjp2ptFY
 6H8mMT8X+t23bQyk68LQ3MkmfmO18u3DKHkT1Zta8hPzhy/y2s6o4gFERcvXRoj0onvj
 B77lrW8CeOJgjwHEWhdl7OOVOqwDnAyrx6qxDf5frQwQB/vlwcqRjDjsL8J+Yjtv2D0h
 xuoQ==
X-Gm-Message-State: AGi0PubnqZfCUSTvBFKrZCR/mk0Lq5zQRcElORGl1PbX1oYVpuqKj5VI
 /W0AobnWPA8pJueAp5ETYHA=
X-Google-Smtp-Source: APiQypKjqNMu43wzrl8sB/tGmE9+dDeR/o7ssSgVKyc0WJEX5Rl2rA0ujm+vb062Ec2ClF6ZpV8NCQ==
X-Received: by 2002:ac2:58d7:: with SMTP id u23mr6976459lfo.182.1586415927069; 
 Thu, 09 Apr 2020 00:05:27 -0700 (PDT)
Received: from localhost.localdomain ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id c22sm16436955lfi.41.2020.04.09.00.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 00:05:26 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: 
Subject: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add Check Point
Date: Thu,  9 Apr 2020 09:04:43 +0200
Message-Id: <20200409070448.3209-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_000529_350102_C88945E4 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Pawel Dembicki <paweldembicki@gmail.com>,
 Mark Brown <broonie@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check Point Software Technologies Ltd. is a company based in Israel and
USA. They manufacture network devices and provide software
products for IT security.

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
Changes in v2:
- corrected line order

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index d3891386d671..3819192d035d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -181,6 +181,8 @@ patternProperties:
     description: CDTech(H.K.) Electronics Limited
   "^ceva,.*":
     description: Ceva, Inc.
+  "^checkpoint,.*":
+    description: Check Point Software Technologies Ltd.
   "^chipidea,.*":
     description: Chipidea, Inc
   "^chipone,.*":
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
