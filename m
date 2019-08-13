Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5278BE6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9IuHT5DH8EQma1RmpYG9hc5axikCibbvLj3iImh9Ovw=; b=hBUFbkQOQlJEUbcyMmfqWNEbvR
	Ai1hOUF6jT6AbGscK0LqRykyQoYE34ebrBcbcjTC0JMtgfpOFmnFAaKVCxX1JdbPyb2e5SRmC+8pG
	vzP3yisNPDio7wJoEczYEZ11aSVxzMeBVx1/Y78aSPaFU0a3nDm/R7bHEji8oD9QFPN9woaSFNMHe
	0udwMaDO1vqRwG9GlgJKxypVhm/03A/8ebu+aeK2Nq0aW7rqTZaTLC5a1aCYAZSbWt4gtLMyQoiHL
	4/sa3ybvFVKeWPfqtdMywUBseBNy1icgEUKJYkWcsBDpci6MA16YC8iLiRZWXSQsbHMmKmGpsvwdZ
	pZFkD2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZbp-0003PX-2B; Tue, 13 Aug 2019 16:25:17 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXo-0008N6-5L; Tue, 13 Aug 2019 16:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713258;
 bh=ljCWWxQsddXKHwCHwwLRNEuJ6GYiE6WQq8ZhiJ9nBow=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TrU66qmEYyQhbj0nXpv2a/K8Xn5CO0p9ae2fmLRuve9MxnFqzFG/VG3QIgC35wEbO
 rgB+z2vfDTVAHEv8pkJWtckqy9hmDwEP/YeSBD6UILbIsU0lzGNoVextYk48M09q9a
 JDFSFcSfkwmnZe6B5/sdflRZhheldsTw58Zr48b4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MGz1V-1i1g0Q3rUp-00E6Tv; Tue, 13 Aug 2019 18:20:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 03/13] dt-bindings: bcm2835-cprman: Add bcm2711 support
Date: Tue, 13 Aug 2019 18:20:38 +0200
Message-Id: <1565713248-4906-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:KSfyLs+GVp5WjPQyPhum21eug5l34GiwTaN7iVomfgen/gamzy8
 tgmzYNTBwC1hym+UOSCs2how3XbtQJHBzPXJIVj5AJf7j0XgV/psrhkuM/pTtDn+vrkV9+X
 CAJygQ7hgSc5tJAj5KKML0sbnFGvdy4jM96CD+taNfVhEp8WqW8rm6vSu9pnSg/7asi8Srs
 aHTnO75cC3wfduwf+heww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gato0k7oJfA=:NZkdiiHlw7JN+KllaTE9Xa
 hafwVRfb7CVFJoWYI3plj5UsY99g/7MMOyJV8HBAAbStNodEbr04JY2mBBeyO5lpncyL4J9SU
 XHMjJciLMM6zWO4vETdaLhfFyoA2XtFnInL8n18n4PuEKzjSF1ajpKWFNWAkaamTwzEz7s2vB
 TXI3cisMj8fFgdVmaUdp6FGnJrQwm0fj2cPgISh7pNgR21Uv1cXzeqdxfhPeBn3QLtNsMuqU2
 dJyDbYYaHH1LkA5vY3vTdYBb5rVSZYyKzYl0CbhPQ0OJjC3D44Y+MCzRHvmmyupuVNKQeyp7m
 xamx7OHoTg93KTsCan4xcSMJgTW3Yx985VI4s96TpR+KGdRHB4zghuFbopd0uAnNsMtlzg+tY
 KQiFJQwaZ5ScbvZWK/n6VAugwdpC7KmjY/yEfgm1xxUzzjQsdt0ZyDNWWGI5n4J+FRUbxbnTS
 IRV1hhHeOZVcr3n7WCmgIVRX6MC8nxno8mYdkeWSdZwazND4689UmgwvlyCeqeu8kTIZwnMl7
 D3ddJOQ9jl3867Lr8/ICfu50oMqilSGCl7Wdpv6qLq2zIsgo0zAloV/X3zO7CNW758MyIhNC2
 cfAu8UpzQv7dQgU3g9N4cqpWcYvL+HRlQBNJbQ901UlSHa12FmllrKwwyWL0KuR2tNLJ44QQT
 y60+Tbybt3TocMLwGrqpzBbU3fWAwqmP2O6WJVPNrnW+3G7hAL5Y7QMYsevTAHgbtYAIj+Uqb
 ek2YbBYr54I5bmYMN/80ABQei62MjaNMd8y/8VAYwvYxakLH6j1Z8xvKPg25JRqBN/RrnvtMF
 55CHoV0Xdyeje3xtMWCRiufOb5rMPOEgILNYZm5r/NHxI1aJFGn9YNIG2VhK0VPuruUivLkhU
 HRXIKH5H/ncfinmotIFVhkC4B3CfH/idmxBtSVDLf0wUpYWZDQYbPj53nxnlZBgx2p3KiQaWb
 xu4Qu/de203a5jzWyILAkh78HoLw62WLUi1aayq92ypUbHO5TRrUXNnCpvjqow8BZpbn6DUW6
 flnLwr0xb9sA+EZxBb1PpNXT7pky2vqY1tQ51dQ/Iwo3B1BXnsdBhugAq5wFfd2tk2zWbiBeT
 lsD8H8Ou99FadQuPHhDz2jS6OqPMydtYV2SeUoRNEF/7D8eUpkRB0iMW18oS6x4qv/jhLxDL6
 FOQIa8tdIB+xEnJMcoaClb8K0CzDxgJreyy1LhC4C+MBUKJg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092108_492040_21ABDF46 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new BCM2711 supports an additional clock for the emmc2 block.
So we need an additional compatible.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
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
