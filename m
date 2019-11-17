Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CE6FFBF5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 23:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kKbUcB91aDz7zMj4QucgI3qw2TbbJ52q3ays4i0TZQ=; b=mgb+LN1Ea31I6n
	U3YQ1opQPv1jvTixs8FMR0/r3AO6pDrhFZQVZwhnsraTDcNeOJWpCDQbpCP6mt86KCTcdjdo0lTva
	mne/RO12JFjuV8XVq8PUEcZ26pM1w+ZJ+O21/7Ag6m8zDsZIkkpgFb8JAynX1ywWdlVQxYYGoLNzt
	WA5Vx4mShvuZ4O503YLObgbjEpADNQIKvKTB2+CWNiEaERxEiU51xMWJViYIv7MJ2fi3HNjXqrAul
	Ki0laSaWdajRPcf2/v4NoaWpH4CSLviehLzeGTNJ27Bbf4deVFHktDSSnTVNV3r9K37+utui+61GE
	jO59Aj16DWWdCox6P3Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWT2G-0000z8-AM; Sun, 17 Nov 2019 22:28:48 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWT25-0000y6-B6
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 22:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574029715;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=urCVRDxjtlkSW6YxW0DTjykMpr66oVfNWnAF+7LY2IM=;
 b=evVYOOP+uPeWtOJ4kZqDk8RPgUZjkMZG6huOE12v2ohiozTHcChLR010cMS0BT+cuf
 KWH1S6pmwfbqTi1LLULOfgb3kbFBtJAKBvrnDc/Bf33gV300W4danCPUZJA8V+Luppfh
 vGaTs+/sSCVazAE5J9xMuX3MMFSQt/bD2EWK0ZXAN7NZWmLDDF9Tg/LDGrcJSLAP29vH
 QPrD10IPuvahKopMI01Gg16S01IjO6EM6nwvsA0W8wg6t7/t5zkCpGhCqhIv50PQpByg
 MVIsPQwbnJSrL2VfYhPmV4Je2xF5qkhClvT031gCYs1+600y1tGSQ8GAwicyI6Xiwl+c
 /++g==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXsMvvtBRRPA=="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAHMSWbCW
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 17 Nov 2019 23:28:32 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: dts: ux500: snowball: Remove unused PRCMU cpufreq node
Date: Sun, 17 Nov 2019 23:27:32 +0100
Message-Id: <20191117222732.283673-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_142837_999101_ADCB52CD 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:6 listed in]
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit a435adbec264 ("ARM: dts: augment Ux500 to use DT cpufreq")
switched the Ux500 device tree to use the generic DT cpufreq driver
and removed the PRCMU cpufreq node.

The snowball DTS still references it, without effect, since cpufreq
is now enabled by default. Remove the unused node.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-snowball.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index efbc4467b8b7..566b35ac0d0c 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -377,10 +377,6 @@
 		};
 
 		prcmu@80157000 {
-			cpufreq {
-				status = "okay";
-			};
-
 			ab8500 {
 				ab8500-gpio {
 					/*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
