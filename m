Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6612FFBE4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 23:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DKtf0irWw71JkwEu9xmiu7uVimaows6nC3or3z5DQ0o=; b=gRZaGDQTkoYgAH
	yuCvk75R7tPhFQvYY3TkuBCK44l9evgzJTfq6FvDNxLhR57UIpZHUpiN22D7zrFm7iGm/UY3ODwpK
	DcGN5JkVzjM+Zxvx/4eTfbCn83ujQzDx9WnZKUh7r9WHbI1meYRwCjT+oZowQJR9tZDLvyTl2CZPt
	hO6Fq8Y1Jn61GxtP6JnMhDXPIkjLRRd2sCy4KagkW7wXjDvxkKwj/CyV7gNSuJkCOTQoCwKowHlqo
	jc+OK0c0lc198YbT3nmenvl65y/Lyfz2SuUFsxcIskOt47STF/mYAdCre/ntjvH8lVzrIpj9VNp3m
	bWG0Kr2elJbqLiSRxALw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWSp0-00046V-30; Sun, 17 Nov 2019 22:15:06 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWSon-00044i-Aj
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 22:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574028887;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=7hCz+5DTC5n2Pi08W82Wd1z0wbmsZs12qI1M9dEPLlQ=;
 b=bywVCqFZ88WEzVLuU+QzQIqoM2Eu3v203LgBCs8PIzKUkgMbbQ73M9Id+6E7gP2r8S
 gHCcFoYEVxPLS879v6u95P5hG7qeBbVKhnVon5sphk0l1K8pPpkit90Xtp/uJrdm1HKF
 mlPoeNlR8bobR3JV8aarECSVdFQA3reri7Av6tpjlm82hH9apV+DvSQVwSHlmM0zf9CN
 oTIIjssuH4tD50ZXxFTZWCNVuvgNBANG+OjT874tqDbeqjw/Q027PFNW4cLDQtauhFka
 rNMbzRL0cgyiQbvBxxwULa3YQI670kR1qERelAbEX8UndE938l+Xe+Nzs9F5uZhRHa3f
 t1AQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXsMvvtBRRPA=="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAHMEdbBN
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 17 Nov 2019 23:14:39 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 1/2] dt-bindings: mfd: ab8500: Document AB8505 bindings
Date: Sun, 17 Nov 2019 23:10:52 +0100
Message-Id: <20191117221053.278415-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_141453_513248_E93B1821 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AB8505 can now be configured from the device tree.
The configuration is almost identical to AB8500, so just add a note
for the nodes/compatibles that differ between the two revisions.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/mfd/ab8500.txt | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ab8500.txt b/Documentation/devicetree/bindings/mfd/ab8500.txt
index cd9e90c5d171..5c12a65ea8df 100644
--- a/Documentation/devicetree/bindings/mfd/ab8500.txt
+++ b/Documentation/devicetree/bindings/mfd/ab8500.txt
@@ -1,7 +1,7 @@
 * AB8500 Multi-Functional Device (MFD)
 
 Required parent device properties:
-- compatible             : contains "stericsson,ab8500";
+- compatible             : contains "stericsson,ab8500" or "stericsson,ab8505";
 - interrupts             : contains the IRQ line for the AB8500
 - interrupt-controller   : describes the AB8500 as an Interrupt Controller (has its own domain)
 - #interrupt-cells       : should be 2, for 2-cell format
@@ -49,11 +49,13 @@ ab8500-charger		 :			: vddadc       : Charger interface
 			 : CH_WD_EXP		:	       : Charger watchdog detected
 ab8500-gpadc             : HW_CONV_END          : vddadc       : Analogue to Digital Converter
                            SW_CONV_END          :              :
-ab8500-gpio              :                      :              : GPIO Controller
+ab8500-gpio              :                      :              : GPIO Controller (AB8500)
+ab8505-gpio              :                      :              : GPIO Controller (AB8505)
 ab8500-ponkey            : ONKEY_DBF            :              : Power-on Key
                            ONKEY_DBR            :              :
 ab8500-pwm               :                      :              : Pulse Width Modulator
-ab8500-regulator         :                      :              : Regulators
+ab8500-regulator         :                      :              : Regulators (AB8500)
+ab8505-regulator         :                      :              : Regulators (AB8505)
 ab8500-rtc               : 60S                  :              : Real Time Clock
                          : ALARM                :              :
 ab8500-sysctrl           :                      :              : System Control
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
