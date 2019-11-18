Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4109FFFDE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 06:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kEK3qh8kIUq+BL59UXnHaAhgP8X5qF2r68ijwT/tTK4=; b=ke1AZgjY5FMVcj
	sPCtpqhdjTU6PW5ehBawJmYAX731ke+STF504MIM1vf9jxRNEfWhBybt6DC4QSp/YrJk/h+qjyZhj
	na0ufPVSQMmBHx6sJkT5UVNvojNcSKSl4hZYLUpy6OUfD4X/hN9y96cLPMfbXtpksKfKyo+C4C1ke
	HwjZB9+69wT98U8+eyRmHhqA4bOj3FBUEGzT7MmA1FhLycoiJQIynzZrHxpyRKAMw5a5eKfYMOJ50
	MowfBVP1mkRmLaOC2b8JMql87IpTIJn91YUBi79+neG5ZZ2hjkw9rn0f9/4RD1MGEJ3/cv3DNHakg
	S3XqpvSUhDyXCXni/2Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZXS-0001GB-R1; Mon, 18 Nov 2019 05:25:26 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZXK-0001FP-4U; Mon, 18 Nov 2019 05:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574054705;
 bh=NeILx/T8Pik6D58S7boVuKRO6cRhdtSWxt4CpQ4nwtI=;
 h=X-UI-Sender-Class:From:To:Subject:Reply-to:Date;
 b=ZaA+xVOoVptG3MF6ItV3dME5y1McB3ltyNA4iksR5E64OkpudyLhn0Dy5KmQ6Bzll
 f/AFtRygnpvjegM0RlHMgvQeu9RgxXOfs7+R+U+Amg1YCKm1caP2Fn7Y8EYbMmXGtn
 sQQ1ieV1yUhQHRvTnHQ3U0yTyS3aU/TB8sc783j4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from corona.crabdance.com ([173.228.106.103]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MBlxW-1iidHZ1KG4-00CCje; Mon, 18 Nov 2019 06:25:05 +0100
Received: by corona.crabdance.com (Postfix, from userid 1001)
 id D729B6E85603; Sun, 17 Nov 2019 21:24:13 -0800 (PST)
From: schaecsn <schaecsn@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] thermal: rockchip: enable hwmon
Message-Id: <20191118052413.D729B6E85603@corona.crabdance.com>
Date: Sun, 17 Nov 2019 21:24:13 -0800 (PST)
X-Provags-ID: V03:K1:rf6ZT//QgeDRxJTewZdp6iIroYeR77NdAr53keY7G26v9Tauz/b
 4ynhW4A/BDenlnipormdiNH3mwQWqduogyanwbLTn/nX8wj0Cfl0nq0/zwcCekhKaCodCvr
 d6JCiH+ExU8Ev+0HF1SDJfFuuLtlI0HAJ7+jSO/TQsbr5lm/PI0PWaiUEbAbSSef9F7BM2T
 64Dl7e8frlYvklivVS9IA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PNxcuapc1o4=:vsP2qi5hr37JrUDFqLq0dg
 mQrLo6kMZbPX45t0Bo3AMXcSIcRzlDDG3FpxPiukKNDZ076ErTQ6pryG/pQowOjZZzjsQbwcy
 KU4+ErxHpeenNTZIC/dDcO25xR0jygCdOPqmFGZCFcKmy70oPCH7nOJ+X1V0c8BH/W/SNwmNx
 B1LVlo6jYabIWbk3X7cfzcfKMkb3Je3lTyzRsISFziqs4AREnoAbqnvGB+y3affkdJpmnJD+Z
 pxSUAs1ZwGFjR1eVPboGa8CDwIuycVtIBwNRssa+ydEbEdNy3/sIsbZT4oQ0hLi+t1FCoDLoR
 mtDtvAfiqpVHYreMh+8yhM1tuglE1dJMX3/FjdJlXsiD0UZJFTXSlrzAJfeiHGi8feQ/GVJKp
 lzE4DIoMfDsa5IZnX49Rw4JuRDzxGZiFJuygfpiCJyBcCFywo4BKMZWCT8WlwA2ON4Bnx2j0o
 QIaAucvFJw2f+rXO4asnrbJKJScMsu4rzHTZdUBdUhBb5gEhKyeMkohZOJLb2uS4lAM6+m8js
 i0xTOo4yDnMiqonaYpsMg40WCwYOK2MmprlaStxwVwwY0cVs0z4syQyCCIrI91eM2Vc1uCb/9
 0P1/Utb9Lot6iIqqyHnDm9JRfatnMtNk0ZFiO9ky8heNr0afSXkRn7Fom6TYFjmyylgwAE3Uh
 w4SLaI7M06Uy5sqfZHhWQZwCr7iM42WHx2QI2CYcjJON6NJ7NJOoYNLTmEjRP18YyHemsIoSQ
 QFrncFWlFgtV9LwsTGSTSbfUo/KEdf13DlrhHZ+zcq3aNLjWCD7gHPj7U09dHT/xMBqjNJyF/
 18FfPWGjqbZIGFvfLXLIZHHxUkugaUprv4OTKwRTEcLnykP4WFibkEJCaU8muDaJlFkDyuFOi
 QQeuM4xpXdRtv3BiZwdLMsNHNh+QDCSk5Wdw0u8aKKSsSb5Odd2Vg3mXgNQcK0saoU1Fw2oUy
 MkBuu2uHkxV9ANp399vApd7iaUGZnONlrWn9R/eiDR989o9LG1+qKdGzz43glM4dl4LBn5RsW
 oSJzo5vEBjHNC8Ge46ccDKc6zrWBlFhNi8e6ONZKaNv4Ys6KVr22LqFUD0drWRW02JWbCqAj1
 a6zJKZrSchEoJD4WPs/EhcUO542u21RTgQMHDzOwaHsLxuPAtVCsKd31AA2w9xDQ73BhnziEe
 TQgLbsGFz7T5RNd2+RekltKn2WS7ngHX56rnzjMdlvjpGKX4TDTiejG+DJM7aDzRUywBRgi8a
 Y/D/nUpjfVoqMFeR0f8yE6SrkU2fBLXOSKer5IQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_212518_509729_BD79DD1B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schaecsn[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: schaecsn@gmx.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable hwmon for the soc and gpu temperature sensors.

Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>

---
 drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 343c2f5c5a25..e47c60010259 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,6 +19,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>

+#include "thermal_hwmon.h"
+
 /**
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
@@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_device *pdev)

 	thermal->chip->control(thermal->regs, true);

-	for (i = 0; i < thermal->chip->chn_num; i++)
+	for (i = 0; i < thermal->chip->chn_num; i++) {
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
+		thermal->sensors[i].tzd->tzp->no_hwmon = false;
+		error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
+		if (error)
+			dev_warn(&pdev->dev,
+				 "failed to register sensor %d with hwmon: %d\n",
+				 i, error);
+	}

 	platform_set_drvdata(pdev, thermal);

@@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];

+		thermal_remove_hwmon_sysfs(sensor->tzd);
 		rockchip_thermal_toggle_sensor(sensor, false);
 	}

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
