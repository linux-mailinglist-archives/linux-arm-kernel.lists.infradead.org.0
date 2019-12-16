Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F526121213
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bK0l+RmMVrzUgnKKZ8zvMFmZHqZo4TUXJNpVYwx/+PU=; b=Gv5UCHP2/i2XGa
	GCx0Dh+Xskgc8abhcEKYVpPn/ZxLcsbnW5MiYkqqmHgiszy+aGe0TUzcdDURnyeLJSm/YqyUpGhOj
	E/v7/dJnkymG+Fv4YZRXs8WTtLBVRGXDFZBigmKOfi8lILjaqimFOF0wE/haApUHuNu+T2+qm0RmX
	+Cn+7W+h7nP3mwksYO97uoxY06JZxOketw+fl662rThbEEU1aP1BadPWdWTt/1emEHktaD7uABLLx
	IVul7RbErv3815JXDyZvpr3DxHVJwpTvJOAsZM/cRxYYCs8CZM0xcqt6lYk3EXWwe7limapOJRxZ4
	DdC7YMkGrq1m5LmrF4fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguTg-00040j-U6; Mon, 16 Dec 2019 17:48:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTC-0003iS-49
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:47:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id k25so4111634pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 09:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hw5Av0omrpqDMS7vMjj661LVLxdnMyCAfz7uWvwVCL8=;
 b=UzAut7oPZ6MwulRVGd8z4CDfcsQG18oSMOJeImKi0I4vNbCimNPWgWxR6T1cuHUrkn
 QuhGtJyUnUuhh8/vFQAoC0pckg8wppSCIzyHSEO3UDa6otYVEjP5f+FFluCbxdOuQ3/r
 QgQj8JMj+hVg+QKXCgElrEGcaf2ifPzofkon8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hw5Av0omrpqDMS7vMjj661LVLxdnMyCAfz7uWvwVCL8=;
 b=IfrS2FICvo+1FoulfJMXQWix2HW4SmJI7ymSRK3mG1hXYErcesx+5wg5NrIom8gRaP
 W8klKX3ij84wxSuSikidpujGySpOWOpHJUdXQ35NbykDqfQI8VtNSjnRZPNAG0QaiiG3
 TPkGhqS/15jpkboH7IZ16QDKjz6bighsy8mWQtdfAoBspmDkn2QevrL2P4mc+Qz6cEOn
 bfBNuuyISsI44EuVXfNRVzEvXZX5R0zGQm9CInqQHnJXi/Lw+jqxTkXI0sl+DmXZUgNb
 RJfsMc9Virf2CLdETpi61sKNJ3NwDksnoiVoezMYtWydVvDEnROT7kdXMTcDzAhh/8uK
 G5cA==
X-Gm-Message-State: APjAAAWiwCQ3oBUoVzpRiFWQBXhodbPpkYZVvgbQEqSuW3rMQCge9wzD
 SJRC+sgEicBK9AmdESatgZO5rQ==
X-Google-Smtp-Source: APXvYqyXoQALeAM+zoIV40agZm7icWv+ejSDOE9brdNu2AiqwbmAeH5gOOEc/CZzDWaZYkhS1xv4Kg==
X-Received: by 2002:a63:5f91:: with SMTP id
 t139mr19298242pgb.185.1576518465339; 
 Mon, 16 Dec 2019 09:47:45 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:47:44 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Mon, 16 Dec 2019 23:17:08 +0530
Message-Id: <20191216174711.17856-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094746_189055_A250BD91 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of dalang carrier
board for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- Move som binding on board side

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..c3eb32f1a9ee 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,12 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
