Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4528104330
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTrUR3GzdTLL+rADyceGJAvU6QgpH5SNV/IlDpOEw6k=; b=cA2BnFNlzTFxtL
	pcttVeds9ftswFKnbWpUgST6W9z27B8qrQ7lN2LQSEURDX6N9LG9FsyEiKelLW/vcSR2BKJdGifxQ
	VQjmGsy6z4b0FS4oAJR4WQhXR5vmXRoOhRPW52633Ui7krQvumCELaXnKh8B3dxWtnLk6TLwkkgwR
	CtShbHzkigjGRqt9vGLTirbyH7ZEKDusF9ZaTOX5NSn2vAi4uvsQmcr2AYZ3Rl+bsJLUtZ0QgWVPM
	B4hpnsfPxiELv/XeyOJ+Zh925xuIHgzTbDgcuwWtshCw6QxJcuuX98dj6RVa5IYwkReYQjeVOLMT8
	2FbvrtaV1RGlgCSaQKGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUau-0007J4-Qc; Wed, 20 Nov 2019 18:20:48 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUa5-0005dv-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574273990;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=gXkh0esBwT/dyH0bN+vrTGIOZ5B8ydk2eOUXb6B8DMg=;
 b=noBtSdwMhb087qa6P7adJ5KyZTO48B+QZi4RW8674BojivxRHp3amb2VDFhf444PtG
 /fRPcUuAiHdcMcUidn7KJuAbvddrTBt7TKpwc3FSFDtKYqEamxJQDXLoG5Ggr0p5epn1
 D51AdNBxq79rXNBsStqAv/GG0o0Uhqsx67E+2Vxp5gSn3uJsITDhdAHA0A0m5eFvco+1
 d3u+tCDZfQGl1btRcLHZ1ilOY70kmNflkvomhk7MsdfjNhxR+U2JIU1umjpBk6jFmPEg
 HiYSX7GMxX+zmAFiuqaJJvhv3qYTIcOWmyjvAG1Y6vskuTNodmw+CED/xi0P8htBlj08
 VJ9g==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKIJmvAa
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 19:19:48 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 3/4] dt-bindings: vendor-prefixes: Add "calaosystems" for
 CALAO Systems SAS
Date: Wed, 20 Nov 2019 19:18:56 +0100
Message-Id: <20191120181857.97174-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120181857.97174-1-stephan@gerhold.net>
References: <20191120181857.97174-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101957_768410_A3C8C2E9 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:4 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Snowball SBC supported by arch/arm/boot/dts/ste-snowball.dts
was made by CALAO Systems and uses the "calaosystems,snowball-a9500"
compatible. Prepare for documenting the compatible by adding
"calaosystems" to the list of vendor prefixes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v2: none
v1: https://lore.kernel.org/linux-devicetree/20191120121720.72845-2-stephan@gerhold.net/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 490b5cc6b8e6..b72af2e11b73 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -157,6 +157,8 @@ patternProperties:
     description: B&R Industrial Automation GmbH
   "^bticino,.*":
     description: Bticino International
+  "^calaosystems,.*":
+    description: CALAO Systems SAS
   "^calxeda,.*":
     description: Calxeda
   "^capella,.*":
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
