Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EB170672
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bWqn0OqlmUkrgsDqDBBt2JHkI1Ni2n4W1HgwndkfqX8=; b=KhqGxMRUCN9Y5r+PGHjdXScFoK
	Y1TE35BK01c27rEFWy0hl8NiKrg+wbXJJ5yxyPbWfHeVKGRiPrX1ARfVVfxcvm3PMDp5+vywxjM9v
	Xw2SvEhiCz5yuCBWo/JXagdomaQfBHX5BHq41FCsq1/xAP6gYWoW0LDKfl7eo+O8Ah7fRPx2aaLaJ
	B+hhGI7ANOyOxC2FSisvUhgBl09paDCYqwGjPm5YqIQzTCD1l4U/Fap4AkHAtkcVsPibSr+219c7t
	yAzawJXJn0yjctANDiT3LF6fgofpnPPQTJfUmA21+1I0UNhuPRi1WAkcnx2eRHGbJukYGKnrWPP9W
	tFPafzuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbnq-0002ZL-GS; Mon, 22 Jul 2019 17:08:46 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbnT-0002YJ-9g; Mon, 22 Jul 2019 17:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563815283;
 bh=pOipip/7SqtkvUBVosuhUW8StWC6Eq11sbfDOvaTu7Q=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZwYF0nDMAeBRG23gIr8vph6vCHmXVzh5Oc6eXpUPa26K85FB2T54eaZmGl4Mclv2U
 MAOabspJXe6JPy5J/ddNUTyoKPRxpgqvFeJBSVSgO14mpcBGnqpysJB/G0JTRej5ho
 8XxXImAFo5cnTHpVlmVCNjkJNSeyg4PIVos6l0kE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.131]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LqQTl-1iK0iw2bjd-00e836; Mon, 22 Jul 2019 19:08:03 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 14/18] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT
 schema
Date: Mon, 22 Jul 2019 19:07:33 +0200
Message-Id: <1563815257-2648-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
References: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:tO/RDLStxpBhSjI1Yvpz+5kIM9YY1HHCUcN1/0HPyCye/v1766M
 dUboVfHUppGM2laRPxmJ9p4clRdI+r8cKyEfUJAYlxhgtufM1SQUbq57V2XeOgPwG97pmn6
 hv1S8Q/w+SkPySkFVdtASHwD5ZJWe7FRz2IySKhn8bMxOMi71BqjQ1Mhn3M5AC+7b0WmO38
 JKEJ4JvfbgF3tXTBvDoWg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zjxQ1KMgLug=:bfvv6r+DDraqyjvFqBBjPS
 YsTOefVQWL/J+48TcXkjaff5GfVDeb+Tah6l/Vd+W54jG7SNsXF57krrl+r6MxXK9VlAdMo8S
 s0nO8a7GpIY4AAFf8mJqZ/dGPiD0EoVaP/LU0Y+JTd/laZfuXgsXfJmDZ7MCW0o6ggdzT0Z+0
 IloG1T6ZD43C2ZdEbsYesgFAklAZ/R2mv/E+2dXpEKnuwb52gZZLkXfdoZs+5w19sCK7Tc9jx
 qLgMb/oJBHAGHgqGiEB3LGRbbwd3o2INW41rmL3zfwWRtP9KOQopRKCEDs53vz+V2IL+JwcCL
 NlvbZrkBAVT2/PLg/cZ5czNZLrZKB6muQ3RslgFq5T4fYEKgoGRHNdJakkabkZvLZIKO3snBD
 x1MsKSlHeqV3aGCGDTRwlNPgzNoPlpYw/ADvg+7IO/u8SIE85w48XSPUrA2KRy02OdYagE0Mq
 nwi9D7vEmIN126abhIBCzKxlrjhHyXoWVJ17Do0faABNv100SDzUHNCusB8cA3j7rcQbF79mT
 SLv4JA6duJ5J7+7nM4jCvWCQ0Yk+1q07kyJgDfxE5d+V0RCCygZdiYOs8tFNdggP+H0ImWzc0
 /r4YJyLeqNFpM+JzAm3sERhWgNrcwJb46GhxoB5U2jlgf0+dXSGVXIWPrc+Y7d4ZJNW2o2t1m
 CafN2uzea+XJdWnWCEENBKNUWv6KN+khx+t8/mXV1X/6uyiUHiDiwo1SAPydvzPtiwM8z+5MG
 gYHoqmEeMCeSh74qJUC4Sw8Mzkwpdf+FVR9Dli+7BpP6uiPVOIGIbceq7gcZYCJDoFYuc8jyp
 ykQ8wcRzReuAb/JtoFcbj5Xm6tqIEUpu0bAk9Fw0j6tiCF7f+PK5xscPKmdOLXFtlJridSiKQ
 b1eU9bJ3Lrx9BhNw6s2DP8lYMJJtNb6z57WoGKmueGnBvhOK2284VMSqHvXwFTYt04QoK4eb1
 8C7r+COQ1GzgNRTEr8/F2L50H0ZOD4KAvLUmRtpHRfLnzsSFxmG5nNYGdxw3cPMTL4kXjZqw3
 tEDoWmytBNsDXtTpf+xBE8NRKQ2ymZVGKVcWPJAe+HN8oCqbDuT77skql+K9P54GBvr/S8UQs
 WG+3WE0ioDojQg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_100823_675851_699E6B29 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new Raspberry Pi 4 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 1a4be26..8c3bbad 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -15,6 +15,11 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BCM2711 based Boards
+        items:
+          - enum:
+              - raspberrypi,4-model-b
+
       - description: BCM2835 based Boards
         items:
           - enum:
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
