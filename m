Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4330D1038EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRqAbCV0FemWFAOXsPhbYS2JB707b9ZA27H56Hk+jg4=; b=IoPoOzaV8LZpSc
	Fsadyk8gHICVzV3eMnsJYmXKF4L+8tedJgJQ6AYqTAnQEV2BzVyCqnT08sGQr21N61Wy1G84SED4e
	uVsUNx813QgYYfHdBeiXskqWIUKajblPxgikjnvWoep+1Czs6UXINc1nmK1bW/A12ni6jzagqGc0t
	Go/8S/I+iQ5EeEnRegt9KGGleoZ6Nh8D7AJ+QdxbDxCdU3bVntubtlR17NDxpSe8dybTwFEkacAM5
	67cxBtvK0xhJUzGuI3VzTIlUqpctJDhK8gXscqDHiJ0UCHdPe11qRvh6mcJYXOYjRw5BfQvY6qLsg
	LhyO4sVpDsIVB8SdCKOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOMQ-0002vj-64; Wed, 20 Nov 2019 11:41:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOLz-0002i2-GR
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:41:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so13700119plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yHZJJcR8mQcwZhglzTTNiD4pcvMUD6TZgTIsDzGcbBA=;
 b=O/HEsdnxbKlIlsJpB2ra2/mVGYc1rj4DW0nHmoCdsMI4cTu8vENjQz1WZRXh7PGr1T
 nbaXbK6Y0F0/0Yw5P4oTe5UxN4inv6vEztY8YbaC8WJb5NPJxIrPSbXl9BQ1VsUu/IOF
 svc3eGcAHkOu5T4IyjVxlxLNBuBWeqwzGmYD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yHZJJcR8mQcwZhglzTTNiD4pcvMUD6TZgTIsDzGcbBA=;
 b=plZZ1pFF6u0E1WAOMMg77QbpIVnpqnEJzu7Dt2PKOkoekZ84N9OEY8Ba859jE2PShk
 D6ztdFK+Q4CPds+BfJJ210tlOEPM/EYZBGVsnq2KmQ1MUI8e4t5nCPdSgln3PdekwP6i
 +jh+OXNtyuspJxuGidAaiRQQdTIZX6cjVg9NI+faUDz9yZ2NHjdrQelOloCCGEBSGjtC
 JuFiOOlrzrX2P46X5dFDQ/2nRYeiqZEOiIFINgHPNVVaptSp5DZHPU3Rnbzq47RhFlhh
 7BcMYekgySd+aT7ItFWnpf4YUmbDX4F7DQFoQARSn50gNhoLqrnWM3GwsMwldn7uPQRl
 tjCQ==
X-Gm-Message-State: APjAAAVei28OyJnYjO6ljadlrlxC88kBC0L1wWrYi1WN1W6qw52S8WCe
 fdeZxteWPXxeiTZEqnlFQNWajw==
X-Google-Smtp-Source: APXvYqwL2xPmmw1S2n1DQYZu6NRmfHVe+rkrUT1QBX8EbWfOnLIX2lPO1PF3wh68DFJwzes/lU90sg==
X-Received: by 2002:a17:902:8f98:: with SMTP id
 z24mr2554339plo.35.1574250057480; 
 Wed, 20 Nov 2019 03:40:57 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:40:56 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM
 binding
Date: Wed, 20 Nov 2019 17:09:19 +0530
Message-Id: <20191120113923.11685-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034059_559494_1FA01CA9 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

VMARC RK3399Pro SOM is a standard SMARC SOM design with
Rockchip RK3399Pro SoC, which is designed by Vamrs.

Since it is a standard SMARC design, it can be easily
mounted on the supporting Carrier board. Radxa has
suitable carrier board to mount and use it as a final
version board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..51aa458833a9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -526,4 +526,9 @@ properties:
         items:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
+
+      - description: Vamrs VMARC RK3399Pro SOM
+        items:
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
 ...
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
