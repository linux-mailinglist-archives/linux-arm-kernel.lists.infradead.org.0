Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECF29AD43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx8547yPMJGlc5RCaodt7rV5A4yLMXxrpxXoT3mKUcw=; b=HvISWE2H/n4lPx
	9+h6TB0KtuhFaCixlWu+rQebhwqGyM3lNYmVbip/UPLoHymeAD94pjez2CMjDzka3Sm4sz+NUwqDo
	89jaTOJj96rBTVslHL/DJkKp7+U0D3c88PmV6qR6jLx5ArfUGbjPVBadGNC0vIIjtsb6VHjeHJFyb
	sFWKF8KW+rrypqGYsSze/tfjmICA3yxhg/qW+Zfkj8EuAVxBVAhuCpSXn1J4rwC3+jvHbZ/hj53IQ
	gpOfeo+rgUk4BdnnC89d3HfUHSjPzFR3VaXfcg/q5aPKBFuI8Ln65KuJvM28ddoNVZXnI2Wrtacyd
	t8ZDKm/4SN38QrOrxOGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16rn-0003Wl-3a; Fri, 23 Aug 2019 10:32:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16rF-00036K-2R
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566556307; bh=y/VyM0hZNMJuHkjWlJoe2Ll8Mns+SaZDNjGgFDEV18I=;
 h=From:To:Cc:Subject:Date:References:From;
 b=PsR9yChwkB7y4rgbtoOSmoYDza6Ag6WO9cQo+O/jRPIDy9UCjPuVe8rhS69ui8GiY
 TpwekQ9n9eRPnZh42uFqZ13fVEVMOdM0UUbH5Rd2SNEvxa+uYgjMV/t8xaCvJxdaEu
 asrCvCfzNX139HnJBnxAHX+u6vT6YM0SlZVcZiKA=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: [RESEND PATCH 4/5] arm64: dts: allwinner: h6: Add pin configs for
 uart1
Date: Fri, 23 Aug 2019 12:31:38 +0200
Message-Id: <20190823103139.17687-5-megous@megous.com>
In-Reply-To: <20190823103139.17687-1-megous@megous.com>
References: <20190823103139.17687-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_033149_273671_C57F91B5 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Orange Pi 3 uses UART1 for bluetooth. Add pinconfigs so that we can use
them.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 67f920e0fc33..7657e816096b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -298,6 +298,16 @@
 				pins = "PH0", "PH1";
 				function = "uart0";
 			};
+
+			uart1_pins: uart1-pins {
+				pins = "PG6", "PG7";
+				function = "uart1";
+			};
+
+			uart1_rts_cts_pins: uart1-rts-cts-pins {
+				pins = "PG8", "PG9";
+				function = "uart1";
+			};
 		};
 
 		gic: interrupt-controller@3021000 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
