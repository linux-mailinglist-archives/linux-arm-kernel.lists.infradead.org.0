Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9F2298CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y29H2o416o7JQj/yeEGHSFjys0TYe3fijo/2HwGtY90=; b=oeBXvIyhUheDVLMF91hb6xu4RY
	dXc8JTMev0RdC1rUWgw9F2KOcGQ0woqpAL3uFTDDWtFH/7rJvwJ/oXgTulOzZmBrP/GWL9L4gzZJH
	iY4o+OnOxr5LzoDBLw20xQs2QuqdP+OvRQXuz/ji0/EICcyECRjgp/rwUZCXNG8DelLsEwsS2K5SQ
	4MeVwg9fBItnbZHafaLqJEjgpYIB3cMR/Na8d6TqgmfnA+wrNZz3kfx+QJAL2UMoY2QjhIFpAQBZ4
	kgBgkhXPAjDvJj9UrDEJcbZGR881YdBQalBYpXDDhVi6xrl424DkK+s3CiW9bY6IvcoEa2jMImJq3
	ep4cT+xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA8F-0006LX-Is; Fri, 24 May 2019 13:21:11 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7L-00048A-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704005; x=1561296005;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0AvxtVk/ZzZnCeIX1qspRxwNNu7VhFGWSGUeAzIxEL4=;
 b=Co1iYzZm0TpxV1KJAuCFqtEmEgVi7xxms+RI96yeEZBfWrDYOf2kClRtZ1CpdCyI
 lq9rNrTIYVU9+gM2N2KzTM+tQ4FxS9iQciVHNq2b+vgE0+9GtIhTu30YRlq1+geu
 6aMCgYp+LAYKljEUfWGiBqX2Dn4wfC+Vj/ObZ+om64I=;
X-AuditID: c39127d2-6bdff70000000df6-c0-5ce7ef85f812
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AC.81.03574.58FE7EC5;
 Fri, 24 May 2019 15:20:05 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200466-20937 ;
 Fri, 24 May 2019 15:20:04 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: am335x-pcm-953: Update user led names
Date: Fri, 24 May 2019 15:20:01 +0200
Message-Id: <1558704003-393769-6-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:04,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:05, Serialize complete at 24.05.2019 15:20:05
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPLMWRmVeSWpSXmKPExsWyRoCBS7f1/fMYg8VLBC3uzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDLWrn3CWPCTreLB/cNsDYwnWLsYOTkkBEwkFk7uYe5i5OIQ
 EtjBKPH53gV2kISQwAVGiRNt1iA2m4CGxNMVp5m6GDk4RAQSJG69FAKpZxY4wyhxt38ZG0iN
 sICLxOML25lBbBYBVYltd/aB2bwCzhL/br9nhFgmJ3HzXCdYnBOo/vfhZ6wQu5wlnq4/CnVQ
 I5PE+o08ELaQxOnFZ5knMPItYGRYxSiUm5mcnVqUma1XkFFZkpqsl5K6iREYbIcnql/awdg3
 x+MQowAHoxIPb8Ll5zFCrIllxZW5hxglOJiVRHhj9z+LEeJNSaysSi3Kjy8qzUktPsQozcGi
 JM67gbckTEggPbEkNTs1tSC1CCbLxMEp1cC48bx8p2KC4PZP97R9VaSjl7z+VaOvWX611+JI
 6vQizQYDG1XJ6yKl15mq6+eFFzHuzSuQCJuQINf1lz3083n1cD/eEF+FyZpFW+LmczBuWpH8
 5bSh6VYbDtbk14ptyaEV0ia9bLf6gxbNOSw5L/IV95/mpPJPE4+ul/gjUf/dvf1HVJVDoBJL
 cUaioRZzUXEiANii4XcyAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062016_338311_48DC8470 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tony Lindgren <tony@atomide.com>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename user led nodes to match the phytec user leds name scheme.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boot/dts/am335x-pcm-953.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-pcm-953.dtsi b/arch/arm/boot/dts/am335x-pcm-953.dtsi
index 20a3d9827692..70fb4a15cad9 100644
--- a/arch/arm/boot/dts/am335x-pcm-953.dtsi
+++ b/arch/arm/boot/dts/am335x-pcm-953.dtsi
@@ -39,15 +39,13 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&user_leds_pins>;
 
-		green {
-			label = "green:user";
+		user-led0 {
 			gpios = <&gpio1 30 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "gpio";
 			default-state = "on";
 		};
 
-		yellow {
-			label = "yellow:user";
+		user-led1 {
 			gpios = <&gpio1 31 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "gpio";
 			default-state = "on";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
