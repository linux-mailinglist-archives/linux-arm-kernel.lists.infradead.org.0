Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B1D11C5E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 07:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E8BHSHDn1apWqkBVgzRnbTuTucaN3VZ9v6jLfoRyiJ8=; b=JE4kDYfPo01GyX
	7aBx5Hnm0+HzZI7nLmCYeXEBQHKxrDVH9mC/y/D6txP/F0uFOKI5ZyMq9rkxJoZNJS+md6Ns7re+s
	dLtgtcWln2JsXJaIzAjjqMQWfmAVMypAbSOqhbSX1sP4IVdUqPYE5YonHV9WB+aLzzUuGOPgSb2Gk
	54EmghHyizdwhhPXHKXHq8DWYFz/EGwW9N/WnT+AVI/EjvJ1tizzYLy7mDWJLPf5vReVOwBCWoZ2Q
	ZevWXhIv32X/8CN6Lqqr+3GdiTitlcAsl6kkG71k32lzS/bWsnVfCwfmjRb7lPypEt9aR95WfX1gV
	QrBdiDIGBs6NtezsuANw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifHnV-0000DE-Fz; Thu, 12 Dec 2019 06:18:01 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifHnN-0000Cc-2T; Thu, 12 Dec 2019 06:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576131461;
 bh=KL73YRrT7LLHVsznmPTHt/klCRSoc1CVMKSMBDmBo6I=;
 h=X-UI-Sender-Class:From:To:Subject:Reply-to:Date;
 b=Tpc3ARXxO+7BOveLypF/SVr8mN0m+AgXaOl5a/zuwIZlfLxkuOvwxPmPNtZTI8OmQ
 nDRZjvPdrzU/X4npI+hF0EyGJwd5ehZq1GlZxO5AxGFBzuVzlmxWmnPGmnlGHdYwb1
 HYnuKO8tdTiqRXa1KWzBzRHzBv9dUZucJV/kZpbQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from corona.crabdance.com ([173.228.106.20]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MKbgE-1iQujo3OOq-00KwkB; Thu, 12 Dec 2019 07:17:41 +0100
Received: by corona.crabdance.com (Postfix, from userid 1001)
 id BFE2D6E85603; Wed, 11 Dec 2019 22:17:02 -0800 (PST)
From: Stefan Schaeckeler <schaecsn@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] thermal: rockchip: enable hwmon
Message-Id: <20191212061702.BFE2D6E85603@corona.crabdance.com>
Date: Wed, 11 Dec 2019 22:17:02 -0800 (PST)
X-Provags-ID: V03:K1:kW48YWv2at+CtoZ29KlwFzvfojnYn+Z2kTPJCrfxCVA5Rh90eXV
 aM0gPv8hwKLUJ2iDVrZbWVOWIqDS4KVTl38TNMvJV32rVUullnP6dlrbKMYeIcndtHucyom
 MSUCZDZU+Xu4+kEiA13utXDD/2NBQynNtjXJeU09nBD+OkbsLck4KpO2RGz+HrIqDiZSCgj
 fKIBwKd4KkB87Z94yizRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8lU53RZXNGc=:sHRJzAdIaFHRXzs8mtVvzs
 f6InwGCn/l5BZMSCxMyTXAhaoZ7dS9F6qxUBsgCvr3SSROiqGwCvMl5Qe9plRrS0XFICiO4lr
 dyCIIF/Qk0ByJPzjOC/m+CA203m/i2Qu0Qve5T9s/k/MCXqsov2QFvZ6na17H1rYprH91OSe8
 g68xOoJIFDDEJDGSI4v8DA3hg0MbacLSrkpP4GUeJEOpXWFUT9NAIyHSa+iIIH+SCUQn/doqy
 BZzt4R6NvLndpk3bNnjgYWOgVqUakjsPdsacPEQOQk10BpQhiqYwi+lMIITxLyty2F/v0Y/Ww
 rnnobEPvXAZsbYJV3e9j5dpWQCCOeAqIGeKbgavxyNXA8DP+gIodRZc05eoovlGpaHXuAza82
 fyhnX9zAg3YvOPcYglyMFHBlGytIgwyKBIPld5+cqtUJ0HH5vQF1JQKwHSQSEX0zBIEQO/rdB
 4dKC3BWAkssdJrJXpRsAR0Dil7A3WBWpxtsBdRy4t04OuhlBKAnmdh6cjHwR5pWTDPIt7zWYU
 v1CQwY1XY15Cu+upIUnbPmxEx+DCYxYwr5xn++HpuCvY5w/bukbqw/S0k66g1icYQm/seM0Fa
 3ziE1uH00dSP1q7pQ/3MQ5NvPyMEFGQSQMBt4ZtHb6ByFABsEAK+pRD8a7YtkI7P+IxDkK9d5
 IFpBK4OryV0yYSWKuqxS3y6aoTYOKN8Qi36v3Ji9dGZiwOf5e9fxwvnHbBADNqd6LclyTRrVJ
 svdqUX0ikEm9/aCN/mGbnzEunSwrd2m0EX0z6taP58gWYUqJ5WWSl3RSDW28B5FUB+A4pbR5i
 U7d9h33aiVTOG/ffx3xnq8skbj9jCt2VVwk7i1OXlFXD0Dt0532yR//0rifOqE5bp3h89p5BC
 WeB2dzdi/yFIfVfUaSMhB8h9M48KK9D/IKtiUKaIxBA6tTVKzSwHk7NucxKfoI70T0p5QUfho
 obCWmGjdX/KP25fo3T3fFJXPQqyn6ERXmeToAhWnq1s+GgT77LuWVWRuXuSWbJCTWTB6bdI97
 HI7hCrFDAhnhgJJ9bjjD7/qMnBpk5/GjlNuzPZBOQpIgZCx85l7Fm58MU+aViFSzB4fcP9glY
 uftxD3KXeknjou9mPmBr3Xbg3xsY+mb0fN1zgs5z1VzvJhIVAja8gZernjZ/rNZk9jsg4bD5B
 vG+uAdgqho/YkxhO6smQ4268B3zsB2vUx5EXqIBVHhrpZ+0fs9WmbFoWTI3nF9EbwivaZZq7A
 tRfztC7BrfN3WKncCMrtszSwpEAy4cdLGOJFu0nXcrIKT+YanoRLnHNl8dNk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_221753_443246_7A905B63 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (schaecsn[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

By default, of-based thermal drivers do not enable hwmon.
Explicitly enable hwmon for both, the soc and gpu temperature
sensor.

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
