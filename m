Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D6B6C1C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vegMha+HdZa8uKVdN04Gs0olV7zUoRpD1TZdFGPDck4=; b=Ld5lQEXb5hU/seATEPUjNv2FXJ
	zEngsL49ls8KHe5Vp4OL0CUyZ2AJGCw4o19jBNw6lXbNQwLkMv2pUeSzYOJAN6PLAtBNIPIP7CRYK
	xHgkfPNtMyF7ihoRq3RRu1I0gfeyvP/mf2ucW4TnogAhnNATuWoshcayNvUpLM8kW7u7IzJBk/SDW
	Ck7Oap8wexNk0yP4MUcu0GxuNuKk0jZ/LyCG93NzAWLmr8DTBR8KUuz//ZqKFewfvl/VbuczaE0xt
	isApXHjrnsxfAK3GGVHGpRta+9/OIXiz5rAnl6Z2DNl3bv5t1DgpJDBFXZRKBAMZtg9Jb8GxeN0Ef
	xMdHGpFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnq0b-0005bn-1Z; Wed, 17 Jul 2019 19:54:37 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tV-8I; Wed, 17 Jul 2019 19:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393041;
 bh=IbHBEvkm46Df6NDQJU0fBgIAcSdQXQe5FrhYL3TkGBg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iCgW2v5DLqp63Lv5JWJtnadcsEKDrDvfWrTimoEguYOLLC9gG/g/WZ0XRP9oAr8IG
 7OsoNNropeO3nD9BWzEg/in6jvXvaqPEXWHWrCxB2Ll46BAfmEA5pKbuAGcMMJv6XD
 SmEkLsvAgt3Wn/IA2ZE1lUuF84K1iyCdndWNztYo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LoaCE-1iOnak3ery-00gcHl; Wed, 17 Jul 2019 21:50:41 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 02/18] ARM: bcm2835: DMA can only address 1GB
Date: Wed, 17 Jul 2019 21:50:10 +0200
Message-Id: <1563393026-17118-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:+5q58Km5FEwEe+uM5Q0Gj6kw3og4mdA5ECedTbzfgxPiG09Eis7
 ptyvC4ZhjRm21dxrBSg9WlRG8qaaC5YVzTxORJcP2N07ChxC0hKlaufyFIMOS9u+oACfQPu
 D0TfK1YyQjtaZtowzAmQWM/eT3t4DK5X7I5KqQJ7OxF2tVKgpFmPT1G3GhK1y3QDMjgvtj3
 vktSSMngEZp9OVaw6RtTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kY8C3gZC1ms=:KBarscFDAHaYmxzAyGF4ih
 32lWvKJIgAHbCuKo0R+vF4SA1MvO4YpqQh+bDQRL+KRlaJ0ZM5rXZO54d50ErEJggWGguVI/T
 sXq2P1l5ggSdoT19LoHtR4fuDtkRUQj8Cr8LzOmYd7W/hGAh5Me5oGn+d8BCxgo9YtQQvJEk5
 x+rrMH+fVWz9BwR730vU0/Gtwbl3JnpGpOdhMC79V16bXla9lqg2jn+/OPGsCMca9xP9qM7dP
 zcjVeWFaVoxFngrvcl34QIWd5gwfe8KIfVBNNtMbmjdUXX2eytEwnARvs+2X78FOhOJJgxqts
 EADvSADr7Aa7/JQ1KEIWy3aWuv8PIoMaLnJ0eMJLCDPG2LkMXLvErenJrEjCFHS25SSEbbjkK
 gOZ9gm1PjagFLHb3Jk/tio3FZ73Q7muoh9lO6O7oJppiGtQIIcrVzrJdzb89pC+v8lcpeVyGS
 2J6Ju0p4KuxhqrvGklhMpgiaTxA60X7Wh0z31Wz31rSv2UqcF6rEKC9gwTkkKUorNj+03G+RC
 SdEmBko4++0EjzJ27W1qwEHyVUWWWY2MEi9MUKRvN897aTDIyHxj6q5eHyw+HX0SzzUbp4rg5
 RtNpm7/6+q9wPlUOIzHJyTv9O029cd0aJO91/bJukRltJmblFhPnZzcblrLA+c4QIY3Ak2Kf/
 6kwqc6nBeb26MN3VM0PIYkZ9GfcOoF4ynMUmVfc9eLDeWJ2wZzMHSeKDhpJIx2TWhALpzl5Oe
 6x3W9ruoDHMwCgGiIrTzRauFlwduqxLs0Zo4WXca6TIg9112sBAYi2/+yLOTpIgn+HsqUoyYO
 p6ggPKgUFZgsErfvRzOYwlVag0DFCAkohH+LJ81B3o5ZxZ6qBOLQ3kxsegD86gY6I+dPmV7UR
 IF8sogl1Ky+lB5K4CWbupL38ne5D1vsLDPQS4RtNsBqvmX7YUa98+NCN1B7cyA+FUQdf6gRwX
 q0idC2+Vbq1MgGDyWmo2AMh6EkHc9yvdr0hCqqHAQ+PcRfEEG6Jp3g/PklCXAIPrqfkRB169V
 VyG5mzEXRKeoAM6lqdSCsHAo1pDqa0i6J3qUazRNoDuNYV5u/a4eKaRGS1YOoMw6MoR7aaEUW
 GiIku1c7nqAsbk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_607741_50D17227 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: Phil Elwell <phil@raspberrypi.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Phil Elwell <phil@raspberrypi.org>

The legacy peripherals can only address the first gigabyte of RAM, so
ensure that DMA allocations are restricted to that region.

Signed-off-by: Phil Elwell <phil@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/mach-bcm/board_bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
index bfc556f..d2b31a9 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -24,6 +24,7 @@ static const char * const bcm2835_compat[] = {
 };

 DT_MACHINE_START(BCM2835, "BCM2835")
+	.dma_zone_size	= SZ_1G,
 	.dt_compat = bcm2835_compat,
 	.smp = smp_ops(bcm2836_smp_ops),
 MACHINE_END
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
