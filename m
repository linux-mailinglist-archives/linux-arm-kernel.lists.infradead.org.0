Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719FD12D8D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euhNPGi7lf6k5iiIqMzf+htSX6dwxdXxs6EkdMfqTmg=; b=oBluMXq5tl86lK
	tXf2a+4/01AsWVRntiv9kcSZUw29/pbOEAlauQJm+v33Y6LchKgJG8EmACaNS2VCJPcWoJ34HJnai
	dSNgHJWuOKdFtppSVEN4wtnmAwS2VMWUqNZs/jmh4K+xhCdtP2rEXys09xPGRU3Hm4yOhiPmAmDCR
	0BE909FjMI2zPe1pyfRQmMNG7QTfkpxQzWsjoJ+Uv9l9atNo285GKF1uCS9K8cYxNQNfzA/UFlmIY
	B3W5Bp5Il6fnBPL7UyGMPGkvjZCEDA3zYfs73Y4DVTWDlchAGOJV2fKGntw2mhdTVNE+069VYJyfk
	5VNJvIv9NYRea4kqGPMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHFb-0006yK-1C; Tue, 31 Dec 2019 13:07:55 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDy-0005rL-BS
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s7so1214910pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LFRfv913MOD9bDVjn2WmuUvuBCX9q57n4nZIprY3VlY=;
 b=esmTNuuAHI5g0sdvenfWCCKOtxtWE8tDLrNoa4auzDAbZa4l0WWU2YmE1z+YTuH/f0
 IaUqnQ8uilEQG51LocZpc6sUqo2rv5Q0kEf0yj2MShhPDrhiyJqmCMHdbTTF25ImV4DJ
 CXhUToi3DDMDwcKcrKX0GuImPVYdLbeHPZgdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LFRfv913MOD9bDVjn2WmuUvuBCX9q57n4nZIprY3VlY=;
 b=R0YbfNaD3JXlLWowUuhcS4qAMNmBdDTD84MGk8ceH/wloEBz2GvQHKYd80MrX6kMc7
 9sX9lyXi/mDU0mUkQn6DOMBOLy6G5NxyUQ1DaWWgv1FsWXHZAlUg0bMIGAgK1gc5HxwZ
 /zDgYCjZORN+j9R09RDqMOxtiexx+K6SYVvwIVwm/hbJQHI/K7C/aEdAv/UDe9QK4aOW
 3GOjcdJhnMxc78xUddqqKkvFOGKGNxDwkMGOFmKrugvblBL+W7m9DkgdQAjlKcXsXmQy
 PDYDPLCDKyExDB2J5LHKCAWQyOfZPDqtHHHJGgO4Rg+yceZ+b9SgS15T38rmbs+nZbej
 MPXg==
X-Gm-Message-State: APjAAAVg7ygkYPfUNDq01d8vbe0Z3LOVCb2G2upWTJblQBOc4PyCzHdP
 a0U6Vy16oonXM8D7QWpWyG7UzA==
X-Google-Smtp-Source: APXvYqy6wcZpyDi0ZQJ1b5xgNNOeiknVdIr1W72rN6UUlfZ38jAq6za4qzzEBbhB0lGRuoIihrO2IA==
X-Received: by 2002:a17:902:b68c:: with SMTP id
 c12mr40694609pls.160.1577797572591; 
 Tue, 31 Dec 2019 05:06:12 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:12 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 6/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/
 A31 fallback)
Date: Tue, 31 Dec 2019 18:35:25 +0530
Message-Id: <20191231130528.20669-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050614_510440_C497AC0B 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI PHY controller on Allwinner R40 is similar
on the one on A31.

Add R40 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- update the binding in new yaml format

 .../devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index 8841938050b2..0c283fe79402 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - const: allwinner,sun6i-a31-mipi-dphy
       - items:
+          - const: allwinner,sun8i-r40-mipi-dphy
           - const: allwinner,sun50i-a64-mipi-dphy
           - const: allwinner,sun6i-a31-mipi-dphy
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
