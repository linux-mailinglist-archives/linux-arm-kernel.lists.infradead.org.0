Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1BD1AFA50
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bM8kaWD9RM5ZKmuLU1BhmaiIRBZFLBaTFky1pylXfuQ=; b=bCwzqZ2w/apSzKm0BBOYovDXK5
	G1WTXH306nt4koj0sxq3hek4wyWPQH+pS39LvpsrMuIFkul4hiKLJlHsvUZTpo1dGioi4JSdGVonn
	GrPvIiUrkSkMyTfHDM928h+iUVfpvBGxCeLgrD+Q5LP966JSGLwTe3sWoxvvtG7cODmhcv1FW7Hv+
	39go8msBfjt7wwUo7UyeYyt+T3HWsNR2z7AKDKxg0rNusP5msNTXOU4xi+MXjIxDzq/estaxfppWK
	NKi2PigEw4px+JM64XsI8r6q9wwxKo16PKSenXK0ix6UoVxTyrjUM3gV/N0+avTxD860juziOtLTV
	JjJSwlBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9W4-0005Nn-KZ; Sun, 19 Apr 2020 12:57:44 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9UY-000421-Os; Sun, 19 Apr 2020 12:56:12 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jQ9UO-0001Lu-NN; Sun, 19 Apr 2020 14:56:02 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jQ9UK-0008SM-3f; Sun, 19 Apr 2020 14:55:56 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 1/1] ARM: dts: rockchip: add rga node for rk322x
Date: Sun, 19 Apr 2020 12:51:33 +0000
Message-Id: <20200419125134.29923-2-justin.swartz@risingedge.co.za>
In-Reply-To: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
References: <558b35c3-7f75-8d0d-048b-c55c06fa8a53@gmail.com>
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0c6d8zDasFm/nDPEg7mmhmypSDasLI4SayDByyq9LIhVh5Ui7mI7WeR2
 i/gtiekj80TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0jxJtcVJProrT987X1VDPOqN+OoDzRTdku7DidYUZdNf38Sp7Of4wP429AA
 f49baR+f3He7jw4SoVhmTJ/3eP9ORQWVx8ds1M4qmk3/bYr2p8zbg4Paoa3pNVQ0zl7t/+UfQLYB
 qEPnp1U88kqVD8AM2G81dFO0E3gi+MOI1foZYzDggRXhpvoPtF3cVkniFXU3qJSqpdJudO6+rkiw
 E5i8Wl78Q18OeOfsy4h7jF1Uv9lnibl3vcBqVmvQB4A18aeGb1pbVH+fmeedmNxjZxYfAVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 ttWGem52QLIiDo2hv5/Q58JTycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgijyqqY0rATpzHKGfmtNsYTr4SmDZ/bGW8xZC
 RRs6ZD24UhFcZZEpLhnBCwImTQNvxaLyCc35VA7RvW/HGiGqxL09Cymermt8NAa/gGopT3kKfO4C
 gvcKmV0o9jYzsFpuc43pp/LzIs3ornuRuAAdgrkq+6l7ZLNYJcf7Z6PCydDzoYZgInuDxgFOs7AZ
 TwbwMaed1BaNkB2/QnXFItfl/CWoqsuchW3gOtGiIBZ3paVR38NrFoXSENXH6UXfnav35JPA4YfM
 6tBkXsqvKY6zoLLTPpuFqUUQz+mM8JAD4ECWNo09vb0YLIRnK477e9Xake5PIWKjIXX7qe2zOXoS
 foxI4G0yjIWrwiqa2StnnXPZTM4T14CV/aqGw5avoywT/WbjO41FyBEqIaDudcVplPE6wCr6GXU1
 lCw88ijyus1sGnWknJqS8gGhNQxpB5P3qu7c1xMljx2PG/R+pKBSKy8hXOgvE1zSS7XUhkYEQYeb
 3jR5NeVaJQBh0uawl0Cg8j+knAzOA9mmoJvkuhKHiekUuskYaI6ERCKp8gXWqnT9kLHhStr5fiGK
 7KncpWELuTEvuGslKTrRIXcXpFg5ivY=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055610_820973_6AAB2878 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [188.40.0.84 listed in wl.mailspike.net]
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
Cc: linux-rockchip@lists.infradead.org,
 Justin Swartz <justin.swartz@risingedge.co.za>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a node to define the presence of RGA, a 2D raster graphic
acceleration unit.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 arch/arm/boot/dts/rk322x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 4e90efdc9..ce88f5bd6 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -621,6 +621,16 @@
 		status = "disabled";
 	};
 
+	rga: rga@20060000 {
+		compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
+		reg = <0x20060000 0x1000>;
+		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
+		reset-names = "core", "axi", "ahb";
+	};
+
 	iep_mmu: iommu@20070800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20070800 0x100>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
