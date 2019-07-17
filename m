Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A96C1B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c8EaMCvYvwPAGREuWS4/6G/WLymSLNE5orDls62EZ3c=; b=egTJrJnutspQrpONm21v8p4HHM
	/jATcwFnTCDelkXgCegME7XOJL303fyBFWmZmUJsmIlqhMTbH7BzyopL/v/hleVaQXuI+IwIL+msj
	W1msriZm79ZuLHqdX3TccNKZ8d924XgvHQdjYhS60lOsKVPjTZhpnmlqQnTnSDjT1/DcvafdVIv9v
	nFHDMuwrneJ5LUc4vupn7bK2dUe9N1n9RC0FETO2Bo2LTlDHIzy80q0lXXWxRlw03jpU6P0O6sk2t
	RZmWVPB/VSWbgte2GrZvlix2ZkjJjSv7k5HM/oW4c8JSHBOa2WIDyk9GMheM4MNazzst/7BqLMbcM
	Oz5YG7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpyA-0003TA-Sv; Wed, 17 Jul 2019 19:52:06 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tU-7B; Wed, 17 Jul 2019 19:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393047;
 bh=TctOuDTMF2+mTkyAAYxQiJpzWSxmzO7gifGGf/XX1Q0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gWiw+9dnz7FLf0EG/+I69QvoKRreNyQhm+22sy3ZkrZm3do0oQT2q9ryxX/5g84OA
 M/rwQAo0jJ8mHTNRJ3mBDHnS+elh4asiq/bFNoJyWSS33sb3LKWr5O2EdL3h3h8Rqw
 Acowz8oKwwmzBdhLcCQwakhfpiLk0wCIwvP097NI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M7CRe-1ihQw50cgI-00x2i1; Wed, 17 Jul 2019 21:50:47 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 12/18] dt-bindings: pinctrl: bcm2835: Add brcm,
 bcm2838 compatible
Date: Wed, 17 Jul 2019 21:50:20 +0200
Message-Id: <1563393026-17118-13-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:87Ew/UJtWXs2QXR91bCBFqHCtMnLslfvTGx0KTFgyUdg135m0/c
 ut5pTxI1URukaSdaowrBdos5TzvcM4Zr7PCZBMgRUk56rBmXptyk5k9uhT/A/JFP4pdsoJi
 vipXTnrTROxCq4lznmxb8pxy1EzNHwmscJjeGKHZS2fs/7LH44yNATm1BMN602VX+xkz7qA
 ZuF3TP6jXjsGJO4auiSPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GXSscg8RGqY=:hpwIUehAdXwVH/35BucHtV
 8ye1FO5m9O/4KO0U5tNWO8XxUEzYdJ3A7k5O9KqH60oIzIY+nzYi0y1NLE6Z2vtwyfDv5UTQT
 4mbNP8Nxpqp6Cwl8pXXGnEPskXuz/1aHf3jGN1V7Ov5k7jZzoOZY1vKp7/AP9ig7M1YcQLrv3
 poZgRpklJqG3q5UVw02YHhjv25gBKpcJisFVNHqjjf6CvKAb9OlGLkP9uTKuqoED9oeBQHSpW
 WykxukO2dzf54v4RFY1pghLqufE16fdyVWUb+BZQkNE3XObfuAliqdjYwdBM8YtIaacgIbfa4
 EDCREuxgOlYAIojNB2ZvaSZr8Mdi8BJ9vMHIFR59eNid2Lr6BnN6vduYlGx/R02SGUC9+BWxt
 pJIAKhM++HH+Hp4JUuA8ZlzN4UvjA7G+1MDgWHaI7O2i+1fbGP0CY522GrdAyvXTNxM8xzIe2
 RqhYRMLxZmtxdrm8/PLdmZVZp5R9/J8YOEkpa/jNdIxWakpr9Vx8bE7fMp3SsT1HrZOKw1x6f
 +Ewun1yFxxbJ1HPX2ak4e0TjG7qA4vIYOWqbMAIQhCsb30VrpK/ydjBZ6lcvji9r1S4GuB6GA
 1f0Z6wpItlbSsNx5bzv4wLHSyECuWflmuGtn6J7rlBdXFsGsALeNjeLfs8hxAp7ilUksvhuZa
 +yMHomGr9nT9UeDiYk1wdBi6SXZI6yp+M+M4FJpvuDuptWL4Uf39cZ5ogooJRw4tD5AVqRLDZ
 ptQCEYNkWxZ0Z7OKM5irkFyw5FR2ey4sde0HyG7+ytmZRw80CMkN9uRLo02k15HmQDlTTS+Gt
 4cPptUyh1OafXfugx3bpRY8pU0oc5+dirMGzUAOHoacDaSAbsFPe5XwTCJ3kwOxRBn5gY3Do/
 GkWCpl4/vxRlpmsW3L5t1YXVq7g4fxKiN0SDiGWJAPcRq5XdFhWm57jL4L/F7Q1eaHc49gKcK
 RaeIq6gBEsyzlmX19gVpuEO0KfKNn2uuYuWu12QbaF5lT8I6eCiAa/Xw3+4LKSvwSUZtgIhvg
 J4+dY2/jZgRKQlX8qJD+dhMmgNr1i16/ZYGI5qkZC7y306cIgZBVTtZetS8/Yxl5xG0kxmBYH
 w0zepiH7Ytb4vo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_559924_8114ED99 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new compatible for the BCM2838.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
index ac6d614..f7835a6 100644
--- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
@@ -7,6 +7,7 @@ Required properties:
 - compatible: "brcm,bcm2835-gpio"
 - compatible: should be one of:
   "brcm,bcm2835-gpio" - BCM2835 compatible pinctrl
+  "brcm,bcm2838-gpio" - BCM2838 compatible pinctrl
   "brcm,bcm7211-gpio" - BCM7211 compatible pinctrl
 - reg: Should contain the physical address of the GPIO module's registers.
 - gpio-controller: Marks the device node as a GPIO controller.
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
