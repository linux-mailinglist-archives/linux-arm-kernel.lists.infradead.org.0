Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E25D6F92F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6dwLeROd+cHOvy4nG7IkbsFSn7FBFZf6JBUGr7Lung4=; b=Ji01E9kw6Zvht2Lg1WnaNXPxGa
	GmhVLCxSAWm1KfT0AWOwazXPHbuADHiJJsHct6gwZHDk9M3+0jiCET8kxVjS/bq7P1ZT2gD2XZM9D
	rV2MViCcPkFTYSva00zytEoMoYaltkZe4PI6XS3oNCQM9kC0XUBl/3iw9+0Gflh5Vk7r+YKym0Y3S
	+9lAW6QDTShGUYu8GWyt0AHVMBuhT8qyZN4xBKH+k6Kjz1G4G1RdPzCPMmmjfymF4DvkSxUcE9w/C
	TGb3oRFVaG+VqCy7lNjmOO3HyGU95zgt8mTt6uYyqln3FPDyTr9G6pYxIRjUXIUGfbi4ytlVaR1HW
	kJwI8+ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRK8-00065y-Rr; Mon, 22 Jul 2019 05:57:24 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIi-0005G6-L1; Mon, 22 Jul 2019 05:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774939;
 bh=iBgoZEjqz1uvIdXtw/jNq8gNBaVuMlaRN35UMIiLDco=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=WAcQDrsb3w3p7Xi5DZHYcCaC8VjjmomOSaVi+vLjBkIYXlq6n9LRDoViTrLPhcCG/
 8T/zHwRhLBnzyLl/MLyrI6JIaeGTiHe78FclVr1enuxev52WVK2G59tBTd7FZjx7fY
 g9hrhNnFY/Fubf8RaDy41kdPd2LLRp1Hg/vF5Tq4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Me5Q2-1i4Dmn1gRq-00Pxpf; Mon, 22
 Jul 2019 07:55:39 +0200
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
Subject: [PATCH 06/18] dt-bindings: bcm2835-cprman: Add bcm2711 support
Date: Mon, 22 Jul 2019 07:54:37 +0200
Message-Id: <1563774880-8061-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:l/MjxzPQLu7Ob/0EM/lxZew7fom9VFEYdrdZU8LU4EKKAr/D1J1
 fM+Z1x/rK7ksOIO8DrAVlJc3ZqRmcvBsFeqPeoCmpJz2NyrmAK8YpDddDSSvkW09NBiwXmd
 BpM+mZZ4FBTEC3zvWYcLzm0EeCpSb3RkLJgGkrP9k6NmoMmR9oSHmH8shJPcO/Ap47WMKZr
 /Z9D2x0Cq20ptvVHpQaOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P+/kdd+TwHM=:8FUBPHf0/8+qFt6wQVsCh3
 Rg1HiKrxOrblkjCvfD7+fXMt/S8iiYvYCbBThrvZrJjiBJP0DAqvj95O6avO6mMBAbZ5Q3ko1
 r0iBI4bxhqyWkFF6Tc2EU55IKVCUI69gYbxGqaMBhZQjuyBbkjpY/wpjrtSvuRD3Qg8hN45z0
 rFLtRN2V0llLayek1PZVVxMkYQL1DtGGR4CkYcssjT/eGPdHVoNafi7Xk1IDhRTegw/QPSlrb
 g5EfkQ872NmBQE/Z9qHjlOSz0OqQ/OykCT3B929avxPY+Y4+ug1ZccE5ODQVzmX1UpOs4Iywl
 DAz+0uYLupEvO6qWm4vhMRePBQglLldxj/yzj4vVFNvHTXyJe8rsKFiis4cB1GpnXot5KRwUU
 fGroCSjypfS3fOn9qE49h3hthWb80aOQ5zlpf/xt+Zo8LP5J/+h2GdPyO/iXLpTShAslxVl+P
 JO8aAVMAMhSUxxBilGLyZbuJVSg1QWCD3cn1caJUlDr6VXBuQhvuCmT58rbwvuvx58wre0Iav
 CroiRlV9JYvrIc+FvRxe93on4SlK/v8bzLPBtNzfqjMvUaugghhq3PNUilMDcxfuxw1QUZCsA
 T9CKcDvaY5aQsONWvX2eIjDRqzOPfAu3XwW7HC/E6EPm2aq19ukECpDpegeK0jMOKX93OWBTA
 P8RS6lg2P+s8OyscACluqEXHGaxUnrZ9S2ClwqKYl28cdHOmEwcgWn9MVFgppoc3sFcHEhjrt
 7Fu1V7YkOZnNCMU4hOvqC3zNc8ns448kKaAuES4E71JG2p84VjZ7ezWUSWtcbHlID8ZwD8Uby
 jubELe3i5iwk6UZ4paNdkFkUn+MUB7q3T+BnhKkbiEZkf9Q9KI7cyxccl3laQVzXfp65VQRpK
 8m/+K89Art4FReadbrmZo0AFMDDFT/bbch1L4aflo9lqo1bFa21iYC93zv3P7BlTD6sVy44Hf
 drFuGnJHBWvcC6UjksrxVFVSsfbwc3OWH0zx1K510fCB0ITijK5E/acu+DHO3379y2oNSZGGc
 o5Ujd3nQanzr2LiRIKjdfIOdWqJwcjYxrZykpXzlFsT2og0XTpQzxXuL6To3AyoQLcp/CZy5j
 eMJua1ikFqcBbA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225556_979759_F4873112 
X-CRM114-Status: GOOD (  12.44  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2711 supports an additional clock for the emmc2 block.
So we need an additional compatible.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt | 4 +++-
 include/dt-bindings/clock/bcm2835.h                             | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt b/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
index dd906db..9e0b03a 100644
--- a/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
+++ b/Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt
@@ -12,7 +12,9 @@ clock generators, but a few (like the ARM or HDMI) will source from
 the PLL dividers directly.

 Required properties:
-- compatible:	Should be "brcm,bcm2835-cprman"
+- compatible:	should be one of the following,
+	"brcm,bcm2711-cprman"
+	"brcm,bcm2835-cprman"
 - #clock-cells:	Should be <1>. The permitted clock-specifier values can be
 		  found in include/dt-bindings/clock/bcm2835.h
 - reg:		Specifies base physical address and size of the registers
diff --git a/include/dt-bindings/clock/bcm2835.h b/include/dt-bindings/clock/bcm2835.h
index 2cec01f..b60c0343 100644
--- a/include/dt-bindings/clock/bcm2835.h
+++ b/include/dt-bindings/clock/bcm2835.h
@@ -58,3 +58,5 @@
 #define BCM2835_CLOCK_DSI1E		48
 #define BCM2835_CLOCK_DSI0P		49
 #define BCM2835_CLOCK_DSI1P		50
+
+#define BCM2711_CLOCK_EMMC2		51
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
