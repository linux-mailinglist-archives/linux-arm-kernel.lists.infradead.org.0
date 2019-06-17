Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656B44872A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrlRaOk284mDpKGTm3ixP1E3MBXzOqtZf7L8zzvpIcY=; b=ghohiEQyxxm6Rh
	AEyzhe84J7KuG05yTs/faSUKSYD/YCbRP1HQr2w4IbcFUVx+tefZHPQKeeiQXAYlFWNKCzdtmmCFR
	2RwqEMo6do+RVd5084zRW1wNv0F/rf3XF0xJoUfneW9KCaqaOsFEsu44wg+qvPgpQxRVrzjtP/ndT
	lsGxKqDzXK1qDVHO26r41fiKJnUgrSiDQ3Y79blWjzRqeo/OVmAkaaJ51L305D/VPNiMYK0lPS8hR
	jYt8hilDT7dky/PzP4HhSeiPBpGkxh03y7zkq6tiOxh7eWoDKBjyNOA/Onm7p/aST2hyyrrCUuFi5
	j0rIx/bqr42F15aq5kTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctbV-00049c-36; Mon, 17 Jun 2019 15:31:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctat-0003wj-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:30:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so5884384pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 08:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7atjPk/hX+MOamOqti7mhl6Hi5bK3FfVvoUXrTNgdME=;
 b=egbGiMcv/e7NJhMd6l0WLx0L4afEvVDOZGpbmp+um1r1HOD/AlblrSCuNaRrkT1SYW
 SojJI0l5wnzevFYg0HeFrbbN8LT4rppE2ni2Xk0BO1XfiY1L7xAGsXkupm70aVVLlvD+
 0MEhiNdwuo9LPi/az5Q+ZFlkCDj9XV5x8TkdMD3CHuNx5WACbhe6aZS7kH9nFgmgYfdS
 W7sWxVD+tVBwCgtnWXmxJUIP5MpnhYW8JX0G/P+h9Zo3t+y7+RRvCt9wTPFz3dnbUhMk
 QhCg65Le/PpkjkN4Gd2sf8SexDRp8CNlC75YNSoBDWbExS4Xlw5GE0oxAHDjBfveD+1P
 iVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7atjPk/hX+MOamOqti7mhl6Hi5bK3FfVvoUXrTNgdME=;
 b=Fx3zNFwA/oAvWuuHmfHze6UgbmsHPzdLMvZEzhTtgtJa/n6T7xnbg5chrPOAnZoKWH
 3ET2DpWbT1ul/+Cw8FRAE6ucYAhl0bCrvFE5MYATbBdH6XMWnPJP0IH7AgPQUiXXldeK
 rqWMg3vxmLdG48SzDnhnizoZJ37iJqXIpAA5Yh84dQTrUcpFAiAbREoIeIkmz7O2Pvz1
 j5n3xxWTnZrTO/DP454UK/TLXCXnqLxEy/zA9oDX5HcSBOLfQbIZC06vFN8iMhVb0P+A
 RiyRggnISY2us7Cd1W3yk+eJRdt9Iz8e6AiuP/Qtt11H08ginBzeGqaZ0uZmA1p+cvt2
 ALrA==
X-Gm-Message-State: APjAAAVaorhnHhBAC5GDV75kYV6QIZ2Aem+QIfuGrmUVaLm4doxRJPHZ
 CKZeJzeHtOxhI6njH9/LTAa8MUgBGQc=
X-Google-Smtp-Source: APXvYqxJ5tskuIGBkG5RfoEBhOmSJ3nifjlJ9I1UjCGBFN+u2AbYYuSEHhDS3D+gA/PDV2MgBRdfdg==
X-Received: by 2002:a17:90a:af8e:: with SMTP id
 w14mr27347299pjq.89.1560785450225; 
 Mon, 17 Jun 2019 08:30:50 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id j13sm11426144pfh.13.2019.06.17.08.30.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 08:30:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2
 board
Date: Mon, 17 Jun 2019 08:30:25 -0700
Message-Id: <20190617153025.12120-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617153025.12120-1-andrew.smirnov@gmail.com>
References: <20190617153025.12120-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_083051_509643_A693049F 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Bob Langer <Bob.Langer@zii.aero>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for ZII i.MX7 RMU2 board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Bob Langer <Bob.Langer@zii.aero>
Cc: Liang Pan <Liang.Pan@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

    - Move RMU2 above RPU2 to keep things alphabetized

    - Collected Reviewed-by tags from Rob and Fabio

[v1] lore.kernel.org/lkml/20190614080317.16850-1-andrew.smirnov@gmail.com

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..91519cb24083 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -157,6 +157,7 @@ properties:
           - enum:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - tq,imx7d-mba7             # i.MX7D TQ MBa7 with TQMa7D SoM
+              - zii,imx7d-rmu2            # ZII RMU2 Board
               - zii,imx7d-rpu2            # ZII RPU2 Board
           - const: fsl,imx7d
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
