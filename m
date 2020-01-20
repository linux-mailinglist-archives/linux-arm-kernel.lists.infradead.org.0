Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBE143299
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hzlK1pphidDK35aBT6mayy4utp6uMD7L/votJQH6dCk=; b=Gd1Lug8Df42iZwfkN8q44XCl9S
	myd8KMSeqZOvG6TA7sMX1RnMTqPYMgIhhIOlzHkipekZz5YUM3dHEDqnTj69Ul6e1N7F+yVTc7RGU
	oLMtmnXNIZNb6Ez5c7uw+6yP+WsIhuF90MUBYBkqTu9L6F3u8crrFRl2/1fARLPyUQ9tLPUZW8E6e
	QowRqwA0x9hG9olJqJ2qWDuaVk7zo+MU7Huc98h9gEH2SaiRsjeR5FEk+mPw/XnBsbZFojXsfZ3Kt
	KBy9SINM03gOPQ61HU5dCCwsFe2HaPB1y5k9kKjS77HnBrJqYxopHwNCdomhT9GMdC3MXougP93u9
	uR0bYSHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itd00-0000SR-HG; Mon, 20 Jan 2020 19:46:12 +0000
Received: from outgoing18.flk.host-h.net ([197.242.87.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itczO-0000A8-Do; Mon, 20 Jan 2020 19:45:40 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam5-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1itczF-00045Z-9N; Mon, 20 Jan 2020 21:45:25 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1itczA-0004Hk-RM; Mon, 20 Jan 2020 21:45:20 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/4] [media] dt-bindings: Add rk3228 to the Rockchip RGA
 binding doc
Date: Mon, 20 Jan 2020 19:41:55 +0000
Message-Id: <20200120194158.25357-2-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Xm17NJf4el5vffImWwWrhCpSDasLI4SayDByyq9LIhVjN6Oe0bZSj7x
 nWUgTBxzfkTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipF21HJWO60ZqrvKy/1AXUV5oXt6ymoFHaG7BQtEYvFCSrK5j1T
 Po5/LpleUgQM5/MAHmDvzkMd4joYqrUfcPIQdUYI3fUXyt8g6v09xrG7vu/fdUS1M5thdxxsnOTC
 rRmvZNXA7urqkuRkjn1fyteVYP+HXs9CMbFn9vCz9Z+lGmDQvQDDheqH4lBQpR0ziVlLWDAC1vRC
 hq319+C3vxdCgsyStZRkQwmoMeUp+gQglixgZmTW6H0Uo/QzUeaLOBvNEC1g+U1SXfUhLsTk5wUY
 WaWokZC3JOaEfAcg3rPhhfeK9cZ48uDEoRc5vgP+N4akg5nlaTNYebWa2W6GbNvgwptlhJrsz+8j
 XuMdjIbLZhwoK/VzePATsXS/rFxRypFKMiPLyoQzvILSDO18VtgBXbQkUN2dXl9fJsQYqiZZBuHY
 Ta6/LJzl4pg0ZC9q5gYH7EOMauBWC98ol0xUHcbfIJ9ZJ7PpnPxGejDS+HAMyOjpxOsB8gG0slV7
 ra6jI4BS3XLmxFz+88FWeB7miCnFrS+xkiYMmdOwRIKnLhTyDa49KiI6ApkBL1M2pjeIsNv0i2bz
 nHJ53CHS5fL+CC61pH+Mdi8KDLlrJjQEyoQkvVqjwoXSktopqY7X3mJE1vuavCrJPmnnTHzVkpyb
 MK7ZTZV8hN6hngxqNW/p6/rAjB3Bo9WPi4IE45J8SMIBWsA7tm+5pSj1YjV94R3x16NaT9yCB/zW
 LYsk4/ealtlYzK51KubfNuS9lgsouDG6gpp8iIlTfpXH3eJ/htNFsfRJIIsn2dSUfOon4SSOHnp1
 et/MPu6LuWW8C6xs4jnP0QXTijBi5PZExX8sQXRK2Ohd4N83CNy2/HP4CS/B6ymwJqdrYqktDHCy
 f2KOgPWiC6z4HnV1R/vfaN0C4C3KdSxIKbHYhXQwhXELIBZC+BuxdgK5cVvzDCtuQClUbi7eRJvI
 01OLeFH4QvqpC2nLfIqdZUeVlVebzZqu+9TcX2V266qVhLwCLj5UzlqDZIb7xEp3klSpLYn5Sshm
 tRDo/ib6qUd+ON9Iwv3fqFcmzUrJkUoL/PyVSe2/DDFq5n7HBuKWYRb2mL6sFaAAW2m3yODQWZ6C
 UzN46xT2FnDD31r1QFs2yPRk3H1E4ANRdN1BlPI5cpunCmbc5xpJVMDSneyWOiQlotRPFwUdX67F
 3JAjgow=
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_114534_460969_47B33E36 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Justin Swartz <justin.swartz@risingedge.co.za>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "rockchip,rk3228-rga" to the list of acceptable values for
the "compatible" property.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 Documentation/devicetree/bindings/media/rockchip-rga.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.txt b/Documentation/devicetree/bindings/media/rockchip-rga.txt
index fd5276abf..9bac1782d 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.txt
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.txt
@@ -6,6 +6,7 @@ BitBLT, alpha blending and image blur/sharpness.
 
 Required properties:
 - compatible: value should be one of the following
+		"rockchip,rk3228-rga";
 		"rockchip,rk3288-rga";
 		"rockchip,rk3399-rga";
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
