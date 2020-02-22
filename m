Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681DB16923B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjA+nnucR8yLffbQzzgADiu4rHH7yQtY7FD6TVb5ics=; b=od3HgL1+iZfBK0
	Kty7PwMYRI1WCCYGSxboWBqetEgpZolwkAln0HBfZEtjW00K33RSO5O43VoXvDJdkmnoJrwlWCCq+
	VP1pODwf1WGfN5XwZldpV9k359ZsS+ZaHG2sq02fERtUe+cmSc7SeLeyfKzfRURNc87Zeg2Kg4gdD
	Pm7OCeZnrnXtDluNfIeKMtAG2JcqPxseUXUCCjOrSQaeoEiP2P7qrfocnHJotqc9a2H7sSsYM+1P7
	v94uUlGjUNPQfSf1QMUgnc3j1z7WwkutD5Nm7mWvdDBH3abrlM+c08t6k9HRRg/ikwdolDUwhuOiS
	qj1iR9HB6jgQ0wP5inQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5e01-0001DC-V8; Sat, 22 Feb 2020 23:15:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dyo-0007Za-AP
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582413271; bh=ZfpciIj4N/ohC5xxET/7O8AAxYB9cySsBo6ydi0t5+E=;
 h=From:To:Cc:Subject:Date:References:From;
 b=mBIbednIO0f1b1OU46STOHFWNVaSoDFgW9GXvd/AxkhWoElcraX72ilVHdTdRtHbB
 wS/hbfGVmYtFnU2ZvVuRqm1pmCotSeoX4JbTDB7OT3smhLf9ka5SZJNiQuZMjBJw4g
 o2Tapz8AEKRv0T6titDi7YC14Z3/qawG3YLziTMM=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 1/4] dt-bindings: input: gpio-vibrator: Don't require
 enable-gpios
Date: Sun, 23 Feb 2020 00:14:25 +0100
Message-Id: <20200222231428.233621-2-megous@megous.com>
In-Reply-To: <20200222231428.233621-1-megous@megous.com>
References: <20200222231428.233621-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_151438_529726_601DF76A 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is possible to turn the motor on/off just by enabling/disabling
the vcc-supply.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 Documentation/devicetree/bindings/input/gpio-vibrator.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
index b98bf9363c8ff..f8f4093a0a454 100644
--- a/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
+++ b/Documentation/devicetree/bindings/input/gpio-vibrator.yaml
@@ -24,7 +24,6 @@ properties:
 
 required:
   - compatible
-  - enable-gpios
 
 examples:
   - |
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
