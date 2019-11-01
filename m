Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F307EC3EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c553bi9c8ccy4Xb4RZAhcD9oXhxMAMMma01ciH8nrbE=; b=l8dmcZ4OIM4LRvrQV8nAqf/cEN
	+QTMQzLLqaDx7FuBl8XmaPgLhVM/FWeQe60+ubaBi8aGI1rNRGwn4CNMDzqUlrx5lbDZDvZvGb+5Y
	l0rtabELmj4C3jCoHdCQaQQhGbh/Bmom6X5D4bRVaRQthgiB48nMna7e/dnBonNqcVNLXDngknyf0
	y/qawzEw29xDFvsejsnG4RM1tGgaxnBcPf9GqIVng58kzvv6JY/J8us3Ae3b2clgT04pbKe7xw4Wp
	/TrgYscCkKMVSWa3ij7yt4bUcXAn8neXJkbftA0UFT/HNaOZiWjsZ+cJJk3t2yEXKPy93jX1YVnTs
	IUNZR0Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXDO-0004vG-G1; Fri, 01 Nov 2019 13:43:46 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXD1-0004iV-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572615790;
 bh=G2JQYHldnl50zbZW3JMKhp0c1cNsuaONpIMkrJ/KY1A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=As2ICfrZ6dP9svRVq3VYkJZapZIuGCT4dfGp5jepvxoPepDqUZ7/GdEBLYOLczpsD
 YLwzcIZprxLKFy/Nhj09ng2eCZ4lIzOZ+l3eilNnBHSDdG++8nSUZ36bZh0lmjtGq+
 Gd23zG9lwzpFh5cZkQtrvgLf+X0N0VGPAuQyWiOQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N8GMq-1hvtKY0FqS-0148Tw; Fri, 01 Nov 2019 14:43:10 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>
Subject: [PATCH 1/4] dt-bindings: Add BCM2711 thermal
Date: Fri,  1 Nov 2019 14:42:26 +0100
Message-Id: <1572615749-9524-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:XnyeRi2jiPspsf4cwaVjO7Sm9iumAfDgEuhhWAzWuUTyzpkYTrn
 BZ4zqBog/lv978dQiAbhvrQjw18T1QuN0sYetKc4U8LKMDUfOQy8viOFMaPkuyQrzg2eoM9
 AFlppBpsz+22+a2Xt0WGqS+MpsOQXB9B9kJrBbw6ou+lIoIn19T7tcZVYbzk8FpdRc9xp4G
 ICQ+A5ANyQLuqvaacA29A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eb27wEqko/8=:dZYolVj9YmOQf1lyukuXK+
 wbcZ6wQJnr8dEEwvs2blpP12a8QH1sc9E+o6QUjCEsLP0/+OhWW0OsHaammYuVbloP7QwkNJc
 dboo9BfdAPBZXckhXFdBK5U/DA5v35KL+2Ax4lj50NzOOd5GD5GqPslbMgyLfp92Qpt9wW49t
 utMfXvQFK0HqT5Lkljnlmzbt/869k2GU1AcedKK8kPvJDhgLry5EkDtSGY8uCtZk9Tzj8k2vm
 XiTIn0ZBkR10CcS9r+rovHe9JxiWm2X91v4d4D9L9Lx4ed/pbh1eAIaW1P1gmlavpIND/gHVA
 1q9tw+c0HBOhR5BoXT/ZRMoUCQN2JvgkiEUmC+DkFgP8uJUdZha4qLmEtrpv+FzYNAPI4l6Ed
 R943ngFB90lWQIkr+98iv6YO1uDvcCbrXRmywEBX478vpJlfqDvmo6CiPxKGI1ZL960CbKevO
 YgJXxhCPjVcdbLkVJ6TVT2mxT7fJkmDNCv7/ClL7YGjdyOBEikXORb6qx5PTXi4xBZ8VKqKj0
 zy5JFc4WfKrBgT/m6DnI5EY6KvzYV6QyH7C87WaON1ujpuPuK8P3v395S7kJBLAJtBltpEqUg
 W1CmvJwx9M+C8j9h+RGyc/4vC3xm5gBQFZCDqOtaeln5n7BuQxKQ/nf570AqhuG+Z+RCKESrb
 p6FJmB0YyIawSi8JDmjZV0cEaKl9XfNCuzZufjr8izFLxn+qE6rKINp+BRIp8rvhwejNabMWf
 MySojlAt7i37Jd4vFvz8LEhXVzOuTH99ovxQv6+mQgIxeqJnU4BG8umOPwDzlhd06+TT/3Fd3
 xLCq+L0F/4Lj3SwtoM36OWQR6dMFBaffsTOzAsfmpLUon748NF5x4r2v3wkM33ME3pLmNa20m
 CKEq+5lyOJALTjZY1DATbsp1UdHhRF7GFZsxgnvIyptEKGFAkoB1ftCzo3OKJ+MpW+huCc3+F
 xGM05bpv9RYy8pcKOZDq1lYndf/tmNFSMnSGWCBoIF48NsgjJImwfrB1eWEldlWtWbpxaQEiH
 uqmbyEZ5cBFiPwqR/zW2GdShItd22ARYL1HPYJWq0sgv8BOCGZWYepVDuCctnlA3u++xQlkF9
 Ex2fjYWes3671H9njr/6zGKkblMzxsEe74SSasSavXt94OvdnGjhwZjUMyJ/2J6Q+apEQfHby
 na0b7n11ecULFE6C+saJKfYggBtullLsEemT53BJx3h1Df1yCbM8wGETtoMilj79pu7p28nG1
 8UICQTetG56wX0DWfQu8EmdKuIt3ardik89PYRA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064323_502874_2D867005 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the BCM2711 doesn't have a AVS TMON block, the thermal information
must be retrieved from the AVS ring oscillator block. So add a new
suitable binding.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 .../bindings/thermal/brcm,bcm2711-thermal.txt      | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
new file mode 100644
index 0000000..5531d3f
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
@@ -0,0 +1,39 @@
+Binding for Thermal Sensor driver for BCM2711 SoCs.
+
+Required properties:
+- compatible:		must be: "brcm,bcm2711-thermal"
+- reg:			Address range of the thermal registers.
+- clocks:		Phandle of the clock used by the thermal sensor.
+- #thermal-sensor-cells:	should be 0 (see thermal.txt)
+
+Example:
+
+thermal-zones {
+	cpu_thermal: cpu-thermal {
+		polling-delay-passive = <0>;
+		polling-delay = <1000>;
+
+		thermal-sensors = <&thermal>;
+
+		trips {
+			cpu-crit {
+				temperature	= <80000>;
+				hysteresis	= <0>;
+				type		= "critical";
+			};
+		};
+
+		coefficients = <(-487)  410040>;
+
+		cooling-maps {
+		};
+	};
+};
+
+thermal@7d5d2200 {
+	compatible = "brcm,bcm2711-thermal";
+	reg = <0x7d5d2200 0x4>;
+	clocks = <&clocks BCM2835_CLOCK_TSENS>;
+	#thermal-sensor-cells = <0>;
+};
+
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
