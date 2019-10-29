Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFCDE7DBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV/q5rZYz0cmqybdn11My66E/h9wfzu22u+FRU+vsfY=; b=TtK3eQ9LlUDr4+
	0Hu7sBVWDY2KRKrrT02K7yBbDO06Kp1OjvuMPiVnc0+gWqqi9iQ5wqDP2exyB5eIe13scXgHFGeWQ
	YQg0bGP51MmYF1XEbFZD4sVgdzsuK3NZYh84LJ9oI+iS2ntWy5lIHI1i4GpPWzN6biNioJ3J2uWdy
	spd5LWgvTyfan19vuzH9DXn5z61fuXRbdBXNjW24/ROuiyzVKpAUKGJdXf7+gkZVrsy9Z6o6ZVBb4
	UNirU3tJZ7RdMWM849VVYHfOAF7xbssiUE1yMbK/nEUU8WWNbamepXUWULoUg/s5nEe8Xyu+bTDVE
	Oru0ZzGIwhtMXS4bTcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFqb-0000RQ-0H; Tue, 29 Oct 2019 00:58:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFpv-0008PN-1y
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572310693; bh=uU9Ed1alXCTlnQaio2JNHFayvG2JjVGihZ0Bc7pg244=;
 h=From:To:Cc:Subject:Date:References:From;
 b=TNSWyl2Ze999zgh7h9TR1ACGGQ+600wsxoAwo6/ah57BQv45WGNuo6SRGE63DXY8V
 nSNzXQ3IhZjgWgihIcrcbH+nBnLGRGmS/mpobvX0Wm/3PY5Bhi8rpDKTJfoUT7mRjl
 2z6VKA1md2oeqQvdJkkb5YkUlQMqrdPyqXMl2i78=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@bootlin.com>
Subject: [PATCH 2/3] dt-bindings: input: edt-ft5x06: Add regulator support
Date: Tue, 29 Oct 2019 01:58:05 +0100
Message-Id: <20191029005806.3577376-3-megous@megous.com>
In-Reply-To: <20191029005806.3577376-1-megous@megous.com>
References: <20191029005806.3577376-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_175815_406415_E76F3701 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Touch controller may have an optional regulator.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../devicetree/bindings/input/touchscreen/edt-ft5x06.txt         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.txt b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.txt
index 870b8c5cce9b..0f6950073d6f 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.txt
+++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.txt
@@ -30,6 +30,7 @@ Required properties:
 Optional properties:
  - reset-gpios: GPIO specification for the RESET input
  - wake-gpios:  GPIO specification for the WAKE input
+ - vcc-supply:  Regulator that supplies the touchscreen
 
  - pinctrl-names: should be "default"
  - pinctrl-0:   a phandle pointing to the pin settings for the
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
