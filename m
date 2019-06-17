Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F84949A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 23:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1uZc0RzO0zVFFhrWdL+ShIDSg1yIRmVh41AgKy60uk=; b=mwHs9Y6j/l+3Pe
	6VBT6ZBa+lBqUI+yToZkW4oxE2fG0yV4T5+DYlS4FHSu5LzX0LbwD//UxwnO/I984BxI/CPPQcPMB
	txMdULXJ04X/WYhMCGMX02mUR4IhNG65lPKWliJKcN8+A7GXT8VpWksWR3y1KXmVKXNEaBTOEaJ7p
	roLYVZdHd8CFRgSKt+xzmkfSScYtlPux5kz2F373/OsWsAC0AL2Fs9IzfzVXaZQBGSWC7vPIs9XTy
	1xcQ5ZiLUpjz5zglWsDdw1cYVz2Ll/2FT9B/M3OPtJ2frQTNcZavwiahLg+f1rC61kJtPkNY5FCN1
	VR13uZn2U/4D9KrAjkRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczax-0002iY-9I; Mon, 17 Jun 2019 21:55:19 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczaj-0001Uz-OK
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 21:55:07 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 23A5C891AA;
 Tue, 18 Jun 2019 09:55:01 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560808501;
 bh=uWswnLC9JDOgKH6JaycxBw+ZEM0pqEpSuyJqdcj45FY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RBX6hDyY0BJBt2/YjWO2qIcj5NVuw5dUovHdvMrpFSpy0fza6TvmiHKGJndwvZE5E
 9iLV7Qqh6AXDD7jUlFT8Y9e3sMb3dpeSkl0v9Q8Nq0PjZ1Fl4cAxg7LyJR78rm6sqq
 GJnkqE7svAMJ2m7ro2xcEampWrVMe9CMobKofntUgDTUfL7O2pfh+DwcY0R3JLje4n
 LbRD0mX30k7hxcPUrcTeJJxBRFU8iDdWzOxLD0k4yeSJj/P7icS9Wb7O7y30ITtzBm
 vc2hhjaVyc6+Qz7Ws4a3Ipf0HTzgD8BzauB5ed3stticeVY2t9D0441nDKr0CYOaCO
 0/GnPT8PFh3OQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d080c340008>; Tue, 18 Jun 2019 09:55:00 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 6723E13EEEE;
 Tue, 18 Jun 2019 09:55:01 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 415571E04F0; Tue, 18 Jun 2019 09:55:00 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: clock: mvebu: Add compatible string for
 98dx1135 core clock
Date: Tue, 18 Jun 2019 09:54:56 +1200
Message-Id: <20190617215458.32688-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_145506_085455_7E1265C1 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for the core clock on the 98dx1135 switch with
integrated CPU.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
Changes in v2:
- Update description to make it clear the clock names are the same as Kirkwood

 Documentation/devicetree/bindings/clock/mvebu-core-clock.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/mvebu-core-clock.txt b/Documentation/devicetree/bindings/clock/mvebu-core-clock.txt
index 796c260c183d..d8f5c490f893 100644
--- a/Documentation/devicetree/bindings/clock/mvebu-core-clock.txt
+++ b/Documentation/devicetree/bindings/clock/mvebu-core-clock.txt
@@ -59,6 +59,7 @@ Required properties:
 	"marvell,dove-core-clock" - for Dove SoC core clocks
 	"marvell,kirkwood-core-clock" - for Kirkwood SoC (except mv88f6180)
 	"marvell,mv88f6180-core-clock" - for Kirkwood MV88f6180 SoC
+	"marvell,mv98dx1135-core-clock" - for Kirkwood 98dx1135 SoC
 	"marvell,mv88f5181-core-clock" - for Orion MV88F5181 SoC
 	"marvell,mv88f5182-core-clock" - for Orion MV88F5182 SoC
 	"marvell,mv88f5281-core-clock" - for Orion MV88F5281 SoC
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
