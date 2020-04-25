Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2631B876E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 17:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dhj8pA1qo8+Ca0Czx79fA2D6LTYWpjC756Uaygq7G+s=; b=A3V
	2Z/05rzXEOUYRVAoGDeFNUpW8Y8h+ecux91pa5o4RuHFtXYAGgA/VXShjaYznGxJBItQKqSeDVLVm
	6qlZYcmIK1Ohm3ApzmRAIUGNBjU3rXyTdGz5Gm4FNoNvRHC9UO/5xBwBhAcszbXFt0k6xBUk1IJAW
	q7fwpQGVffjVLxEMDtCbwSldZUveo0VBg3ZQaH7x+fjwN/zBKQ+3ufBG3BSEGqY40YooOx7mfWVhX
	iUsdVi03hrHc3GldPymWWLmuqkSIK8Zs/UMkWyJ/l7+asE23kTGndRB+Isg7trdOrrWucF5i0Lyfd
	JO7GAEGkEoKIp9TzZrR0zGNXEt/7XDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSMvI-0005SR-Fw; Sat, 25 Apr 2020 15:40:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSMv9-0005Rl-4q; Sat, 25 Apr 2020 15:40:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id j1so15171251wrt.1;
 Sat, 25 Apr 2020 08:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4tS2YGMao2bjz+V8i9WcC4XNAp8kWn2u9wEJt79QoxQ=;
 b=dF1k9liH3vfLfnCQ38X3ZEdw/ILSueU4pIU8vSkFjXiNbaOk0AOr7z6fV5KjjUhI3G
 tGmJbp7EWR2o+ivKlKnxVEms60/+1PQmdCuJUJlDSpU9c2UP4038Fr4cDhjIWw4hsMjq
 gGdRD3NqmVtvGDsdb+VQF2ruU1D78lBlNTBpCpWuJkYFqR1ymt5O3ng224ZDwlvUl/Pu
 zYlP3+58ZnvuRTo8pNHKJl/F+2SR0Rn7vy7iF49aV2kXRZOgiw6H75UuYXSq8Y9tj8t0
 TWGpif2nTKtPlcbYrCUGN7cDWU3ba0bEa/CNDdiiiO+0Ir9vBH11pGwugIFjUBrtpdH+
 iyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4tS2YGMao2bjz+V8i9WcC4XNAp8kWn2u9wEJt79QoxQ=;
 b=RM5ccnKINLym5LWXsInxAO9ag/yK66wOgycQb7xJLj0DlvMfwovhg+8Il+vfAkINSd
 Uj656EzE2TBTubYxX6FqJqt11KV+smrUIBWHNk/aYbc1DyBveMS4UHw25vHHu9kI3uau
 uINokXqBvtMsRIv5aXumZPDZEiIPXDddIh79/OXD6/v4PP0uD6DDdIjE1//LmmfL4AwF
 St5NU8mTjvgI41sT1XUiNNpK02yfi1ZfPA4xknpB/C0kaB8ugOW+n919HpbTrGqT8mbG
 Tv/BfSAISbnM6RAsnsPeEA6TUZ8M8aBxSsfWOVe42GGqO89B4aIPDOg+56scuAuM/OQl
 HatQ==
X-Gm-Message-State: AGi0PuY6fyFLQ2Odn+U8IOxufP2Ct2ted2Jd5i6iUAOW8Rx7KbWyM0Ib
 L7X9PQ+DzJAsPt53OXmZwi2MLhK9
X-Google-Smtp-Source: APiQypJGoGaAzG+Bg3At6JDz4UC0pKLg+Q1gEBvlSnQRnBene5RUUzfezzxPjtbNthOJhfaLe9pXvA==
X-Received: by 2002:adf:ab5c:: with SMTP id r28mr17423144wrc.384.1587829245032; 
 Sat, 25 Apr 2020 08:40:45 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c190sm7759143wme.4.2020.04.25.08.40.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 08:40:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: gpu: add power-domains #cooling-cells to arm,
 mali-bifrost.yaml
Date: Sat, 25 Apr 2020 17:40:37 +0200
Message-Id: <20200425154037.21083-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_084047_213676_0CE7D2C6 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: gpu@ff400000:
'#cooling-cells', 'power-domains'
do not match any of the regexes: 'pinctrl-[0-9]+'

With the conversion to yaml it also filters things
in a node that are used by other drivers like
'#cooling-cells' and 'power-domains'
for Rockchip px30 gpu nodes,
so add them to 'arm,mali-bifrost.yaml'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
arm,mali-bifrost.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 0b229a7d4..b1844b9c2 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -43,9 +43,15 @@ properties:
 
   operating-points-v2: true
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 2
 
+  "#cooling-cells":
+    const: 2
+
 required:
   - compatible
   - reg
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
