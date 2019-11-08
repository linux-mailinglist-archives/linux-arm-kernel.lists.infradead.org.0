Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5324F43C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RX8+AViPVIt5CgJNJzfB3jEP7oxw+z0KwOvIjXgpRao=; b=KMf+GW3+D8lm5l
	dydH3w8DLolvFdT0oBU/K2BYfwT4hngUKj+xTAEBnzEeEnXYdaqnO3WNWqqlXr0rjp8/PAr/jyzLM
	cSs7Kt8usbOcWE10x3fgDlYt0aagJDHkpmvkgwcHRTaNPiE9BzqTG6I5RxiZU3bPkLmDRT4ZPbUDy
	Pbo0Z5MkjYitPlctLVl4rvYqjorAl4s3rZXPvHne2EJ3GK+MQUGkpvfTPtVwqb++AJo39FD9L1UzR
	g5SA0Zp6OjGLgi1+G/9bJIxoc/lOAXk78M4QGp/ACx+VSkoBiGWreufI1B+bVDt2tUtqXaso5ENaj
	DI/iE9OG/52247EQWQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0oH-0007xZ-1z; Fri, 08 Nov 2019 09:44:05 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iT0nU-0007DI-Oq; Fri, 08 Nov 2019 09:43:18 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xA89h0IP009634,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xA89h0IP009634
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 8 Nov 2019 17:43:00 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCAS12.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Fri, 8 Nov 2019
 17:43:00 +0800
From: James Tai <james.tai@realtek.com>
To: =?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Topic: [PATCH v2 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Index: AdWWF39NjjhgsFBrQoONYzvMLF4vEQ==
Date: Fri, 8 Nov 2019 09:42:59 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF91F9DF@RTITMBSVM04.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014317_077659_02C5BBA4 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir EVB.

Signed-off-by: James Tai <james.tai@realtek.com>
---
 Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index ab59de17152d..2444eff2c3d5 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -33,4 +33,10 @@ properties:
           - enum:
               - synology,ds418 # Synology DiskStation DS418
           - const: realtek,rtd1296
+
+      # RTD1619 SoC based boards
+      - items:
+          - enum:
+              - realtek,mjolnir # Realtek Mjolnir EVB
+          - const: realtek,rtd1619
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
