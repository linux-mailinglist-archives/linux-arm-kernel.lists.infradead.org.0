Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DFE108DCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:27:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8orJU8auQDDdwX4CALutXisrbr+OQSaVIkU45Cw3DQ=; b=nSLUEifS0cFxqg
	L8rYirw+XtX5hkzmqQw5MabxheJYYb+IqA4QtAmshhLFwnc6u7Ssn4BSs7MXoe8/YbPM4cY+K5WA5
	o8l7wCLbDoKlWF96zC5QlgOgCmTnTdjAGNIUzkT+TEY/BoqWU1GOH90g9fKA71+9NM/Y27T8K3tEK
	0xSORrKSrJjSLFzpB/qbCap8bFwhHGghp4rBODpqE14xu8lxQPmcqvlqetTznGPle4Sk5Y6eEwCwT
	+9mhHQfAIU2Db6CVpvqGBnkwzlijIC6Cn4mKr16iV4ZMYXBHTlx5f8ss84V3pMqnOzglCJnmhA1UQ
	DpHAaTPS/1KIXQp8ZmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDSW-0000BQ-Jc; Mon, 25 Nov 2019 12:27:16 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDS6-0008Ri-Sq
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574684805;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=+VsrVMH/0AeKx+W15eVLwHD/fwlyWTB1SgPgdIap52w=;
 b=VsNoyIvJYdTlRmASz11mWCXXAVN4vVfOzkeCSVJA8dYlxCuKlSkK3AXdhypcWuYfjY
 tDQAM2TFEiEIFolZKdSHQ++uI4liFnWnNuBn2vqgHwH+uA+nWuZEQtbPvIIBU6mxPIMy
 PzcbVk5g68xnKxZtGDFbssoF6SDUgDLxBC4qcs2dL/NQe2RWrFBRhfN1O6kcBEIMeseC
 86gKG375P6YFIHDOCteyLaucGErQfAfZVkW4aijv0AnHRgunRlZVKIurrpkTkbg9XCdF
 a926FLglQE5TwtDMZcMFZYtTflZ5oyzsB112Bs7zB31lgRUli4stkSdEg9VgLPjLu8ER
 3/pw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPCQh0FS
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 13:26:43 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 5/5] ARM: dts: ux500: nomadik-pinctrl: Add &gpio_in_nopull
Date: Mon, 25 Nov 2019 13:22:56 +0100
Message-Id: <20191125122256.53482-5-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125122256.53482-1-stephan@gerhold.net>
References: <20191125122256.53482-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042651_515706_D2D59B91 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ste-nomadik-pinctrl.dtsi already defines in_nopull and gpio_in_pu/pd,
but there is no node to configure a pin as GPIO without pull up/down.
Add a new &gpio_in_nopull node for this.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi b/arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi
index 5673a1113aef..bfdb5d9a014f 100644
--- a/arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi
@@ -25,6 +25,11 @@
 		ste,output = <OUTPUT_LOW>;
 	};
 
+	gpio_in_nopull: gpio_input_nopull {
+		ste,gpio = <GPIOMODE_ENABLED>;
+		ste,input = <INPUT_NOPULL>;
+	};
+
 	gpio_in_pu: gpio_input_pull_up {
 		ste,gpio = <GPIOMODE_ENABLED>;
 		ste,input = <INPUT_PULLUP>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
